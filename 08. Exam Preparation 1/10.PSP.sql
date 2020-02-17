SELECT p.[Name], p.Seats, COUNT(t.Id) AS PassengersCount
FROM Planes p
LEFT JOIN Flights f ON p.Id = f.PlaneId
LEFT JOIN Tickets t ON t.FlightId = f.Id
GROUP BY p.[Name], p.Seats
ORDER BY PassengersCount DESC, p.[Name], p.Seats
	