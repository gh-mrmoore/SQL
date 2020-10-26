INSERT INTO Person 
VALUES ( '1', 'Andrew', 'Anderson', 'Address 1', 'City 1', '1986-12-30');
INSERT INTO Person 
VALUES ( '2', 'Peter', 'Jackson', 'Address 2', 'City 2', '1986-12-30');
INSERT INTO Person 
VALUES ( '3', 'Michaela', 'James', 'Address 3', 'City 3', '1976-03-07');

DELETE FROM Person 
WHERE ID = 1;
DELETE FROM Person 
WHERE Lastname = 'Jackson';

-- Drop the table Person
DROP TABLE Person

SELECT * 
FROM Person;