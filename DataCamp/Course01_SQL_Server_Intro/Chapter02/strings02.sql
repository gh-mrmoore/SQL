-- Select the first 25 characters from the left of the description column
SELECT 
  LEFT(description, 25) AS first_25_left 
FROM 
  grid;