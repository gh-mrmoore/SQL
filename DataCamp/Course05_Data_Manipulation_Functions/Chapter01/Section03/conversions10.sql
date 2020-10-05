SELECT 
	first_name,
    last_name,
	-- Convert birthdate to varchar(10) and show it as yy/mm/dd. This format corresponds to value 11 of the "style" parameter.
	CONVERT(varchar(10), birthdate, 11) AS birthdate,
    gender,
    country
FROM voters
WHERE country = 'Belgium' 
    -- Select only the female voters
	AND gender = 'F'
    -- Select only people who voted more than 20 times  
    AND total_votes > 20;