-- 4. Write a query to call the stored procedure, passing a valid school ID and a 
-- leader score of 50, to check that the procedure works as expected.

CALL UPDATE_LEADERS_ICON(610038, 65);

SELECT School_ID, Leaders_Icon FROM CHICAGO_PUBLIC_SCHOOLS LIMIT 2;