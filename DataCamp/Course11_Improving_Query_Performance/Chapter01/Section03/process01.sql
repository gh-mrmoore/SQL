/*
Returns earthquakes in New Zealand with a magnitude of 7.5 or more


___ Earthquakes
___ Country = 'NZ'
___ Date, Place, NearestPop, Magnitude
	AND Magnitude >= 7.5
___ ___ Magnitude DESC;
*/

--corrected
SELECT Date, Place, NearestPop, Magnitude
FROM Earthquakes
WHERE Country = 'NZ'
	AND Magnitude >= 7.5
ORDER BY Magnitude DESC;