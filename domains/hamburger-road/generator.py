"""
Generator for Hamburger-Road problems.
"""

import argparse
import os
import random

parser = argparse.ArgumentParser(
    description='generate a Hamburger-Road problem of size p, (or L x B x M x P)'
)
parser.add_argument('--p', type=int, help='number of plates')
parser.add_argument('--l', type=int, help='number of lettuce')
parser.add_argument('--m', type=int, help='number of meat')
parser.add_argument('--b', type=int, help='number of buns')

parser.add_argument(
    '--dest-dir',
    default=None,
    help='directory to store in (otherwise just print)'
)
args = parser.parse_args()


def format_problem(l, b, m, p, name):
    assert l > 0
    assert b > 0
    assert m > 0
    assert p > 0

    # PROBLEM DEFINITION
    acc = list(['(define (problem {})'.format(name), '\t(:domain hamburger-road)'])

    # OBJECTS
    acc.append('\t(:objects')

    lettuce = ['lettuce-{}'.format(i) for i in range(1, l+1)]
    buns = ['buns-{}'.format(i) for i in range(1, b+1)]
    meat = ['meat-{}'.format(i) for i in range(1, m+1)]
    plates = ['plate-{}'.format(i) for i in range(1, p+1)]

    acc.append('\t\t' + ' '.join(lettuce + ['-', 'lettuce']))
    acc.append('\t\t' + ' '.join(buns + ['-', 'buns']))
    acc.append('\t\t' + ' '.join(meat + ['-', 'meat']))
    acc.append('\t\t' + ' '.join(plates + ['-', 'plate']))

    acc.append('\t)')

    # INIT STATE
    acc.append('\t(:init')

    # ROADS
    locations = ['L1', 'L2', 'L3', 'L4', 'L5']
    roads = []
    for i in range(len(locations)):
        for j in range(i+1, len(locations)):
            roads.append((locations[i], locations[j]))

    for l1, l2 in roads:
        acc.append('\t\t(road {} {})'.format(l1, l2))
        acc.append('\t\t(road {} {})'.format(l2, l1))

    # ALL LETTUCE AT L1
    for o in lettuce:
        acc.append('\t\t(at {} L1)'.format(o))

    # ALL BUNS AT L2
    for o in buns:
        acc.append('\t\t(at {} L2)'.format(o))

    # ALL MEAT AT L3
    for o in meat:
        acc.append('\t\t(at {} L3)'.format(o))

    # ALL PLATE AT L4
    for o in plates:
        acc.append('\t\t(at {} L4)'.format(o))

    # ROBOT R1 AT L5, ROBOT EMPTY HANDED
    acc.append('\t\t(at R1 L5)')
    acc.append('\t\t(empty-hand R1)')

    acc.append('\t)')

    # GOAL STATE
    acc.append('\t(:goal (and')
    for o in plates:
        acc.append('\t\t(have-burger {})'.format(o))

    acc.append('\t\t)')
    acc.append('\t)')
    acc.append(')')

    return '\n'.join(acc)


def generate_instance(l, b, m, p):
    name = 'hamburger-road-l{}-b{}-m{}-p{}'.format(l, b, m, p)

    problem_str = format_problem(l, b, m, p, name)
    if args.dest_dir is not None:
        os.makedirs(args.dest_dir, exist_ok=True)
        dest_path = os.path.join(args.dest_dir, name + '.pddl')
        print('Writimg to {}'.format(dest_path))
        with open(dest_path, 'w') as fp:
            print(problem_str, file=fp)
    else:
        print(problem_str)


if __name__ == '__main__':
    if args.l is not None and args.b is not None and args.m is not None and args.p is not None:
        generate_instance(args.l, args.b, args.m, args.p)
    else:
        # Generate instances with 10-100 plates
        for i in range(1, 11):
            generate_instance(i*10, i*10, i*10, i*10)