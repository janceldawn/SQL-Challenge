# SQL-Challenge

## Table of Content
- ERD
- .sql Table Schemata
- .sql Queries

## References for Code sourced from:
- Monash Lesson Plans - SQL
- - Ask BCs (for clarification)
- Stack Overflow (https://stackoverflow.com/questions/70778320/extract-year-month-from-a-date-column-along-with-other-columns-in-a-sql-table)
## code

--List the first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;
