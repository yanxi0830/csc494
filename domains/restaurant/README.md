# Restaurant

## Description
This domain describes a restaurant that serves pizza and fries.
Customers sits at bar or tables (not distinguishing each table for generalization), they can order pizza, fries, or both. 
Pizzas are made from dough+cheese+toppings, after they are baked.
Fries are made from potatoes, after they are chopped and fried.

Indistinguishable Objects: 
- N servers
- M customers
- enough supply (M) dough, toppings, cheese, potatoes

Constant objects: 
- kitchen, bar, table - location
- 

#### Initial States
- All servers and ingredients are at the kitchen
- All customers are at bar or table, waiting for their order
- Customers either ordered pizza, fries, or pizza-n-fries


#### Actions
- `bake-pizza`: bake dough+toppings+cheese to get pizza
- `fry-fries`: fry the chopped up potato to get fries
- `chop-potato`: chop the potato into strips
- `pickup`: 

#### Goal States
All customers are served