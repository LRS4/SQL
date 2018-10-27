SELECT BusinessEntityID, LoginID
FROM HumanResources.Employee
WHERE BusinessEntityID IN
 (SELECT BusinessEntityID FROM Sales.SalesPerson WHERE SalesLastYear < 200000)
GROUP BY BusinessEntityID, LoginID

SELECT * FROM Sales.SalesPerson