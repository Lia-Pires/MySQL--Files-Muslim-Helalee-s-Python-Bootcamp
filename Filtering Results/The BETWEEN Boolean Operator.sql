-- The BETWEEN Boolean Operator


-- Example 24
-- SELECT d.department_name
-- FROM departments d
-- WHERE d.department_id
-- BETWEEN 1 AND 5;

-- Example 25
SELECT j.job_title
FROM jobs j
WHERE j.min_salary
BETWEEN 10000 AND 20000;