-- The IS Boolean Operator

USE sqlclass_db

-- Example 31
SELECT e.first_name, e.last_name 
FROM employees e 
WHERE e.phone_number IS NULL;


