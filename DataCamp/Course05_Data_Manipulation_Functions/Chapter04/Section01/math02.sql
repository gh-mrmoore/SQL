SELECT 
	company,
	-- Calculate the average cocoa percent
	AVG(cocoa_percent) AS avg_cocoa
FROM ratings
GROUP BY company;