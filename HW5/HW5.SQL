CREATE SCHEMA Reservation;

CREATE TABLE Reservation.AIRPLANE(
	Unique_Airplane_number integer PRIMARY KEY, 
	Airline_Name VARCHAR(6), 
	Airplane_ID VARCHAR(6));

CREATE TABLE Reservation.Flight_Plan(
	Route_ID VARCHAR PRIMARY KEY,
	Airplane_number VARCHAR(6), 
	Airplane_destination VARCHAR(10), 
	Airplane_origin VARCHAR(10), 
	date_of_departure VARCHAR(10), 
	date_of_arrival VARCHAR(10), 
	time_of_departure VARCHAR,
	time_of_arrival VARCHAR,
	flight_length VARCHAR(10));

CREATE TABLE Reservation.Customer(
	Unique_Customer_ID integer PRIMARY KEY,
	first_name VARCHAR(15),
	last_name VARCHAR(15));

CREATE TABLE Reservation.Customer_Address(
	Customer_ID integer REFERENCES Reservation.Customer(Unique_Customer_ID),
	Customer_Address_ID integer PRIMARY KEY,
	Street VARCHAR,
	City VARCHAR,
	State_Province VARCHAR,
	Postal_Code integer,
	Country VARCHAR);

CREATE TABLE Reservation.Customer_Contact_Info(
	customer_ID integer REFERENCES Reservation.Customer(Unique_Customer_ID),
	Customer_Contact_ID integer PRIMARY KEY,
	Country_Code integer,
	City_Area_Code integer,
	Local_Number integer,
	Email VARCHAR); 

CREATE TABLE Reservation.Location(
	Country VARCHAR,
	State_Province VARCHAR,
	City VARCHAR,
	City_Code VARCHAR(6) PRIMARY KEY);

CREATE TABLE Reservation.Booking(
	Unique_Booking_Number integer PRIMARY KEY,
	Flight_Number integer REFERENCES Reservation.Airplane(unique_flight_number),
	Date_of_Booking VARCHAR,
	Customer_Paying VARCHAR,
	Customer_Name_on_Ticket VARCHAR,
	Customer_ID integer REFERENCES Reservation.Customer(Unique_Customer_ID),
	Booking_City VARCHAR);
