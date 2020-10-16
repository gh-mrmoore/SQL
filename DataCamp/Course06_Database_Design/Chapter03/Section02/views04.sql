/*
In the next few exercises, we'll continue using the Pitchfork reviews data. 
There are two views of interest in this exercise. top_15_2017 holds the top 15 
highest scored reviews published in 2017 with columns reviewid,title, and score. 
artist_title returns a list of all reviewed titles and their respective artists with 
columns reviewid, title, and artist. From these views, we want to create a new view 
that gets the highest scoring artists of 2017.
*/



-- Create a view with the top artists in 2017
CREATE VIEW top_artists_2017 AS
-- with only one column holding the artist field
SELECT artist_title.artist FROM artist_title
INNER JOIN top_15_2017
ON artist_title.reviewid = top_15_2017.reviewid;

-- Output the new view
SELECT * FROM top_artists_2017;