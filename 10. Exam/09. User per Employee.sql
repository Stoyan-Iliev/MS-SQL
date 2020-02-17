SELECT
	e.FirstName + ' ' + e.LastName AS FullName,
	COUNT(r.UserId) AS UsersCount
  FROM Employees e
  LEFT JOIN [Reports] r ON e.Id = r.EmployeeId
GROUP BY r.EmployeeId, e.FirstName, e.LastName
ORDER BY UsersCount DESC, FullName ASC