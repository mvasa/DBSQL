CREATE SCHEMA A;

CREATE TABLE A.Location(
			CITY_MARKET_ID integer,
			CITY_NAME VARCHAR  PRIMARY KEY,
			STATE_ABR VARCHAR(2),
			STATE_FIPS integer,
			STATE_NM VARCHAR
			);
			
CREATE TABLE A.Carrier(
			Unique_Carrier VARCHAR, 
			Unique_Carrier_Name VARCHAR, 
			Unique_Carrier_Entity VARCHAR PRIMARY KEY,
			CARRIER VARCHAR,
			Carrier_Name VARCHAR, 
			Carrier_Group integer,
			Carrier_Group_New integer,
			Airline_ID integer,			
			Region VARCHAR
			);

CREATE TABLE A.Aircraft(
			Aircraft_Group integer,
			Aircraft_Type integer, 
			Aircraft_Config integer,
			Unique(Aircraft_Type, Aircraft_Config),
			PRIMARY KEY(Aircraft_Type, Aircraft_Config) 
			);

CREATE TABLE A.Airport(
			Airport_ID integer PRIMARY KEY,
			Origin_Airport_Seq_ID integer, 
			Airport_code VARCHAR(3), 
			WAC integer 
			);
CREATE TABLE A.Time(
			Year integer PRIMARY KEY,
			Month integer,
			Quarter integer
			);


CREATE TABLE A.Aircraft_Details(
			Aircraft_Type integer,
			Aircraft_Config integer,
			Payload VARCHAR,
			Seats VARCHAR,
			Passengers integer,
			Freight VARCHAR,
			Mail VARCHAR,			
			Ramp_To_Ramp VARCHAR,
			Air_Time VARCHAR,
			Distance_Group integer,
			Class char,
			Departures_Scheduled integer,
			Departures_Performed integer,
			AircraftID integer PRIMARY KEY
			);


CREATE TABLE A.Flight_Summary(
			Origin_Airport_ID integer REFERENCES A.Airport(Airport_ID),
			Dest_Airport_ID integer REFERENCES A.Airport(Airport_ID),
			Origin_City VARCHAR REFERENCES A.Location(City_Name),
			Dest_City VARCHAR REFERENCES A.Location(City_Name),
			Distance integer,
			Unique_Carrier_Entity VARCHAR REFERENCES A.Carrier(Unique_Carrier_Entity),
			Year integer REFERENCES A.Time(Year),
			AircraftID integer REFERENCES A.Aircraft_Details(AircraftID)
			);
