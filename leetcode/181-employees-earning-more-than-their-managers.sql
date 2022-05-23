SELECT Name AS Employee
FROM employee e
WHERE e.Salary > (SELECT Salary FROM employee WHERE Id = e.ManagerId);




























select name as Employee
from Employee e
where e.salary > (select salary from Employee where id = e.managerId)
