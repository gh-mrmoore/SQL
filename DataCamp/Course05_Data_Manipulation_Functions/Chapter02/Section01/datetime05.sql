-- Use two functions to retrieve the current time, in Universal Time Coordinate
SELECT 
	CAST(SYSUTCDATETIME() AS time) AS HighPrecision,
	CAST(SYSUTCDATETIME() AS time) AS LowPrecision;