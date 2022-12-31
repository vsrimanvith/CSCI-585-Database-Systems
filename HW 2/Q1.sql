--Name: Sri Manvith Vaddeboyina
--USC ID: 1231409457
--Database Systems Assignment-2 
--Software: https://livesql.oracle.com
--Question 1

Issue 1: First, the start time could be incorrectly entered to be later than the end time.
Solution: 
1. In order to solve this issue, we can modify the schema of the ProjectRoomBookings table by using a CHECK constraint. This constraint checks if the startTime is less than the endTime (startTime<endTime) in the 24-hour format assuming that the room would be occupied at least for an hour.
2. The startTime value is limited to be greater than 7:00 a.m. and endTime to be less than 18:00 which is 6:00 p.m.
3. Using these two conditions each time the insertion/updation of values into the table is checked and inserted if and only if the conditions are satisfied.
4. This would solve our first issue.

Modified Schema:
——————————

CREATE TABLE ProjectRoomBookings
(
roomNum INTEGER NOT NULL,
startTime INTEGER NOT NULL CHECK (startTime>=7),
endTime INTEGER NOT NULL CHECK (endTime<=18),
groupName CHAR(10) NOT NULL,
PRIMARY KEY (roomNum, startTime),
CONSTRAINT Check_time CHECK (startTime<endTime)
);



Issue 2: Second, a new entry (for a new group) could be accidentally put in to occupy a room, even before the existing group in that room is done using that room.
Solution:
1. Here the issue is when groups are looking for the same room and overlapping timings. In order to solve this issue, we can proceed with the trigger-based approach. 
2. This trigger checks for the vacant and overlapping condition having the same room number on every insert or update operation performed on the table. It keeps track of the number of overlappings present.
3. If the number of overlappings is greater than 0, then the trigger fires the error condition else it performs the desired operation of assigning the room.
4. This would solve our second issue.
