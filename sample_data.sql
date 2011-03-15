DELETE FROM bookings;
DELETE FROM customers;
DELETE FROM passengers;
DELETE FROM flightSchedule;
DELETE FROM bookings_passengers;

ALTER TABLE `customers` AUTO_INCREMENT = 1;
ALTER TABLE `passengers` AUTO_INCREMENT = 1;
ALTER TABLE `flightSchedule` AUTO_INCREMENT = 1;

INSERT INTO customers SET Firstname = 'Mark', LastName = 'Tackett';
INSERT INTO customers SET Firstname = 'Albert', LastName = 'Rupp';
INSERT INTO customers SET Firstname = 'Leonard', LastName = 'Lacour';
INSERT INTO customers SET Firstname = 'Eric', LastName = 'Mardis';
INSERT INTO customers SET Firstname = 'Paul', LastName = 'Raymer';
INSERT INTO customers SET Firstname = 'Claire', LastName = 'Phillips';
INSERT INTO customers SET Firstname = 'John', LastName = 'Smith';
INSERT INTO customers SET Firstname = 'Luke', LastName = 'Pash';



INSERT INTO passengers SET fName = 'Kara', lName = 'Randall';
INSERT INTO passengers SET fName = 'Roxanne', lName = 'Shipley';
INSERT INTO passengers SET fName = 'Jane', lName = 'Napper';
INSERT INTO passengers SET fName = 'Edward', lName = 'Costello';
INSERT INTO passengers SET fName = 'Jeffery', lName = 'Ranson';
INSERT INTO passengers SET fName = 'James', lName = 'Sealy';
INSERT INTO passengers SET fName = 'Yvette', lName = 'Barner';
INSERT INTO passengers SET fName = 'Pearl', lName = 'Everette';
INSERT INTO passengers SET fName = 'James', lName = 'Coulson';
INSERT INTO passengers SET fName = 'Craig', lName = 'Diggs';
INSERT INTO passengers SET fName = 'John', lName = 'Smith';
INSERT INTO passengers SET fName = 'Luke', lName = 'Pash';
INSERT INTO passengers SET fName = 'Joanne', lName = 'Livingston';
INSERT INTO passengers SET fName = 'Marlene', lName = 'Yates';
INSERT INTO passengers SET fName = 'Jacob', lName = 'Westover';
INSERT INTO passengers SET fName = 'Doris', lName = 'Leavitt';
INSERT INTO passengers SET fName = 'Thomas', lName = 'Fancher';
INSERT INTO passengers SET fName = 'Clara', lName = 'Macdougall';
INSERT INTO passengers SET fName = 'Marsha', lName = 'Tolman';



INSERT INTO flightSchedule SET FlightNo = 'TA445', departuredate = '2011-03-20', departureTime = '10:30:00', arrivalDate = '2011-03-20', arrivalTime = '11:35:00';
INSERT INTO flightSchedule SET FlightNo = 'TA447', departuredate = '2011-03-20', departureTime = '15:00:00', arrivalDate = '2011-03-20', arrivalTime = '16:10:00';
INSERT INTO flightSchedule SET FlightNo = 'TA445', departuredate = '2011-03-21', departureTime = '10:30:00', arrivalDate = '2011-03-21', arrivalTime = '11:35:00';
INSERT INTO flightSchedule SET FlightNo = 'TA447', departuredate = '2011-03-21', departureTime = '15:00:00', arrivalDate = '2011-03-21', arrivalTime = '16:10:00';
INSERT INTO flightSchedule SET FlightNo = 'TA446', departuredate = '2011-03-20', departureTime = '12:45:00', arrivalDate = '2011-03-20', arrivalTime = '14:00:00';
INSERT INTO flightSchedule SET FlightNo = 'TA448', departuredate = '2011-03-20', departureTime = '17:25:00', arrivalDate = '2011-03-20', arrivalTime = '18:40:00';
INSERT INTO flightSchedule SET FlightNo = 'TA446', departuredate = '2011-03-21', departureTime = '12:45:00', arrivalDate = '2011-03-21', arrivalTime = '14:00:00';
INSERT INTO flightSchedule SET FlightNo = 'TA448', departuredate = '2011-03-21', departureTime = '17:25:00', arrivalDate = '2011-03-21', arrivalTime = '18:40:00';


INSERT INTO bookings SET bookingID = 'SAP5E', flightScheduleID = '1', customerID = '1', travelAgent = '', classID = '1';
INSERT INTO bookings SET bookingID = 'WAG2Q', flightScheduleID = '3', customerID = '2', travelAgent = '', classID = '1';
INSERT INTO bookings SET bookingID = 'NRG1S', flightScheduleID = '5', customerID = '3', travelAgent = '', classID = '1';
INSERT INTO bookings SET bookingID = 'PGK7P', flightScheduleID = '1', customerID = '4', travelAgent = '', classID = '2';
INSERT INTO bookings SET bookingID = 'VKC1M', flightScheduleID = '2', customerID = '5', travelAgent = '', classID = '1';
INSERT INTO bookings SET bookingID = 'VZJ3S', flightScheduleID = '5', customerID = '6', travelAgent = '', classID = '1';
INSERT INTO bookings SET bookingID = 'ULK8Z', flightScheduleID = '3', customerID = '7', travelAgent = '', classID = '2';
INSERT INTO bookings SET bookingID = 'SSD6U', flightScheduleID = '3', customerID = '8', travelAgent = '', classID = '1';


INSERT INTO bookings_passengers SET bookingID = 'SAP5E', passengerID = '1';
INSERT INTO bookings_passengers SET bookingID = 'WAG2Q', passengerID = '2';
INSERT INTO bookings_passengers SET bookingID = 'NRG1S', passengerID = '3';
INSERT INTO bookings_passengers SET bookingID = 'NRG1S', passengerID = '4';
INSERT INTO bookings_passengers SET bookingID = 'NRG1S', passengerID = '5';
INSERT INTO bookings_passengers SET bookingID = 'NRG1S', passengerID = '6';
INSERT INTO bookings_passengers SET bookingID = 'PGK7P', passengerID = '7';
INSERT INTO bookings_passengers SET bookingID = 'PGK7P', passengerID = '8';
INSERT INTO bookings_passengers SET bookingID = 'VKC1M', passengerID = '9';
INSERT INTO bookings_passengers SET bookingID = 'VZJ3S', passengerID = '10';
INSERT INTO bookings_passengers SET bookingID = 'VZJ3S', passengerID = '11';
INSERT INTO bookings_passengers SET bookingID = 'VZJ3S', passengerID = '12';
INSERT INTO bookings_passengers SET bookingID = 'ULK8Z', passengerID = '13';
INSERT INTO bookings_passengers SET bookingID = 'SSD6U', passengerID = '14';
INSERT INTO bookings_passengers SET bookingID = 'SSD6U', passengerID = '15';
INSERT INTO bookings_passengers SET bookingID = 'SSD6U', passengerID = '16';
INSERT INTO bookings_passengers SET bookingID = 'SSD6U', passengerID = '17';
INSERT INTO bookings_passengers SET bookingID = 'SSD6U', passengerID = '18';
INSERT INTO bookings_passengers SET bookingID = 'SSD6U', passengerID = '19';