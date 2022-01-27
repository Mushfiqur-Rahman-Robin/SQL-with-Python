SELECT student.namee, student.major
FROM student
ORDER BY major, student_id DESC;

SELECT *
FROM student
ORDER BY major, student_id DESC;

SELECT * 
FROM student
LIMIT 2;

SELECT *
FROM student
WHERE major = 'CSE' or major = 'Mecha';

SELECT *
FROM student
WHERE student_id <= 4 and major <> 'CSE'; #major not equal to CSE

SELECT namee, major
FROM student
WHERE major IN('CSE', 'Mecha');