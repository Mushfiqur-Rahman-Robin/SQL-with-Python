CREATE TABLE trigger_test(
	message VARCHAR(100)
);

INSERT INTO employee 
VALUES(109, 'Oscar', 'Martinez', '1999-01-01', 'M', 35000, 106, 3);

SELECT * FROM employee;
SELECT * FROM trigger_test;

INSERT INTO employee 
VALUES(110, 'Kevin', 'Peterson', '1980-03-12', 'M', 40000, 102, 3);

SELECT * FROM trigger_test;

INSERT INTO employee 
VALUES(111, 'Ashley', 'Perry', '1988-04-17', 'F', 45000, 106, 3);

SELECT * FROM trigger_test;

#An example of trigger writing

#CREATE 
#TRIGGER my_trigger2 BEFORE INSERT ON employee 
#FOR EACH ROW BEGIN IF NEW.sex = 'M' 
  # THEN INSERT INTO trigger_test VALUES('Added new male employee'); 
#ELSEIF NEW.sex = 'F' 
 #  THEN INSERT INTO trigger_test VALUES('Added new female employee'); 
#ELSE INSERT INTO trigger_test VALUES('Added other employee'); 
#END IF; 
#END $$