select name as Customers
from Customers as c1
left join orders as o1
on c1.id = o1.customerId
having count(o1.id) = 0;
