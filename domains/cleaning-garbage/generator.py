"""
Generator for Cleaning problems
"""

import argparse
import os
import random

parser = argparse.ArgumentParser(
    description='generate a Cleaning problem of size o x p x l x r'
)
parser.add_argument('--o', type=int, help='number of organic waste')
parser.add_argument('--p', type=int, help='number of paper waste')
parser.add_argument('--l', type=int, help='number of plastic waste')
parser.add_argument('--r', type=int, help='number of robots')
parser.add_argument(
    '--dest-dir',
    default=None,
    help='directory to store in (otherwise just print)'
)
args = parser.parse_args()


def format_problem(o, p, l, r, name):

    # problem definition
    acc = list(['(define (problem {})'.format(name), '\t(:domain cleaning)'])

    # objects
    acc.append('\t(:objects')

    organics = ['organic-{}'.format(i) for i in range(1, o+1)]
    papers = ['paper-{}'.format(i) for i in range(1, p+1)]
    plastic = ['plastic-{}'.format(i) for i in range(1, l+1)]
    robots = ['robot-{}'.format(i) for i in range(1, r+1)]

    acc.append('\t\t' + ' '.join(organics + ['-', 'organic']))
    acc.append('\t\t' + ' '.join(papers + ['-', 'paper']))
    acc.append('\t\t' + ' '.join(plastic + ['-', 'plastic']))
    acc.append('\t\t' + ' '.join(robots + ['-', 'robot']))

    acc.append('\t)')

    # init state
    acc.append('\t(:init')

    for obj in organics + papers + plastic:
        acc.append('\t\t(on-ground {})'.format(obj))

    for x in robots:
        acc.append('\t\t(empty-hand {})'.format(x))

    acc.append('\t)')

    # goal state
    acc.append('\t(:goal (and')

    # for obj in organics + papers + plastic:
    #     acc.append('\t\t(not (on-ground {}))'.format(obj))

    for o in organics:
        acc.append('\t\t(in-compost-bin {})'.format(o))

    for o in plastic:
        acc.append('\t\t(in-plastic-bin {})'.format(o))

    for o in papers:
        acc.append('\t\t(in-paper-bin {})'.format(o))

    acc.append('\t\t)')
    acc.append('\t)')
    acc.append(')')

    return '\n'.join(acc)


def generate_instance(o, p, l, r):
    name = 'cleaning-o{}-p{}-l{}-r{}'.format(o, p, l, r)

    problem_str = format_problem(o, p, l, r, name)
    if args.dest_dir is not None:
        os.makedirs(args.dest_dir, exist_ok=True)
        dest_path = os.path.join(args.dest_dir, name + '.pddl')
        print('Writing to {}'.format(dest_path))
        with open(dest_path, 'w') as fp:
            print(problem_str, file=fp)
    else:
        print(problem_str)


if __name__ == '__main__':
    if args.o is not None and args.p is not None and args.l is not None and args.r is not None:
        generate_instance(args.o, args.p, args.l, args.r)
    else:
        # Generate 10 instances with 1-3 robots, 10-100 organics, papers, plastic
        for r in range(1, 4):
            for i in range(1, 11):
                generate_instance(i*10, i*10, i*10, r)
