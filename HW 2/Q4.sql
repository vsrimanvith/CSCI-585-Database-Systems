--Name: Sri Manvith Vaddeboyina
--USC ID: 1231409457
--Database Systems Assignment-2 
--Software: https://livesql.oracle.com
--Question 4

CREATE TABLE Instructor
(
InstrID CHAR(5) NOT NULL,
InstrName CHAR(50) NOT NULL,
CourseName CHAR(50) NOT NULL,
Enrollments NUMBER(5) NOT NULL,
HourlyPay NUMBER(3) NOT NULL,
PRIMARY KEY(InstrID,CourseName)
);

INSERT INTO Instructor VALUES ('INST1','Dr. Tim','Database Systems',700,100);
INSERT INTO Instructor VALUES ('INST1','Dr. Tim','Computer Graphics',150,100);
INSERT INTO Instructor VALUES ('INST2','Dr. Melissa','Analysis of Algorithms',100,100);
INSERT INTO Instructor VALUES ('INST3','Dr. Joseph','Machine Learning',40,100);
INSERT INTO Instructor VALUES ('INST4','Dr. Mary','Advanced NLP',70,100);
INSERT INTO Instructor VALUES ('INST5','Dr. Alice','Web Technologies',70,100);
INSERT INTO Instructor VALUES ('INST6','Dr. James','Computer Networks',200,100);
INSERT INTO Instructor VALUES ('INST7','Dr. Ravi','Computer Networks 2',850,100);


select max(HourlyPay*sum_of_class_counts * 0.1) as bonus from Instructor, (select InstrID, sum(Enrollments) as sum_of_class_counts from Instructor group by InstrID);