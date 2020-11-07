SELECT DISTINCT(NearestPop),-- Remove duplicate city
		Country
FROM Earthquakes
WHERE Magnitude >= 8 -- Add filter condition 
	AND NearestPop IS NOT NULL
ORDER BY NearestPop;