/* Current view:
SELECT reviews.reviewid,
    reviews.title,
    artists.artist
   FROM (reviews
     JOIN artists ON ((artists.reviewid = reviews.reviewid)));
*/

-- Updated View
-- Redefine the artist_title view to have a label column
CREATE OR REPLACE VIEW artist_title AS
SELECT reviews.reviewid, reviews.title, artists.artist, labels.label
FROM reviews
INNER JOIN artists
ON artists.reviewid = reviews.reviewid
INNER JOIN labels
ON labels.reviewid = reviews.reviewid;

SELECT * FROM artist_title;