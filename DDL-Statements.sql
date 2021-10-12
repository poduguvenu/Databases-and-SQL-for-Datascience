DROP TABLE petsale;
DROP TABLE pet;

CREATE TABLE Petsale
(
	id INTEGER NOT NULL,
	pet CHAR(20),
	saleprice DECIMAL(6, 2),
	profit DECIMAL(6, 2),
	saledate DATE
);

CREATE TABLE pet
(
	id INTEGER NOT NULL,
	animal VARCHAR(20),
	quantity INTEGER
);

INSERT INTO petsale VALUES
	(1,'Cat',450.09,100.47,'2018-05-29'),
	(2,'Dog',666.66,150.76,'2018-06-01'),
    (3,'Parrot',50.00,8.9,'2018-06-04'),
    (4,'Hamster',60.60,12,'2018-06-11'),
    (5,'Goldfish',48.48,3.5,'2018-06-14');
    
INSERT INTO pet VALUES
	(1,'Cat',3),
    (2,'Dog',4),
    (3,'Hamster',2);
    
SELECT * FROM petsale;
SELECT * FROM pet;

ALTER TABLE petsale ADD COLUMN quantity INTEGER;

UPDATE petsale SET quantity = 9 WHERE id = 1;
UPDATE petsale SET quantity = 3 WHERE id = 2;
UPDATE petsale SET quantity = 2 WHERE ID = 3;
UPDATE petsale SET quantity = 6 WHERE ID = 4;
UPDATE petsale SET quantity = 24 WHERE ID = 5;

ALTER TABLE petsale DROP COLUMN profit;

ALTER TABLE petsale ALTER COLUMN pet SET DATA TYPE VARCHAR(20);

ALTER TABLE petsale RENAME COLUMN pet TO animal;

SELECT * FROM PETSALE;

TRUNCATE TABLE pet IMMEDIATE;

DROP TABLE pet;
SELECT * FROM pet;



























