"""
Generator for Hamburger-Strips problems.
"""

import argparse
import os
import random

parser = argparse.ArgumentParser(
    description='generate a Hamburger-Road problem of size P x R'
)
parser.add_argument('--p', type=int, help='number of plates')
parser.add_argument('--r', type=int, help='number of robots')

parser.add_argument(
    '--dest-dir',
    default=None,
    help='directory to store in (otherwise just print)'
)
args = parser.parse_args()


def format_problem(p, r, name):
    assert p > 0
    assert r > 0

    # PROBLEM DEFINITION
    acc = list(['(define (problem {})'.format(name), '\t(:domain hamburger-strips)'])

    # OBJECTS
    acc.append('\t(:objects')

    lettuce = ['lettuce-{}'.format(i) for i in range(1, p+1)]
    buns = ['buns-{}'.format(i) for i in range(1, p+1)]
    meat = ['meat-{}'.format(i) for i in range(1, p+1)]
    plates = ['plate-{}'.format(i) for i in range(1, p+1)]
    robots = ['robot-{}'.format(i) for i in range(1, r+1)]
    locations = ['robot-loc', 'buns-loc', 'lettuce-loc', 'meat-loc', 'plate-loc']

    acc.append('\t\t' + ' '.join(lettuce))
    acc.append('\t\t' + ' '.join(buns))
    acc.append('\t\t' + ' '.join(meat))
    acc.append('\t\t' + ' '.join(plates))
    acc.append('\t\t' + ' '.join(robots))
    acc.append('\t\t' + ' '.join(locations))

    acc.append('\t)')

    # INIT STATE
    acc.append('\t(:init')

    # types
    for l in locations:
        acc.append('\t\t(LOCATION {})'.format(l))

    for o in robots:
        acc.append('\t\t(ROBOT {})'.format(o))

    for b in buns:
        acc.append('\t\t(BUNS {})'.format(b))

    for o in lettuce:
        acc.append('\t\t(LETTUCE {})'.format(o))

    for o in meat:
        acc.append('\t\t(MEAT {})'.format(o))

    for o in plates:
        acc.append('\t\t(PLATE {})'.format(o))

    # initial position of objects
    for o in robots:
        acc.append('\t\t(at {} robot-loc)'.format(o))
    for o in buns:
        acc.append('\t\t(at {} buns-loc)'.format(o))
    for o in lettuce:
        acc.append('\t\t(at {} lettuce-loc)'.format(o))
    for o in meat:
        acc.append('\t\t(at {} meat-loc)'.format(o))
    for o in plates:
        acc.append('\t\t(at {} plate-loc)'.format(o))

    # initial states
    for o in plates:
        acc.append('\t\t(no-burger {})'.format(o))
        acc.append('\t\t(no-buns {})'.format(o))
        acc.append('\t\t(no-lettuce {})'.format(o))
        acc.append('\t\t(no-meat {})'.format(o))

    for o in robots:
        acc.append('\t\t(empty-hand {})'.format(o))

    acc.append('\t)')

    # GOAL STATE
    acc.append('\t(:goal (and')
    for o in plates:
        acc.append('\t\t(have-burger {})'.format(o))

    acc.append('\t\t)')
    acc.append('\t)')
    acc.append(')')

    return '\n'.join(acc)


def generate_instance(p, r, save=True):
    name = 'hamburger-strips-p{}-r{}'.format(p, r)

    problem_str = format_problem(p, r, name)
    if args.dest_dir is not None:
        os.makedirs(args.dest_dir, exist_ok=True)
        dest_path = os.path.join(args.dest_dir, name + '.pddl')
        print('Writing to {}'.format(dest_path))
        with open(dest_path, 'w') as fp:
            print(problem_str, file=fp)
    elif save:
        dest_path = os.path.join('/home/xixiyan/git/csc494/domains/hamburger-strips/problems', name + '.pddl')
        print('Writing to {}',format(dest_path))
        with open(dest_path, 'w') as fp:
            print(problem_str, file=fp)
    else:
        print(problem_str)

    return name


if __name__ == '__main__':
    if args.p is not None and args.r is not None:
        generate_instance(args.p, args.r)
    else:
        # Generate instances with 10-100 plates, 1 robot
        for i in range(1, 21):
            generate_instance(i*10, 1)
