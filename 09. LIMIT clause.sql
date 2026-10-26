/* ============================================================================= 
-- CONCEPT 9: THE LIMIT CLAUSE
-- =============================================================================
-- WHAT: A command used to restrict the total number of rows returned in your 
         final query output. It can also skip a set number of rows using an offset.
-- WHY:  Use it to optimize performance on huge tables, create pagination (like 
         pages on a website), or to pull top/bottom records (like top 3 oldest).
-- HOW:  SELECT columns FROM table_name LIMIT [offset,] row_count; */


/* Basic row restriction.
-- This sorts the dataset by age from oldest to youngest, then cuts off the results 
to display only the top 3 oldest employees. */
SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3;


/* Advanced pagination using row offset.
-- The dual-number syntax means LIMIT [skip_rows], [show_rows]. This filters for 
people over 40, sorts them, skips the first 2 rows, and returns the immediate 1st row. */
SELECT *
FROM employee_demographics
WHERE age > 40
ORDER BY age DESC
LIMIT 2, 1;   -- Skips rows 1 and 2, returns row 3 (e.g., Leslie Knope)
