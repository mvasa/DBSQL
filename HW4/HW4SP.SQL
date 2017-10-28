CREATE OR REPLACE FUNCTION carrierName() 
RETURNS setof A.carrier
as
'SELECT * FROM A.CARRIER;'
LANGUAGE 'sql';










