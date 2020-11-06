-- Notify the Sales team of new orders
CREATE TRIGGER NewOrderAlert
ON Orders
AFTER INSERT
AS
	EXECUTE SendEmailtoSales;