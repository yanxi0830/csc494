"""
Generator for Prize problems.
"""

import argparse
import os
import random

parser = argparse.ArgumentParser(
    description='generate a Prize problem of N x M grid'
)
parser.add_argument('--n', type=int, help='N x M grid')
parser.add_argument('--m', type=int, help='N x M grid')
parser.add_argument(
    '--dest-dir',
    default=None,
    help='directory to store in (otherwise just print)'
)
args = parser.parse_args()


class Square:

    def __init__(self, x, y):
        self.x = x
        self.y = y

    def __str__(self):
        return "square-x{}-y{}".format(self.x, self.y)


def format_problem(n, m, name):
    assert n > 0
    assert m > 0

    # problem definition
    acc = list(['(define (problem {})'.format(name), '\t(:domain prize)'])

    # objects
    acc.append('\t(:objects')

    grid_squares = []
    for x in range(0, n):
        for y in range(0, m):
            square = Square(x, y)
            grid_squares.append(square)

    acc.append('\t\t' + ' '.join(map(str, grid_squares)))

    acc.append('\t)')

    # init state
    acc.append('\t(:init')
    acc.append('\t\t(at square-x0-y0)')
    acc.append('\t\t(visited square-x0-y0)')

    for sq in grid_squares:
        if sq.y < m - 1:
            acc.append('\t\t(south {} {})'.format(sq, str(Square(sq.x, sq.y+1))))
        if sq.y > 0:
            acc.append('\t\t(north {} {})'.format(sq, str(Square(sq.x, sq.y-1))))
        if sq.x < n - 1:
            acc.append('\t\t(west {} {})'.format(sq, str(Square(sq.x+1, sq.y))))
        if sq.x > 0:
            acc.append('\t\t(east {} {})'.format(sq, str(Square(sq.x-1, sq.y))))

    acc.append('\t)')

    # goal state
    acc.append('\t(:goal (and')

    for sq in grid_squares:
        acc.append('\t\t(visited {})'.format(str(sq)))

    acc.append('\t\t)')
    acc.append('\t)')
    acc.append(')')

    return '\n'.join(acc)


def generate_instance(n, m):
    name='prize-n{}-m{}'.format(n, m)

    problem_str = format_problem(n, m, name)
    if args.dest_dir is not None:
        os.makedirs(args.dest_dir, exist_ok=True)
        dest_path = os.path.join(args.dest_dir, name + '.pddl')
        print('Writing to {}'.format(dest_path))
        with open(dest_path, 'w') as fp:
            print(problem_str, file=fp)
    else:
        print(problem_str)


if __name__ == '__main__':
    if args.n is not None and args.m is not None:
        generate_instance(args.n, args.m)
    else:
        # Generate 10 square grid (i.e. n == m)
        for n in range(2, 13):
            generate_instance(n, n)

        # Generate 10 rectangle grid
        for i in range(0, 10):
            n = random.randint(5, 20)
            m = random.randint(5, 20)