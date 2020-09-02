-- Select album_id and title from album, and name from artist
SELECT 
  album.album_id,
  album.title,
  artist.name AS artist
  -- Enter the main source table name
FROM album
  -- Perform the inner join
INNER JOIN artist on artist.artist_id = album.artist_id;