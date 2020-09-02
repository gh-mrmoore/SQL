-- SELECT the fully qualified album_id column from the album table
SELECT 
  album.album_id,
  title,
  album.artist_id,
  -- SELECT the fully qualified name column from the artist table
  artist.name as artist
FROM album
-- Perform a join to return only rows that match from both tables
INNER JOIN artist ON album.artist_id = artist.artist_id
WHERE album.album_id IN (213,214)