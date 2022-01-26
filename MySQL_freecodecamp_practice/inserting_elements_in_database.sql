CREATE TABLE student (
	student_id INT PRIMARY KEY AUTO_INCREMENT,
	namee VARCHAR(20),
	major VARCHAR(20) DEFAULT 'Undecided'
);

DESCRIBE student;

INSERT INTO student(namee, major) VALUES('Mush', 'Computer Science');
INSERT INTO student(namee, major) VALUES('Akram', 'Computer Science');
INSERT INTO student(namee) VALUES('Rasel');
INSERT INTO student(namee, major) VALUES('A', 'Mechanical');
INSERT INTO student(namee, major) VALUES('B', 'Civil');

SELECT * FROM student;
DROP TABLE student;
