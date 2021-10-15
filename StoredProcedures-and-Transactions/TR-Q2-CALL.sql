-- 1. Write and run one query to check that the updated stored procedure works as expected when you use a valid score of 38.

CALL UPDATE_LEADERS_ICON(610038, 38);
SELECT School_ID, Leaders_Icon FROM CHICAGO_PUBLIC_SCHOOLS LIMIT 2;

-- 2. Write and run another query to check that the updated stored procedure works as expected when you use an invalid score of 101.

CALL UPDATE_LEADERS_ICON(610281, 101);
SELECT School_ID, Leaders_Icon FROM CHICAGO_PUBLIC_SCHOOLS LIMIT 2;