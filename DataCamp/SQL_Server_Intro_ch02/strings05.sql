-- Complete the query to find the length of `Weather'
SELECT 
  description, 
  CHARINDEX('Weather', description) AS start_of_string,
  LEN('Weather') AS length_of_string 
FROM 
  grid
WHERE description LIKE '%Weather%'; 