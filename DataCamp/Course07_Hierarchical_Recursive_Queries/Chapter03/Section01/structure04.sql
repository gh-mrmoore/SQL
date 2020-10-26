INSERT INTO Person 
VALUES ('1','Andrew','Anderson','Adress 1','City 1','1986-12-30');
INSERT INTO Person 
VALUES ('2','Peter','Jackson','Adress 2','City 2','1986-12-30');
INSERT INTO Person 
VALUES ('5','Michaela','James','Adress 3','City 3','1976-03-07');

-- Delete the record for the person with the ID of 1
DELETE FROM Person 
WHERE ID = 1;
-- Delete the record with the name Jackson
DELETE FROM Person 
WHERE Lastname = 'Jackson';

SELECT * 
FROM Person;