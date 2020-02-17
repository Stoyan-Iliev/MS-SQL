CREATE PROC usp_GetTownsStartingWith(@start NVARCHAR(max))
AS
	SELECT [Name] AS TownName
	  FROM Towns
	 WHERE [Name] LIKE CONCAT(@start, '%')