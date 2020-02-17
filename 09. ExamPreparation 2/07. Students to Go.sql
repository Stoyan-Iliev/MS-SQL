SELECT s.FirstName + ' ' + s.LastName AS [Full Name]
  FROM Students s
  LEFT JOIN StudentsExams e ON s.Id = e.StudentId
 WHERE e.ExamId IS NULL
ORDER BY [Full Name] ASC