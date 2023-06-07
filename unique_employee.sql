# Write your MySQL query statement below

-- Platform: Leetcode

-- Problem: Invalid Tweets

-- QUERY

SELECT unique_id, name
FROM Employees a
LEFT JOIN EmployeeUNI b
ON a.id = b.id
