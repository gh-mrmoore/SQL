-- Create a trigger to prevent database deletion
CREATE TRIGGER PreventDatabaseDelete
-- Attach the trigger at the server level
ON ALL SERVER
FOR DROP_DATABASE
AS
   PRINT 'You are not allowed to remove existing databases.';
   ROLLBACK;