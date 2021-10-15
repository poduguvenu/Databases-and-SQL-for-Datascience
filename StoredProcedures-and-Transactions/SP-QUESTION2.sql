-- 2. Inside your stored procedure, write a SQL statement to update the Leaders_Score 
-- field in the CHICAGO_PUBLIC_SCHOOLS table for the school identified by in_School_ID 
-- to the value in the in_Leader_Score parameter.

--#SET TERMINATOR @
CREATE OR REPLACE PROCEDURE UPDATE_LEADERS_SCORE(
	IN in_School_ID INTEGER, IN in_Leader_Score INTEGER)

LANGUAGE SQL
MODIFIES SQL DATA

BEGIN
	
	UPDATE CHICAGO_PUBLIC_SCHOOLS 
	SET Leaders_Score = in_Leader_Score
	WHERE School_ID = in_School_ID;
	
END
@


















