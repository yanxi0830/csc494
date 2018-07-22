"""
Generator for Restaurant problems
"""

import argparse
import os
import random

parser = argparse.ArgumentParser(
    description='generate a Restaurant problem of size C x S'
)
parser.add_argument('--c', type=int, help='number of customers')
parser.add_argument('--s', type=int, help='number of servers')

parser.add_argument(
    '--dest-dir',
    default=None,
    help='directory to store in (otherwise just print)'
)
args = parser.parse_args()


def format_problem(c, s, name):
    assert c > 0
    assert s > 0

    # PROBLEM DEFINITION
    acc = list(['(define (problem {})'.format(name), '\t(:domain restaurant)'])

    # OBJECTS
    acc.append('\t(:objects')

    customers = ['customer-{}'.format(i) for i in range(1, c+1)]
    servers = ['server-{}'.format(i) for i in range(1, s+1)]
    dough = ['dough-{}'.format(i) for i in range(1, c+1)]
    toppings = ['toppings-{}'.format(i) for i in range(1, c+1)]
    cheese = ['cheese-{}'.format(i) for i in range(1, c+1)]
    potato = ['potato-{}'.format(i) for i in range(1, c+1)]
    fries = ['fries-{}'.format(i) for i in range(1, c+1)]
    pizza = ['pizza-{}'.format(i) for i in range(1, c+1)]

    acc.append('\t\t' + ' '.join(customers + ['-', 'customer']))
    acc.append('\t\t' + ' '.join(servers + ['-', 'server']))
    acc.append('\t\t' + ' '.join(dough + ['-', 'dough']))
    acc.append('\t\t' + ' '.join(toppings + ['-', 'toppings']))
    acc.append('\t\t' + ' '.join(cheese + ['-', 'cheese']))
    acc.append('\t\t' + ' '.join(potato + ['-', 'potato']))
    acc.append('\t\t' + ' '.join(fries + ['-', 'fries']))
    acc.append('\t\t' + ' '.join(pizza + ['-', 'pizza']))

    acc.append('\t)')

    # INIT STATE
    acc.append('\t(:init')

    for o in servers:
        acc.append('\t\t(at {} kitchen)'.format(o))
        acc.append('\t\t(empty-hand {})'.format(o))

    for o in dough + toppings + cheese + potato:
        acc.append('\t\t(at-kitchen {})'.format(o))

    for o in customers:
        i = random.randint(0, 10)
        if i % 2 == 0:
            acc.append('\t\t(waiting-at {} table)'.format(o))
        else:
            acc.append('\t\t(waiting-at {} bar)'.format(o))

    for o in customers:
        i = random.randint(0, 10)
        if i % 2 == 0:
            acc.append('\t\t(ordered-pizza {})'.format(o))
        else:
            acc.append('\t\t(ordered-fries {})'.format(o))

    for o in pizza + fries:
        acc.append('\t\t(no-exist {})'.format(o))

    acc.append('\t)')

    # GOAL STATE
    acc.append('\t(:goal (and')

    for o in customers:
        acc.append('\t\t(served {})'.format(o))

    acc.append('\t\t)')
    acc.append('\t)')
    acc.append(')')

    return '\n'.join(acc)


def generate_instance(c, s):
    name = 'restaurant-c{}-s{}'.format(c, s)

    problem_str = format_problem(c, s, name)

    if args.dest_dir is not None:
        os.makedirs(args.dest_dir, exist_ok=True)
        dest_path = os.path.join(args.dest_dir, name + '.pddl')
        print('Writimg to {}'.format(dest_path))
        with open(dest_path, 'w') as fp:
            print(problem_str, file=fp)
    else:
        print(problem_str)


if __name__ == '__main__':
    if args.c and args.s:
        generate_instance(args.c, args.s)
    else:
        # Generate instances with 1-5 servers, and 1-10 customers
        for s in range(1, 6):
            for c in range(1, 11):
                generate_instance(c, s)