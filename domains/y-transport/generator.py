"""
Generator for Y-Transport problems.
"""

import argparse
import os
import random

parser = argparse.ArgumentParser(
    description='generate a Y-Transport problem of size n, m'
)
parser.add_argument('--n', type=int, help='number of monitors')
parser.add_argument('--m', type=int, help='number of servers')
parser.add_argument(
    '--dest-dir',
    default=None,
    help='directory to store in (otherwise just print)'
)
args = parser.parse_args()


def format_problem(n, m, name):
    assert n > 0

    # problem definition
    acc = list(['(define (problem {})'.format(name), '\t(:domain y-transport)'])

    # objects
    acc.append('\t(:objects')

    monitors = ['monitor-{}'.format(i) for i in range(1, n+1)]
    monitors.append('-')
    monitors.append('monitor')
    servers = ['server-{}'.format(i) for i in range(1, m+1)]
    servers.append('-')
    servers.append('server')
    capacity = ['capacity-{}'.format(i) for i in range(0, 3)]
    capacity.append('-')
    capacity.append('capacity-number')

    acc.append('\t\t' + ' '.join(monitors))
    acc.append('\t\t' + ' '.join(servers))
    acc.append('\t\t' + ' '.join(capacity))

    acc.append('\t)')

    # init state
    acc.append('\t(:init')
    acc.append('\t\t(capacity-predecessor {} {})'.format(capacity[0], capacity[1]))
    acc.append('\t\t(capacity-predecessor {} {})'.format(capacity[1], capacity[2]))

    acc.extend(['\t\t(path L1 D)', '\t\t(path L2 D)', '\t\t(path L3 D)'])
    for mon in monitors[:-2]:
        acc.append('\t\t(at {} L1)'.format(mon))

    for ser in servers[:-2]:
        acc.append('\t\t(at {} L2)'.format(ser))

    acc.extend(['\t\t(at T1 L1)', '\t\t(capacity T1 capacity-1)'])
    acc.extend(['\t\t(at T2 L2)', '\t\t(capacity T2 capacity-2)'])
    acc.append('\t\t(goal L3)')

    acc.append('\t)')

    # goal state
    acc.append('\t(:goal (and')
    for mon in monitors[:-2]:
        acc.append('\t\t(at {} L3)'.format(mon))
    for ser in servers[:-2]:
        acc.append('\t\t(at {} L3)'.format(ser))

    acc.append('\t\t)')
    acc.append('\t)')
    acc.append(')')

    return '\n'.join(acc)


def generate_instance(n, m):
    name = 'ytransport-n{}-m{}'.format(n, m)

    problem_str = format_problem(n, m, name)
    if args.dest_dir is not None:
        os.makedirs(args.dest_dir, exist_ok=True)
        dest_path = os.path.join(args.dest_dir, name + '.pddl')
        print('Writimg to {}'.format(dest_path))
        with open(dest_path, 'w') as fp:
            print(problem_str, file=fp)
    else:
        print(problem_str)


if __name__ == '__main__':
    if args.n is not None and args.m is not None:
        generate_instance(args.n, args.m)
    else:
        # Generate 10 valid instance (i.e. n == m)
        for n in range(1, 11):
            generate_instance(n, n)

        # Generate 2 invalid instance (i.e. n != m)
        generate_instance(random.randint(1, 10), random.randint(1, 10))
        generate_instance(random.randint(1, 10), random.randint(1, 10))