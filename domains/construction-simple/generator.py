"""
Generator for Construction-Simple problems.
"""

import argparse
import os
import random

parser = argparse.ArgumentParser(
    description='generate a Driver-Log-Capacity problem of size W x T x P'
)
parser.add_argument('--w', type=int, help='number of workers')
parser.add_argument('--t', type=int, help='number of trucks')
parser.add_argument('--p', type=int, help='number of parts')
parser.add_argument(
    '--dest-dir',
    default=None,
    help='directory to store in (otherwise just print)'
)
args = parser.parse_args()


def format_problem(w, t, p, name):
    assert w > 0
    assert t > 0
    assert p > 0

    # PROBLEM DEFINITION
    acc = list(['(define (problem {})'.format(name), '\t(:domain construction-simple)'])

    # OBJECTS
    acc.append('\t(:objects')

    workers = ['worker-{}'.format(i) for i in range(1, w+1)]
    trucks = ['truck-{}'.format(i) for i in range(1, t+1)]
    parts = ['part-{}'.format(i) for i in range(1, p+1)]
    capacity = ['capacity-{}'.format(i) for i in range(0, 2)]
    location = ['warehouse', 'construction-area']

    acc.append('\t\t' + ' '.join(workers + ['-', 'worker']))
    acc.append('\t\t' + ' '.join(trucks + ['-', 'truck']))
    acc.append('\t\t' + ' '.join(parts + ['-', 'part']))
    acc.append('\t\t' + ' '.join(capacity + ['-', 'capacity-number']))
    acc.append('\t\t' + ' '.join(location + ['-', 'location']))

    acc.append('\t)')

    # INITIAL STATES
    acc.append('\t(:init')

    # workers, trucks at construction-area, parts at warehouse
    for o in workers + trucks:
        acc.append('\t\t(at {} construction-area)'.format(o))

    for o in parts:
        acc.append('\t\t(at {} warehouse)'.format(o))

    for o in trucks:
        acc.append('\t\t(no-driver {})'.format(o))

    for o in parts:
        acc.append('\t\t(no-assembled {})'.format(o))

    acc.append('\t\t(capacity-predecessor {} {})'.format(capacity[0], capacity[1]))
    for o in trucks:
        acc.append('\t\t(capacity {} {})'.format(o, capacity[1]))

    acc.append('\t)')

    # GOAL STATE
    acc.append('\t(:goal (and')
    for o in parts:
        acc.append('\t\t(at {} construction-area)'.format(o))
        acc.append('\t\t(assembled {})'.format(o))

    acc.append('\t\t)')
    acc.append('\t)')
    acc.append(')')

    return '\n'.join(acc)


def generate_instance(w, t, p):
    name = 'construction-simple-t{}-p{}-w{}'.format(t, p, w)

    problem_str = format_problem(w, t, p, name)
    if args.dest_dir is not None:
        os.makedirs(args.dest_dir, exist_ok=True)
        dest_path = os.path.join(args.dest_dir, name + '.pddl')
        print('Writimg to {}'.format(dest_path))
        with open(dest_path, 'w') as fp:
            print(problem_str, file=fp)
    else:
        print(problem_str)


if __name__ == '__main__':
    if args.w is not None and args.t is not None and args.p is not None:
        generate_instance(args.w, args.t, args.p)
    else:
        # Generate instances with 1-3 trucks, 1-10 workers, 1-20 parts
        for t in range(1, 4):
            for w in range(1, 11):
                for p in range(1, 21):
                    generate_instance(w, t, p)