-- Problem: Average Selling Price
-- Platform: Leetcode
with temp as (
select a.product_id, b.units, a.price
from Prices a 
left join UnitsSold b
on a.product_id = b.product_id 
and purchase_date between start_date and end_date
)
select product_id, round(sum(units * price)/ sum(units), 2) as average_price
from temp
group by product_id
