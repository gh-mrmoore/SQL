-- Set the appropriate isolation level
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE

-- Begin a transaction
BEGIN TRAN

-- Select customer_id between 1 and 10
SELECT * 
FROM customers
WHERE customer_id BETWEEN 1 AND 10;

-- After completing some mathematical operation, select customer_id between 1 and 10
SELECT * 
FROM customers
WHERE customer_id BETWEEN 1 AND 10;

-- Commit the transaction
COMMIT TRAN