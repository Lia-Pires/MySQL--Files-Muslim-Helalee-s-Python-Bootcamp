-- Set Functions

USE sqlclass_db;

/* 
Set Functions:
COUNT()
MAX()
MIN()
AVG()
SUM()
*/

-- Example 36
-- SELECT COUNT(*)
-- FROM employees;

-- Example 37
-- SELECT COUNT(e.phone_number)
-- FROM employees e;

-- Example 38
-- SELECT COUNT(e.first_name)
-- FROM employees e
-- WHERE e.salary > 10000;


-- Example 39
-- SELECT MAX(e.salary)
-- FROM employees e;

-- Example 40
-- SELECT MIN(e.salary)
-- FROM employees e;

-- Example 41
-- SELECT AVG(e.salary)
-- FROM employees e;

-- Example 42
-- SELECT ROUND(AVG(e.salary))
-- FROM employees e;

-- Example 43
SELECT SUM(e.salary)
FROM employees e;