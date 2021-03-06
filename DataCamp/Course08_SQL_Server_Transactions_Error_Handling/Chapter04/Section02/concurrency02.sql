-- Set the appropriate isolation level
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

-- Count the accounts
SELECT COUNT(*) AS number_of_accounts
FROM accounts
WHERE current_balance >= 50000;