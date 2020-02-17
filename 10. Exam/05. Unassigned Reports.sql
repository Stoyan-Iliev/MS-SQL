SELECT [Description], CONVERT(varchar, OpenDate, 105) AS OpenDate
  FROM [Reports] R
 WHERE EmployeeId IS NULL
ORDER BY R.OpenDate ASC, [Description] ASC