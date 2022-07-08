CREATE DATABASE Q5DB;
USE Q5DB;


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
WHERE to find instructor in table INSTR_JOB who can teach 'Javascript', 'Scratch' and 'Python' 
GROUP BY helps to group instructor who have same name into summary rows
COUNT rules slected instructor should be able to teach above all three subjects.
*/

SELECT Instructor 
FROM INSTR_JOB 
WHERE Subject = 'Javascript' OR Subject = 'Scratch' OR Subject ='Python' 
GROUP BY Instructor 
HAVING COUNT(Instructor) = 3;

