-- Return the DeliveryDate as 5 days after the ShipDate
SELECT OrderDate, 
       DATEADD(D, 5, ShipDate) AS DeliveryDate
FROM Shipments