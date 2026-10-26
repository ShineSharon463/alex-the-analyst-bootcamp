/* ============================================================================= 
-- CONCEPT 8: THE HAVING CLAUSE VS. THE WHERE CLAUSE
-- =============================================================================
-- WHAT: Both are filtering tools, but they run at different times. WHERE filters 
         individual, raw rows before grouping. HAVING filters summarized, 
         aggregated groups after math functions are calculated.
-- WHY:  Use WHERE for normal column values (like names or dates). Use HAVING when 
         you need to filter metrics created by aggregate functions like AVG(), 
         COUNT(), MIN(), MAX(), or SUM().
-- HOW:  SELECT col, AGG_FUNC(col) FROM table GROUP BY col HAVING AGG_FUNC(col) > value; */


/* ❌ THE FORBIDDEN SYNTAX (What Fails)
-- You cannot use aggregate functions inside a WHERE clause. Running this script 
will crash because the database hasn't calculated group averages at this stage. */
-- SELECT occupation, AVG(salary)
-- FROM employee_salary
-- WHERE AVG(salary) > 70000  -- ERROR: Group functions are not allowed here!
-- GROUP BY occupation;


/* Basic group filtering using HAVING.
-- This collapses the table by gender first, calculates the math, and then uses 
HAVING to show only the groups where the average age is over 40. */
SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;


/* Filtering financial group metrics.
-- This groups row data by distinct job titles, averages their pay rates, and then 
uses HAVING to isolate positions earning an average greater than 70,000. */
SELECT occupation, AVG(salary)
FROM employee_salary
GROUP BY occupation
HAVING AVG(salary) > 70000;


/* Advanced row & group filtering working in tandem.
-- WHERE runs first to instantly drop all non-managers. GROUP BY bundles what is 
left. HAVING runs last to filter out manager groups making 70,000 or less. */
SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'  -- Step 1: Filters individual raw rows
GROUP BY occupation                -- Step 2: Bundles rows into categories
HAVING AVG(salary) > 70000;        -- Step 3: Filters calculated group averages


/* Using column aliases inside the HAVING clause.
-- Standard SQL requires repeating the full calculation in HAVING. However, modern 
engines like MySQL allow you to use the SELECT alias name as a fast shortcut. */
SELECT occupation, AVG(salary) AS avg_sal
FROM employee_salary
GROUP BY occupation
HAVING avg_sal > 70000;            -- Works in MySQL/Postgres (Fails in Oracle/SQL Server)
