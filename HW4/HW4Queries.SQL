
Select 
	Origin_City, State_Nm,  Airport_Code, Unique_Carrier_Name, Passengers
From 
	A.Flight_Summary
INNER JOIN
	A.Location on A.Location.City_Name = A.Flight_Summary.Origin_City
INNER JOIN 
	A.Airport on A.Airport.Airport_ID = A.Flight_Summary.Origin_Airport_ID
INNER JOIN
	A.Carrier on A.Carrier.Unique_Carrier_Entity = A.Flight_Summary.Unique_Carrier_Entity
INNER JOIN
	A.Aircraft_Details ON A.Aircraft_Details.AircraftID = A.Flight_Summary.AircraftID

AND A.Flight_Summary.Origin_City LIKE '%CO';



Select 
	Origin_City, State_Nm,  Airport_Code, Unique_Carrier_Name, Freight
From 
	A.Flight_Summary
INNER JOIN
	A.Location on A.Location.City_Name = A.Flight_Summary.Origin_City
INNER JOIN 
	A.Airport on A.Airport.Airport_ID = A.Flight_Summary.Origin_Airport_ID
INNER JOIN
	A.Carrier on A.Carrier.Unique_Carrier_Entity = A.Flight_Summary.Unique_Carrier_Entity
INNER JOIN
	A.Aircraft_Details ON A.Aircraft_Details.AircraftID = A.Flight_Summary.AircraftID
AND A.Flight_Summary.Origin_City LIKE '%CO';



Select 
	Origin_City, State_Nm, Dest_City, Unique_Carrier_Name, Passengers
FROM
	A.Flight_Summary
INNER JOIN
	A.Location on A.Location.City_Name = A.Flight_Summary.Origin_City
INNER JOIN 
	A.Carrier on A.Carrier.Unique_Carrier_Entity = A.Flight_Summary.Unique_Carrier_Entity 
INNER JOIN
	A.Aircraft_Details ON A.Aircraft_Details.AircraftID = A.Flight_Summary.AircraftID
AND Origin_City NOT LIKE '%CO' AND Dest_City LIKE '%CO'; 




Select Origin_City, State_Nm, Unique_Carrier_Name
FROM A.Flight_Summary
INNER JOIN
	A.Location ON A.Location.City_Name = A.Flight_Summary.Dest_City
INNER JOIN
	A.Carrier on A.Carrier.Unique_Carrier_Entity = A.Flight_Summary.Unique_Carrier_Entity 
WHERE
	Dest_City LIKE 'Denver%' AND A.Flight_Summary.Distance BETWEEN 500 AND 1200;	








































***WRONG***
Select 
	A.Flight_Summary.Origin_City, 
	A.Location.State_Nm 
From 
	A.Flight_Summary,
	A.Location
WHERE
	A.Flight_Summary.Origin_City LIKE '%CO' AND A.Location.State_Nm = 'Colorado';

***WRONG***