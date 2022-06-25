-- The LIKE Boolean Operator

-- Example 26
-- SELECT  c.country_name
-- FROM countries c
-- WHERE c.country_name
-- LIKE 'A%';

-- Example 27
-- SELECT  c.country_name
-- FROM countries c
-- WHERE c.country_name
-- LIKE '%a';

-- Example 28
-- SELECT  c.country_name
-- FROM countries c
-- WHERE c.country_name
-- LIKE '%a%';

-- Example 29
SELECT  c.country_name
FROM countries c
WHERE c.country_name
LIKE '_a%';