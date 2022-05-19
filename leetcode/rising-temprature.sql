select weather.id
from weather wt1, weather wt2
where wt1.temprature > wt2.temprature and to_days(wt1.recordDate) - to_days(wt2.recordDate) = 1;
