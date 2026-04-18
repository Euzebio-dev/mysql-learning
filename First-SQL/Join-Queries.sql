/*
=================================================
        Exercise 3 : Join Queries
=================================================
*/

use base4;

CREATE TABLE IF NOT EXISTS table_a (
id INT AUTO_INCREMENT PRIMARY KEY,
name_a VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS table_b (
id INT AUTO_INCREMENT PRIMARY KEY,
name_b VARCHAR(50) NOT NULL,
value_b DECIMAL(10,2),
fk_id INT
--Foreign key reference to table_a.id. Not enforced here.
);

TRUNCATE TABLE table_a;
TRUNCATE TABLE table_b;

INSERT INTO table_a (name_a) VALUES
--Insert data into table_a.

('category 1'),
('category 2'),
('category 3');
--Three categories created. IDs will be 1, 2, 3.

INSERT INTO table_b (name_b, value_b, fk_id) VALUES
--Insert data into table_b.

('item 1', 100.00, 1),
('item 2', 200.00, 2),
('item 3', 300.00, 4),
('item 4', 50.00, NULL);
--No relation. fk_id is null.

SELECT b.name_b, a.name_a, b.value_b
--Select item name, category name, and value.

FROM table_b b
--Use table_b as main table. Alias b.

INNER JOIN table_a a ON b.fk_id = a.id;
--Return only rows where fk_id matches a.id.
--Result excludes item 3 and item 4.

SELECT b.name_b, a.name_a

FROM table_b b

LEFT JOIN table_a a ON b.fk_id = a.id;
--Return all rows from table_b.
--If no match, a.name_a is null.
--Includes item 3 and item 4.

SELECT b.name_b, a.name_a

FROM table_b b

CROSS JOIN table_a a;
--Combine every row of table_b with every row of table_a.
--Total rows = 4 items × 3 categories = 12 results.