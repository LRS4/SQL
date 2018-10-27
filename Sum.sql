SELECT P.Name, SUM(LineTotal) AS TotalRevenue
FROM Sales.SalesOrderDetail AS SOD
-- use the appropriate join
JOIN Production.Product AS P
-- join based on ProductID
ON SOD.ProductID = P.ProductID
GROUP BY P.Name 
ORDER BY TotalRevenue DESC;