SELECT 
	first_name,
	last_name,     
	total_votes
FROM voters
WHERE total_votes > '120'  --string value is converted to numeric value