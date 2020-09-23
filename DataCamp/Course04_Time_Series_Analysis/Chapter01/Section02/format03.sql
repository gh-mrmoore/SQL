/*
Fill in the custom format strings needed to generate the results in preceding comments.
Use date parts such as yyyy, MM, MMM, and dd. Capitalization is important for the FORMAT() function!
See the full list at https://bit.ly/30SGA5a.
*/

DECLARE
	@Python3ReleaseDate DATETIME2(3) = '2008-12-03 19:45:00.033';
    
SELECT
	-- 20081203
	FORMAT(@Python3ReleaseDate, 'yyyyMMdd') AS F1,
	-- 2008-12-03
	FORMAT(@Python3ReleaseDate, 'yyyy-MM-dd') AS F2,
	-- Dec 03+2008 (the + is just a "+" character)
	FORMAT(@Python3ReleaseDate, 'MMM dd+yyyy') AS F3,
	-- 12 08 03 (month, two-digit year, day)
	FORMAT(@Python3ReleaseDate, 'MM yy dd') AS F4,
	-- 03 Dec 07:45 2008.00
    -- (day, hour, minute, year, ".", second)
	FORMAT(@Python3ReleaseDate, 'dd HH:mm yyyy.ss') AS F5;