ALTER FUNCTION ufn_GetSalaryLevel(@salary MONEY)
RETURNS NVARCHAR(10)
AS
BEGIN 
	IF(@salary < 30000)
	BEGIN
		RETURN 'Low'
	END
	ELSE IF(@salary <= 50000)
	BEGIN
		RETURN 'Average'
	END
	RETURN 'High'
END