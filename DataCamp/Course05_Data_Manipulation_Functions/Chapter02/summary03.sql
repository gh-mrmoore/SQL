SELECT
	first_name,
    last_name,
    birthdate,
	first_vote_date,
	-- Find out on which day of the week each participant voted 
	DATENAME(weekday, first_vote_date) AS first_vote_weekday,
	-- Find out the year of the first vote
	YEAR(first_vote_date) AS first_vote_year,
	-- Find out the age of each participant when they joined the contest
	DATEDIFF(YEAR, birthdate, first_vote_date) AS age_at_first_vote	
FROM voters;