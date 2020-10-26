-- Add the column EMail to Person
ALTER TABLE Person
ADD Email VARCHAR(255);

-- Delete the column Birthday of Person
ALTER TABLE Person
DROP COLUMN Birthday;

-- Check the table definition
SELECT * 
FROM Person;