CREATE PROC usp_EmployeesBySalaryLevel (@salaryLevel NVARCHAR(max))
AS
	SELECT FirstName, LastName
	  FROM Employees
	 WHERE dbo.ufn_GetSalaryLevel(Salary) = @salaryLevel