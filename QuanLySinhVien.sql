CREATE SCHEMA `QuanLySinhVien`;
USE `QuanLySinhVien`;
CREATE TABLE Class (
    ClassID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    ClassName VARCHAR(60) NOT NULL,
    StartDate DATETIME NOT NULL,
    Status BIT
);
CREATE TABLE student (
    StudentID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    StudentName VARCHAR(30) NOT NULL,
    Address VARCHAR(50),
    Phone VARCHAR(20),
    Status BIT,
    ClassID INT
);
ALTER TABLE student ADD FOREIGN KEY (ClassID) REFERENCES Class(CLassID);
CREATE TABLE subject (
    SubID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    SubName VARCHAR(30) NOT NULL,
    Credit TINYINT NOT NULL DEFAULT 1 CHECK (credit >= 1),
    Status BIT DEFAULT 1
);
CREATE TABLE mark (
    MarkID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    SubID INT NOT NULL,
    StudentID INT NOT NULL,
    UNIQUE (SubID , StudentID),
    FOREIGN KEY (SubID)
        REFERENCES subject (SubID),
    FOREIGN KEY (StudentID)
        REFERENCES student (StudentID),
    Mark FLOAT DEFAULT 0 CHECK (Mark BETWEEN 0 AND 100),
    ExamTimes TINYINT DEFAULT 1
);
INSERT INTO Class
VALUES (1, 'A1', '2008-12-20', 1);
INSERT INTO Class
VALUES (2, 'A2', '2008-12-22', 1);
INSERT INTO Class
VALUES (3, 'B3', current_date, 0);

INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1);
INSERT INTO Student (StudentName, Address, Status, ClassId)
VALUES ('Hoa', 'Hai phong', 1, 1);
INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);

INSERT INTO Subject
VALUES (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);
       
INSERT INTO Mark (SubId, StudentId, Mark, ExamTimes)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);       

SELECT 
    *
FROM
    student;
    
SELECT 
    *
FROM
    student
WHERE
    status = TRUE;
    
SELECT 
    *
FROM
    subject
WHERE
    credit < 10;
    
SELECT 
    S.StudentID, S.StudentName, C.ClassName
FROM
    Student S
        JOIN
    class C ON S.ClassID = C.ClassID
WHERE
    C.ClassName = 'A1';
    
SELECT 
    S.StudentID, S.StudentName, Sub.SubName, M.Mark
FROM
    student S
        JOIN
    Mark M ON S.StudentID = M.StudentID
        JOIN
    subject Sub ON  M.SubID = Sub.SubID
WHERE
    Sub.SubName = 'CF';