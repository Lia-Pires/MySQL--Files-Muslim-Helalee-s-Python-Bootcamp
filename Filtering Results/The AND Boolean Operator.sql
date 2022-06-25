-- The AND Boolean Operator

USE sqlclass_db;

-- Example 22
SELECT e.employee_id, e.first_name, e.last_name, e.salary
FROM employees e
WHERE e.salary > 7000 AND e.salary < 10000;