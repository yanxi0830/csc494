# Restaurant-Simple

## Description
This domain describes a restaurant that serves pizza and fries.
Customers sits at bar or tables (not distinguishing each table for generalization), they can order pizza or fries. 
Pizza and fries are ready in kitchen

Indistinguishable Objects: 
- N servers
- M customers
- enough supply (M) of pizza and fries

Constant objects: 
- kitchen, bar, table - location

#### Initial States
- All servers and ingredients are at the kitchen
- All customers are at bar or table, waiting for their order
- Customers either ordered pizza or fries 


#### Actions
- `pickup-food`: pick up baked pizza or fries from the kitchen
- `serve-pizza`: serve pizza to customer
- `serve-fries`: serve fries to customer
- `go-to`: travel between kitchen, bar, and tables

#### Goal States
All customers are served