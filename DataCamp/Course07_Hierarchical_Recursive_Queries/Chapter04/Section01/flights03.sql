WITH flight_route (Departure, Arrival, stops, route) AS(
	SELECT 
	  	f.Departure, f.Arrival, 
	  	0,
		-- Define the route of a flight
	  	CAST(Departure + ' -> ' + Arrival AS NVARCHAR(MAX))
	FROM flightPlan f
	WHERE Departure = 'Vienna'
	UNION ALL
	SELECT 
	  	p.Departure, f.Arrival, 
	  	p.stops + 1,
		-- Add the layover airport to the route for each recursion step
	  	p.route + ' -> ' + f.Arrival
	FROM flightPlan f, flight_route p
	WHERE p.Arrival = f.Departure AND 
	      p.stops < 5)

SELECT 
	DISTINCT Arrival, 
    Departure, 
    route, 
    stops
FROM flight_route;