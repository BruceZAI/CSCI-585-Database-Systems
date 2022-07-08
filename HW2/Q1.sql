CREATE DATABASE Q1DB;
USE Q1DB;


CREATE TABLE ProjectRoomBookings 
(roomNum INTEGER NOT NULL, 
startTime INTEGER NOT NULL, 
endTime INTEGER NOT NULL, 
groupName CHAR(10) NOT NULL, 
PRIMARY KEY (roomNum, startTime), 
CONSTRAINT s_e_Time CHECK (startTime < endTime AND startTime >= 7 AND endTime <= 18 AND startTime >=  endTime - 3));


/*
use check to limit start time should after 7AM, end time should before 18AM, start time must before end timend duration time cannot over 3 hours.
use trigger, when new entry has conflict time and room with old entry, report error and stop insert into the table
*/
CREATE OR REPLACE TRIGGER ROOM_TIME_CHECK 
BEFORE INSERT OR UPDATE ON ProjectRoomBookings 
FOR EACH ROW 
DECLARE 
conflictTime NUMBER; 
BEGIN 
    SELECT COUNT(*) 
    INTO conflictTime  
    FROM ProjectRoomBookings 
    WHERE :NEW.roomNum = roomNum AND NOT(:NEW.startTime >= endTime OR :NEW.endTime <= startTime); 
    IF conflictTime >= 1 
    THEN RAISE_APPLICATION_ERROR(-20001, 'Time not allowed'); 
    END IF; 
     
END; 
/

INSERT INTO ProjectRoomBookings VALUES (22001, 8, 10, 'ZERO');

INSERT INTO ProjectRoomBookings VALUES (22001, 10, 13, 'ONE');

INSERT INTO ProjectRoomBookings VALUES (22001, 12, 14, 'TWO');

INSERT INTO ProjectRoomBookings VALUES (22001, 15, 18, 'THR');

INSERT INTO ProjectRoomBookings VALUES (22002, 6, 8, 'FOUR');

INSERT INTO ProjectRoomBookings VALUES (22003, 9, 10, 'FIVE');

INSERT INTO ProjectRoomBookings VALUES (22004, 12, 18, 'SIX');

SELECT *  
FROM ProjectRoomBookings;

