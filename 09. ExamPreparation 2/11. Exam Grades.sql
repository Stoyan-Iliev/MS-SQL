CREATE udf_ExamGradesToUpdate(@studentId INT, @grade DECIMAL(3, 2))
RETURNS NVARCHAR(200)
AS
BEGIN
	IF((SELECT FirstName
		FROM Students
		WHERE Id = @studentId) IS NULL)
	BEGIN 
		RETURN 'The student with provided id does not exist in the school!'
	END
	IF(@grade > 6.0)
	BEGIN
		RETURN 'Grade cannot be above 6.00!'
	END
	DECLARE @count INT = (SELECT COUNT(StudentId)
						FROM StudentsExams
					   WHERE StudentId = @studentId AND Grade BETWEEN @grade AND @grade + 0.50)
	DECLARE @name NVARCHAR(20) = (SELECT FirstName
							   FROM Students
							  WHERE Id = @studentId)
	RETURN CONCAT('You have to update ', @count, ' grades for the student ', @name)
END