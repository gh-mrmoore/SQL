-- Define CTE with the fields: PartID, SubPartID, Level, Component, Total
WITH construction_Plan (PartID, SubPartID, Level, Component, Total) AS (
	SELECT 
  		PartID,SubPartID,
  		0,
  		Component,
  		-- Initialize Total
  		Quantity
	FROM partList
	WHERE PartID = '1'
	UNION ALL
	SELECT 
		CHILD.PartID, CHILD.SubPartID,
  		PARENT.Level + 1,
  		CHILD.Component,
  		-- Increase Total by the quantity of the child element
  		PARENT.Total + CHILD.Quantity
	FROM construction_Plan PARENT, partList CHILD
  	WHERE CHILD.SubPartID = PARENT.PartID
	  AND PARENT.Level < 3)
      
SELECT 
    PartID, SubPartID, Component,
    -- Calculate the sum of total on the aggregated information
    SUM(Total)
FROM construction_Plan
GROUP BY PartID, SubPartID, Component
ORDER BY PartID, SubPartID;