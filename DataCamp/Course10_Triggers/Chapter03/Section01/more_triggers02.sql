-- Gather information about database triggers
SELECT name AS TriggerName,
	   parent_class_desc AS TriggerType,
	   create_date AS CreateDate,
	   modify_date AS LastModifiedDate,
	   is_disabled AS Disabled,
	   is_instead_of_trigger AS InsteadOfTrigger
FROM sys.triggers
UNION ALL
SELECT name AS TriggerName,
	   -- Get the column that contains the trigger type
	   parent_class_desc AS TriggerType,
	   create_date AS CreateDate,
	   modify_date AS LastModifiedDate,
	   is_disabled AS Disabled,
	   0 AS InsteadOfTrigger
-- Gather information about server triggers
FROM sys.server_triggers
-- Order the results by the trigger name
ORDER BY TriggerName;