CREATE TABLE Trip (   
    -- Define the Departure
  	Departure VARCHAR(255) NOT NULL,
    BusName VARCHAR(255) NOT NULL,
    -- Define the Destination
    Destination VARCHAR(255) NOT NULL,
);

-- Insert a route from San Francisco to New York
INSERT INTO Trip VALUES ( 'San Francisco' , 'Bus 1' , 'New York');
-- Insert a route from Florida to San Francisco
INSERT INTO Trip VALUES ( 'Florida', 'Bus 9' , 'San Francisco');
INSERT INTO Trip VALUES ( 'San Francisco', 'Bus 2','Texas');
INSERT INTO Trip VALUES ( 'San Francisco', 'Bus 3','Florida');
INSERT INTO Trip VALUES ( 'San Francisco', 'Bus 4','Washington');
INSERT INTO Trip VALUES ( 'New York', 'Bus 5','Texas');
INSERT INTO Trip VALUES ( 'New York', 'Bus 6','Washington');
INSERT INTO Trip VALUES ( 'Florida', 'Bus 7','New York');
INSERT INTO Trip VALUES ( 'Florida', 'Bus 8','Toronto');

-- Get all possible departure locations
SELECT DISTINCT Departure 
FROM Trip;