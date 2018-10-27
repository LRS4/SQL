SELECT CR.Name, SP.Name,  AddressLine1, City, PostalCode
FROM Person.CountryRegion AS CR
JOIN Person.StateProvince AS SP
ON CR.CountryRegionCode = SP.CountryRegionCode
JOIN Person.Address AS A
ON SP.StateProvinceID = A.StateProvinceID
GROUP BY CR.Name, SP.Name,  AddressLine1, City, PostalCode
