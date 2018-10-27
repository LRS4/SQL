SELECT Country, ContactTitle, COUNT(ContactTitle) AS 'Count',
CASE
  WHEN GROUPING_ID(ContactTitle) = 0 THEN ''
  WHEN GROUPING_ID(ContactTitle) = 1 THEN 'Subtotal for ' + dbo.Customers.Country
END AS 'Legend'
FROM Customers
GROUP BY 
ROLLUP(Country, ContactTitle)