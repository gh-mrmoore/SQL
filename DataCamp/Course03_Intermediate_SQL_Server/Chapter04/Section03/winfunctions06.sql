SELECT TerritoryName, OrderDate, 
       -- Assign a row number
       ROW_NUMBER() 
       -- Create the partitions and arrange the rows
       OVER(PARTITION BY TerritoryName ORDER BY OrderDate) AS OrderCount
FROM Orders