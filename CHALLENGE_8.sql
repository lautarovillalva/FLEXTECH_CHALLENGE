CREATE TABLE COUNTRIES(	ID INT NOT NULL PRIMARY KEY IDENTITY(1,1),	NOMBRE VARCHAR(30) NOT NULL UNIQUE)INSERT INTO COUNTRIES(NOMBRE) VALUES ('United States'),('China'),('Japan'),('Canada'),('Germany'),('England'),('France')CREATE TABLE CHALLENGE_8(	ID INT NOT NULL PRIMARY KEY IDENTITY(1,1),	NOMBRE VARCHAR(30) NOT NULL,	ID_COUNTRY INT NOT NULL FOREIGN KEY REFERENCES COUNTRIES(ID))--INSERT INTO CHALLENGE_8(NOMBRE, ID_COUNTRY) VALUES ('Bob Smith',1),('Jim Jones',2),('Sam White',3),('Jess Black',4),('Will Wilson',5),('Wilson Scott',6),('Scott Daniels',7),('Daniel Jackson',4),('Jack Johnson',1)--SELECT	C8.NOMBRE,			COUNTRIES.NOMBREFROM CHALLENGE_8 AS C8INNER JOIN COUNTRIES ON COUNTRIES.ID=C8.ID_COUNTRYWHERE (COUNTRIES.NOMBRE NOT LIKE '%UNITED STATES%') AND (COUNTRIES.NOMBRE NOT LIKE '%CANADA%')--DROP TABLE COUNTRIESDROP TABLE CHALLENGE_8-- SE NORMALIZA LA TABLA. SE USA COMO FK LA PK DE COUNTRIES. SE CONECTAN LAS TABLAS MEDIANTE INNER JOIN. SE UTILIZA COMO RESTRICCIÓN "TODOS LOS PAISES MENOS...".