#1

SELECT A.City.Origin_City_Name, A.State.Origin_State_Nm, A.Airport.Origin, A.Flight_Summary.Passengers
FROM A.City
INNER JOIN A.State ON A.State.LineNUM = A.City.LineNUM
INNER JOIN A.Airport ON A.Airport.LineNUM = A.City.LineNUM
INNER JOIN A.Flight_Summary ON A.Flight_Summary.LineNUM = A.City.LineNUM
WHERE A.City.Origin_City_Name LIKE '%CO';

#2

SELECT A.City.Origin_City_Name, A.State.Origin_State_Nm, A.Airport.Origin, A.Flight_Summary.Freight
FROM A.City
INNER JOIN A.State ON A.State.LineNUM = A.City.LineNUM
INNER JOIN A.Airport ON A.Airport.LineNUM = A.City.LineNUM
INNER JOIN A.Flight_Summary ON A.Flight_Summary.LineNUM = A.City.LineNUM
WHERE A.City.Origin_City_Name LIKE '%CO';

#3

SELECT A.City.Origin_City_Name, A.State.Origin_State_Nm, A.City.Dest_City_Name, A.Flight_Summary.Passengers, A.Flight_Summary.Unique_Carrier_Name
FROM A.City
INNER JOIN A.State 
ON A.State.LineNUM = A.City.LineNUM
INNER JOIN A.Flight_Summary
ON A.Flight_Summary.LineNUM = A.City.LineNUM
Where A.State.Origin_State_Nm != 'Colorado'
AND A.State.Dest_State_Nm = 'Colorado';

#4

Select A.City.Origin_City_Name, A.State.Origin_State_Nm, A.Flight_Summary.Unique_Carrier_Name
FROM A.Flight_Summary
INNER JOIN A.State 
ON A.State.LineNUM = A.Flight_Summary.LineNUM
INNER JOIN A.City
ON A.City.LineNUM = A.Flight_Summary.LineNUM
Where A.Flight_Summary.Distance Between 500 AND 1200
AND A.City.Dest_City_Name = 'Denver, CO';

















 
