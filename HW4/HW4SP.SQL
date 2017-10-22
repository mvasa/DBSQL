CREATE OR REPLACE Function process() RETURNS VARCHAR AS $$
DECLARE
	result VARCHAR; 

	BEGIN
		SELECT Origin_City_Name FROM A.City 
		WHERE Dest_City_Name LIKE '%CO'
		INTO result;
		RETURN result;
	END;
$$
LANGUAGE plpgsql;













