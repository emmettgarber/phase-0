![onetoone](/imgs/onetoone.png)
![grocery](/imgs/grocery_list.png)

One to one occurs in this situation because the same primary key is used in both tables.  The reason for this is two fold,
first most of the time only the information provided in in the main record is what will be needed, so to save 
on processing strain we will move a number of variables into the second table.  Second the data in the second table is also 
of a private nature so by putting it there I am limiting access and setting up a way where it will only be accessed when needed.

What is a one-to-one database?
A database where the primary keys are shared between two tables

When would you use a one-to-one database? (Think generally, not in terms of the example you created).
When you have properties for your data that you rarely use, you can improve preformance by not having to call on
as much data each time you query the database.

What is a many-to-many database?
When you have multiple database with unique primary keys and you have another database that joins both of those databases
using those primary keys.

When would you use a many-to-many database? (Think generally, not in terms of the example you created).
When you have groups of multiple items that can be combined in various ways, when the relationship is not one to one or one to many.

What is confusing about database schemas? What makes sense?
Most of it makes sense but I would like to see some more many to many relationships in action to solidify the concept