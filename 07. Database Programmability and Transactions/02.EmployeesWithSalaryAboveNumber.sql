CREATE PROC usp_GetEmployeesSalaryAboveNumber
	(@minSalary MONEY)
AS
	SELECT FirstName, LastName
	  FROM Employees
	 WHERE Salary >= @minSalary
