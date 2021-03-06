SELECT 
	gender, 
	-- Count the number of voters for each group
	COUNT(gender) AS voters,
	-- Calculate the total number of votes per group
	SUM(total_votes) AS total_votes
FROM voters
GROUP BY gender;