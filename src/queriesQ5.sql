--Query one
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