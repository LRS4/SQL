SELECT SalesOrderNumber + ' (' + STR(RevisionNumber, 1) + ')' AS OrderRevision, 
    CONVERT(VARCHAR(10), OrderDate, 103) + ' '  + CONVERT(VARCHAR(8), OrderDate, 14) AS Created
FROM Sales.SalesOrderHeader;