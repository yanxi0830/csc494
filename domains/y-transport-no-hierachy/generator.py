"""
Generator for Y-Transport problems.
"""

import argparse
import os
import random

parser = argparse.ArgumentParser(
    description='generate a Y-Transport problem of size M x S'
)
parser.add_argument('--m', type=int, help='number of monitors')
parser.add_argument('--s', type=int, help='number of servers')
parser.add_argument(
    '--dest-dir',
    default=None,
    help='directory to store in (otherwise just print)'
)
args = parser.parse_args()


def format_problem(m, s, name):

    # problem definition
    acc = list(['(define (problem {})'.format(name), '\t(:domain y-transport)'])

    # objects
    acc.append('\t(:objects')
    monitors = ['monitor-{}'.format(i) for i in range(1, m+1)]
    servers = ['server-{}'.format(i) for i in range(1, s+1)]
    capacity = ['capacity-{}'.format(i) for i in range(0, 3)]

    acc.append('\t\t' + ' '.join(monitors + ['-', 'package']))
    acc.append('\t\t' + ' '.join(servers +  ['-', 'package']))
    acc.append('\t\t' + ' '.join(capacity + ['-', 'capacity-number']))

    acc.append('\t)')

    # init state
    acc.append('\t(:init')
    acc.append('\t\t(capacity-predecessor {} {})'.format(capacity[0], capacity[1]))
    acc.append('\t\t(capacity-predecessor {} {})'.format(capacity[1], capacity[2]))

    locs = ['monitor-loc', 'server-loc', 'goal-loc']

    for o in monitors:
        acc.append('\t\t(MONITOR {})'.format(o))
    for o in servers:
        acc.append('\t\t(SERVER {})'.format(o))

    for l in locs:
        acc.append('\t\t(road temp-loc {})'.format(l))
        acc.append('\t\t(road {} temp-loc)'.format(l))

    for o in monitors:
        acc.append('\t\t(at {} monitor-loc)'.format(o))
    for o in servers:
        acc.append('\t\t(at {} server-loc)'.format(o))

    acc.append('\t\t(at truck-1 temp-loc)')
    acc.append('\t\t(at truck-2 temp-loc)')
    acc.append('\t\t(capacity truck-1 capacity-1)')
    acc.append('\t\t(capacity truck-2 capacity-2)')

    acc.append('\t\t(goal goal-loc)')
    acc.append('\t\t(no-goal monitor-loc)')
    acc.append('\t\t(no-goal server-loc)')
    acc.append('\t\t(no-goal temp-loc)')

    acc.append('\t)')

    # goal state
    acc.append('\t(:goal (and')
    for mon in monitors:
        acc.append('\t\t(at {} goal-loc)'.format(mon))
    for ser in servers:
        acc.append('\t\t(at {} goal-loc)'.format(ser))

    acc.append('\t\t)')
    acc.append('\t)')
    acc.append(')')

    return '\n'.join(acc)


def generate_instance(m, s):
    name = 'ytransport-m{}-s{}'.format(m, s)

    problem_str = format_problem(m, s, name)
    if args.dest_dir is not None:
        os.makedirs(args.dest_dir, exist_ok=True)
        dest_path = os.path.join(args.dest_dir, name + '.pddl')
        print('Writimg to {}'.format(dest_path))
        with open(dest_path, 'w') as fp:
            print(problem_str, file=fp)
    else:
        print(problem_str)


if __name__ == '__main__':
    if args.m is not None and args.s is not None:
        generate_instance(args.m, args.s)
    else:
        generate_instance(5, 5)
