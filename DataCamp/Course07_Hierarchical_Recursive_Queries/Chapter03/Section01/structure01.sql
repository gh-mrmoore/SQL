-- Define the table Person
CREATE TABLE Person (
  	-- Define the Individual ID
  	IndividualID INT NOT NULL,
  	-- Set Firstname and Lastname not to be NULL of type VARCHAR(255)
	Firstname VARCHAR(255) NOT NULL,
	Lastname VARCHAR(255) NOT NULL,
	Address VARCHAR(255) NOT NULL,
  	City CHAR(32) NOT NULL,
   	-- Define Birthday as DATE
  	Birthday DATE
);

SELECT * 
FROM Person;