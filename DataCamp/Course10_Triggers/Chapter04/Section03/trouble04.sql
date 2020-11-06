SELECT t.name AS TriggerName
FROM sys.objects AS o
INNER JOIN sys.triggers AS t ON t.parent_id = o.object_id
-- Get the trigger events
INNER JOIN sys.trigger_events AS te ON te.object_id = t.object_id
WHERE o.name = 'Orders'
-- Filter for triggers reacting to new rows
AND te.type_desc = 'UPDATE';