SELECT 
	first_name,
	last_name,
	gender,
	country
FROM voters
WHERE country = 'Belgium'
	-- Select only the female voters
	AND gender = 'F'
    -- Select only people who voted more than 20 times   
    AND total_votes > 20;