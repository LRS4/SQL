-- select the ProductNumber, Name, and ListPrice columns
SELECT ProductNumber, Name, ListPrice
FROM Production.Product
-- filter for ProductNumbers
WHERE ProductNumber LIKE 'BK-[^R][0-9][0-9]%'