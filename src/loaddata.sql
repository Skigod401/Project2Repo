-- Include your INSERT SQL statements in this file.
-- Make sure to terminate each statement with a semicolon (;)

-- LEAVE this statement on. It is required to connect to your database.
--CONNECT TO COMP421;

-- Remember to put the INSERT statements for the tables with foreign key references
--    ONLY AFTER the insert for the parent tables!

-- This is only an example of how you add INSERT statements to this file.
--   You may remove it.

/*
INSERT INTO MYTEST01 (id, value) VALUES(4, 1300);
-- A more complex syntax that saves you typing effort.
INSERT INTO MYTEST01 (id, value) VALUES
 (7, 5144),
 (3, 73423),
 (6, -1222)
;
*/

-- from streets in big canadian cities (calgary, montreal, toronto, ottawa, vancouver)
INSERT INTO Car_Rental_Store(Address, Phone_Number, WEBSITE) VALUES
('123 Ave Peel, Montreal, QC, CA' , '5143860000' , 'www.rentMtlPeel.ca'),
('4562 Queen Street West, ON, CA' , '3451231234' , 'www.rentTorontoQueen.ca'),
('10 Rue Sainte-Catherine, QC, CA' , '5148766543' , 'www.rentMtlCatherine.ca'),
('385 Granville Street, BC, CA' , '7781234028' , 'www.rentVanGranville.ca'),
('100 Main Street, BC, CA' , '7786253948' , 'www.rentVanMain.ca'),
('40 Bank Street, ON, CA' , '6139732736' , 'www.rentOttBank.ca'),
('723 Stephen Avenue, AB, CA ' , '4038273049' , 'www.rentCalStephen.ca');


-- Employees
-- from random name generator: https://www.name-generator.org.uk/quick/

INSERT INTO Employee (Name, Salary, Position) VALUES
('Delores Johnson', '48000', 'Assistant Manager'),
('Kristian Meadows', '38000', 'Sales Associate'),
('Kurtis Dillon', '42000', 'Reservations Specialist'),
('Ernest Nicholson', '37000', 'Sales Associate'),
('Evie Lawrence', '50000', 'Assistant Manager'),
('Kareem Rhodes', '36000', 'Sales Associate'),
('Jacob Bean', '40000', 'Customer Service Represantative'),
('Gertrude Reed', '65000', 'Branch Manager'),
('Kayleigh Murray', '45000', 'Vehicle Maintenance Technician'),
('Saarah Gould', '90000', 'Regional Manager');


-- Customers (100 names) w/ realistic birthdays
INSERT INTO Customer (Name, CardNumber, Birthdate) VALUES
('James Wilson', '5152837465318681', '1990-03-15'),
('Emma Tremblay', '4539218473629184', '1995-07-21'),
('Liam Chen', '5183749201837462', '1992-11-04'),
('Olivia Martin', '4029183746501928', '1998-02-13'),
('Noah Singh', '4918273645019283', '1994-09-30'),
('Charlotte Roy', '5273648192037465', '1996-12-01'),
('William Brown', '4382917465019284', '1989-06-17'),
('Amelia Gagnon', '4920183746501927', '1997-03-22'),
('Lucas Pelletier', '5318297465019283', '1993-10-11'),
('Sophie Bouchard', '4719203847561920', '1991-04-09'),
('Benjamin Taylor', '5192837465018273', '1990-08-27'),
('Chloe Morin', '4029183746501937', '1998-05-19'),
('Ethan Nguyen', '4719203847561930', '1994-01-02'),
('Mia Laurent', '5318297465019289', '1999-07-07'),
('Logan Campbell', '4539218473629124', '1993-02-14'),
('Ava Lavoie', '4920183746501987', '1997-09-03'),
('Nathan Clark', '4382917465019244', '1992-12-25'),
('Emily Adams', '5273648192037425', '1996-06-08'),
('Owen White', '5192837465018223', '1988-03-18'),
('Leah Cote', '4029183746501918', '1995-11-23'),
('Jack Hall', '4719203847561910', '1990-01-15'),
('Ella Girard', '5318297465019219', '1999-04-29'),
('Daniel Scott', '4539218473629134', '1987-08-06'),
('Abigail Fournier', '4920183746501937', '1996-10-12'),
('Matthew Green', '4382917465019281', '1991-05-03'),
('Lily Lefebvre', '5273648192037461', '1998-02-26'),
('Ryan Young', '5192837465018231', '1993-07-14'),
('Victoria Caron', '4029183746501991', '1995-09-17'),
('Andrew King', '4719203847561990', '1992-04-30'),
('Scarlett Gauthier', '5318297465019271', '1997-01-19'),
('Caleb Ward', '4539218473629174', '1994-06-01'),
('Hannah Ouellet', '4920183746501977', '1998-03-11'),
('Joshua Wright', '4382917465019251', '1989-12-09'),
('Zoe Belanger', '5273648192037441', '1996-07-26'),
('Adam Baker', '5192837465018261', '1993-02-08'),
('Grace Poirier', '4029183746501951', '1997-05-20'),
('Samuel Hill', '4719203847561970', '1991-09-14'),
('Madison Lapointe', '5318297465019241', '1999-11-02'),
('Nicholas Ross', '4539218473629154', '1990-03-27'),
('Avery Beaulieu', '4920183746501967', '1998-08-13'),
('Connor Morgan', '4382917465019291', '1994-04-05'),
('Natalie Gosselin', '5273648192037471', '1995-06-18'),
('Dylan Cooper', '5192837465018291', '1992-01-24'),
('Brooklyn Renaud', '4029183746501981', '1997-10-29'),
('Brandon Murphy', '4719203847561960', '1988-11-16'),
('Claire Leclerc', '5318297465019261', '1996-02-21'),
('Jordan Cook', '4539218473629164', '1993-07-30'),
('Audrey Pellerin', '4920183746501917', '1998-12-07'),
('Tyler Bailey', '4382917465019211', '1991-03-02'),
('Eva St-Pierre', '5273648192037481', '1997-09-15'),
('Justin Bell', '5192837465018241', '1989-05-10'),
('Camille Desjardins', '4029183746501941', '1995-01-28'),
('Aaron Parker', '4719203847561950', '1992-06-06'),
('Melanie Fortin', '5318297465019231', '1996-04-17'),
('Jason Bennett', '4539218473629194', '1990-10-22'),
('Isabelle Bergeron', '4920183746501927', '1998-07-01'),
('Kyle Wood', '4382917465019271', '1993-08-19'),
('Sarah Landry', '5273648192037411', '1997-03-05'),
('Patrick Price', '5192837465018271', '1991-11-12'),
('Jade Cloutier', '4029183746501931', '1999-02-09'),
('Cody Richardson', '4719203847561940', '1994-12-30'),
('Valerie Parent', '5318297465019221', '1995-05-25'),
('Evan Stewart', '4539218473629144', '1992-09-04'),
('Nadia Charron', '4920183746501997', '1998-06-16'),
('Trevor Howard', '4382917465019231', '1989-01-13'),
('Gabrielle Savard', '5273648192037491', '1996-11-27'),
('Shawn Brooks', '5192837465018211', '1993-04-07'),
('Helene Vaillancourt', '4029183746501971', '1995-08-31'),
('Derek Gray', '4719203847561931', '1990-02-20'),
('Julie Charbonneau', '5318297465019291', '1997-07-12'),
('Marcus Holmes', '4539218473629114', '1991-10-03'),
('Caroline Thibault', '4920183746501947', '1998-01-26'),
('Victor Sims', '4382917465019261', '1992-03-14'),
('Sabrina Hamel', '5273648192037451', '1996-05-21'),
('Bradley Mason', '5192837465018251', '1994-09-09'),
('Karine Robitaille', '4029183746501961', '1997-11-19'),
('Wesley Dixon', '4719203847561921', '1993-12-28'),
('Annie Paquette', '5318297465019251', '1995-06-03'),
('Gavin Porter', '4539218473629181', '1992-07-23'),
('Catherine Houle', '4920183746501957', '1998-04-14'),
('Blake Hunter', '4382917465019221', '1991-01-31'),
('Renee Martel', '5273648192037431', '1996-09-08'),
('Cole Fisher', '5192837465018281', '1993-03-16'),
('Sylvie Villeneuve', '4029183746501921', '1995-12-11'),
('Spencer Hayes', '4719203847561981', '1990-06-24'),
('Danielle Laflamme', '5318297465019201', '1997-02-04'),
('Ian Curtis', '4539218473629104', '1989-08-02'),
('Marianne Cormier', '4920183746501907', '1996-10-18'),
('Peter Walsh', '4382917465019201', '1991-05-06'),
('Dominique Proulx', '5273648192037401', '1997-07-27'),
('Scott McKay', '5192837465018201', '1992-02-12'),
('Lucie Chretien', '4029183746501901', '1998-03-09'),
('Neil Davidson', '4719203847561901', '1990-11-05'),
('Pauline Lemieux', '5318297465019191', '1995-04-02'),
('Kevin Abbott', '4539218473629094', '1993-09-28'),
('Veronique Dubois', '4920183746501897', '1997-06-22'),
('Alex Turner', '4382917465019181', '1991-12-17');


-- vehicles  w/ storeID's
-- vid: 17 characters as per the standard 
    -- ** format in doc

INSERT INTO Vehicle (VIN, Make, Model, StoreId) VALUES
('WP0AB2A91LS203456', 'Porsche', '911 Carrera', 6),
('WBS53AY03M5S12345', 'BMW', 'M5', 6),
('ZFF81CHA0L0234567', 'Ferrari', 'F8 Tributo', 7),
('SBM667Y91LW001234', 'McLaren', '720S', 7),
('W1NOG8DB5LW123456', 'Mercedes-Benz', 'GLE 450', 4),
('WD0GG6BB4LF987654', 'Mercedes-Benz', 'AMG GT', 5),
('KMHGN4JH0LU123456', 'Hyundai', 'Ioniq 5', 3),
('VNAJF3B51L1098765', 'Volvo', 'XC90', 1),
('1N4BL4CV1MC123456', 'Nissan', 'Altima', 1),
('WA1VABF41K1098765', 'Audi', 'A4', 6),
('1HGCM82637A004152', 'Honda', 'Accord', 1),
('2HGFC2F51JH503412', 'Honda', 'Civic', 1),
('3FA6P0HD0GR123456', 'Ford', 'Fusion', 3),
('5YJ3E1EA5KF123456', 'Tesla', 'Model 3', 4),
('5YJSA1E21LF987654', 'Tesla', 'Model S', 4),
('JTDKN3DU1M0678901', 'Toyota', 'Prius', 5),
('4S3BNAC61L3045678', 'Subaru', 'Legacy', 6),
('WBA3N3C50K0G12345', 'BMW', '330i', 7),
('JN1AS04P1BM123456', 'Nissan', 'Sentra', 4),
('1FMCU0G61JUA67890', 'Ford', 'Escape', 3),
('JTMBD1FV0L5012345', 'Toyota', 'RAV4', 5),
('SALGV2RE4LA654321', 'Land Rover', 'Defender', 6),
('1GCUKREC0GZ192834', 'Chevrolet', 'Silverado', 2),
('2HGFC2F51JH503413', 'Honda', 'CR-V', 1),
('5YJYG1E21LF987654', 'Tesla', 'Model Y', 4),
('JTEBU1JR0L5098765', 'Toyota', '4Runner', 5);

-- ** generated these engines from copilot they might not be accurate

-- luxury vehicles
INSERT INTO Luxury_Vehicle (VIN, Engine, TopSpeed, Horsepower) VALUES
('WP0AB2A91LS203456', '3.0L Flat-6', 293, 379), -- Porsche 911
('WBS53AY03M5S12345', '4.4L V8 Twin-Turbo', 305, 617), -- BMW M5
('ZFF81CHA0L0234567', '3.9L V8 Twin-Turbo', 340, 710), -- Ferrari F8
('SBM667Y91LW001234', '4.0L V8 Twin-Turbo', 330, 710), -- McLaren 720S
('W1NOG8DB5LW123456', '3.0L I6 Turbo', 210, 362), -- Mercedes GLE
('WD0GG6BB4LF987654', '4.0L V8 Twin-Turbo', 312, 523), -- Mercedes AMG GT
('KMHGN4JH0LU123456', 'Electric', 185, 320), -- Hyundai Ioniq 5
('VNAJF3B51L1098765', '2.0L I4 Turbo', 180, 295), -- Volvo XC90
('1N4BL4CV1MC123456', '2.5L I4', 210, 188), -- Nissan Altima
('WA1VABF41K1098765', '2.0L I4 Turbo', 209, 261); -- Audi A4



-- sedans
INSERT INTO Sedan_Vehicle (VIN, SeatingCapacity, DriveTrain, Weight) VALUES
('1HGCM82637A004152', 5, 'FWD', 3400), -- Honda Accord
('2HGFC2F51JH503412', 5, 'FWD', 2900), -- Honda Civic
('3FA6P0HD0GR123456', 5, 'FWD', 3600), -- Ford Fusion
('5YJ3E1EA5KF123456', 5, 'AWD', 4050), -- Tesla Model 3
('5YJSA1E21LF987654', 5, 'AWD', 4750), -- Tesla Model S
('JTDKN3DU1M0678901', 5, 'FWD', 3050), -- Toyota Prius
('4S3BNAC61L3045678', 5, 'AWD', 3500), -- Subaru Legacy
('WBA3N3C50K0G12345', 5, 'RWD', 3550), -- BMW 330i
('JN1AS04P1BM123456', 5, 'FWD', 3050), -- Nissan Sentra
('1N4BL4CV1MC123456', 5, 'FWD', 3250); -- Nissan Altima

-- SUVs

INSERT INTO SUV_Vehicle (VIN, SeatingCapacity, DriveTrain, Engine) VALUES
('1FMCU0G61JUA67890', 5, 'AWD', '1.5L I3 Turbo'),     -- Ford Escape
('JTMBD1FV0L5012345', 5, 'AWD', '2.5L I4'),           -- Toyota RAV4
('SALGV2RE4LA654321', 5, '4WD', '3.0L I6 Turbo'),     -- Land Rover Defender
('W1NOG8DB5LW123456', 7, 'AWD', '3.0L I6 Turbo'),     -- Mercedes-Benz GLE
('VNAJF3B51L1098765', 7, 'AWD', '2.0L I4 Turbo'),     -- Volvo XC90
('KMHGN4JH0LU123456', 5, 'AWD', 'Electric'),          -- Hyundai Ioniq 5
('1GCUKREC0GZ192834', 6, '4WD', '5.3L V8'),           -- Chevrolet Silverado (Truck/SUV)
('2HGFC2F51JH503413', 5, 'AWD', '2.0L I4'),           -- Honda CR-V (New VIN)
('5YJYG1E21LF987654', 7, 'AWD', 'Electric'),          -- Tesla Model Y (New VIN)
('JTEBU1JR0L5098765', 8, '4WD', '4.0L V6');           -- Toyota 4Runner (New VIN)


-- add-ons

INSERT INTO Add_On (Name, Cost) VALUES
('Dash Cam' ,'15.00' ),
('Wifi' ,'15.50' ),
('Child Seat' ,'12.00' ),
('LED Lighting' ,'20.00' ),
('Seat Cushion' ,'5.00' ),
('Bike Rack' ,'30.00' ),
('In-Car Entertainment' ,'20.00' ),
('GPS Navigation' ,'10.00' );


-- worksat (one of the 7 stores)
INSERT INTO WorksAt (EmployeeId, StoreID, Since) VALUES
(1,  1, '2019-03-10'),
(2,  2, '2021-06-15'),
(3,  3, '2020-01-20'),
(4,  4, '2018-11-05'),
(5,  5, '2022-03-01'),
(6,  6, '2017-08-22'),
(7,  7, '2023-02-14'),
(8,  1, '2016-05-30'),
(9,  2, '2020-09-09'),
(10, 3, '2019-12-01');

-- from the 100 customers (ids), and VINS and StoreIDs
INSERT INTO Reservation (CustomerId, VIN, PickupStoreID, DropoffStoreID, StartDate, EndDate, PickupTime, DropoffTime, InsurancePolicy, Cost) VALUES
(1,  '1HGCM82637A004152', 1, 1, '2025-01-05', '2025-01-08', '09:00:00', '09:00:00', 'Basic',         180.00),
(2,  '2HGFC2F51JH503412', 1, 3, '2025-01-12', '2025-01-15', '10:00:00', '11:00:00', 'Comprehensive', 210.00),
(3,  'WP0AB2A91LS203456', 6, 6, '2025-02-01', '2025-02-05', '08:00:00', '08:00:00', 'Premium',      1200.00),
(4,  '5YJ3E1EA5KF123456', 4, 5, '2025-02-10', '2025-02-14', '12:00:00', '12:00:00', 'Basic',         320.00),
(5,  'JTMBD1FV0L5012345', 5, 5, '2025-03-03', '2025-03-07', '14:00:00', '14:00:00', 'Comprehensive', 380.00),
(6,  'WBS53AY03M5S12345', 6, 7, '2025-03-15', '2025-03-17', '09:00:00', '10:00:00', 'Premium',       950.00),
(7,  'SALGV2RE4LA654321', 7, 4, '2025-04-01', '2025-04-06', '11:00:00', '13:00:00', 'Comprehensive', 600.00),
(8,  'JTDKN3DU1M0678901', 5, 5, '2025-04-10', '2025-04-12', '10:00:00', '10:00:00', 'Basic',         110.00),
(9,  '1FMCU0G61JUA67890', 3, 3, '2025-04-20', '2025-04-25', '08:00:00', '09:00:00', 'Comprehensive', 350.00),
(10, 'ZFF81CHA0L0234567', 7, 6, '2025-05-01', '2025-05-03', '15:00:00', '15:00:00', 'Premium',      1500.00),
(11, '1GCUKREC0GZ192834', 2, 4, '2025-05-10', '2025-05-14', '09:00:00', '11:00:00', 'Basic',         280.00),
(12, '3FA6P0HD0GR123456', 3, 1, '2025-05-20', '2025-05-23', '10:00:00', '10:00:00', 'Basic',         195.00),
(13, 'W1NOG8DB5LW123456', 5, 5, '2025-06-01', '2025-06-05', '08:00:00', '08:00:00', 'Premium',       870.00),
(14, '5YJSA1E21LF987654', 4, 2, '2025-06-15', '2025-06-18', '13:00:00', '13:00:00', 'Comprehensive', 720.00),
(15, 'JTEBU1JR0L5098765', 5, 7, '2025-07-04', '2025-07-09', '11:00:00', '16:00:00', 'Basic',         430.00),
(16, '4S3BNAC61L3045678', 6, 6, '2025-07-15', '2025-07-17', '09:00:00', '09:00:00', NULL,            160.00),
(17, 'WBA3N3C50K0G12345', 6, 3, '2025-08-01', '2025-08-05', '10:00:00', '12:00:00', 'Comprehensive', 440.00),
(18, 'SBM667Y91LW001234', 7, 7, '2025-08-10', '2025-08-12', '14:00:00', '14:00:00', 'Premium',      1350.00),
(19, '2HGFC2F51JH503413', 1, 5, '2025-09-01', '2025-09-04', '08:00:00', '10:00:00', 'Basic',         220.00),
(1,  '1HGCM82637A004152', 1, 1, '2025-02-05', '2025-02-08', '09:00:00', '09:00:00', 'Basic',         400.00),
(20, '5YJYG1E21LF987654', 4, 4, '2025-09-15', '2025-09-20', '12:00:00', '12:00:00', 'Comprehensive', 490.00);

--Repeat customer
INSERT INTO Reservation (CustomerId, VIN, PickupStoreID, DropoffStoreID, StartDate, EndDate, PickupTime, DropoffTime, InsurancePolicy, Cost) VALUES
    (1,  '1HGCM82637A004152', 1, 1, '2025-02-05', '2025-02-08', '09:00:00', '09:00:00', 'Basic',         400.00);

-- reservation add ons from the Reservation IDs and the Add on IDs
INSERT INTO ReservationAddOn (ReservationId, AddOnId) VALUES
(1,  1),
(1,  8),
(2,  3),
(3,  2),
(3,  8),
(4,  1),
(5,  3),
(5,  6),
(6,  2),
(7,  8),
(7,  5),
(8,  1),
(9,  3),
(9,  7),
(10, 2),
(11, 4),
(12, 1),
(13, 2),
(14, 6),
(15, 8),
(16, 3),
(17, 7),
(18, 1),
(19, 5),
(20, 4);