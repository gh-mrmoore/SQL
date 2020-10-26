CREATE TABLE Person (
  	-- Define the primary key for Person of type INT
  	PersonID INT NOT NULL PRIMARY KEY,
	Firstname VARCHAR(255) NOT NULL,
	Lastname VARCHAR(255) NOT NULL,
);

CREATE TABLE History (   
    -- Define the primary key for History
  	OrderID INT NOT NULL PRIMARY KEY,
    Item VARCHAR(255) NOT NULL,
    Price INT NOT NULL,
  	-- Define the foreign key for History
    PersonID INT FOREIGN KEY REFERENCES Person(PersonID)    
);

SELECT * 
FROM History;