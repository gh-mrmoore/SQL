-- Output all the records that need to be updated in the star schema so that countries are represented by their abbreviations.

-- Output records that need to be updated in the star schema
SELECT * FROM dim_store_star
WHERE country != 'USA' AND country !='CA';

