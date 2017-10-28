CREATE OR REPLACE FUNCTION avgDistance(carrier_Name VARCHAR) 
RETURNS setof A.carrier
as
'SELECT * FROM A.CARRIER;'
LANGUAGE 'sql';










