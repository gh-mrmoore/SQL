-- Complete the query to find `Weather` within the description column
SELECT 
  description, 
  CHARINDEX('Weather', description) 
FROM 
  grid
WHERE description LIKE '%Weather%';