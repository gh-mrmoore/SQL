SELECT 
  track_id,
  name AS track_name,
  title AS album_title
FROM track
  -- Complete the join type and the common joining column
INNER JOIN album on album.album_id = track.album_id;