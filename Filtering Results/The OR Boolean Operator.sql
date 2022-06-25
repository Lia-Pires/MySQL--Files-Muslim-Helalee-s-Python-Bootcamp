-- The OR Boolean Operator

USE sqlclass_db;

-- Example 23
SELECT e.first_name, e.last_name, e.email
FROM employees e 
WHERE 
e.salary < 5000
OR
e.salary > 15000;