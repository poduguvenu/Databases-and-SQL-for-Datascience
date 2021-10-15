-- Create and execute a stored procedure to write/modify data in a table on Db2 using SQL.

--#SET TERMINATOR @
CREATE PROCEDURE UPDATE_SALEPRICE(
	IN ANIMAL_ID INTEGER, IN ANIMAL_HEALTH VARCHAR(5))	-- ( { IN/OUT type } { parameter-name } { data-type }, ... )
	
LANGUAGE SQL		-- Language used in this routine
MODIFIES SQL DATA	-- This routine will only write/modify data in the table

BEGIN
	
	IF ANIMAL_HEALTH = 'BAD' THEN		-- Start of conditional statement
		UPDATE PETSALE SET SALEPRICE = SALEPRICE - (SALEPRICE * 0.25)
		WHERE ID = ANIMAL_ID;
		
	ELSEIF ANIMAL_HEALTH = 'WORSE' THEN
		UPDATE PETSALE SET SALEPRICE = SALEPRICE - (SALEPRICE * 0.5)
		WHERE ID = ANIMAL_ID;
		
	ELSE
		UPDATE PETSALE SET SALEPRICE = SALEPRICE
		WHERE ID = ANIMAL_ID;
		
	END IF;								-- End of conditional statement
	
END
@										-- Routine termination character
		