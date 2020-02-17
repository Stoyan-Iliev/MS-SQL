CREATE PROC usp_AssignEmployeeToReport(@EmployeeId INT, @ReportId INT)
AS
BEGIN
	DECLARE @EmployeesDep INT = (SELECT DepartmentId
							   FROM Employees
							  WHERE Id = @EmployeeId)
	DECLARE @ReportsDep INT = (SELECT c.DepartmentId
							   FROM Reports r
							   JOIN Categories c ON r.CategoryId = c.Id
							  WHERE r.Id = @ReportId)
	IF(@ReportsDep != @EmployeesDep) 
	RAISERROR('Employee doesn''t belong to the appropriate department!', 16, 1)
	ELSE
	BEGIN
		UPDATE Reports
		   SET EmployeeId = @EmployeeId
		 WHERE Id = @ReportId
	END
END
