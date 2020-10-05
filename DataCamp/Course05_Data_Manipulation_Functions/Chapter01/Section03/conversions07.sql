SELECT 
	company,
    bean_origin,
    -- Convert the rating column to an integer
    CONVERT(int, rating) AS rating
FROM ratings;