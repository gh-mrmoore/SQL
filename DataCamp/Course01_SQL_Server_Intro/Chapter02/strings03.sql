-- Amend the query to select 25 characters from the  right of the description column
SELECT 
  RIGHT(description, 20) AS last_25_right 
FROM 
  grid;