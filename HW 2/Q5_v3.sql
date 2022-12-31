--Name: Sri Manvith Vaddeboyina
--USC ID: 1231409457
--Database Systems Assignment-2 
--Software: https://livesql.oracle.com
--Question 5 VERSION 3


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

CREATE TABLE Subjects
(
Subject CHAR(50),
PRIMARY KEY(Subject)
);

INSERT INTO Subjects VALUES ('Electronic Music Fundamentals'); 
INSERT INTO Subjects VALUES ('MIDI controllers'); 
INSERT INTO Subjects VALUES ('EDM synthesis'); 


--SQL DIVISION

SELECT DISTINCT Instructor FROM Courses_Taught ct
WHERE NOT EXISTS 
    (
        (
            SELECT su.Subject FROM Subjects su
        )
        	
    	MINUS
    	
        (
            SELECT c.Subject FROM Courses_Taught c WHERE c.Instructor=ct.Instructor
        )
    );
    
--Explanation:
-- 1. The first inner select statement would have all the subjects that are to be taught by the Instructor from the Subjects table.
-- 2. The second select statement would have the subjects taught by each professor.
-- 3. Using MINUS we are removing the Subjects that are common in both the select statements. After this, if there is a value then we are not interested in that Instructor as he/she is not teaching a mandatory subject as per the Subjects table and we are not considering that Instructor.
-- 4.  Finally, the outer query would return the Instructors who teach all the mandatory subjects as per the Subjects table.