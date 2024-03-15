create DATABASE if not exists Alumno;

Use  ALUMNO;
-- Crear una tabla con ALUMNO (NIF, nombre, apell1, apell2)
create table ALUMNO (
NIF VARCHAR(9), -- PRIMARY KEY
nombre VARCHAR(150) NOT NULL,
apell1 VARCHAR(100) NOT NULL,
apell2 VARCHAR (100) NOT NULL,
-- instituto VARCHAR (100) NOT NULL default 'IES AUGUSTÓBRIGA',
CONSTRAINT PK_ALUMNO PRIMARY KEY (NIF)
);

-- ASIGNATURA (ID_ASIGNATURA, nombAsignatura, credito)
create table ASIGNATURA (
	Id_Asignatura INT,
    nombre_Asignatura VARCHAR (150) NOT NULL,
    credito TINYINT UNSIGNED NOT NULL, -- UNSIGNED =>SIEMPRE POSITIVO
	CONSTRAINT  PK_ASIGNATURA PRIMARY KEY (ID_ASIGNATURA),
    CONSTRAINT FK_ID_ASIGNATURA_ALUMNO FOREIGN KEY (ID_ASIGNATURA) references ASIGNATURA(Id_asig)
);

-- CALIFICACIONES (NIF, ID_asignatura, fecha, nota)
CREATE TABLE CALIFICACION (
NIF_Nota VARCHAR(9), 
ID_asignatura iNT,
fecha DATE, 
nota decimal (4,2)  unsigned not null,
CONSTRAINT PK_CALIFICACION PRIMARY KEY (NIF_Nota, ID_asignatura, fecha),
CONSTRAINT FK_NIF_NOTA_ALUMNO FOREIGN KEY (NIF_Nota) references ALUMNO(NIF)
);
