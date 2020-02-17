CREATE PROC usp_GetEmployeesFromTown (@town NVARCHAR(max))
AS
	SELECT e.FirstName, e.LastName
	  FROM Employees e
	  JOIN Addresses a ON e.AddressID = a.AddressID
	  LEFT JOIN Towns t ON a.TownID = t.TownID
	 WHERE @town = t.[Name]