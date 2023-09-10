-- Problem: not boring movies
-- Platform: Leetcode

select * from Cinema
 where id%2 !=0
 and description != 'boring'
 order by rating desc
