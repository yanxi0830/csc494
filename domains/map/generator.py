"""
Generator for Map problems.
"""

import argparse
import os
import random

parser = argparse.ArgumentParser(
    description='generate a Map problem of N x M grid, R robots, G gps'
)
parser.add_argument('--n', type=int, help='N x M grid')
parser.add_argument('--m', type=int, help='N x M grid')

parser.add_argument('--r', type=int, help='number of robots')
parser.add_argument('--g', type=int, help='number of GPS')

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


def format_problem(n, m, r, g, name):
    assert n > 0
    assert m > 0
    assert r > 0
    assert g > 0

    # PROBLEM DEFINITION
    acc = list(['(define (problem {})'.format(name), '\t(:domain map)'])

    # OBJECTS
    acc.append('\t(:objects')

    grid_squares = []
    for x in range(0, n):
        for y in range(0, m):
            square = Square(x, y)
            grid_squares.append(square)

    grid_squares_str = list(map(str, grid_squares))

    robots = ['robot-{}'.format(i) for i in range(1, r+1)]
    gps = ['gps-{}'.format(i) for i in range(1, g+1)]

    acc.append('\t\t' + ' '.join(grid_squares_str + ['-', 'location']))
    acc.append('\t\t' + ' '.join(robots + ['-', 'robot']))
    acc.append('\t\t' + ' '.join(gps + ['-', 'gps']))

    acc.append('\t)')

    # INITIAL STATE
    acc.append('\t(:init')

    for sq in grid_squares:
        if sq.y < m - 1:
            acc.append('\t\t(south {} {})'.format(sq, str(Square(sq.x, sq.y+1))))
        if sq.y > 0:
            acc.append('\t\t(north {} {})'.format(sq, str(Square(sq.x, sq.y-1))))
        if sq.x < n - 1:
            acc.append('\t\t(west {} {})'.format(sq, str(Square(sq.x+1, sq.y))))
        if sq.x > 0:
            acc.append('\t\t(east {} {})'.format(sq, str(Square(sq.x-1, sq.y))))

    for o in robots:
        acc.append('\t\t(at {} {})'.format(o, str(Square(0, 0))))
        acc.append('\t\t(empty-hand {})'.format(o))

    for o in gps:
        acc.append('\t\t(at {} {})'.format(o, str(Square(n-1, m-1))))
        acc.append('\t\t(visited {} {})'.format(o, str(Square(n-1, m-1))))

    acc.append('\t)')

    # GOAL STATE
    acc.append('\t(:goal (and')

    for o in gps:
        for sq in grid_squares:
            acc.append('\t\t(visited {} {})'.format(o, str(sq)))

    acc.append('\t\t)')
    acc.append('\t)')
    acc.append(')')

    return '\n'.join(acc)


def generate_instance(n, m, r, g):
    name = 'map-n{}-m{}-r{}-g{}'.format(n, m, r, g)

    problem_str = format_problem(n, m, r, g, name)
    if args.dest_dir is not None:
        os.makedirs(args.dest_dir, exist_ok=True)
        dest_path = os.path.join(args.dest_dir, name + '.pddl')
        print('Writing to {}'.format(dest_path))
        with open(dest_path, 'w') as fp:
            print(problem_str, file=fp)
    else:
        print(problem_str)


if __name__ == '__main__':
    if args.n and args.m and args.r and args.g:
        generate_instance(args.n, args.m, args.r, args.g)
    else:
        # Generate 3x3 square grid, 2x3 square grid with 1-20 gps and 1-5 robots
        for r in range(1, 6):
            for g in range(1, 20):
                generate_instance(3, 3, r, g)