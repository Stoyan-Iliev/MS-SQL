SELECT TOP 5
	c.[Name] AS CategoryName,
	COUNT(r.Id) AS ReportsNumber
  FROM Categories c
  JOIN Reports r ON c.Id = r.CategoryId
GROUP BY c.[Name]
ORDER BY COUNT(r.Id) DESC, c.[Name] ASC