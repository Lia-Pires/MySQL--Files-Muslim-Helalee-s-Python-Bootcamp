-- The GROUP BY Clause

USE sqlclass_db;

-- Example 45
SELECT COUNT(l.country_id), l.country_id
FROM locations l
GROUP BY l.country_id;

