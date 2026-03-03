CREATE TABLE Car_Rental_Store (
    StoreId INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    Address VARCHAR(100) NOT NULL,
    Phone_Number VARCHAR(11),
    WEBSITE VARCHAR(300),
    PRIMARY KEY (StoreId)
);

Create Table Employee (
    EmployeeId INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    Name VARCHAR(100) NOT NULL,
    Salary DECIMAL,
    Position VARCHAR(100),
    PRIMARY KEY (EmployeeId)
);

CREATE TABLE Customer (
    CustomerId INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    Name VARCHAR(100) NOT NUll,
    CardNumber VARCHAR(32),
    Birthdate DATE,
    PRIMARY KEY (CustomerId)
);

--ISA TABLE FOR VEHICLES
CREATE TABLE Vehicle (
    VIN VARCHAR(17) NOT NULL,
    Make VARCHAR(100) NOT NULL,
    Model VARCHAR(100) NOT NULL,
    StoreId INT NOT NULL,
    PRIMARY KEY (VIN),
    FOREIGN KEY (StoreId) REFERENCES Car_Rental_Store(StoreId) -- each car belongs to a store
);

CREATE TABLE Luxury_Vehicle (
    VIN VARCHAR(17) NOT NULL,
    Engine VARCHAR(80),
    TopSpeed INTEGER,
    Horsepower  INTEGER,
    PRIMARY KEY (VIN),
    FOREIGN KEY (VIN) REFERENCES Vehicle(VIN) ON DELETE CASCADE,
    CHECK (TopSpeed IS NULL OR TopSpeed >= 0),
    CHECK (Horsepower IS NULL OR Horsepower >= 0)
);

CREATE TABLE Sedan_Vehicle (
    VIN              VARCHAR(17) NOT NULL,
    SeatingCapacity  INTEGER,
    DriveTrain       VARCHAR(50),
    Weight           DECIMAL,
    PRIMARY KEY (VIN),
    FOREIGN KEY (VIN) REFERENCES Vehicle(VIN) ON DELETE CASCADE,
    CHECK (SeatingCapacity IS NULL OR SeatingCapacity >= 1),
    CHECK (Weight IS NULL OR Weight >= 0)
);

CREATE TABLE SUV_Vehicle (
    VIN VARCHAR(17) NOT NULL,
    SeatingCapacity  INTEGER,
    DriveTrain VARCHAR(40),
    Engine VARCHAR(80),
    PRIMARY KEY (VIN),
    FOREIGN KEY (VIN) REFERENCES Vehicle(VIN) ON DELETE CASCADE,
    CHECK (SeatingCapacity IS NULL OR SeatingCapacity >= 1)
);

CREATE TABLE Add_On (
    AddOnId INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    Name VARCHAR(100) NOT NULL,
    Cost DECIMAL NOT NULL,
    PRIMARY KEY (AddOnId),
    CHECK (Cost >= 0)
);

--Creating Relationships

CREATE TABLE WorksAt (
    EmployeeId BIGINT NOT NULL,
    StoreID BIGINT NOT NULL,
    Since DATE NOT NULL,
    PRIMARY KEY (EmployeeId), -- employees only work at one store
    FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId) ON DELETE CASCADE,
    FOREIGN KEY (StoreId) REFERENCES Car_Rental_Store(StoreId) ON DELETE CASCADE
);

CREATE TABLE Reservation (
    ReservationId BIGINT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    CustomerId INT NOT NULL,
    VIN  VARCHAR(17) NOT NULL,
    PickupStoreID   BIGINT NOT NULL,
    DropoffStoreID  BIGINT NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    PickupTime TIME,
    DropoffTime TIME,
    InsurancePolicy VARCHAR(255),
    Cost DECIMAL(12,2) NOT NULL DEFAULT 0,

    PRIMARY KEY (ReservationId),
    FOREIGN KEY (VIN) REFERENCES Vehicle(VIN),
    FOREIGN KEY (CustomerId) REFERENCES Customer(CustomerId),
    FOREIGN KEY (PickupStoreID) REFERENCES Car_Rental_Store(StoreID),
    FOREIGN KEY (DropoffStoreID) REFERENCES Car_Rental_Store(StoreID),

    CHECK (EndDate >= StartDate),
    CHECK (Cost >= 0)
);

CREATE TABLE ReservationAddOn ( -- many to many reservation - AddOn
    ReservationId  BIGINT NOT NULL,
    AddOnId  BIGINT NOT NULL,
    PRIMARY KEY (ReservationId, AddOnId),
    FOREIGN KEY (ReservationId) REFERENCES Reservation(ReservationId) ON DELETE CASCADE,
    FOREIGN KEY (AddOnId) REFERENCES Add_On(AddOnId)
);


