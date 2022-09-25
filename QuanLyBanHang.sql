CREATE SCHEMA `QuanLyBanHang`;
USE `QuanLyBanHang`;
CREATE TABLE Customer (
    cID INT AUTO_INCREMENT PRIMARY KEY,
    cName VARCHAR(30) NOT NULL,
    cAge INT NOT NULL
);
CREATE TABLE `Order` (
    oID INT AUTO_INCREMENT PRIMARY KEY,
    cID INT NOT NULL,
    FOREIGN KEY (cID)
        REFERENCES Customer (cID),
    oDate DATETIME NOT NULL,
    oTotalPrice DOUBLE
);
CREATE TABLE Product (
    pID INT AUTO_INCREMENT PRIMARY KEY,
    pName VARCHAR(50) NOT NULL,
    pPrice DOUBLE NOT NULL
);
CREATE TABLE OrderDetail (
    oID INT NOT NULL,
    pID INT NOT NULL,
    FOREIGN KEY (oID)
        REFERENCES `Order` (oID),
    FOREIGN KEY (pID)
        REFERENCES Product (pID),
    PRIMARY KEY (oID , pID),
    odQTY INT NOT NULL
);

INSERT INTO customer (cName, cAge) VALUES ('Minh Quan',10);
INSERT INTO customer (cName, cAge) VALUES ('Ngoc Oanh',20);
INSERT INTO customer (cName, cAge) VALUES ('Hong Ha',50);

INSERT INTO `order` (cID, oDate) VALUES (1, '2006-03-21');
INSERT INTO `order` (cID, oDate) VALUES (2, '2006-03-23');
INSERT INTO `order` (cID, oDate) VALUES (1, '2006-03-16');

INSERT INTO Product (pName, pPrice) VALUES ('May Giat', 3);
INSERT INTO Product (pName, pPrice) VALUES ('Tu Lanh', 5);
INSERT INTO Product (pName, pPrice) VALUES ('Dieu Hoa', 7);
INSERT INTO Product (pName, pPrice) VALUES ('Quat', 1);
INSERT INTO Product (pName, pPrice) VALUES ('Bep Dien', 2);

INSERT INTO OrderDetail (oID,pID,odQTY) VALUES (1,1,3);
INSERT INTO OrderDetail (oID,pID,odQTY) VALUES (1,3,7);
INSERT INTO OrderDetail (oID,pID,odQTY) VALUES (1,4,2);
INSERT INTO OrderDetail (oID,pID,odQTY) VALUES (2,1,1);
INSERT INTO OrderDetail (oID,pID,odQTY) VALUES (3,1,8);
INSERT INTO OrderDetail (oID,pID,odQTY) VALUES (2,5,4);
INSERT INTO OrderDetail (oID,pID,odQTY) VALUES (2,3,3);

SELECT 
    O.oID, O.oDate, P.pPrice
FROM
    orderdetail OD
        JOIN
    `order` O ON OD.oID = O.oID
        JOIN
    product P ON OD.pID = P.pID;

SELECT C.cName, P.pName
FROM Customer C 
JOIN `Order` O
ON C.cID = O.cID
JOIN OrderDetail OD
ON O.oID = OD.oID
JOIN Product P
ON P.pID = OD.pID;

DELIMITER //
DROP PROCEDURE IF EXISTS sp_CheckProduct;
CREATE PROCEDURE sp_CheckProduct(INOUT value1 VARCHAR(50))

   BEGIN
   SET value1=(SELECT pName FROM Product WHERE pName=value1);
   END;
   //DELIMITER ;
   
-- SET @checkingproduct = 'Tu Lanh';
-- SELECT @checkingproduct;
CALL sp_CheckProduct(@checkingproduct);
SELECT @checkingproduct;

CALL sp_CheckProduct('Bong Den',@isPresent);
SELECT @isPresent;

   DELIMITER //
   DROP PROCEDURE IF EXISTS sp_CountOrderByCustomerName;
CREATE PROCEDURE sp_CountOrderByCustomerName (IN value1 VARCHAR(20), OUT value2 INT)

   BEGIN
SELECT COUNT(oID)
INTO value2
    FROM `order` JOIN customer ON `order`.cID= customer.cID
    WHERE customer.cName = value1;
   END;
   //DELIMITER ;
   
SET @NumberOfOrder =100;
SELECT @NumberOfOrder;
CALL sp_CountOrderByCustomerName('Minh Quan',@NumberOfOrder);
SELECT @NumberOfOrder;

