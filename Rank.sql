-- select CustomerID and TotalDue columns
SELECT C.CustomerID, TotalDue AS Revenue,
       -- get ranking and order by appropriate column
       RANK() OVER (ORDER BY TotalDue DESC) AS RankByRevenue
FROM Sales.SalesOrderHeader AS SOH
-- use appropriate join on appropriate table
JOIN Sales.Customer AS C
ON SOH.CustomerID = C.CustomerID;