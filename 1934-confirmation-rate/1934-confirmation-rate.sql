# Write your MySQL query statement below
with base as

(select a.user_id, action from Signups a
left join Confirmations b on a.user_id = b.user_id)
,
new_base as
(select user_id,
count(case when action = 'confirmed' then action else null end) as confirmed_action,
count(action) as total_action
from base
group by 1)

select user_id, round(ifnull(confirmed_action/total_action,0),2) as confirmation_rate
from new_base group by 1
ORDER BY confirmation_rate