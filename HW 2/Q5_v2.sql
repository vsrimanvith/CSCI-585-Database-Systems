--Name: Sri Manvith Vaddeboyina
--USC ID: 1231409457
--Database Systems Assignment-2 
--Software: https://livesql.oracle.com
--Question 5 VERSION 2

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
    AND
    Instructor IN 
    (
        SELECT Instructor FROM Courses_Taught WHERE Subject = 'MIDI controllers'
        AND 
        Instructor IN 
        (
            SELECT Instructor FROM Courses_Taught WHERE Subject = 'EDM synthesis'
        )
    );
    
--Explanation
-- 1. The innermost subquery finds the Instructors who teach EDM synthesis.
-- 2. the next inner subquery finds the Instructors who teach MIDI controllers and EDM synthesis.
-- 3. the outer subquery finds the Instructors who teach MIDI controllers and EDM synthesis and Electronic Music Fundamentals.
-- 4. The result would the Instructors who teach all three subjects.