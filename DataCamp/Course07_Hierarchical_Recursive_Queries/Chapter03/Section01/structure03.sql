INSERT INTO Person 
VALUES ('1','Andrew','Anderson','Union Ave 10','New York','1986-12-30');
INSERT INTO Person 
VALUES ('2','Peter','Jackson','342 Flushing st','New York','1986-12-30');

-- Set the person's first name to Jones for ID = 1
UPDATE Person
SET Firstname = 'Jones'
WHERE ID = 1;

-- Update the birthday of the person with the last name Jackson
UPDATE Person
SET Birthday = '1980-01-05'
WHERE Lastname = 'Jackson';

SELECT * 
FROM Person;