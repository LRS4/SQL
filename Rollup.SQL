SELECT ShipCountry, SUM(Quantity) AS TotalQuantity
FROM [Order Details] AS OD
JOIN Orders AS O
ON OD.OrderID = O.OrderID
JOIN Customers AS C
ON O.CustomerID = C.CustomerID
GROUP BY
  ROLLUP(O.ShipCountry)