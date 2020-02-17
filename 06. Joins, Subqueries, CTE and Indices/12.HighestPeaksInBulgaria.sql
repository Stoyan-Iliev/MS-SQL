  SELECT 
		mc.CountryCode,
		m.MountainRange,
		p.PeakName,
		p.Elevation
    FROM Peaks p
    JOIN MountainsCountries mc ON mc.MountainId = p.MountainId
    JOIN Mountains m ON m.Id = mc.MountainId
   WHERE p.Elevation > 2835 AND mc.CountryCode = 'BG'
ORDER BY p.Elevation DESC