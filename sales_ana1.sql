# Write your MySQL query statement below

-- Platform: Leetcode

-- Problem: Product Sales Analysis I

-- QUERY

select distinct(product_name), year, price
from Product p
join Sales s
on  p.product_id = s.product_id
