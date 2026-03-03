-- Include your drop table DDL statements in this file.
-- Make sure to terminate each statement with a semicolon (;)

-- LEAVE this statement on. It is required to connect to your database.
--CONNECT TO COMP421;

-- Remember to put the drop table ddls for the tables with foreign key references
--    BEFORE the ddls to drop the parent tables (reverse of the creation order).

-- This is only an example of how you add drop table ddls to this file.
--   You may remove it.

DROP TABLE ReservationAddOn;
DROP TABLE Reservation;
DROP TABLE WorksAt;

DROP TABLE Luxury_Vehicle;
DROP TABLE Sedan_Vehicle;
DROP TABLE SUV_Vehicle;

DROP TABLE Add_On;
DROP TABLE Vehicle;

DROP TABLE Customer;
DROP TABLE Employee;
DROP TABLE Car_Rental_Store;