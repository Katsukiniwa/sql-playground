SELECT c1.Name as Customers
FROM Customers as c1 LEFT JOIN Orders as o1 ON c1.Id = o1.CustomerId
GROUP BY c1.ID
HAVING COUNT(o1.Id) = 0
