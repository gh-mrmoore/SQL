SELECT
	-- Calculate TotalRideHours using SUM() and DATEDIFF()
  	SUM(DATEDIFF(second, StartDate, EndDate))/ 3600 AS TotalRideHours,
    -- Select the DATE portion of StartDate
  	CONVERT(date, StartDate) AS DateOnly,
    -- Select the WEEKDAY
  	DATENAME(weekday, CONVERT(date, StartDate)) AS DayOfWeek 
FROM CapitalBikeShare
-- Only include Saturday
WHERE DATENAME(weekday, StartDate) = 'Saturday' 
GROUP BY CONVERT(DATE, StartDate);