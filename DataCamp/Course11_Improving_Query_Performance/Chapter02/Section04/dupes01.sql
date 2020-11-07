SELECT NearestPop, -- Add the closest city
		Country 
FROM Earthquakes
WHERE Magnitude >= 8
	AND NearestPop IS NOT NULL
ORDER BY NearestPop;