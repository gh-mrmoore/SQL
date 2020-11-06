-- Get the trigger name
SELECT t.name AS TriggerName
FROM sys.objects AS o
-- Join with the triggers table
INNER JOIN sys.triggers AS t ON t.parent_id = o.object_id
WHERE o.name = 'Orders';