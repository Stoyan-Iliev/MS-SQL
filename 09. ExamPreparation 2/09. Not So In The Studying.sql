SELECT CONCAT(s.FirstName, ' ' + s.MiddleName, ' ', s.LastName) AS [Full Name]
  FROM Students s
  LEFT JOIN StudentsSubjects ss ON s.Id = ss.StudentId
  WHERE ss.Id IS NULL
ORDER BY [Full Name]