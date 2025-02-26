--create the function totalRecordsInUser()
CREATE OR REPLACE FUNCTION "totalRecordsInUser"()
RETURNS INTEGER
AS
$$
DECLARE
	total INTEGER;
BEGIN
	SELECT COUNT(*) INTO total FROM "User";
	RETURN total;
END;
$$
LANGUAGE plpgsql;




-- To call this function and check the total records in the User table, run this statement:
SELECT "totalRecordsInUser"();
