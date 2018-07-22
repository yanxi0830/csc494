"""
Generator for Driver-Log-Capacity problems.
"""

import argparse
import os
import random

parser = argparse.ArgumentParser(
    description='generate a Driver-Log-Capacity problem of size D X T X P'
)
parser.add_argument('--d', type=int, help='number of drivers')
parser.add_argument('--t', type=int, help='number of trucks')
parser.add_argument('--p', type=int, help='number of packages')
parser.add_argument(
    '--dest-dir',
    default=None,
    help='directory to store in (otherwise just print)'
)
args = parser.parse_args()


def format_problem(t, d, p, name):
    assert d > 0
    assert t > 0
    assert p > 0

    # problem definition
    acc = list(['(define (problem {})'.format(name), '\t(:domain driverlog-capacity)'])

    # objects
    acc.append('\t(:objects')

    drivers = ['driver-{}'.format(i) for i in range(1, d+1)]
    trucks = ['truck-{}'.format(i) for i in range(1, t+1)]
    packages = ['package-{}'.format(i) for i in range(1, p+1)]
    capacity = ['capacity-{}'.format(i) for i in range(0, 2)]

    acc.append('\t\t' + ' '.join(drivers + ['-', 'driver']))
    acc.append('\t\t' + ' '.join(trucks + ['-', 'truck']))
    acc.append('\t\t' + ' '.join(packages + ['-', 'package']))
    acc.append('\t\t' + ' '.join(capacity + ['-', 'capacity-number']))

    acc.append('\t)')

    # init state
    acc.append('\t(:init')

    locations = ['L1', 'L2', 'L3', 'D', 'G1', 'G2', 'P1', 'P2', 'P3', 'P4', 'P5', 'P6']

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
        acc.append('\t\t(at {} L2)'.format(d))
    for t in trucks:
        acc.append('\t\t(at {} L3)'.format(t))
        acc.append('\t\t(no-driver {})'.format(t))
    for p in packages:
        acc.append('\t\t(at {} L1)'.format(p))

    acc.append('\t\t(capacity-predecessor {} {})'.format(capacity[0], capacity[1]))
    for t in trucks:
        acc.append('\t\t(capacity {} {})'.format(t, capacity[1]))

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


def generate_instance(t, d, p):
    name = 'driverlog-capacity-t{}-d{}-p{}'.format(t, d, p)

    problem_str = format_problem(t, d, p, name)
    if args.dest_dir is not None:
        os.makedirs(args.dest_dir, exist_ok=True)
        dest_path = os.path.join(args.dest_dir, name + '.pddl')
        print('Writimg to {}'.format(dest_path))
        with open(dest_path, 'w') as fp:
            print(problem_str, file=fp)
    else:
        print(problem_str)


if __name__ == '__main__':
    if args.d is not None and args.t is not None and args.p is not None:
        generate_instance(args.d, args.t, args.p)
    else:
        # Generate instances with 1-3 trucks, 1-10 drivers, 1-20 packages
        for t in range(1, 4):
            for d in range(1, 11):
                for p in range(1, 21):
                    generate_instance(t, d, p)
