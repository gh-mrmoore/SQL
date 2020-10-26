-- Define totalCost
WITH flight_route (Departure, Arrival, stops, totalCost, route) AS(
	SELECT 
	  	f.Departure, f.Arrival, 
	  	0,
	  	-- Define the totalCost with the flight cost of the first flight
	  	Cost,
	  	CAST(Departure + ' -> ' + Arrival AS NVARCHAR(MAX))
	FROM flightPlan f
	WHERE Departure = 'Vienna'
	UNION ALL
	SELECT 
	  	p.Departure, f.Arrival, 
	  	p.stops + 1,
	  	-- Add the cost for each layover to the total costs
	  	p.totalCost + f.Cost,
	  	p.route + ' -> ' + f.Arrival
	FROM flightPlan f, flight_route p
	WHERE p.Arrival = f.Departure AND 
	      p.stops < 5)

SELECT 
	DISTINCT Arrival, 
    totalCost
FROM flight_route
-- Limit the total costs to 500
WHERE totalCost < 500;