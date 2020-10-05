SELECT 
	company,
    bean_origin,
    rating
FROM ratings
-- Convert the rating to an integer before comparison
WHERE CONVERT(int, rating) = 3;