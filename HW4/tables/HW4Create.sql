CREATE SCHEMA A;

CREATE TABLE A.State(
			Origin_State_Abr VARCHAR, 
			Origin_State_Fips VARCHAR,
			Origin_State_Nm VARCHAR, 
			Dest_State_Abr VARCHAR, 
			Dest_State_Fips VARCHAR, 
			Dest_State_Nm VARCHAR,
			LineNUM VARCHAR,				
			UNIQUE(LineNUM),
			PRIMARY KEY(LineNUM)
			);

CREATE TABLE A.City(
			Origin_City_Market_ID VARCHAR,
			Origin_City_Name VARCHAR,  
			Dest_City_Market_ID VARCHAR,
			Dest_City_Name VARCHAR,
			UNIQUE(LineNUM),
			PRIMARY KEY(LineNUM)
			);
			
CREATE TABLE A.Carrier(
			Unique_Carrier VARCHAR, 
			Unique_Carrier_Name VARCHAR, 
			Unique_Carrier_Entity VARCHAR,
			Carrier_Name VARCHAR, 
			Carrier_Group VARCHAR,
			Carrier_Group_New VARCHAR,
			Airline_ID VARCHAR,			
			Region VARCHAR,
			Carrier VARCHAR,
			Dest_Airport_ID VARCHAR,			
			Origin_Airport_ID VARCHAR,
			LineNUM VARCHAR,
			UNIQUE(Unique_Carrier_Name, Unique_Carrier_Entity, LineNUM),
			PRIMARY KEY(Unique_Carrier_Name, Unique_Carrier_Entity, LineNUM)
			);

CREATE TABLE A.Aircraft(
			Aircraft_Group VARCHAR,
			Aircraft_Type VARCHAR, 
			Aircraft_Config VARCHAR,
			LineNUM VARCHAR,
			UNIQUE(Aircraft_Type, Aircraft_Config, LineNUM),
			PRIMARY KEY(Aircraft_Type, Aircraft_Config, LineNUM)
			);

CREATE TABLE A.Airport(
			Origin_Airport_ID VARCHAR,
			Origin_Airport_Seq_ID VARCHAR, 
			Origin VARCHAR, 
			Origin_WAC VARCHAR, 
			Dest_Airport_ID VARCHAR,
			Dest__Airport_Seq_ID VARCHAR, 
			Dest VARCHAR,
			Dest_WAC VARCHAR, 
			LineNUM VARCHAR,
			UNIQUE (Origin, Dest, LineNUM),
			PRIMARY KEY(Origin, Dest, LineNUM)
			);

CREATE TABLE A.Flight_Summary(
			Payload VARCHAR,
			Seats VARCHAR,
			Ramp_To_Ramp VARCHAR,
			Air_Time VARCHAR,
			Passengers VARCHAR,
			Freight VARCHAR,
			Mail VARCHAR,
			Origin VARCHAR,
			Dest VARCHAR,
			Aircraft_Type VARCHAR,
			Aircraft_Config VARCHAR,
			Unique_Carrier_Name VARCHAR,
			Unique_Carrier_Entity VARCHAR,
			Class VARCHAR,
			Distance integer,
			Distance_Group VARCHAR,
			Departures_Scheduled VARCHAR,
			Departures_Performed VARCHAR,
			Year VARCHAR,
			Quarter VARCHAR,
			Month VARCHAR,
			LineNUM VARCHAR
			);
			


ALTER TABLE A.Flight_Summary 
	ADD  FOREIGN KEY (Origin, Dest) REFERENCES A.Airport (Origin, Dest);

ALTER TABLE A.Flight_Summary 
	ADD  FOREIGN KEY (Aircraft_Type, Aircraft_Config) REFERENCES A.Aircraft (Aircraft_Type, Aircraft_Config);

ALTER TABLE A.Flight_Summary 
	ADD  FOREIGN KEY (Origin_City_Name, Dest_City_Name) REFERENCES A.City (Origin_City_Name, Dest_City_Name);

ALTER TABLE A.Flight_Summary 
	ADD  FOREIGN KEY (Origin_State_Abr, Dest_State_Abr) REFERENCES A.State (Origin_State_Abr, Dest_State_Abr);		
