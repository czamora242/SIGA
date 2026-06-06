-------------------------------------------
--PROCEDIMIENTOS ALMACENADO
-------------------------------------------

--Registro de Alumno
CREATE PROCEDURE sp_RegistrarAlumno
    @Nombres VARCHAR(100),
    @Apellidos VARCHAR(100),
    @FechaNacimiento DATE,
    @Correo VARCHAR(150),
    @GradoId INT
AS
BEGIN
    INSERT INTO alumnos
    (
        nombres,
        apellidos,
        fecha_nacimiento,
        correo,
        grado_id
    )
    VALUES
    (
        @Nombres,
        @Apellidos,
        @FechaNacimiento,
        @Correo,
        @GradoId
    );
END
GO
--Ejecutar
EXEC sp_RegistrarAlumno
    @Nombres = 'Juan',
    @Apellidos = 'Pérez García',
    @FechaNacimiento = '2008-05-10',
    @Correo = 'juan.perez@gmail.com',
    @GradoId = 1;



--Consultar Alumno por Grado
CREATE PROCEDURE sp_AlumnosPorGrado
    @GradoId INT
AS
BEGIN
    SELECT *
    FROM alumnos
    WHERE grado_id = @GradoId;
END
GO
--Ejecutar
EXEC sp_AlumnosPorGrado
    @GradoId =2;


--Consultar Cursos por Profesor
CREATE PROCEDURE sp_CursosPorProfesor
    @ProfesorId INT
AS
BEGIN
    SELECT *
    FROM cursos
    WHERE profesor_id = @ProfesorId;
END
GO
--Ejecutar
EXEC sp_CursosPorProfesor
    @ProfesorId = 1;


--Consultar Notas de Alumno
CREATE PROCEDURE sp_NotasAlumno
    @AlumnoId INT
AS
BEGIN
    SELECT
        a.nombres,
        t.nombre AS tarea,
        n.nota
    FROM notas n
    INNER JOIN alumnos a
        ON n.alumno_id = a.id
    INNER JOIN tareas t
        ON n.tarea_id = t.id
    WHERE a.id = @AlumnoId;
END
GO
--Ejecutar
EXEC sp_NotasAlumno
    @AlumnoId = 15;



--Actualizar Nota
CREATE PROCEDURE sp_ActualizarNota
    @AlumnoId INT,
    @TareaId INT,
    @NuevaNota DECIMAL(4,2)
AS
BEGIN
    UPDATE notas
    SET nota = @NuevaNota
    WHERE alumno_id = @AlumnoId
      AND tarea_id = @TareaId;
END
GO
--Ejecutar
EXEC sp_ActualizarNota
    @AlumnoId = 5,
    @TareaId = 3,
    @NuevaNota = 10.5;

----------------------------------
--VISTAS
------------------------------------
--Vista simple
CREATE VIEW vw_Alumnos
AS
SELECT
    id,
    nombres,
    apellidos,
    correo
FROM alumnos;
GO

--Vista consolidada
CREATE VIEW vw_RendimientoAcademico
AS
SELECT
    a.id,
    a.nombres,
    a.apellidos,
    g.nombre AS grado,
    c.nombre AS curso,
    AVG(n.nota) AS promedio
FROM alumnos a
INNER JOIN grados g
    ON a.grado_id = g.id
INNER JOIN notas n
    ON a.id = n.alumno_id
INNER JOIN tareas t
    ON n.tarea_id = t.id
INNER JOIN cursos c
    ON t.curso_id = c.id
GROUP BY
    a.id,
    a.nombres,
    a.apellidos,
    g.nombre,
    c.nombre;
GO

