select email
from (
  select email, count(email) as num
  from Person
  group by email
) as statistics
where num > 1;
