-- Second query
SELECT t.TeamName,
       t.TeamCode,
	   t.City,
	   e.Date,
	   e.place, -- Place description
	   e.Country -- Country code
FROM Teams AS t
INNER JOIN Earthquakes AS e -- Operator to compare tables
	  ON t.City = e.NearestPop