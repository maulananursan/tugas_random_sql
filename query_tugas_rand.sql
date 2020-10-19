CREATE DATABASE day4;
USE day4

CREATE TABLE nilai(
nim VARCHAR(8),
nama VARCHAR(30),
semester_1 FLOAT,
semester_2 FLOAT,
semester_3 FLOAT
);

SELECT*FROM nilai

INSERT INTO nilai VALUE(
(SELECT ROUND(RAND()*POW(10,8))),
'Rina Kumala Sari',
(SELECT ROUND((2+(RAND()*2)),2)),
(SELECT ROUND((2+(RAND()*2)),2)),
(SELECT ROUND((2+(RAND()*2)),2))
);
INSERT INTO nilai VALUE(
(SELECT ROUND(RAND()*POW(10,8))),
'Riana Putria',
(SELECT ROUND((2+(RAND()*2)),2)),
(SELECT ROUND((2+(RAND()*2)),2)),
(SELECT ROUND((2+(RAND()*2)),2))
);

SELECT COUNT(semester_1) FROM nilai

SELECT MIN(semester_1) AS 'nilai_minimal', MAX(semester_1) AS 'nilai_maximal', 
ROUND(AVG(semester_1),2) AS 'rata_rata', ROUND(SUM(semester_1),2),
STD(semester_1)
FROM nilai

SELECT MIN(semester_2) AS 'nilai_minimal', MAX(semester_2) AS 'nilai_maximal', 
ROUND(AVG(semester_2),2) AS 'rata_rata', ROUND(SUM(semester_2),2),
STD(semester_2)
FROM nilai

SELECT FORMAT(100000,2)
SELECT FORMAT(3.5,2,'es_US'),FORMAT(10000,2,'id_ID')

SELECT LOWER("SAYA MAU MAKAN")
SELECT LCASE("SAYA MAU MAKAN")

SELECT UPPER("saya mau minum jus")
SELECT UCASE("saya mau minum jus")