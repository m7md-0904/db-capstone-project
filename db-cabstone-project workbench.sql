DELIMITER //

CREATE PROCEDURE CheckBooking(IN var_bookingDate DATE, IN var_TableNo INT) 
BEGIN 
    DECLARE tableExists INT;

    -- Check if the table is already booked on the given date
    SELECT COUNT(*) INTO tableExists 
    FROM Bookings 
    WHERE BookingDate = var_bookingDate AND TableNumber = var_TableNo;

    IF tableExists = 0 THEN 
        SELECT CONCAT("Table ", var_TableNo, " is free on ", var_bookingDate, "!") AS message;
    ELSE 
        SELECT CONCAT("Table ", var_TableNo, " is already booked on ", var_bookingDate, ".") AS message;
    END IF;
    
END //

DELIMITER ;
call checkbooking("2022-11-12",3);
