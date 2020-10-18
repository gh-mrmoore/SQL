-- Create a new table called film_descriptions
CREATE TABLE film_descriptions (
    film_id INT,
    long_description TEXT
);

-- Copy the descriptions from the film table
INSERT INTO film_descriptions
SELECT film_id, long_description FROM film;
    
-- Drop the descriptions from the original table
ALTER TABLE film
DROP COLUMN long_description;

-- Join to view the original table
SELECT * FROM film 
JOIN film_descriptions ON film.film_id = film_descriptions.film_id;