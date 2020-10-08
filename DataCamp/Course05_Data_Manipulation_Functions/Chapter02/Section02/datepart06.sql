SELECT 
	first_name,
	last_name,
	first_vote_date,
    -- Select day of the week from the first vote date
	DATENAME(WEEKDAY, first_vote_date) AS first_vote_dayofweek
FROM voters;