-- Use two functions to query the system's local date, without timezone information. Show the dates in different formats
SELECT 
	CONVERT(VARCHAR(24), GETDATE(), 107) AS HighPrecision,
	CONVERT(VARCHAR(24), GETDATE(), 102) AS LowPrecision;