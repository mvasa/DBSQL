CREATE TABLE Countries(name VARCHAR(20) PRIMARY KEY, latitude CHAR(8), longtitude CHAR(8), area INT, population INT, gdp BIGINT, gdpyear INT);

CREATE TABLE Borders(name VARCHAR(20), BorderedBy VARCHAR(20));

INSERT INTO Countries VALUES('Germany', '51 00 N', '9 00 E', 357022, 80594017, 3495000000000, 2016); 
INSERT INTO Countries VALUES ('Netherlands', '52 30 N', '5 45 E', 41543, 17084719, 773900000000, 2016); 
INSERT INTO Countries VALUES ('Belgium', '50 50 N', '4 00 E', 30528, 11491346, 470200000000, 2016); 
INSERT INTO Countries VALUES ('Luxembourg', '49 45 N', '6 10 E', 2586, 594130,60980000000, 2016 ); 
INSERT INTO Countries VALUES ('Poland', '52 00 N', '20 00 E', 312685, 38476269, 467400000000, 2016); 
INSERT INTO Countries VALUES ('Czech Republic', '49 45 N', '15 30 E', 78867, 10674723, 193500000000, 2016); 
INSERT INTO Countries VALUES ('Austria', '47 20 N', '13 20 E', 83871, 8754413, 387300000000, 2016); 
INSERT INTO Countries VALUES ('France', '46 00 N', '2 00 E', 643801, 67106161, 2488000000000, 2016); 
INSERT INTO Countries VALUES ('Switzerland', '47 00 N', '8 00 E', 41277, 8236303, 662500000000, 2016);


INSERT INTO Borders VALUES('Germany', 'Austria'); 
INSERT INTO Borders VALUES('Germany', 'Belgium'); 
INSERT INTO Borders VALUES('Germany', 'Czech Republic'); 
INSERT INTO Borders VALUES('Germany', 'France'); 
INSERT INTO Borders VALUES('Germany', 'Luxembourg'); 
INSERT INTO Borders VALUES('Germany', 'Poland'); 
INSERT INTO Borders VALUES('Germany', 'Netherlands'); 
INSERT INTO Borders VALUES('Germany', 'Switzerland'); 
INSERT INTO Borders VALUES('Netherlands', 'Belgium'); 
INSERT INTO Borders VALUES('Netherlands', 'Germany'); 
INSERT INTO Borders VALUES('Belgium', 'France'); 
INSERT INTO Borders VALUES('Belgium', 'Germany'); 
INSERT INTO Borders VALUES('Belgium', 'Luxembourg'); 
INSERT INTO Borders VALUES('Belgium', 'Netherlands'); 
INSERT INTO Borders VALUES('Luxembourg', 'Belgium'); 
INSERT INTO Borders VALUES('Luxembourg', 'France'); 
INSERT INTO Borders VALUES('Luxembourg', 'Germany'); 
INSERT INTO Borders VALUES('Poland', 'Czech Republic'); 
INSERT INTO Borders VALUES('Poland', 'Germany'); 
INSERT INTO Borders VALUES('Czech Republic', 'Austria'); 
INSERT INTO Borders VALUES('Czech Republic', 'Germany'); 
INSERT INTO Borders VALUES('Czech Republic', 'Poland'); 
INSERT INTO Borders VALUES('Austria', 'Czech Republic'); 
INSERT INTO Borders VALUES('Austria', 'Germany'); 
INSERT INTO Borders VALUES('Austria', 'Switzerland'); 
INSERT INTO Borders VALUES('France', 'Belgium'); 
INSERT INTO Borders VALUES('France', 'Germany'); 
INSERT INTO Borders VALUES('France', 'Luxembourg'); 
INSERT INTO Borders VALUES('France', 'Switzerland'); 
INSERT INTO Borders VALUES('Switzerland', 'Austria'); 
INSERT INTO Borders VALUES('Switzerland', 'France'); 
INSERT INTO Borders VALUES('Switzerland', 'Germany');

SELECT name FROM Borders WHERE borderedBy = 'Germany'; 

SELECT name FROM Countries WHERE population > 35000000;

SELECT Countries.name, Borders.name FROM Countries, Borders WHERE (Countries.population > 35000000) AND (Borders.borderedby = 'Germany');  