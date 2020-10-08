SELECT 
	first_name,
	last_name,
    -- Select the year of the first vote
   	DATEPART(YEAR, first_vote_date) AS first_vote_year, 
    -- Select the month of the first vote
	DATEPART(MONTH, first_vote_date) AS first_vote_month,
    -- Create a date as the start of the month of the first vote
	DATEFROMPARTS(DATEPART(YEAR, first_vote_date), DATEPART(MONTH, first_vote_date), 1) AS first_vote_starting_month
FROM voters;