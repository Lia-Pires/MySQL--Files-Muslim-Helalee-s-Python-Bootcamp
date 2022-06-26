-- The INNER JOIN

USE sqlclass_db;

-- Example 51
SELECT e.first_name, e.last_name, d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id