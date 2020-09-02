-- Run the query
SELECT 
  title 
FROM 
  album 
WHERE 
  album_id = 213;
-- UPDATE the album table
UPDATE 
  album
-- SET the new title    
SET 
  title = 'Pure Cult: The Best Of The Cult'
WHERE album_id = 213;