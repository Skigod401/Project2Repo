--VIEW 1: Any query that relates to the reservations will probably need this info
CREATE VIEW  Store_Reservations AS (
    SELECT
        r.RESERVATIONID,
        v.Make,
        v.MODEL,
        v.VIN,
        c.NAME,
        c.CARDNUMBER,
        pu.STOREID AS PICKUPSTOREID,
        pu.ADDRESS AS PICKUPSTOREADDRESS,
        dr.STOREID AS DROPOFFSTOREID,
        dr.ADDRESS AS DROPOFFSTOREADDRESS,
        r.StartDate,
        r.EndDate,
        r.PickupTime,
        r.DropoffTime,
        r.InsurancePolicy,
        r.Cost
    FROM RESERVATION r
        JOIN CUSTOMER c ON r.CUSTOMERID = c.CUSTOMERID
        JOIN VEHICLE v ON r.VIN = v.VIN
        JOIN CAR_RENTAL_STORE pu ON r.PICKUPSTOREID = pu.STOREID
        JOIN CAR_RENTAL_STORE dr ON  r.DROPOFFSTOREID = dr.STOREID
);

--VIEW 1 INSERT ATTEMPT:
INSERT INTO Store_Reservations (
    ReservationId,
    Make,
    Model,
    VIN,
    Name,
    CardNumber,
    PickupStoreId,
    PickupStoreAddress,
    DropoffStoreId,
    DropoffStoreAddress,
    StartDate,
    EndDate,
    PickupTime,
    DropoffTime,
    InsurancePolicy,
    Cost
)
VALUES (
    1,
   'Toyota',
   'Corolla',
   '1HGCM82633A123456',
   'Alice Smith',
   '1234567812345678',
   1,
   '123 Main St',
   2,
   '456 King St',
   DATE('2026-03-10'),
   DATE('2026-03-12'),
   TIME('09:00:00'),
   TIME('17:00:00'),
   'Full Coverage',
   199.99
);

--VIEW 2: Cars with the store that they belong to
CREATE VIEW VehicleStoreDetails AS
SELECT
    v.VIN,
    v.Make,
    v.Model,
    s.StoreId,
    s.Address,
    s.Phone_Number,
    s.Website
FROM Vehicle v
    JOIN Car_Rental_Store s
        ON v.StoreId = s.StoreId;

INSERT INTO VehicleStoreDetails (
    VIN,
    Make,
    Model,
    StoreId,
    Address,
    Phone_Number,
    Website
)
VALUES (
    '1HGCM82633A123456',
    'Toyota',
    'Corolla',
    1,
    '123 Main St',
    '5145551234',
    'www.carrental.com'
);