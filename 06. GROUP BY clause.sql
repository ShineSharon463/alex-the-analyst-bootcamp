/* ============================================================================= 
-- CONCEPT 6: THE GROUP BY CLAUSE & AGGREGATE FUNCTIONS
-- =============================================================================
-- WHAT: A command that combines rows with identical values in specified columns 
         into single summary rows. It is paired with aggregate functions like 
         COUNT(), AVG(), MIN(), and MAX().
-- WHY:  Use it when you want to calculate summary statistics (like averages, 
         totals, or counts) for different categories rather than viewing individual records.
-- HOW:  SELECT column1, AGG_FUNC(column2) FROM table_name GROUP BY column1; */


-- This collapses all rows down to show just the unique gender groups present.
SELECT gender
FROM employee_demographics
GROUP BY gender;

/* Grouping by job roles.
--  This combines all matching employee records to output a clean 
list of unique occupations.*/
SELECT occupation
FROM employee_salary
GROUP BY occupation;


/* Running calculations across grouped categories.
-- This collapses the table by gender, then uses COUNT() to find the total people 
in each group and AVG() to calculate their average age. */
SELECT gender,  COUNT(gender), AVG(age)
FROM employee_demographics
GROUP BY gender;


/* Calculating ranges and averages across grouped data.
-- This groups rows by occupation and calculates the lowest salary (MIN), 
highest salary (MAX), and the average salary (AVG) for each job title. */
SELECT occupation, MIN(salary), MAX(salary), AVG(salary)
FROM employee_salary
GROUP BY occupation;
