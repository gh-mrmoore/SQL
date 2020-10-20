WITH tree AS (
	SELECT 
  		ID,
  		Name, 
  		ParentID, 
  		CAST('0' AS VARCHAR(MAX)) as Parent
	FROM family
  	-- Initialize the ParentID to 290 
  	WHERE ParentID = 290    
    UNION ALL
    SELECT 
  		Next.ID, 
  		Next.Name, 
  		Parent.ID,
    	CAST(CASE WHEN Parent.ID = ''
        	      -- Set the Parent field to the current ParentID
                  THEN(CAST(Next.ParentID AS VARCHAR(MAX)))
        	 -- Add the ParentID to the current Parent in each iteration
             ELSE(Parent.Parent + ' -> ' + CAST(Next.ParentID AS VARCHAR(MAX)))
    		 END AS VARCHAR(MAX))
        FROM family AS Next
        	INNER JOIN tree AS Parent 
  			ON Next.ParentID = Parent.ID)
        
-- Select the Name, Parent from tree
SELECT Name, Parent
FROM tree;