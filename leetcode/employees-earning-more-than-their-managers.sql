SELECT Name AS Employee
FROM employee e
WHERE e.Salary > (SELECT Salary FROM employee WHERE Id = e.ManagerId);
