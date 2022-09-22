use `quanlysinhvien`;
SELECT 
    *
FROM
    subject
GROUP BY credit
HAVING AVG(credit) >= ALL (SELECT 
        AVG(credit)
    FROM
        subject);
        
SELECT 
    S.*, MAX(Mark)
FROM
    Subject S
        JOIN
    Mark M ON S.SubID = M.subID
GROUP BY subID
HAVING AVG(mark) >= ALL (SELECT 
        AVG(mark)
    FROM
        mark
    GROUP BY mark.subid);
    
SELECT 
    S.*, AVG(Mark)
FROM
    Mark M
        JOIN
    Student S ON S.StudentID = M.StudentID
GROUP BY S.StudentID
ORDER BY AVG(mark) DESC,studentname;