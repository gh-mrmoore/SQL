SELECT
	ir.IncidentTypeID,
	c.CalendarQuarterName,
	c.WeekOfMonth,
	SUM(ir.NumberOfIncidents) AS NumberOfIncidents
FROM dbo.IncidentRollup ir
	INNER JOIN dbo.Calendar c
		ON ir.IncidentDate = c.Date
GROUP BY GROUPING SETS
(
    (c.CalendarQuarterName, ir.IncidentTYpeID, c.WeekOfMonth),
    ()
)
ORDER BY
    c.CalendarQuarterName;