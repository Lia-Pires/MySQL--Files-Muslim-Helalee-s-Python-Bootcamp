-- The SELECT Statement

/*
CRUD - Create/Read/Update/Delete
Create -> INSERT
Read -> SELECT
Update -> UPDATE
Delete -> DELETE
*/

USE sqlclass_db;

-- Example 1

-- SELECT  * -- asterisco seleciona todas as colunas
-- FROM countries;


-- Example 2
-- SELECT country_name  -- seleciona apenas a coluna country_name
-- FROM countries;

-- Example 3
SELECT country_name, region_id   -- Seleciona as duas colunas 
FROM countries;







