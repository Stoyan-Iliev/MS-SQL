UPDATE Tickets 
SET Price += Price * 0.13
WHERE FlightId = (SELECT f.Id
			FROM Flights f
			WHERE f.Destination = 'Carlsbad')