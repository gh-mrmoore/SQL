-- Get the database triggers
SELECT *
FROM sys.triggers
WHERE parent_class_desc = 'DATABASE';