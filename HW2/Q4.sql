CREATE DATABASE Q4DB;
USE Q4DB;

CREATE TABLE CLASSTABLE  
(CID INTEGER NOT NULL,  
ClassName VARCHAR(50) NOT NULL, 
STU_NUM INTEGER NOT NULL, 
INSTRUCTOR VARCHAR(50) NOT NULL,  
PRIMARY KEY (CID, ClassName,INSTRUCTOR));

INSERT INTO CLASSTABLE VALUES (0601, 'Python',20, 'Ace');

INSERT INTO CLASSTABLE VALUES (0601, 'Java',30, 'Bob');

INSERT INTO CLASSTABLE VALUES (0602, 'Scratch',15, 'Cindy');

INSERT INTO CLASSTABLE VALUES (0603, 'JavaScript',20, 'Dat');

INSERT INTO CLASSTABLE VALUES (0604, 'Python',20, 'Dat');

INSERT INTO CLASSTABLE VALUES (0605, 'Scratch',15, 'Dat');

INSERT INTO CLASSTABLE VALUES (0605, 'Python',30, 'Ace');

SELECT *   
FROM CLASSTABLE;

CREATE TABLE INSTR_BONUS  
(INSTRUCTOR VARCHAR(50) NOT NULL,  
BONUS INTEGER NOT NULL, 
PRIMARY KEY (INSTRUCTOR));

INSERT INTO INSTR_BONUS 
SELECT INSTRUCTOR, 50 * SUM(STU_NUM) * 0.1 AS BONUS  -- Assume hourly_rate = 50 
FROM CLASSTABLE 
GROUP BY INSTRUCTOR;

SELECT *   
FROM INSTR_BONUS;

SELECT MAX(BONUS) 
FROM INSTR_BONUS;
