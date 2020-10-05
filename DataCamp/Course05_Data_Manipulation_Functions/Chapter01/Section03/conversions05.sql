SELECT 
	first_name,
	last_name,
	total_votes
FROM voters
-- Transform the total_votes to char of length 10
WHERE CAST(total_votes AS nvarchar) LIKE '5%';