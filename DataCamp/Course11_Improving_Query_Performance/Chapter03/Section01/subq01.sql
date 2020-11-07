SELECT UNStatisticalRegion,
       CountryName 
FROM Nations
WHERE Code2 -- Country code for outer query 
         IN (SELECT Country -- Country code for sub-query
             FROM Earthquakes
             WHERE depth >= 400 ) -- Depth filter
ORDER BY UNStatisticalRegion;