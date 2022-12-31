--Name: Sri Manvith Vaddeboyina
--USC ID: 1231409457
--Database Systems Assignment-2 
--Software: https://livesql.oracle.com
--Question 3

CREATE TABLE Projects 
(
PID CHAR(10) NOT NULL,
Step INTEGER NOT NULL,
Status CHAR(1) NOT NULL,
PRIMARY KEY(PID, Step)
);

INSERT INTO Projects VALUES ('P100',0,'C');
INSERT INTO Projects VALUES ('P100',1,'W');
INSERT INTO Projects VALUES ('P100',2,'W');
INSERT INTO Projects VALUES ('P201',0,'C');
INSERT INTO Projects VALUES ('P201',1,'C');
INSERT INTO Projects VALUES ('P333',0,'W');
INSERT INTO Projects VALUES ('P333',1,'W');
INSERT INTO Projects VALUES ('P333',2,'W');
INSERT INTO Projects VALUES ('P333',3,'W');

SELECT DISTINCT P1.PID 
FROM Projects P1 
WHERE P1.Step=0 and P1.Status ='C' 
and P1.PID IN (SELECT P2.PID FROM Projects P2 WHERE P2.Step<> 0 and P2.Status = 'W' and P1.PID=P2.PID);