/* this shows each product where the list price is higher than 
the average unit price for all products that have been sold */

-- select the ProductID, Name, and ListPrice columns
SELECT ProductID, Name, ListPrice
FROM Production.Product
-- filter based on ListPrice
WHERE ListPrice >
-- get the average UnitPrice
(SELECT AVG(UnitPrice) FROM Sales.SalesOrderDetail)
ORDER BY ProductID;
