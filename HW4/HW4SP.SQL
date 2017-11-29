CREATE OR REPLACE FUNCTION avgDistance(carrier_Name VARCHAR) 
RETURNS setof A.carrier
as
'SELECT * FROM A.CARRIER;'
LANGUAGE 'sql';


CREATE OR REPLACE FUNCTION avg() 
RETURNS numeric
as
'SELECT avg(distance) FROM A.Flight_Summary;'
LANGUAGE 'sql';






CREATE OR REPLACE FUNCTION avg() returns table(entity integer, distance decimal)
as
	'SELECT unique_Carrier_Entity, AVG(distance) as Avg_distance
	FROM A.Flight_Summary
	GROUP BY unique_Carrier_Entity;'
LANGUAGE 'sql';






All queries outside sp:

SELECT 
	unique_Carrier_Entity, 
	AVG(distance) as Avg_distance,
	(SUM(distance)/count(*))/(SUM(passengers))
	FROM A.Flight_Summary
	GROUP BY unique_Carrier_Entity;







