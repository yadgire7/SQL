-- Problem: Confirmation Rate
-- Platform: Leetcode
with temp as(
select s.user_id, c.time_stamp,
case
  when c.action = 'timeout' then 0
  when c.action = 'confirmed' then 1
end
as confirmation_type
from Signups s
left join Confirmations c
on s.user_id = c.user_id
)
select user_id,
round(ifnull(sum(confirmation_type),0)/count(user_id),2) 
as confirmation_rate
from temp
group by user_id
