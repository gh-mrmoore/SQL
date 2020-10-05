--Select information from the ratings table for the Belgian companies that received a rating higher than 3.5.

SELECT 
	company, 
	company_location, 
	bean_origin, 
	cocoa_percent, 
	rating
FROM ratings
-- Location should be Belgium and the rating should exceed 3.5
WHERE company_location = 'Belgium'
	AND rating > 3.5;