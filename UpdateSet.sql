--Sets table column to uppercase

UPDATE Region
   SET RegionDescription = (UPPER(RegionDescription));
   
SELECT * FROM dbo.Region