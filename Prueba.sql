/*
BASE DE DATOS
*/

-- Borra una base de datos si existe.
drop database IF exists prueba;

-- 1 Crear la base de datos
create database IF NOT exists prueba;

-- 2 Usar esa bd
use prueba;

-- 3 Crear table usando enteros 
create table ENTERO (
	-- nombre columna y tipo
    ID INT, -- -2147483648 a 2147483647 0 – 4294967295.
    edad tinyint, -- -128 a 127 0 a 255
    puntos smallint, -- -32768 a 32767 0 a 65535
    sueldo mediumint, -- -8388608 a 8388607 0 a 16777215
    superEntero bigint -- -9223372036854775808 a 9223372036854775807  0 a 18446744073709551615

);

create table DECIMALES (

ID INT,
sueldo DECIMAL (8,2), -- 8 dígitos en total de los cuales 2 están reservados para la parte decimal.
sueldo2 numeric (8,2), -- Es el mismo decimal que numeric.
sueldo3 float,
sueldo4 double

);

create table CADENAS (
	ID INT,
    HIJOS CHAR(1),
    NOMBRE VARCHAR (150),
    LIBRO TEXT,
    TIT_LIBRO TINYTEXT,
    LIBRO_EXT MEDIUMTEXT,
    SUPER_LIBRO LONGTEXT
    );