-- Find the maximum number of affected customers
SELECT 
  MAX(affected_customers) AS max_affected_customers 
FROM 
  grid
-- Only retrieve rows where demand_loss_mw has a value
WHERE 
  demand_loss_mw IS NOT NULL;