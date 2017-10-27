#1

Select 
	A.Flight_Summary.Origin_City, 
	A.Location.State_Nm 
From 
	A.Flight_Summary,
	A.Location
WHERE
	A.Flight_Summary.Origin_City LIKE '%CO' AND A.Location.State_Nm = 'Colorado';

