--Query one shows customers with their reservations, car info. and pickup/dropoff locations
SELECT
    c.CustomerId,
    c.Name AS CustomerName,
    r.ReservationId,
    r.StartDate,
    r.EndDate,
    v.VIN,
    v.Make,
    v.Model,
    ps.Address AS PickupStore,
    ds.Address AS DropoffStore
FROM Customer c

    JOIN Reservation r
        ON c.CustomerId = r.CustomerId
    JOIN Vehicle v
        ON r.VIN = v.VIN
    JOIN Car_Rental_Store ps
        ON r.PickupStoreID = ps.StoreId
    JOIN Car_Rental_Store ds
        ON r.DropoffStoreID = ds.StoreId
ORDER BY c.Name, r.StartDate;

--Query 2: shows how much each customer has spent, the number of reservations and the customers id


--Query 3 shows how much each store has made and how many reservations they have had


--Query 4: Finds the customers who spent more than what the average customer has spent

--Query 5: Vehicles that have never been reserved

