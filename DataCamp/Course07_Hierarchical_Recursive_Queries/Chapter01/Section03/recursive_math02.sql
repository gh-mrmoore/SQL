-- Define the CTE calculate_potencies with the fields step and result
WITH calculate_potencies (step, result) AS (
    SELECT 
  		-- Initialize step and result
  		1 AS step,
  		1 AS result
    UNION ALL
    SELECT 
  		step + 1,
  		-- Add the POWER calculation to the result 
  		result = result + POWER(step + 1, step + 1)
    FROM calculate_potencies
    WHERE step < 9)
    
SELECT 
	step, 
    result
FROM calculate_potencies;