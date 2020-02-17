SELECT 
	u.Username,
	c.[Name] AS CategoryName
  FROM [Reports] r
  JOIN Users u ON u.Id = r.UserId
  JOIN Categories c ON c.Id = r.CategoryId
 WHERE DAY(u.Birthdate) = DAY(r.OpenDate) AND MONTH(u.Birthdate) = MONTH(r.OpenDate)
ORDER BY u.Username ASC, c.[Name] ASC