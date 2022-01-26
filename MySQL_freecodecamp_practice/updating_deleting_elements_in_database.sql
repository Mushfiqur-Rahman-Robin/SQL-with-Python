SELECT * FROM student;
SET SQL_SAFE_UPDATES = 0;
UPDATE student
SET major = 'CSE'
WHERE major = 'Computer Science';

UPDATE student
SET major = 'Mecha'
WHERE student_id = 4;

DELETE FROM student
WHERE student_id = 5;

DELETE FROM student
WHERE namee = 'B' AND major = 'Civil';

DESCRIBE student;
SET SQL_SAFE_UPDATES = 1;