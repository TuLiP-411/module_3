use `quanlysinhvien`;
SELECT 
    address, COUNT(StudentID) AS 'So luong hoc vien'
FROM
    Student
GROUP BY address;
SELECT 
    S.StudentID, S.StudentName, AVG(Mark)
FROM
    Student S
        JOIN
    Mark M ON S.StudentID = M.StudentID
GROUP BY S.StudentID , S.StudentName;
SELECT 
    S.StudentID, S.StudentName, AVG(Mark)
FROM
    Student S
        JOIN
    Mark M ON S.StudentID = M.StudentID
GROUP BY S.StudentID , S.StudentName
HAVING AVG(mark) > 15;

SELECT 
    S.StudentID, S.StudentName, max(Mark)
FROM
    Student S
        JOIN
    Mark M ON S.StudentID = M.StudentID
GROUP BY S.StudentID , S.StudentName
HAVING AVG(mark) >= ALL (SELECT 
        AVG(Mark)
    FROM
        mark
    GROUP BY Mark.StudentId);