/* =============================================================================
-- CONCEPT 3: THE WHERE CLAUSE
-- =============================================================================
-- WHAT: A command used to filter rows of data based on specific conditions.
-- WHY:  While SELECT isolates specific columns, WHERE narrows down your rows 
--       so you only see the records that meet your exact rules.
-- HOW:  SELECT columns FROM table_name WHERE condition; */


-- This returns only the row where the first name matches 'Leslie' exactly.
SELECT *
FROM parks_and_recreation.employee_salary
WHERE first_name = 'Leslie';

-- Filtering text by specific job roles. 
-- This pulls only the rows where the occupation is listed as 'Entrepreneur'.
SELECT *
FROM parks_and_recreation.employee_salary
WHERE occupation = 'Entrepreneur';

-- Filtering out all rows where the employee makes 50,000 or more.
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000;

-- This isolates records belonging only to department number 1.
SELECT *
FROM parks_and_recreation.employee_salary
WHERE dept_id = 1;

-- This restricts our output to show only employees whose gender is 'Male'.
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender = 'Male';

-- This excludes all males and returns only the rows where the gender is not 'Male'.
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender != 'Male';

-- In SQL, dates are formatted as 'YYYY-MM-DD' and wrapped in quotes. 
-- This returns only the employees born after January 1, 1987.
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1987-01-01';