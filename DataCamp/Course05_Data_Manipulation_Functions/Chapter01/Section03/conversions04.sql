SELECT 
	-- Transform to int the division of total_votes to 5.5
	CAST((total_votes/5.5) AS int) AS DividedVotes
FROM voters;