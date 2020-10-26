WITH flight_route (Departure, Arrival, stops) AS(
  	SELECT 
  	  	f.Departure, f.Arrival,
		-- Initialize the number of stops
  	  	0
  	FROM flightPlan f
  	WHERE Departure = 'Vienna'
  	UNION ALL
  	SELECT 
  	  	p.Departure, f.Arrival,
  		-- Increment the number of stops
  	  	p.stops + 1
  	FROM flightPlan f, flight_route p
  	-- Limit the number of stops
  	WHERE p.Arrival = f.Departure AND 
  	      p.stops < 5)

SELECT 
	DISTINCT Arrival, 
    Departure, 
    stops
FROM flight_route;