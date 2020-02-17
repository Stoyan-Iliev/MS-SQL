SELECT TOP 10
	s.FirstName,
	s.LastName,
	FORMAT(AVG(e.Grade), 'N2') AS Grade
  FROM Students s
  JOIN StudentsExams e ON s.Id = e.StudentId
GROUP BY s.FirstName, s.LastName
ORDER BY AVG(e.Grade) DESC, s.FirstName ASC, s.LastName ASC