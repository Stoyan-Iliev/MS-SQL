SELECT 
	ISNULL((e.FirstName + ' ' + e.LastName), 'None') AS Employee,
	ISNULL((d.[Name]), 'None') AS Department,
	c.[Name] AS Category,
	r.[Description],
	CONVERT(VARCHAR, r.OpenDate, 104) AS OpenDate,
	s.[Label] AS [Status],
	ISNULL((u.[Name]), 'None') AS [User]
  FROM Reports r
  LEFT JOIN Employees e ON r.EmployeeId = e.Id
  LEFT JOIN Departments d ON d.Id = e.DepartmentId
  JOIN Categories c ON c.Id = r.CategoryId
  JOIN [Status] s ON s.Id = r.StatusId
  JOIN Users u ON u.Id = r.UserId
ORDER BY 
	e.FirstName DESC,
	e.LastName DESC,
	d.[Name] ASC,
	c.[Name] ASC,
	r.[Description] ASC,
	r.OpenDate ASC,
	s.[Label] ASC,
	u.[Name] ASC
