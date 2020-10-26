INSERT INTO Person  
VALUES ('1', 'Andrew', 'Anderson','Union Ave 10','New York','1986-12-30');
INSERT INTO Person 
VALUES ('2', 'Sam', 'Smith','Flushing Ave 342','New York','1986-12-30');

INSERT INTO History VALUES ( '1', 'IPhone XS', '1000', '1');
INSERT INTO History VALUES ( '2', 'MacBook Pro', '1800', '1');
INSERT INTO History VALUES ( '5', 'IPhone XR', '600', '2');
INSERT INTO History VALUES ( '6', 'IWatch 4', '400', '1');

SELECT 
    Person.ID,
    -- Count the number of orders
    COUNT(OrderID) as Orders,
    -- Add the total price of all orders
    SUM(Price) as Costs
FROM Person
	-- Join the tables Person and History on their IDs
	JOIN History 
	ON Person.ID = History.PersonID
-- Aggregate the information on the ID
GROUP BY Person.ID;