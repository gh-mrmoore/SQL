-- Add the university_shortname column
ALTER TABLE professors
ADD university_shortname text;

-- Print the contents of this table
SELECT * 
FROM professors