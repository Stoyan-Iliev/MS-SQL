CREATE FUNCTION udf_CalculateTickets
	(@origin VARCHAR(50), @destination VARCHAR(50), @peopleCount INT)
RETURNS VARCHAR(50)
AS
BEGIN
	DECLARE @result VARCHAR(50)
	DECLARE @flightId INT = (SELECT TOP 1 Id
			   FROM Flights
			  WHERE Origin = @origin AND Destination = @destination)
	DECLARE @totalPrice DECIMAL(15,2)
	SET @totalPrice = @peopleCount
	IF(@peopleCount <= 0) 
	BEGIN 
		SET @result = 'Invalid people count!'
	END
	ELSE IF(@flightId IS NULL)
	BEGIN
		SET @result = 'Invalid flight!'
	END
	ELSE
	BEGIN
		SET @totalPrice *= (SELECT Price
							  FROM Tickets 
							  WHERE FlightId = @flightId)
		SET @result = CONCAT('Total price ', @totalPrice)
	END
	RETURN @result
END


