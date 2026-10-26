/* =============================================================================
-- CONCEPT 4: LOGICAL OPERATORS (AND / OR / NOT)
-- =============================================================================
-- WHAT: Keywords used to connect two or more conditions in a WHERE clause to 
         create more specific filters.
-- WHY:  Use them when a single condition is not enough to filter your data and 
         you need to check multiple rules at the same time.
-- HOW:  SELECT columns FROM table_name WHERE condition1 AND/OR condition2; */

/* Using AND to filter data.
-- Both conditions must be true for a row to show up. 
-- This returns only males who were also born after January 1, 1985. */
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'Male';


/* Using OR to filter data.
-- Only one of the conditions needs to be true for a row to show up.
-- This returns anyone born after January 1, 1985, PLUS any male regardless of their birth date. */
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
OR gender = 'Male';


/* Using Parentheses () to handle mixed conditions.
-- SQL evaluates rules inside parentheses first.
-- This isolates a specific person (Leslie, who is 44) OR grabs anyone else who is over 55. */
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55;
