CREATE SCHEMA `tour-management`;
USE `tour-management`;

CREATE TABLE City (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cityName VARCHAR(20)
);

CREATE TABLE CategoryTour (
    id INT AUTO_INCREMENT PRIMARY KEY,
    categoryCode VARCHAR(10),
    categoryName VARCHAR(10)
);

CREATE TABLE Destination (
    id INT AUTO_INCREMENT PRIMARY KEY,
    destinationName VARCHAR(30) ,
    describes VARCHAR(100),
    cost INT,
    city_id INT,
    FOREIGN KEY (city_id)
        REFERENCES City (id)
);
CREATE TABLE Clients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    clientName VARCHAR(50),
    idNumber VARCHAR(10),
    yearOfBirth INT,
    city_id INT,
    FOREIGN KEY (city_id)
        REFERENCES City (id)
);

CREATE TABLE Tour (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tourCode VARCHAR(10),
    category_id INT,
    FOREIGN KEY (category_id)
        REFERENCES categoryTour (id),
    destination_id INT,
    FOREIGN KEY (destination_id)
        REFERENCES destination (id),
    startDate DATE,
    endDate DATE
);

CREATE TABLE OrderTour (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tour_id INT NOT NULL,
    FOREIGN KEY (tour_id)
        REFERENCES Tour (id),
    client_id INT NOT NULL,
    FOREIGN KEY (client_id)
        REFERENCES clients(id),
    statuss VARCHAR(10)
);

INSERT INTO City (cityName) VALUES ('Ha Noi');
INSERT INTO City (cityName) VALUES ('Nha Trang');
INSERT INTO City (cityName) VALUES ('Da Nang');
INSERT INTO City (cityName) VALUES ('Hue');
INSERT INTO City (cityName) VALUES ('TP Ho Chi Minh');



