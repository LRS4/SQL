INSERT INTO dbo.Region (RegionID, RegionDescription)
VALUES
('5', 'Space');

SELECT * FROM
dbo.Region
WHERE RegionID LIKE '5'