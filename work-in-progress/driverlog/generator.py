"""
Generator for Driver-Log problems.
"""

import argparse
import os
import random

parser = argparse.ArgumentParser(
    description='generate a Driver-Log problem of size n x m x k'
)
parser.add_argument('--n', type=int, help='number of drivers')
parser.add_argument('--m', type=int, help='number of trucks')
parser.add_argument('--k', type=int, help='number of packages')
parser.add_argument(
    '--dest-dir',
    default=None,
    help='directory to store in (otherwise just print)'
)
args = parser.parse_args()


def format_problem(n, m, k, name):
    assert n > 0
    assert m > 0
    assert k > 0

    # problem definition
    acc = list(['(define (problem {})'.format(name), '\t(:domain driverlog)'])

    # objects
    acc.append('\t(:objects')

    drivers = ['driver-{}'.format(i) for i in range(1, n+1)]
    trucks = ['truck-{}'.format(i) for i in range(1, m+1)]
    packages = ['package-{}'.format(i) for i in range(1, k+1)]

    acc.append('\t\t' + ' '.join(drivers))
    acc.append('\t\t' + ' '.join(trucks))
    acc.append('\t\t' + ' '.join(packages))

    acc.append('\t)')

    # init state
    acc.append('\t(:init')

    locations = ['L1', 'L2', 'L3', 'D', 'G1', 'G2', 'P1', 'P2', 'P3', 'P4', 'P5', 'P6']
    for loc in locations:
        acc.append('\t\t(LOCATION {})'.format(loc))

    roads = [('L1', 'L2'), ('L1', 'L3'), ('L2', 'D'), ('L3', 'D'), ('D', 'G1'), ('D', 'G2')]
    for l1, l2 in roads:
        acc.append('\t\t(road {} {})'.format(l1, l2))
        acc.append('\t\t(road {} {})'.format(l2, l1))

    paths = [('P1', 'L1'), ('P1', 'L2'), ('P2', 'L1'), ('P2', 'L3'), ('P3', 'L2'), ('P3', 'D'), ('P4', 'L3'), ('P4', 'D'),
             ('P5', 'D'), ('P5', 'G1'), ('P6', 'D'), ('P6', 'G2')]

    for l1, l2 in paths:
        acc.append('\t\t(path {} {})'.format(l1, l2))
        acc.append('\t\t(path {} {})'.format(l2, l1))

    for d in drivers:
        acc.append('\t\t(DRIVER {})'.format(d))
        acc.append('\t\t(at {} L2)'.format(d))
    for t in trucks:
        acc.append('\t\t(TRUCK {})'.format(t))
        acc.append('\t\t(at {} L3)'.format(t))
        acc.append('\t\t(no-driver {})'.format(t))
    for p in packages:
        acc.append('\t\t(PACKAGE {})'.format(p))
        acc.append('\t\t(at {} L1)'.format(p))

    acc.append('\t)')

    # goal state
    acc.append('\t(:goal (and')
    for p in packages:
        i = random.randint(0, 10)
        if i % 2 == 0:
            acc.append('\t\t(at {} G1)'.format(p))
        else:
            acc.append('\t\t(at {} G2)'.format(p))
    for d in drivers:
        acc.append('\t\t(at {} D)'.format(d))
    for t in trucks:
        acc.append('\t\t(at {} D)'.format(t))

    acc.append('\t\t)')
    acc.append('\t)')
    acc.append(')')

    return '\n'.join(acc)


def generate_instance(n, m, k):
    name = 'driverlog-n{}-m{}-k{}'.format(n, m, k)

    problem_str = format_problem(n, m, k, name)
    if args.dest_dir is not None:
        os.makedirs(args.dest_dir, exist_ok=True)
        dest_path = os.path.join(args.dest_dir, name + '.pddl')
        print('Writimg to {}'.format(dest_path))
        with open(dest_path, 'w') as fp:
            print(problem_str, file=fp)
    else:
        print(problem_str)


if __name__ == '__main__':
    if args.n is not None and args.m is not None and args.k is not None:
        generate_instance(args.n, args.m, args.k)
    else:
        # Generate instances with 1-3 driver and trucks, 1-10 packages
        for n in range(1, 4):
            for m in range(1, 4):
                for k in range(1, 11):
                    generate_instance(n, m, k)