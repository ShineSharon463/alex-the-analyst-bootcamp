/* =============================================================================
-- CONCEPT 10: ALIASING (THE AS KEYWORD)
-- =============================================================================
-- WHAT: A command used to temporarily rename a column or a table within a query. 
         The 'AS' keyword is optional but highly recommended for readability.
-- WHY:  Use it to give calculated metrics (like averages or sums) clean, meaningful 
         names, or to make long table names shorter and easier to type.
-- HOW:  SELECT column_name AS descriptive_clean_name FROM table_name; */


/* Renaming a calculated aggregate function.
-- This groups the table by gender and calculates their average age, renaming the 
clunky column expression to a clean header called 'avg_age'. */
SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender;


/* Reusing an alias inside filtering clauses.
-- Modern database engines (like MySQL) allow you to reference your newly created 
SELECT alias directly inside the HAVING clause to keep your code clean. */
SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40;