/*
=================================================
    Exercise 1 : Basic Syntax and DLL DML
=================================================
*/

USE base1;

TRUNCATE TABLE table1;

-- insert the items into the table
INSERT INTO table1 (name, color, variable) VALUES 
('item1', 'black', 50.00),
('item2', 'white', 150.00),
('item4', 'black', 20.00);

-- updates the table
UPDATE table1 
SET color = 'black', variable = 45.00 
WHERE id = 2;

-- filters in decresent mode
SELECT id, name, variable
FROM table1
WHERE color = 'black' AND variable < 100
ORDER BY variable DESC
LIMIT 10;
