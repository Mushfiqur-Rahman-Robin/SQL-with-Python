CREATE TABLE student (
	student_id INT PRIMARY KEY,
	namee VARCHAR(20),
	major VARCHAR(20)
);

DESCRIBE student;

ALTER TABLE student ADD GPA DECIMAL(3,2);

INSERT INTO student VALUES(1, 'Mush', 'Computer Science', 3.01);

ALTER TABLE student DROP COLUMN GPA;

