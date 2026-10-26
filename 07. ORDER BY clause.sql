/* =============================================================================
-- CONCEPT 7: THE ORDER BY CLAUSE
-- =============================================================================
-- WHAT: A command used to sort your query results in either ascending or descending order.
-- WHY:  By default, databases return data in no guaranteed order. Use ORDER BY to 
         arrange records so they are readable and structured for reporting.
-- HOW:  SELECT columns FROM table_name ORDER BY column_name ASC/DESC; */


/* Sorting text alphabetically from A to Z.
-- The ASC keyword stands for Ascending. It sorts names from A to Z or numbers 
lowest to highest. */
SELECT *
FROM employee_demographics
ORDER BY first_name ASC;


/* Sorting text alphabetically from Z to A.
-- The DESC keyword stands for Descending. It reverses the order from Z to A or 
highest to lowest. */
SELECT *
FROM employee_demographics
ORDER BY first_name DESC;


/* Sorting date values.
-- Sorting a date column by DESC puts the newest, most recent birth dates at the top. */
SELECT *
FROM employee_demographics
ORDER BY birth_date DESC;


/* Sorting by multiple columns at once.
-- SQL sorts by the first column listed (age) first. If multiple rows have the exact 
same age, it breaks the tie by sorting those specific rows alphabetically by gender. */
SELECT *
FROM employee_demographics
ORDER BY age, gender;


/* Changing the multi-column sort priority.
-- Here, SQL groups all identical genders together first, and then sorts the people 
within those gender groups from youngest to oldest. */
SELECT *
FROM employee_demographics
ORDER BY gender, age;
