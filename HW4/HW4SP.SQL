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

TESTING\\

CREATE OR REPLACE Function process(airline_name VARCHAR) 
RETURNS VARCHAR AS $$
DECLARE result VARCHAR; 
	BEGIN
		SELECT Carrier_Name FROM A.Carrier 
			WHERE Carrier_Name = airline_name
			INTO result;
		RETURN result;
	END;
$$
LANGUAGE plpgsql;


SELECT process('JetBlue Airways');

SELECT process();










