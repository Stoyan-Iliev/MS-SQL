  SELECT TOP 50
		e.EmployeeID,
		e.FirstName + ' ' + e.LastName AS EmployeeName,
		m.FirstName + ' ' + m.LastName AS MenagerName,
		d.[Name] AS DepartmentName
    FROM Employees e
	JOIN Employees m ON m.EmployeeID = e.ManagerID
	JOIN Departments d ON e.DepartmentID = d.DepartmentID
ORDER BY e.EmployeeID