SELECT FirstName, EmployeeID
FROM Employees
WHERE EmployeeID IN
 (SELECT EmployeeID FROM Orders WHERE ShipCountry LIKE 'USA')
GROUP BY FirstName, EmployeeID