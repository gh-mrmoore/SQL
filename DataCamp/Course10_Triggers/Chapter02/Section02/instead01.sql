-- Create the trigger
CREATE TRIGGER PreventOrdersUpdate
ON Orders
INSTEAD OF UPDATE
AS
	RAISERROR ('Updates on "Orders" table are not permitted.
                Place a new order to add new products.', 16, 1);