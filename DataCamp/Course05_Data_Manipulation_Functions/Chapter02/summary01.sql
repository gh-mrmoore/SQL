SELECT
	first_name,
    last_name,
    birthdate,
	first_vote_date,
	-- Find out on which day of the week each participant voted 
	DATENAME(WEEKDAY, first_vote_date) AS first_vote_weekday
FROM voters;