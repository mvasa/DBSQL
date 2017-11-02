CREATE SCHEMA A;

CREATE TABLE A.Location(
			CITY_MARKET_ID VARCHAR,
			CITY_NAME VARCHAR  PRIMARY KEY,
			STATE_ABR VARCHAR,
			STATE_FIPS VARCHAR,
			STATE_NM VARCHAR
			);
			
CREATE TABLE A.Carrier(
			Unique_Carrier VARCHAR, 
			Unique_Carrier_Name VARCHAR, 
			Unique_Carrier_Entity VARCHAR PRIMARY KEY,
			CARRIER VARCHAR,
			Carrier_Name VARCHAR, 
			Carrier_Group VARCHAR,
			Carrier_Group_New VARCHAR,
			Airline_ID VARCHAR,			
			Region VARCHAR
			);

CREATE TABLE A.Aircraft(
			Aircraft_Group VARCHAR,
			Aircraft_Type VARCHAR, 
			Aircraft_Config VARCHAR,
			Unique(Aircraft_Type, Aircraft_Config),
			PRIMARY KEY(Aircraft_Type, Aircraft_Config) 
			);

CREATE TABLE A.Airport(
			Airport_ID VARCHAR PRIMARY KEY,
			Airport_Seq_ID VARCHAR, 
			Airport_code VARCHAR, 
			WAC VARCHAR 
			);



CREATE TABLE A.Aircraft_Details(
			Aircraft_Type VARCHAR,
			Aircraft_Config VARCHAR,
			Payload VARCHAR,
			Seats VARCHAR,
			Passengers VARCHAR,
			Freight VARCHAR,
			Mail VARCHAR,			
			Ramp_To_Ramp VARCHAR,
			Air_Time VARCHAR,
			Distance_Group VARCHAR,
			Class VARCHAR,
			AircraftID VARCHAR PRIMARY KEY
			);


CREATE TABLE A.Flight_Summary(
			Origin_Airport_ID VARCHAR REFERENCES A.Airport(Airport_ID),
			Dest_Airport_ID VARCHAR REFERENCES A.Airport(Airport_ID),
			Origin_City VARCHAR REFERENCES A.Location(City_Name),
			Dest_City VARCHAR REFERENCES A.Location(City_Name),
			Distance VARCHAR,
			Unique_Carrier_Entity VARCHAR REFERENCES A.Carrier(Unique_Carrier_Entity),
			AircraftID VARCHAR REFERENCES A.Aircraft_Details(AircraftID),
			RouteID VARCHAR PRIMARY KEY
			);
