-- Create a new trigger for canceled orders
CREATE TRIGGER KeepCanceledOrders
ON Orders
AFTER DELETE
AS 
	INSERT INTO CanceledOrders
	SELECT * FROM deleted;