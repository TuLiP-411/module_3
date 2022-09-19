create schema QuanLyHocVien;
use QuanLyHocVien;
CREATE TABLE address (
    idAddress INT AUTO_INCREMENT PRIMARY KEY,
    address VARCHAR(100)
);
CREATE TABLE Classes (
    idClass INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    language VARCHAR(20),
    description VARCHAR(100)
);
CREATE TABLE Students (
    idStudent INT AUTO_INCREMENT PRIMARY KEY,
    fullName VARCHAR(50) NOT NULL,
    address_id INT,
    FOREIGN KEY (address_id)
        REFERENCES address (idAddress),
    classes_id INT,
    FOREIGN KEY (classes_id)
        REFERENCES classes (idClass),
    age INT NOT NULL,
    phone VARCHAR(10) UNIQUE
);

CREATE TABLE Course (
    idCourse INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    description VARCHAR(100)
);

CREATE TABLE point (
    idPoint INT AUTO_INCREMENT PRIMARY KEY,
    point int NOT NULL,
    course_id INT,
    FOREIGN KEY (course_id)
        REFERENCES course (idCourse),
    student_id INT,
    FOREIGN KEY (student_id)
        REFERENCES Students (idStudent)
);
INSERT INTO quanlyhocvien.address(address) VALUES ('Ha Noi');
INSERT INTO quanlyhocvien.address(address) VALUES ('TP Ho Chi Minh');
INSERT INTO quanlyhocvien.address(address) VALUES ('Da Nang');
INSERT INTO quanlyhocvien.address(address) VALUES ('Hue');
INSERT INTO quanlyhocvien.address(address) VALUES ('Hai Phong');

INSERT INTO quanlyhocvien.classes (name, language, description) VALUES ('Nhap mon Ngon ngu hoc','Tieng Viet', 'Mon chung');
INSERT INTO quanlyhocvien.classes (name, language, description) VALUES ('Kinh te Nhat Ban','Tieng Nhat', 'Mon chuyen nganh');
INSERT INTO quanlyhocvien.classes (name, language, description) VALUES ('Van hoc Nhat Ban','Tieng Nhat', 'Mon chuyen nganh');
INSERT INTO quanlyhocvien.classes (name, language, description) VALUES ('Tieng Anh B2','Tieng Anh', 'Mon tu chon');
INSERT INTO quanlyhocvien.classes (name, language, description) VALUES ('Toan cao cap','Tieng Viet', 'Mon chung');

INSERT INTO quanlyhocvien.students (fullname, address_id, classes_id, age, phone) VALUES ('Nguyen Trong Hoang',1, 2, 17, '0386248399');
INSERT INTO quanlyhocvien.students (fullname, address_id, classes_id, age, phone) VALUES ('Nguyen Van Anh',5, 1, 18, '0453248399');
INSERT INTO quanlyhocvien.students (fullname, address_id, classes_id, age, phone) VALUES ('Truong Huy Hoang',2, 4, 16, '0386648399');
INSERT INTO quanlyhocvien.students (fullname, address_id, classes_id, age, phone) VALUES ('Vu Hien Luong',4, 3, 20, '0382993399');
INSERT INTO quanlyhocvien.students (fullname, address_id, classes_id, age, phone) VALUES ('Phung Tu Linh',3, 5, 22, '0386259372');
INSERT INTO quanlyhocvien.students (fullname, address_id, classes_id, age, phone) VALUES ('Hoang Tan Trung',3, 4, 19, '0939757362');
INSERT INTO quanlyhocvien.students (fullname, address_id, classes_id, age, phone) VALUES ('Le Van Thuong',1, 2, 21, '0386245676');
INSERT INTO quanlyhocvien.students (fullname, address_id, classes_id, age, phone) VALUES ('Khuat Viet Anh',2, 5, 20, '0386248333');
INSERT INTO quanlyhocvien.students (fullname, address_id, classes_id, age, phone) VALUES ('Le Bao Anh',5, 3, 18, '0386829297');
INSERT INTO quanlyhocvien.students (fullname, address_id, classes_id, age, phone) VALUES ('Nguyen Trong Hieu',4, 1, 17, '0386029171');

INSERT INTO quanlyhocvien.course (name, description) VALUES ('Fresher','Nam nhat');
INSERT INTO quanlyhocvien.course (name, description) VALUES ('Intermediate','Nam hai');
INSERT INTO quanlyhocvien.course (name, description) VALUES ('Intermediate 2','Nam ba');
INSERT INTO quanlyhocvien.course (name, description) VALUES ('Advance','Nam tu');
INSERT INTO quanlyhocvien.course (name, description) VALUES ('Soft skill','Bo tro ky nang mem va thuc tap');

INSERT INTO quanlyhocvien.point (point, course_id, student_id) VALUES (8,1, 16);
INSERT INTO quanlyhocvien.point (point, course_id, student_id) VALUES (5,2, 17);
INSERT INTO quanlyhocvien.point (point, course_id, student_id) VALUES (6,3, 18);
INSERT INTO quanlyhocvien.point (point, course_id, student_id) VALUES (7,4, 19);
INSERT INTO quanlyhocvien.point (point, course_id, student_id) VALUES (9,5, 20);
INSERT INTO quanlyhocvien.point (point, course_id, student_id) VALUES (10,1, 21);
INSERT INTO quanlyhocvien.point (point, course_id, student_id) VALUES (8,2, 22);
INSERT INTO quanlyhocvien.point (point, course_id, student_id) VALUES (6,3, 23);
INSERT INTO quanlyhocvien.point (point, course_id, student_id) VALUES (7,4, 24);
INSERT INTO quanlyhocvien.point (point, course_id, student_id) VALUES (8,5, 25);
INSERT INTO quanlyhocvien.point (point, course_id, student_id) VALUES (9,1, 17);
INSERT INTO quanlyhocvien.point (point, course_id, student_id) VALUES (10,3, 18);
INSERT INTO quanlyhocvien.point (point, course_id, student_id) VALUES (8,2, 19);
INSERT INTO quanlyhocvien.point (point, course_id, student_id) VALUES (7,4, 21);
INSERT INTO quanlyhocvien.point (point, course_id, student_id) VALUES (8,3, 20);

SELECT 
    *
FROM
    students
WHERE
    fullName LIKE 'Nguyen%';

SELECT 
    *
FROM
    students
WHERE
    fullName LIKE '%Anh';

SELECT 
    *
FROM
    students
WHERE
    age BETWEEN 15 AND 18;

SELECT 
    *
FROM
    students
WHERE
    idStudent = 18 OR idStudent = 22;

SELECT 
    COUNT(*) AS so_hs_cac_lop
FROM
    students
GROUP BY classes_id; 
-- SELECT COUNT(*) AS so_hs_kinhteNB FROM students WHERE classes_id = '2'; 
-- SELECT COUNT(*) AS so_hs_vanhocNB FROM students WHERE classes_id = '3'; 
-- SELECT COUNT(*) AS so_hs_tienganhB2 FROM students WHERE classes_id = '4'; 
-- SELECT COUNT(*) AS so_hs_toanCC FROM students WHERE classes_id = '5'; 

SELECT 
    COUNT(*) AS so_hs_tung_tinh_thanh
FROM
    students
GROUP BY address_id; 
-- SELECT COUNT(*) AS so_hs_TPHCM FROM students WHERE address_id = '2'; 
-- SELECT COUNT(*) AS so_hs_DaNang FROM students WHERE address_id = '3'; 
-- SELECT COUNT(*) AS so_hs_Hue FROM students WHERE address_id = '4'; 
-- SELECT COUNT(*) AS so_hs_HaiPhong FROM students WHERE address_id = '5'; 

SELECT 
    AVG(point) AS 'Diem trung binh cac khoa hoc'
FROM
    point
GROUP BY course_id;

SELECT 
    MAX(avg_point)
FROM
    (SELECT 
        AVG(point) AS avg_point
    FROM
        point
    GROUP BY course_id) AS maxPoint;