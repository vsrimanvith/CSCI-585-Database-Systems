--Name: Sri Manvith Vaddeboyina
--USC ID: 1231409457
--Database Systems Assignment-2 
--Software: https://livesql.oracle.com
--Question 2

CREATE TABLE Enrollment
(
SID INTEGER NOT NULL, 
ClassName CHAR(50) NOT NULL, 
Grade CHAR(1),
PRIMARY KEY(SID,ClassName)
);

INSERT INTO Enrollment VALUES (123,'Synthesis algorithms','A');
INSERT INTO Enrollment VALUES (123,'EDM synthesis','B');
INSERT INTO Enrollment VALUES (123,'MIDI controllers','B');
INSERT INTO Enrollment VALUES (662,'Sound mixing','B');
INSERT INTO Enrollment VALUES (662,'EDM synthesis','A');
INSERT INTO Enrollment VALUES (662,'Electronic Music Fundamentals','A');
INSERT INTO Enrollment VALUES (662,'MIDI controllers','B');
INSERT INTO Enrollment VALUES (345,'MIDI controllers','A');
INSERT INTO Enrollment VALUES (345,'Electronic Music Fundamentals','B');
INSERT INTO Enrollment VALUES (345,'EDM synthesis','A');
INSERT INTO Enrollment VALUES (555,'EDM synthesis','B');
INSERT INTO Enrollment VALUES (555,'Electronic Music Fundamentals','B');
INSERT INTO Enrollment VALUES (213 ,'Electronic Music Fundamentals','A');

SELECT ClassName, COUNT(*) AS Total FROM Enrollment GROUP BY ClassName ORDER BY Total Desc;