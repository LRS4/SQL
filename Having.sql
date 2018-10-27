SELECT Name, SUM(LineTotal) AS TotalRevenue
FROM Sales.SalesOrderDetail AS SOD
JOIN Production.Product AS P
ON SOD.ProductID = P.ProductID
WHERE P.ListPrice > 1000
GROUP BY P.Name
-- add having clause as per instructions
-- so that only totals over 20000 are included
HAVING SUM(LineTotal) > 20000
ORDER BY TotalRevenue DESC;