"""
Generator for Cleaning problems
"""

import argparse
import os
import random

parser = argparse.ArgumentParser(
    description='generate a Cleaning problem of size b x g x c x r'
)
parser.add_argument('--b', type=int, help='number of books')
parser.add_argument('--g', type=int, help='number of garbage')
parser.add_argument('--c', type=int, help='number of clothes')
parser.add_argument('--r', type=int, help='number of robots')
parser.add_argument(
    '--dest-dir',
    default=None,
    help='directory to store in (otherwise just print)'
)
args = parser.parse_args()


def format_problem(b, g, c, r, name):
    assert b > 0
    assert g > 0
    assert c > 0
    assert r > 0

    # problem definition
    acc = list(['(define (problem {})'.format(name), '\t(:domain cleaning)'])

    # objects
    acc.append('\t(:objects')

    books = ['book-{}'.format(i) for i in range(1, b+1)]
    garbages = ['garbage-{}'.format(i) for i in range(1, g+1)]
    clothes = ['clothes-{}'.format(i) for i in range(1, c+1)]
    robots = ['robot-{}'.format(i) for i in range(1, r+1)]

    acc.append('\t\t' + ' '.join(books + ['-', 'book']))
    acc.append('\t\t' + ' '.join(garbages + ['-', 'garbage']))
    acc.append('\t\t' + ' '.join(clothes + ['-', 'clothes']))
    acc.append('\t\t' + ' '.join(robots + ['-', 'robot']))

    acc.append('\t)')

    # init state
    acc.append('\t(:init')

    for obj in books + garbages + clothes:
        acc.append('\t\t(on-ground {})'.format(obj))

    for x in robots:
        acc.append('\t\t(empty-hand {})'.format(x))

    acc.append('\t)')

    # goal state
    acc.append('\t(:goal (and')

    # for obj in books + garbages + clothes:
    #     acc.append('\t\t(not (on-ground {}))'.format(obj))

    for o in books:
        acc.append('\t\t(in-shelf {})'.format(o))

    for o in clothes:
        acc.append('\t\t(in-closet {})'.format(o))

    for o in garbages:
        acc.append('\t\t(in-trash {})'.format(o))

    acc.append('\t\t)')
    acc.append('\t)')
    acc.append(')')

    return '\n'.join(acc)


def generate_instance(b, g, c, r):
    name = 'cleaning-b{}-g{}-c{}-r{}'.format(b, g, c, r)

    problem_str = format_problem(b, g, c, r, name)
    if args.dest_dir is not None:
        os.makedirs(args.dest_dir, exist_ok=True)
        dest_path = os.path.join(args.dest_dir, name + '.pddl')
        print('Writing to {}'.format(dest_path))
        with open(dest_path, 'w') as fp:
            print(problem_str, file=fp)
    else:
        print(problem_str)


if __name__ == '__main__':
    if args.b is not None and args.g is not None and args.c is not None and args.r is not None:
        generate_instance(args.b, args.g, args.c, args.r)
    else:
        # Generate 10 instances with 1-3 robots, 10-100 books, garbages, clothes
        for r in range(1, 4):
            for i in range(1, 11):
                generate_instance(i*10, i*10, i*10, r)