WITH children AS (
    SELECT 
  		ID, 
  		Name,
  		ParentID,
  		0 as LEVEL
  	FROM family 
  	-- Set the targeted parent as recursion start
  	WHERE ParentID = 101
    UNION ALL
    SELECT 
  		child.ID,
  		child.NAME,
  		child.ParentID,
  		-- Increment LEVEL by 1 each step
  		LEVEL + 1
  	FROM family child
  		INNER JOIN children 
		-- Join the anchor query with the CTE   
  		ON child.ParentID = children.ID)
    
SELECT
	-- Count the number of generations
	COUNT(LEVEL) as Generations
FROM children
OPTION(MAXRECURSION 300);