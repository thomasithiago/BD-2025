CREATE DATABASE VETERINARIA;

USE VETERINARIA;

CREATE TABLE TIPOS_ANIMAIS(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ESPECIE VARCHAR(50)
);

CREATE TABLE ANIMAIS(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ESPECIE VARCHAR(50),
	NOME VARCHAR(100),
    DT_NASC DATE NOT NULL,
    COR VARCHAR(15),
    PESO INT NOT NULL,
    ALTURA INT NOT NULL
);

CREATE TABLE VACINACAO(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ID_ANIMAL INT NOT NULL,
	NOME_VACINA VARCHAR(100),
	DT_APLIC DATE,
    CONSTRAINT FK_ID_ANIMAL
		FOREIGN KEY (ID_ANIMAL)
        REFERENCES TIPOS_ANIMAIS(ID)
);

SELECT * FROM `TIPOS_ANIMAIS`;
SELECT ID, ESPECIE FROM TIPOS_ANIMAIS;

SELECT * FROM `ANIMAIS`;
SELECT ID, ESPECIE, NOME, DT_NASC, COR, PESO, ALTURA FROM ANIMAIS;

SELECT * FROM `VACINACAO`;
SELECT ID, ID_ANIMAL, NOME_VACINA, DT_APLIC FROM VACINACAO;

INSERT TIPOS_ANIMAIS (ID, ESPECIE)
VALUES(1, 'BOVINO');
INSERT TIPOS_ANIMAIS (ID, ESPECIE)
VALUES(2, 'SUÍNO');
INSERT TIPOS_ANIMAIS (ID, ESPECIE)
VALUES(3, 'CAPRINO');
INSERT TIPOS_ANIMAIS (ID, ESPECIE)
VALUES(4, 'FELINO');
INSERT TIPOS_ANIMAIS (ID, ESPECIE)
VALUES(5, 'CANINO');

INSERT ANIMAIS (ID, ESPECIE, NOME, DT_NASC, COR, PESO, ALTURA)
VALUES(1, 'BOVINO', 'GEODUDE', '2003-05-03', 'MARROM', 100000 ,145);
INSERT ANIMAIS (ID, ESPECIE, NOME, DT_NASC, COR, PESO, ALTURA)
VALUES(2, 'SUÍNO', 'PEPPA', '1998-08-01', 'ROSA', 80000, 120);
INSERT ANIMAIS (ID, ESPECIE, NOME, DT_NASC, COR, PESO, ALTURA)
VALUES(3, 'CAPRINO', 'FURA-FUÇA', '2023-06-08', 'AMARELO', 70000, 130);
INSERT ANIMAIS (ID, ESPECIE, NOME, DT_NASC, COR, PESO, ALTURA)
VALUES(4, 'FELINO', 'MARTELO', '2020-04-05', 'PRETO', 8000, 90);
INSERT ANIMAIS (ID, ESPECIE, NOME, DT_NASC, COR, PESO, ALTURA)
VALUES(5, 'CANINO', 'ANAKIN', '2012-12-19', 'PARDO', 10000, 110);

INSERT VACINACAO (ID, ID_ANIMAL, NOME_VACINA, DT_APLIC)
VALUES(1, 2, 'ANTI-TÉTANO', '2005-02-07');
INSERT VACINACAO (ID, ID_ANIMAL, NOME_VACINA, DT_APLIC)
VALUES(2, 1, 'ANTI-PULGA', '2009-07-11');
INSERT VACINACAO (ID, ID_ANIMAL, NOME_VACINA, DT_APLIC)
VALUES(3, 3, 'POLIOMELITE', '2025-11-09');
INSERT VACINACAO (ID, ID_ANIMAL, NOME_VACINA, DT_APLIC)
VALUES(4, 5, 'CHAGAS', '2013-01-23');
INSERT VACINACAO (ID, ID_ANIMAL, NOME_VACINA, DT_APLIC)
VALUES(5, 4, 'COVID', '2021-12-25');
