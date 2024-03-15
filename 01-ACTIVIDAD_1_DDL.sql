create database if not exists ACTIVIDAD_1;

USE ACTIVIDAD_1;

drop TABLE PRODUCTO;
 
-- PRODUCTO (codigo, nombre, precio)
create table PRODUCTO(
	codigo INT PRIMARY KEY,-- PK es unique y not null
    nombre VARCHAR (150) not null,
    precio DOUBLE not null
    );
    

-- CLIENTE (ID_CLIENTE,DNI, NOMBRE, APE1, APE2) SIENDO DNI AK (UNIQUE) Y APE2 NULL
    
CREATE TABLE CLIENTE (
    Id_cliente INT,
    DNI VARCHAR(9) NOT NULL UNIQUE,
    nombre VARCHAR(150) NOT NULL,
    apell1 VARCHAR(100) NOT NULL,
    apell2 VARCHAR(100) NOT NULL,
    CONSTRAINT UQ_CLIENTE_DNI UNIQUE (DNI_)
); 

CREATE TABLE LIBRO (
    id_libro INT,
    contenido BLOB NOT NULL,
    CONSTRAINT PK_LIBRO PRIMARY KEY (ID_LIBRO)
);

-- EMPLEADO (DNI, nombre, ape1, ape2, mail, telefono, fechanacimiento, rol, ultimoAcceso)
CREATE TABLE EMPLEADO (
DNI VARCHAR (9) NOT NULL UNIQUE,
nombre VARCHAR (150) NOT NULL,
ape1 VARCHAR (100) NOT NULL,
ape2 VARCHAR (100) NOT NULL,
telefono VARCHAR (12) NOT NULL,
mail VARCHAR(100),
Fecha_Nacimiento DATE NOT NULL,
rol ENUM ('PJ','PS','AP', 'AF') NOT NULL,
Ultimo_Acceso DATETIME NOT NULL,
 CONSTRAINT PK_EMPLEADO PRIMARY KEY (DNI)
);



