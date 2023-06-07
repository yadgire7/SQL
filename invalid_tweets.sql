# Write your MySQL query statement below

-- Platform: Leetcode

-- Problem: Invalid Tweets

-- QUERY

SELECT tweet_id 
FROM Tweets
WHERE LENGTH(content) > 15
