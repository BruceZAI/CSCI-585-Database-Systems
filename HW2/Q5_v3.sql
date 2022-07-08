CREATE DATABASE Q5V3DB;
USE Q5V3DB

CREATE TABLE INSTR_JOB   
(Instructor VARCHAR(50) NOT NULL,    
Subject VARCHAR(50) NOT NULL,    
PRIMARY KEY (Instructor,Subject));

INSERT INTO INSTR_JOB VALUES ('Aleph', 'Scratch');

INSERT INTO INSTR_JOB VALUES ('Aleph', 'Java');

INSERT INTO INSTR_JOB VALUES ('Aleph', 'Processing');

INSERT INTO INSTR_JOB VALUES ('Bit', 'Python');

INSERT INTO INSTR_JOB VALUES ('Bit', 'Javascript');

INSERT INTO INSTR_JOB VALUES ('Bit', 'Java');

INSERT INTO INSTR_JOB VALUES ('CRC', 'Python');

INSERT INTO INSTR_JOB VALUES ('CRC', 'Javascript');

INSERT INTO INSTR_JOB VALUES ('Dat', 'Scratch');

INSERT INTO INSTR_JOB VALUES ('Dat', 'Python');

INSERT INTO INSTR_JOB VALUES ('Dat', 'Javascript');

INSERT INTO INSTR_JOB VALUES ('Emscr', 'Scratch');

INSERT INTO INSTR_JOB VALUES ('Emscr', 'Processing');

INSERT INTO INSTR_JOB VALUES ('Emscr', 'Javascript');

INSERT INTO INSTR_JOB VALUES ('Emscr', 'Python');

SELECT *     
FROM INSTR_JOB;

/*
Set 3 temporary tables which come from the same table INSTR_JOB, find key Instructor in table A which has the same value in other 2 tables and 
their corresponding key Subject's value equals to Javascript, Scratch and Python respectively.
*/

SELECT A.Instructor  
FROM INSTR_JOB A, INSTR_JOB B, INSTR_JOB C 
WHERE A.Instructor = B.Instructor AND A.Instructor = C.Instructor AND A.Subject = 'Javascript' AND B.Subject = 'Scratch' AND C.Subject ='Python';

