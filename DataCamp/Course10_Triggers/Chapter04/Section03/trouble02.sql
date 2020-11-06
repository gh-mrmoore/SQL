-- Get the table ID
SELECT object_id AS TableID
FROM sys.objects
WHERE name = 'Orders';