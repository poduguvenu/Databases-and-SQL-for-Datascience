-- JOINS

SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;
SELECT * FROM JOBS;
SELECT * FROM LOCATIONS;
SELECT * FROM JOB_HISTORY;

-- 1. Select the names and job start dates of all employees who work for the 
-- department number 5.
SELECT E.F_NAME, E.L_NAME, J.START_DATE FROM EMPLOYEES E 
JOIN JOB_HISTORY J ON E.EMP_ID = J.EMPL_ID
WHERE E.DEP_ID = 5;

-- 2. Select the names, job start dates, and job titles of all employees who work 
-- for the department number 5.
SELECT E.F_NAME, E.L_NAME, JH.START_DATE, J.JOB_TITLE FROM EMPLOYEES E
JOIN JOBS J ON E.JOB_ID = J.JOB_IDENT
JOIN JOB_HISTORY JH ON J.JOB_IDENT = JH.JOBS_ID
WHERE E.DEP_ID = 5;

-- 3. Perform a Left Outer Join on the EMPLOYEES and DEPARTMENT tables and select 
-- employee id, last name, department id and department name for all employees.
SELECT E.EMP_ID, E.L_NAME, E.DEP_ID, D.DEP_NAME FROM EMPLOYEES E
LEFT JOIN DEPARTMENTS D ON E.DEP_ID = D.DEPT_ID_DEP;

-- 4. Re-write the previous query but limit the result set to include only the rows 
-- for employees born before 1980.
SELECT E.EMP_ID, E.L_NAME, E.DEP_ID, D.DEP_NAME FROM EMPLOYEES E
LEFT JOIN DEPARTMENTS D ON E.DEP_ID = D.DEPT_ID_DEP
WHERE YEAR(E.B_DATE) < 1980;

-- 5. Re-write the previous query but have the result set include all the employees 
-- but department names for only the employees who were born before 1980.
SELECT E.EMP_ID, E.L_NAME, E.DEP_ID, D.DEP_NAME FROM EMPLOYEES E
LEFT JOIN DEPARTMENTS D ON E.DEP_ID = D.DEPT_ID_DEP AND YEAR(E.B_DATE) < 1980;

-- 6. Perform a Full Join on the EMPLOYEES and DEPARTMENT tables and select the 
-- First name, Last name and Department name of all employees.
SELECT E.F_NAME, E.L_NAME, D.DEP_NAME FROM EMPLOYEES E
FULL JOIN DEPARTMENTS D ON E.DEP_ID = D.DEPT_ID_DEP;

-- 7. Re-write the previous query but have the result set include all employee 
-- names but department id and department names only for male employees.
SELECT E.F_NAME, E.L_NAME, D.DEPT_ID_DEP, D.DEP_NAME FROM EMPLOYEES E
FULL JOIN DEPARTMENTS D ON E.DEP_ID = D.DEPT_ID_DEP AND E.SEX = 'M';





















