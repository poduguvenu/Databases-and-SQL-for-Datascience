-- 3. Inside your stored procedure, write a SQL IF statement to update the 
-- Leaders_Icon field in the CHICAGO_PUBLIC_SCHOOLS table for the school identified 
-- by in_School_ID using the following information.

-- Score lower limit	Score upper limit	Icon
-- 		80					99				Very strong
-- 		60					79				Strong
-- 		40					59				Average
-- 		20					39				Weak
-- 		0					19				Very weak

--#SET TERMINATOR @
CREATE OR REPLACE PROCEDURE UPDATE_LEADERS_ICON(
	IN in_School_ID INTEGER, IN in_Leader_Score INTEGER)

LANGUAGE SQL
MODIFIES SQL DATA

BEGIN
	
	IF in_Leader_Score > 0 AND in_Leader_Score <= 19 THEN
		UPDATE CHICAGO_PUBLIC_SCHOOLS SET Leaders_Icon = 'VW'
		WHERE School_ID = in_School_ID;
		
	ELSEIF in_Leader_Score <= 39 THEN
		UPDATE CHICAGO_PUBLIC_SCHOOLS SET Leaders_Icon = 'WEAK'
		WHERE School_ID = in_School_ID;
		
	ELSEIF in_Leader_Score <= 59 THEN
		UPDATE CHICAGO_PUBLIC_SCHOOLS SET Leaders_Icon = 'AVG'
		WHERE School_ID = in_School_ID;
		
	ELSEIF in_Leader_Score <= 79 THEN
		UPDATE CHICAGO_PUBLIC_SCHOOLS SET Leaders_Icon = 'STR'
		WHERE School_ID = in_School_ID;
		
	ELSEIF in_Leader_Score <= 99 THEN
		UPDATE CHICAGO_PUBLIC_SCHOOLS SET Leaders_Icon = 'VSTR'
		WHERE School_ID = in_School_ID;
		
	END IF;
	
END
@

