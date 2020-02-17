SELECT 
	p.FirstName + ' ' + p.LastName AS FullName,
	pl.[Name] AS PlaneName,
	f.Origin + ' - ' + f.Destination AS Trip,
	lt.[Type] AS LuggageType
  FROM Passengers p
  JOIN Tickets t ON p.Id = t.PassengerId
  JOIN Flights f ON f.Id = t.FlightId
  JOIN Planes pl ON pl.Id = f.PlaneId
  JOIN Luggages l ON t.LuggageId = l.Id
  JOIN LuggageTypes lt ON l.LuggageTypeId = lt.Id
  WHERE t.Id IS NOT NULL
ORDER BY FullName ASC, PlaneName ASC, f.Origin ASC, f.Destination ASC, lt.[Type]