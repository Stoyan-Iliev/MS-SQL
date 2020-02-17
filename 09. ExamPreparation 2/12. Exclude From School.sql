CREATE PROC usp_ExcludeFromSchool(@StudentId INT)
AS
BEGIN
	DECLARE @doesStudentExist BIT = (SELECT COUNT(id)
	                   FROM Students
		              WHERE Id = @StudentId)
	IF(@doesStudentExist = 0)
	BEGIN
		RAISERROR('This school has no student with the provided id!', 16, 1)
	END
	ELSE
	BEGIN
		DELETE FROM StudentsExams
		WHERE StudentId = @StudentId

		DELETE FROM StudentsSubjects
		WHERE StudentId = @StudentId

		DELETE FROM StudentsTeachers
		WHERE StudentId = @StudentId

		DELETE FROm Students
		WHERE Id = @StudentId
	END
END