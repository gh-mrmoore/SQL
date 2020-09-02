-- Create the table
CREATE TABLE tracks(
	-- Create track column
	track VARCHAR(200),
    -- Create album column
  	album VARCHAR(160),
	-- Create track_length_mins column
	track_length_mins INT
);
-- Select all columns from the new table
SELECT 
  * 
FROM 
  tracks;