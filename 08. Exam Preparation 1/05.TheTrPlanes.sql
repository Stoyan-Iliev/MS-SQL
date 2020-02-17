SELECT Id, [Name], Seats, [Range]
  FROM Planes
 WHERE CHARINDEX('tr', [Name]) > 0 
ORDER BY Id ASC, [Name] ASC, Seats ASC, [Range] ASC