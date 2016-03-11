![outfitSchema](database-intro/outfitSchema.png)

What are databases for?
They allow one to store data in a table like structure with as many values as you need for each record

What is a one-to-many relationship?
When using multiple tables that interact with each other, it is when value that is shared between two tables is used just 
once in your first table, but many times in the second table (i.e. the way id number was used just once in the regions table but 
many times in the states table)

What is a primary key? What is a foreign key? How can you determine which is which?
The primary key is the unique identifier for each record in a database. The foreign key is a field that is used to link one table
to another.  The primary key has to be unique throughout its table while foreign keys may repeat.

How can you select information out of a SQL database? What are some general guidelines for that?
You can use SELECt column FROM database to pick out a column of data.  If you want to take more specific data you can incorporate 
WHERE arguements to pull specific values.  Actions are generally capitalized, items are lowercase, and you need to end your 
statement with a semicolon. 