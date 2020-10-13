SELECT 
	company,
	-- Calculate the average cocoa percent
	AVG(cocoa_percent) AS avg_cocoa,
	-- Calculate the minimum rating received by each company
	MIN(rating) AS min_rating	
FROM ratings
GROUP BY company;