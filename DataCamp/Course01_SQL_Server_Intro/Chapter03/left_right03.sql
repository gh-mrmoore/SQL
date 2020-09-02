SELECT 
  album.album_id,
  album.title,
  album.artist_id,
  artist.name as artist
FROM album
INNER JOIN artist ON album.artist_id = artist.artist_id
-- Perform the correct join type to return matches or NULLS from the track table
RIGHT JOIN track on track.album_id = album.album_id
WHERE album.album_id IN (213,214)