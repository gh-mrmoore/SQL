/*
convert:
FROM Earthquakes WHERE Country = 'JP' AND Magnitude >= 8 SELECT Date, Place ,NearestPop, Magnitude ORDER BY Magnitude DESC;
*/

-- To
SELECT Date, 
    Place, 
    NearestPop, 
    Magnitude
FROM Earthquakes
WHERE Country = 'JP' 
	AND Magnitude >= 8
ORDER BY Magnitude DESC;