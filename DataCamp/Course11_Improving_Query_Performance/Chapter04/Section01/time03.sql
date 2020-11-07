-- Query 2
SELECT * 
FROM Teams AS t
WHERE EXISTS -- Sub-query filter operator
	(SELECT 1 
     FROM Cities AS c
     WHERE t.City = c.CityName -- Columns being compared
        AND c.CountryCode IN ('US','CA')
          AND c.Pop2017 > 2000000);