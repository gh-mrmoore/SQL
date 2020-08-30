-- Find the minimum number of affected customers
SELECT 
  MIN(affected_customers) AS 'min_affected_customers' 
FROM 
  grid
-- Only retrieve rows where demand_loss_mw has a value
WHERE
  demand_loss_mw IS NOT NULL;