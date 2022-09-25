DELIMITER //
CREATE PROCEDURE findAllCustomer()
BEGIN
SELECT * FROM customers;
END
// DELIMITER ;
CALL findAllCustomer;
DROP PROCEDURE findAllCustomer;

DELIMITER //
CREATE PROCEDURE getCusById (IN cusNum INT (11))
BEGIN 
SELECT * FROM customers WHERE customerNumber = cusNum;
END
// DELIMITER ;

call getCusById (175);

delimiter //
CREATE PROCEDURE getCusCountByCity(IN in_city VARCHAR(50), OUT total INT)
BEGIN
SELECT COUNT(customerNumber)
INTO total
FROM customers WHERE city = in_city;
END
// delimiter ;

call getCusCountByCity ('Lyon',@numberOfCus);
select @numberOfCus;

DELIMITER //
drop procedure if exists SetCounter;
CREATE PROCEDURE SetCounter(

    INOUT counter INT,

    IN inc INT

)

BEGIN

    SET counter = counter + inc;

END//

DELIMITER ;
SET @counter = 1;

CALL SetCounter(@counter,1); 
select @counter;