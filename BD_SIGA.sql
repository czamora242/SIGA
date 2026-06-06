CREATE DATABASE SIGA
ON PRIMARY
(
    NAME = SIGA_Primary,
    FILENAME = 'C:\SQLData\SIGA_Primary.mdf',
    SIZE = 100MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 20MB
),

FILEGROUP FG_ACADEMICO
(
    NAME = SIGA_Academico,
    FILENAME = 'C:\SQLData\SIGA_Academico.ndf',
    SIZE = 200MB,
    MAXSIZE = 2GB,
    FILEGROWTH = 50MB
),

FILEGROUP FG_REPORTES
(
    NAME = SIGA_Reportes,
    FILENAME = 'C:\SQLData\SIGA_Reportes.ndf',
    SIZE = 150MB,
    MAXSIZE = 2GB,
    FILEGROWTH = 50MB
)

LOG ON
(
    NAME = SIGA_Log,
    FILENAME = 'C:\SQLData\SIGA_Log.ldf',
    SIZE = 100MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 20MB
);
GO


USE SIGA;
GO

/*====================================================
  TABLA: GRADOS
====================================================*/
CREATE TABLE grados (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    nivel VARCHAR(20) NOT NULL,

    CONSTRAINT UQ_Grado UNIQUE(nombre, nivel)
)ON FG_ACADEMICO;
GO

/*====================================================
  TABLA: PROFESORES
====================================================*/
CREATE TABLE profesores (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nombres VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    correo VARCHAR(150) NOT NULL,
    especialidad VARCHAR(100),

    CONSTRAINT UQ_Profesor_Correo UNIQUE(correo)
)ON FG_ACADEMICO;
GO

/*====================================================
  TABLA: ALUMNOS
====================================================*/
CREATE TABLE alumnos (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nombres VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    correo VARCHAR(150),

    grado_id INT NOT NULL,

    CONSTRAINT FK_Alumno_Grado
        FOREIGN KEY(grado_id)
        REFERENCES grados(id),

    CONSTRAINT UQ_Alumno_Correo UNIQUE(correo)
)ON FG_ACADEMICO;
GO

/*====================================================
  TABLA: CURSOS
====================================================*/
CREATE TABLE cursos (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(500),

    creditos INT NOT NULL,

    grado_id INT NOT NULL,
    profesor_id INT NOT NULL,

    CONSTRAINT CK_Curso_Creditos
        CHECK (creditos BETWEEN 1 AND 10),

    CONSTRAINT FK_Curso_Grado
        FOREIGN KEY(grado_id)
        REFERENCES grados(id),

    CONSTRAINT FK_Curso_Profesor
        FOREIGN KEY(profesor_id)
        REFERENCES profesores(id)
)ON FG_ACADEMICO;
GO

/*====================================================
  TABLA: MATRICULAS
====================================================*/
CREATE TABLE matriculas (
    id INT IDENTITY(1,1) PRIMARY KEY,

    alumno_id INT NOT NULL,
    curso_id INT NOT NULL,

    fecha_matricula DATE NOT NULL
        DEFAULT GETDATE(),

    CONSTRAINT FK_Matricula_Alumno
        FOREIGN KEY(alumno_id)
        REFERENCES alumnos(id),

    CONSTRAINT FK_Matricula_Curso
        FOREIGN KEY(curso_id)
        REFERENCES cursos(id),

    CONSTRAINT UQ_Matricula
        UNIQUE(alumno_id, curso_id)
)ON FG_REPORTES;
GO

/*====================================================
  TABLA: TAREAS
====================================================*/
CREATE TABLE tareas (
    id INT IDENTITY(1,1) PRIMARY KEY,

    nombre VARCHAR(150) NOT NULL,
    descripcion VARCHAR(MAX),

    fecha_asignacion DATE NOT NULL,
    fecha_entrega DATE NOT NULL,

    curso_id INT NOT NULL,

    CONSTRAINT FK_Tarea_Curso
        FOREIGN KEY(curso_id)
        REFERENCES cursos(id)
)ON FG_ACADEMICO;
GO

/*====================================================
  TABLA: NOTAS
====================================================*/
/*
Se elimina curso_id porque ya se obtiene
mediante la relación tarea -> curso
*/
CREATE TABLE notas (
    id INT IDENTITY(1,1) PRIMARY KEY,

    alumno_id INT NOT NULL,
    tarea_id INT NOT NULL,

    nota DECIMAL(4,2) NOT NULL,

    CONSTRAINT CK_Nota
        CHECK (nota BETWEEN 0 AND 20),

    CONSTRAINT FK_Nota_Alumno
        FOREIGN KEY(alumno_id)
        REFERENCES alumnos(id),

    CONSTRAINT FK_Nota_Tarea
        FOREIGN KEY(tarea_id)
        REFERENCES tareas(id),

    CONSTRAINT UQ_Nota_Alumno_Tarea
        UNIQUE(alumno_id, tarea_id)
)ON FG_REPORTES;
GO

/*====================================================
  TABLA: ASISTENCIAS
====================================================*/
CREATE TABLE asistencias (
    id INT IDENTITY(1,1) PRIMARY KEY,
    alumno_id INT NOT NULL,
    fecha DATE NOT NULL,
    estado VARCHAR(15) NOT NULL,
    fecha_hora_registro DATETIME2
        DEFAULT SYSDATETIME(),

    CONSTRAINT FK_Asistencia_Alumno
        FOREIGN KEY(alumno_id)
        REFERENCES alumnos(id),

    CONSTRAINT CK_Asistencia_Estado
        CHECK (estado IN ('Presente','Ausente','Tardanza')),

    CONSTRAINT UQ_Asistencia
        UNIQUE(alumno_id, fecha)
)ON FG_REPORTES;
GO

/*====================================================
  TABLA: OBSERVACIONES
====================================================*/
CREATE TABLE observaciones (
    id INT IDENTITY(1,1) PRIMARY KEY,

    alumno_id INT NOT NULL,
    curso_id INT NOT NULL,

    observacion VARCHAR(MAX) NOT NULL,

    fecha_registro DATETIME2
        DEFAULT SYSDATETIME(),

    CONSTRAINT FK_Observacion_Alumno
        FOREIGN KEY(alumno_id)
        REFERENCES alumnos(id),

    CONSTRAINT FK_Observacion_Curso
        FOREIGN KEY(curso_id)
        REFERENCES cursos(id)
)ON FG_REPORTES;
GO

/*====================================================
  ÍNDICES PARA OPTIMIZAR CONSULTAS
====================================================*/

CREATE INDEX IX_Alumno_Grado
ON alumnos(grado_id);

CREATE INDEX IX_Curso_Profesor
ON cursos(profesor_id);

CREATE INDEX IX_Curso_Grado
ON cursos(grado_id);

CREATE INDEX IX_Matricula_Alumno
ON matriculas(alumno_id);

CREATE INDEX IX_Matricula_Curso
ON matriculas(curso_id);

CREATE INDEX IX_Tarea_Curso
ON tareas(curso_id);

CREATE INDEX IX_Nota_Alumno
ON notas(alumno_id);

CREATE INDEX IX_Nota_Tarea
ON notas(tarea_id);

CREATE INDEX IX_Asistencia_Alumno
ON asistencias(alumno_id);

CREATE INDEX IX_Observacion_Alumno
ON observaciones(alumno_id);

CREATE INDEX IX_Observacion_Curso
ON observaciones(curso_id);
GO

--Visualizar información de tablas y filegroups
SELECT O.name, O.type, I.name, I.index_id, FG.name 
FROM sys.indexes I 
INNER JOIN sys.filegroups FG ON I.data_space_id = FG.data_space_id 
INNER JOIN sys.all_objects O ON I.object_id = O.object_id 
WHERE I.data_space_id = FG.data_space_id AND o.type = 'U'




SELECT
    SCHEMA_NAME(t.schema_id) AS Esquema,
    t.name AS Tabla,
    c.name AS Restriccion,
    c.type_desc AS Tipo_Restriccion
FROM sys.objects c
INNER JOIN sys.tables t
    ON c.parent_object_id = t.object_id
WHERE c.type IN ('PK','F','UQ','C','D')
ORDER BY  c.type_desc
