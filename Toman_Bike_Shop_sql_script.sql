drop table student


create view bike_share as (
select * from bike_share_yr_0
union all
select * from bike_share_yr_1)

create view bikes as (
select dteday, season, 
b.yr, weekday, 
hr, rider_type,
riders, price, cogs,
riders*price revenue,
riders*price - cogs profit
 from bike_share b
join cost_table c
on b.yr = c.yr)  























































