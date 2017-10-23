CREATE OR REPLACE Function processCity() RETURNS VARCHAR AS $$
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


CREATE OR REPLACE Function processCarrier() 
RETURNS VARCHAR AS $$
DECLARE result VARCHAR; 
	BEGIN
		SELECT Carrier_Name FROM A.Carrier 
			WHERE Carrier_Name LIKE 'So%'
			INTO result;
		RETURN result;
	END;
$$
LANGUAGE plpgsql;










