/*
================================================================================
MASTER SQL SCRIPT: BASIC SELECTION AND UNIQUENESS
================================================================================
DESCRIPTION:
    This script covers how to grab data, do basic math, and handle duplicates 
    using the employee_demographics table.
*/

-- =============================================================================
-- CONCEPT 1: THE SELECT STATEMENT
-- =============================================================================
-- WHAT: A command used to read and pull data out of a database table.
-- WHY:  Tables hold raw data. You use SELECT to bring that data onto your screen.
-- HOW:  SELECT column1, column2 FROM table_name;

-- Grabbing every column and every row from the table.
-- The asterisk (*) acts as a shortcut for "all columns".
SELECT *
FROM parks_and_recreation.employee_demographics;


-- Grabbing only specific columns.
-- This limits your view to just the first names, last names, and ages.
SELECT first_name,
last_name,
age
FROM parks_and_recreation.employee_demographics;


-- Performing basic math on a number column.
-- This outputs the regular age column along with a new column showing age + 10.
SELECT first_name,
last_name,
age,
age + 10
FROM parks_and_recreation.employee_demographics;


-- Following math rules (PEMDAS).
-- SQL runs math in a strict order: Parentheses () first, then Multiply (*)/Divide (/), then Add (+)/Subtract (-).
-- Putting (age + 10) in parentheses forces SQL to add first, before multiplying by 10.
SELECT first_name,
last_name,
age,
(age + 10) * 10 + 10 
FROM parks_and_recreation.employee_demographics;


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
