-- =============================================================================
-- CONCEPT 2: THE DISTINCT STATEMENT
-- =============================================================================
-- WHAT: A keyword used right after SELECT to remove duplicate values from your results.
-- WHY:  Use it when you want a clean list of unique categories without seeing the same value twice.
-- HOW:  SELECT DISTINCT column_name FROM table_name;

-- Using DISTINCT on unique data.
-- Because all the first names are already unique, DISTINCT does not remove any rows.
SELECT DISTINCT first_name
FROM parks_and_recreation.employee_demographics;


-- Seeing the data with all its duplicates.
-- Running a normal query on gender shows 'Male' and 'Female' repeated for every single row.
SELECT gender
FROM parks_and_recreation.employee_demographics;


-- Cleaning up duplicates with DISTINCT.
-- This removes all the repeated rows and gives you just the two unique choices: 'Female' and 'Male'.
SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;


-- Using DISTINCT on multiple columns at the same time.
-- DISTINCT looks at the combined pair of columns. Since the first names are unique, pairing them with gender means the rows will not group or shrink down.
SELECT DISTINCT first_name, gender
FROM parks_and_recreation.employee_demographics;
