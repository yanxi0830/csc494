"""
Generator for Restaurant-Strips problems.
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
    acc = list(['(define (problem {})'.format(name), '\t(:domain restaurant-strips)'])

    # OBJECTS
    acc.append('\t(:objects')

    c_fries = random.randint(0, c)
    c_pizza = c - c_fries

    customers = ['customer-{}'.format(i) for i in range(1, c + 1)]
    servers = ['server-{}'.format(i) for i in range(1, s + 1)]
    dough = ['dough-{}'.format(i) for i in range(1, c_pizza + 1)]
    toppings = ['toppings-{}'.format(i) for i in range(1, c_pizza + 1)]
    cheese = ['cheese-{}'.format(i) for i in range(1, c_pizza + 1)]
    potato = ['potato-{}'.format(i) for i in range(1, c_fries + 1)]
    fries = ['fries-{}'.format(i) for i in range(1, c_fries + 1)]
    pizza = ['pizza-{}'.format(i) for i in range(1, c_pizza + 1)]

    acc.append('\t\t' + ' '.join(customers))
    acc.append('\t\t' + ' '.join(servers))
    acc.append('\t\t' + ' '.join(dough))
    acc.append('\t\t' + ' '.join(toppings))
    acc.append('\t\t' + ' '.join(cheese))
    acc.append('\t\t' + ' '.join(potato))
    acc.append('\t\t' + ' '.join(fries))
    acc.append('\t\t' + ' '.join(pizza))
    acc.append('\t\t' + ' '.join(['kitchen', 'table', 'bar']))

    acc.append('\t)')

    # INIT STATE
    acc.append('\t(:init')

    # declare the types
    acc.append('\t\t(LOCATION kitchen)')
    acc.append('\t\t(LOCATION table)')
    acc.append('\t\t(LOCATION bar)')

    for o in customers:
        acc.append('\t\t(CUSTOMER {})'.format(o))

    for o in servers:
        acc.append('\t\t(SERVER {})'.format(o))

    for o in dough:
        acc.append('\t\t(DOUGH {})'.format(o))

    for o in toppings:
        acc.append('\t\t(TOPPINGS {})'.format(o))

    for o in cheese:
        acc.append('\t\t(CHEESE {})'.format(o))

    for o in potato:
        acc.append('\t\t(POTATO {})'.format(o))

    for o in pizza:
        acc.append('\t\t(PIZZA {})'.format(o))

    for o in fries:
        acc.append('\t\t(FRIES {})'.format(o))

    # initial customer states
    for o in customers[:c_pizza]:
        i = random.randint(0, 10)
        if i % 2 == 0:
            acc.append('\t\t(waiting-at {} table)'.format(o))
        else:
            acc.append('\t\t(waiting-at {} bar)'.format(o))
        acc.append('\t\t(ordered-pizza {})'.format(o))
    for o in customers[c_pizza:]:
        i = random.randint(0, 10)
        if i % 2 == 0:
            acc.append('\t\t(waiting-at {} table)'.format(o))
        else:
            acc.append('\t\t(waiting-at {} bar)'.format(o))
        acc.append('\t\t(ordered-fries {})'.format(o))

    # initial server states
    for o in servers:
        acc.append('\t\t(at {} kitchen)'.format(o))
        acc.append('\t\t(empty-hand {})'.format(o))

    # initial ingredients states
    for o in dough + toppings + cheese + potato:
        acc.append('\t\t(at {} kitchen)'.format(o))

    for o in potato:
        acc.append('\t\t(full-potato {})'.format(o))

    # initial food states
    for o in pizza:
        acc.append('\t\t(no-exist-pizza {})'.format(o))

    for o in fries:
        acc.append('\t\t(no-exist-fries {})'.format(o))

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
    name = 'restaurant-strips-s{}-c{}'.format(s, c)

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
        # Generate instances with 1 server, 1-20 customers
        for c in range(1, 21):
            generate_instance(c, 1)