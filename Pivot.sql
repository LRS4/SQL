SELECT 'Average List Price' AS ProductNumber, [AR-5381],[BA-8327],[BB-7421],[BB-8107] FROM
(SELECT ProductNumber, ListPrice
FROM Production.Product) AS BaseData

PIVOT
(
  AVG(ListPrice) FOR ProductNumber IN ([AR-5381],[BA-8327],[BB-7421],[BB-8107])
) AS PivotTable;

SELECT DISTINCT ProductNumber, ListPrice FROM Production.Product ORDER BY ProductNumber ASC