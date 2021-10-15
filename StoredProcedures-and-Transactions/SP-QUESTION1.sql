

-- 1. Write the structure of a query to create or replace a stored procedure called 
-- UPDATE_LEADERS_SCORE that takes a in_School_ID parameter as an integer and a 
-- in_Leader_Score parameter as an integer. Don't forget to use the #SET TERMINATOR 
-- statement to use the @ for the CREATE statement terminator.

--#SET TERMINATOR @
CREATE OR REPLACE PROCEDURE UPDATE_LEADERS_SCORE(
	IN in_School_ID INTEGER, IN in_Leader_Score INTEGER)

LANGUAGE SQL
READS SQL DATA

DYNAMIC RESULT SETS 1

BEGIN
	
	--DECLARE C1 CURSOR 
	--WITH RETURN FOR 
	
	--SELECT * FROM CHICAGO_PUBLIC_SCHOOLS;
	
	--OPEN C1;
	
END
@





















