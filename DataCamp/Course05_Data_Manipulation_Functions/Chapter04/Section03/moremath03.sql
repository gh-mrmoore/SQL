SELECT
	rating,
	-- Round-up the rating to an integer value
	CEILING(rating) AS round_up
FROM ratings;