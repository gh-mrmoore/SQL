SELECT OrderID, TerritoryName, 
       -- Number of rows per partition
       COUNT(OrderID) 
       -- Create the window and partitions
       OVER (PARTITION BY TerritoryName) AS TotalOrders
FROM Orders