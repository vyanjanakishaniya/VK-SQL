--Write a SQL statement to add primary key constraint 'pk_a' for table 'table_a' and fields 'col_b, col_c'.

--Answer- ALTER TABLE table_a ADD CONSTRAINT pk_a PRIMARY KEY (col_b, col_c);
-- explaination:  The SQL query you provided is used to alter a table called "table_a" by adding a new constraint. 
--The constraint being added is a primary key constraint, which ensures that the combination of values in columns "col_b" and "col_c" 
--will uniquely identify each row in the table.

--In other words, this query specifies that the combination of values in "col_b" and "col_c" should form a unique identifier for each
-- row in "table_a." It means that no two rows in the table can have the same values for both "col_b" and "col_c" simultaneously.

--By adding this primary key constraint, you're enforcing data integrity in the table, preventing duplicate or null values in the specified columns.