-- Get the disabled triggers
SELECT name,
	   object_id,
	   parent_class_desc
FROM sys.triggers
WHERE is_disabled = 1;