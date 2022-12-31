--Name: Sri Manvith Vaddeboyina
--USC ID: 1231409457
--Database Systems Assignment-2 
--Software: https://livesql.oracle.com
--Question 5 VERSION 1


CREATE TABLE Courses_Taught
(
Instructor CHAR(20),
Subject CHAR(50),
PRIMARY KEY (Instructor, Subject)
);  

INSERT INTO Courses_Taught VALUES ('Aleph', 'MIDI controllers');        
INSERT INTO Courses_Taught VALUES ('Aleph', 'Sound mixing');         
INSERT INTO Courses_Taught VALUES ('Aleph', 'Synthesis algorithms');       
INSERT INTO Courses_Taught VALUES ('Bit', 'EDM synthesis');
INSERT INTO Courses_Taught VALUES ('Bit', 'Electronic Music Fundamentals');
INSERT INTO Courses_Taught VALUES ('Bit', 'Sound mixing');
INSERT INTO Courses_Taught VALUES ('CRC', 'EDM synthesis');
INSERT INTO Courses_Taught VALUES ('CRC', 'Electronic Music Fundamentals');
INSERT INTO Courses_Taught VALUES ('Dat', 'MIDI controllers');
INSERT INTO Courses_Taught VALUES ('Dat', 'EDM synthesis');
INSERT INTO Courses_Taught VALUES ('Dat', 'Electronic Music Fundamentals');
INSERT INTO Courses_Taught VALUES ('Emscr', 'MIDI controllers');
INSERT INTO Courses_Taught VALUES ('Emscr', 'Synthesis algorithms');
INSERT INTO Courses_Taught VALUES ('Emscr', 'Electronic Music Fundamentals');
INSERT INTO Courses_Taught VALUES ('Emscr', 'EDM synthesis');


SELECT Instructor FROM Courses_Taught WHERE Subject = 'Electronic Music Fundamentals'
INTERSECT
SELECT Instructor FROM Courses_Taught WHERE Subject = 'MIDI controllers'
INTERSECT
SELECT Instructor FROM Courses_Taught WHERE Subject = 'EDM synthesis';

--Explanation: 
-- 1. We are using a select statement for each subject (Electronic Music Fundamentals, MIDI controllers and EDM synthesis) and finding Instructors who teach that subject individually.
-- 2. Now, we are finding the Instructors who can teach all the subjects using INTERSECT operation. 
-- 3.This will give us all the instructors who are teaching all the subjects.