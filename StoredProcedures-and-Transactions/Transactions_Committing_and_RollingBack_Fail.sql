-- TRANSACTIONS

-- COMMITTING AND ROLLING BACK A TRANSACTION

-- 1. Create a stored procedure routine named TRANSACTION_ROSE which will 
-- include TCL commands like COMMIT and ROLLBACK.
-- 2. Now develop the routine based on the given scenario to execute a transaction.
-- 3. SCENARIO: Let's buy Rose a pair of Boots from ShoeShop. So we have to update the 
-- Rose balance as well as the ShoeShop balance in the BankAccounts table. Then we also have 
-- to update Boots stock in the ShoeShop table. After Boots, let's also attempt to buy Rose 
-- a pair of Trainers.

--#SET TERMINATOR @
CREATE PROCEDURE TRANSACTION_ROSE				-- Name of this stored procedure routine

LANGUAGE SQL									-- Language used in this routine 	
MODIFIES SQL DATA								-- This routine will only write/modify data in the table

BEGIN

	DECLARE SQLCODE INTEGER DEFAULT 0;			-- Host variable SQLCODE declared and assigned 0
	DECLARE retcode INTEGER DEFAULT 0;			-- Local variable retcode declared and assigned 0
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION	-- Handler tell the routine what to do when an error or warning occurs
	SET retcode = SQLCODE;						-- Value of SQLCODE assigned to local variable retcode
	
	UPDATE BankAccounts
	SET Balance = Balance - 200
	WHERE AccountName = 'Rose';
	
	UPDATE BankAccounts
	SET BALANCE = BALANCE + 200
	WHERE AccountName = 'Shoe Shop';
	
	UPDATE ShoeShop
	SET Stock = Stock - 1
	WHERE Product = 'Boots';
	
	UPDATE BankAccounts
	SET Balance = Balance - 300
	WHERE AccountName = 'Rose';
	
	
	IF retcode < 0 THEN							--  SQLCODE returns negative value for error, zero for success, positive value for warning
		ROLLBACK WORK;
		
	ELSE
		COMMIT WORK;
		
	END IF;
	
END
@												-- Routine termination character
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	