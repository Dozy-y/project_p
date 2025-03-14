CREATE TABLE a
(
    id INTEGER PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Patronymic VARCHAR(50),
    Gender CHAR(1) NOT NULL, 
    DateOfBirdth DATE,
    Phone VARCHAR(12)
);
CREATE TABLE b
(
    id INTEGER PRIMARY KEY,
    FIO VARCHAR(50) NOT NULL,
    Gender CHAR(8) NOT NULL, 
    DateOfBirdth DATE,
    Phone VARCHAR(12)
);
CREATE TABLE c
(
    id INTEGER PRIMARY KEY,
    FIO VARCHAR(50) NOT NULL,
    Gender CHAR(8) NOT NULL, 
    DateOfBirdth DATE,
    Phone VARCHAR(12)
);


INSERT INTO b (id, FIO, Gender, DateOfBirdth, Phone)
SELECT 
    id,
    CONCAT(FirstName, ' ', LastName, ' ', Patronymic) AS FIO, 
    CASE 
        WHEN Gender = 'Ж' THEN 'Женский' 
        WHEN Gender = 'М' THEN 'Мужской' 
    END AS Gender,
    DateOfBirdth,
    Phone
FROM a
WHERE DateOfBirdth > '1985-12-01';


INSERT INTO c (id, FIO, Gender, DateOfBirdth, Phone)
SELECT 
    id,
    FIO,
    Gender,
    DateOfBirdth,
    Phone
FROM b
WHERE Gender = 'Женский';
