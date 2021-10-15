-- TRANSACTIONS

-- 1. Update your stored procedure definition. Add a generic ELSE clause to the IF statement 
-- that rolls back the current work if the score did not fit any of the preceding categories.

--#SET TERMINATOR @
CREATE OR REPLACE PROCEDURE UPDATE_LEADERS_ICON(
	IN in_School_ID INTEGER, IN in_Leader_Score INTEGER)
	
LANGUAGE SQL
MODIFIES SQL DATA
BEGIN
	DECLARE SQLCODE INTEGER DEFAULT 0;
	DECLARE retcode INTEGER DEFAULT 0;
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
	SET retcode = SQLCODE;
	
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
	ELSE
		ROLLBACK WORK;	
	END IF;		
END
@
	
	