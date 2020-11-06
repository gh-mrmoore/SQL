-- Check for unchanged server triggers
SELECT *
FROM sys.server_triggers
WHERE create_date = modify_date;