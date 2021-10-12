-- WORKING WITH MULTIPLE TABLES

-- ACCESSING MULTIPLE TABLES WITH SUB-QUERIES

-- 1. Retrieve only the EMPLOYEES records that correspond to jobs in the JOBS table.
SELECT * FROM EMPLOYEES, JOBS WHERE JOB_ID = JOB_IDENT; -- Alternatively
SELECT * FROM EMPLOYEES WHERE JOB_ID IN (SELECT JOB_IDENT FROM JOBS);

-- 2. Retrieve only the list of employees whose JOB_TITLE is Jr. Designer.
SELECT * FROM EMPLOYEES
WHERE JOB_ID IN (SELECT JOB_IDENT FROM JOBS WHERE JOB_TITLE = 'Jr. Designer');

-- 3. Retrieve JOB information and list of employees who earn more than $70,000.
SELECT * FROM JOBS WHERE JOB_IDENT IN 
(SELECT JOB_ID FROM EMPLOYEES WHERE SALARY > 70000);

-- 4. Retrieve JOB information and list of employees whose birth year is after 1976.
SELECT * FROM JOBS WHERE JOB_IDENT IN 
(SELECT JOB_ID FROM EMPLOYEES WHERE YEAR(B_DATE) > 1976);

-- 5. Retrieve JOB information and list of female employees whose birth year is 
-- after 1976.
SELECT * FROM JOBS WHERE JOB_IDENT IN 
(SELECT JOB_ID FROM EMPLOYEES WHERE YEAR(B_DATE) > 1976 AND SEX = 'F');

-- ACCESSING MULTIPLE TABLES WITH IMPLICIT JOINS

--6. Perform an implicit cartesian/cross join between EMPLOYEES and JOBS tables.
SELECT * FROM EMPLOYEES, JOBS;

-- 7. Retrieve only the EMPLOYEES records that correspond to jobs in the JOBS table.
SELECT * FROM EMPLOYEES, JOBS WHERE JOB_ID = JOB_IDENT;

-- 8. Redo the previous query, using shorter aliases for table names.
SELECT * FROM EMPLOYEES E, JOBS J WHERE E.JOB_ID = J.JOB_IDENT;

-- 9. Redo the previous query, but retrieve only the Employee ID, Employee Name 
-- and Job Title.
SELECT E.EMP_ID, E.L_NAME, E.F_NAME, J.JOB_TITLE FROM EMPLOYEES E, JOBS J
WHERE E.JOB_ID = J.JOB_IDENT;

-- 10. Redo the previous query, but specify the fully qualified column names 
-- with aliases in the SELECT clause.
SELECT E.EMP_ID, E.L_NAME, E.F_NAME, J.JOB_TITLE FROM EMPLOYEES E, JOBS J
WHERE E.JOB_ID = J.JOB_IDENT;

SELECT * FROM EMPLOYEES;
SELECT * FROM JOBS;






















