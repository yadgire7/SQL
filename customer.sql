# Write your MySQL query statement below

-- Platform: Leetcode:

-- Problem: Customer Who Visited but Did Not Make Any Transactions

SELECT v.customer_id, COUNT(v.customer_id) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t 
ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;
