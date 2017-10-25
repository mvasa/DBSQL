CREATE SCHEMA Reservation;

CREATE TABLE Reservation.AIRPLANE(
	Unique_flight_number integer PRIMARY KEY, 
	airline_code VARCHAR(10), 
	Airline VARCHAR(20));

CREATE TABLE Reservation.Flight_Plan(
	Route_ID VARCHAR PRIMARY KEY,
	flight_number VARCHAR(6), 
	flight_destination VARCHAR(10), 
	flight_origin VARCHAR(10), 
	date_time_departure VARCHAR(10), 
	date_time_arrival VARCHAR(10), 
	flight_length VARCHAR(10));

CREATE TABLE Reservation.Customer(
	Unique_Customer_ID integer PRIMARY KEY,
	first_name VARCHAR(15),
	last_name VARCHAR(15));

CREATE TABLE Reservation.Customer_Address(
	customer_ID integer PRIMARY KEY,
	street VARCHAR,
	city VARCHAR,
	state_province VARCHAR,
	postal_code integer,
	Country VARCHAR);

CREATE TABLE Reservation.Customer_Contact_Info(
	customer_ID integer PRIMARY KEY,
	country_code integer,
	city_area_code integer,
	local_number integer,
	Email VARCHAR); 

CREATE TABLE Reservation.Location(
	Country VARCHAR,
	State_Province VARCHAR,
	City VARCHAR,
	City_code VARCHAR(6) PRIMARY KEY);

CREATE TABLE Reservation.Booking(
	Unique_booking_number integer PRIMARY KEY,
	flight_number integer REFERENCES Reservation.Airplane(unique_flight_number),
	date_of_booking VARCHAR,
	Customer_Paying VARCHAR,
	Customer_name_on_ticket VARCHAR,
	Customer_ID integer REFERENCES Reservation.Customer(Unique_Customer_ID),
	booking_city VARCHAR);
