CREATE DATABASE Q5V2DB;
USE Q5V2DB;

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

CREATE TABLE SUBJECT_TEACH   
(Subject VARCHAR(50) NOT NULL,    
PRIMARY KEY (Subject));

INSERT INTO SUBJECT_TEACH VALUES ('Javascript');

INSERT INTO SUBJECT_TEACH VALUES ('Scratch');

INSERT INTO SUBJECT_TEACH VALUES ('Python');

SELECT *     
FROM SUBJECT_TEACH;


/*
Use 2 tables, one table lists instructor names and subjects, the other lists all subjects that need to be taught
INNER JOIN commands to select instructor in table INSTR_JOB who can teach all subjects in table SUBJECT_TEACH
GROUP BY helps to group instructor who have same name on table INSTR_JOB into summary rows
COUNT helps to limit instructors should be able to teach all subjects listed in table SUBJECT_TEACH
*/
SELECT Instructor 
FROM INSTR_JOB 
INNER JOIN SUBJECT_TEACH 
ON INSTR_JOB.Subject = SUBJECT_TEACH.Subject 
GROUP BY INSTR_JOB.Instructor 
HAVING COUNT(INSTR_JOB.Instructor) = (SELECT COUNT(SUBJECT_TEACH.Subject) FROM SUBJECT_TEACH);

