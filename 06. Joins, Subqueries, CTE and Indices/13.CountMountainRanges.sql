  SELECT mc.CountryCode, COUNT(mc.MountainId) AS MountainRanges
    FROM MountainsCountries mc
	JOIN Countries c ON c.CountryCode = mc.CountryCode
	WHERE c.CountryName IN('Bulgaria', 'Russia', 'United States')
--	WHERE mc.CountryCode IN('BG', 'RU', 'US')
GROUP BY mc.CountryCode