DELETE p1
FROM Person p1, Person p2
WHERE p1.Email = p2.Email AND
p1.Id > p2.Id


delete p1
from Person p1, Person p2
where p1.email = p2.email
and p1.id = p2.id
