/* =============================================================================
-- CONCEPT 5: THE LIKE STATEMENT AND WILDCARDS
-- =============================================================================
-- WHAT: A keyword used in a WHERE clause to search for specific text patterns 
         instead of looking for an exact match.
-- WHY:  Use it when you only remember part of a word, a specific starting letter, 
         or a pattern like a phone number or birth year.
-- HOW:  SELECT columns FROM table_name WHERE column_name LIKE 'pattern';

-- THE WILDCARD CHARACTERS:
     1. The Percent Sign (%) -> Represents ANY number of characters (zero, one, or many).
     2. The Underscore (_)   -> Represents exactly ONE single character. */

/* Finding text that starts with a specific letter.
-- The pattern 'a%' means the text must start with the letter 'a', followed by anything else. */
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a%';


/* Finding text with an exact number of characters.
-- The pattern 'a__' uses two underscores. This means the name must start with 'a' and be 
exactly 3 characters long total. */
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a__';


/* Combining underscores and percent signs.
-- The pattern 'a__%' means the name must start with 'a', have at least 2 characters after 
it, and then can have any amount of trailing text (at least 3 characters total). */
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a__%';


/* Finding date patterns using text matching.
-- Since dates are structured as text-like strings (YYYY-MM-DD), '1985%' pulls any record 
where the year starts with 1985. */
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date LIKE '1985%';
