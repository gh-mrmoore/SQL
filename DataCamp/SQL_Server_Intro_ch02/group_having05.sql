-- Retrieve the minimum and maximum place values
SELECT 
  country,
  MIN(place) AS min_place, 
  MAX(place) AS max_place, 
  -- Retrieve the minimum and maximum points values
  MIN(points) AS min_points, 
  MAX(points) AS max_points 
FROM 
  eurovision
  -- Group by country
GROUP BY
  country;