SELECT city,
COUNT(city) AS CityCount
FROM pivots.core_data GROUP BY city;