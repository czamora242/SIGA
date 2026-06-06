-- GRADOS
INSERT INTO grados(nombre,nivel) VALUES
('1° Secundaria','Secundaria'),
('2° Secundaria','Secundaria'),
('3° Secundaria','Secundaria'),
('4° Secundaria','Secundaria'),
('5° Secundaria','Secundaria');

-- PROFESORES
INSERT INTO profesores(nombres,apellidos,correo,especialidad) VALUES
('Carlos','Ramirez Soto','carlos.ramirez@siga.edu.pe','Matemática'),
('Ana','Torres Vega','ana.torres@siga.edu.pe','Comunicación'),
('Luis','Paredes Rojas','luis.paredes@siga.edu.pe','Ciencia y Tecnología'),
('María','Gonzales Flores','maria.gonzales@siga.edu.pe','Historia'),
('José','Vargas Silva','jose.vargas@siga.edu.pe','Inglés');

-- ALUMNOS
INSERT INTO alumnos(nombres,apellidos,fecha_nacimiento,correo,grado_id) VALUES
('Kevin','Mendoza Ruiz','2009-01-15','kevin.mendoza@gmail.com',1),
('Sofía','Castro León','2009-04-20','sofia.castro@gmail.com',1),
('Bruno','Salazar Díaz','2009-07-11','bruno.salazar@gmail.com',1),
('Alessia','Navarro Pérez','2009-10-08','alessia.navarro@gmail.com',1),

('Fernando','Rojas Silva','2008-02-14','fernando.rojas@gmail.com',2),
('Valentina','Cruz Torres','2008-05-25','valentina.cruz@gmail.com',2),
('Joaquín','Morales Vega','2008-08-17','joaquin.morales@gmail.com',2),
('Luciana','Herrera Flores','2008-11-03','luciana.herrera@gmail.com',2),

('Sebastián','Aguilar Soto','2007-03-09','sebastian.aguilar@gmail.com',3),
('Mariana','Paredes Díaz','2007-06-21','mariana.paredes@gmail.com',3),
('Álvaro','Romero García','2007-09-12','alvaro.romero@gmail.com',3),
('Nicole','Campos Ruiz','2007-12-28','nicole.campos@gmail.com',3),

('Diego','Benites Torres','2006-01-18','diego.benites@gmail.com',4),
('Gabriela','Vallejos León','2006-04-26','gabriela.vallejos@gmail.com',4),
('Rodrigo','Espinoza Rojas','2006-07-15','rodrigo.espinoza@gmail.com',4),
('Kiara','Mejía Flores','2006-10-02','kiara.mejia@gmail.com',4),

('Cristian','Santos Pérez','2005-02-07','cristian.santos@gmail.com',5),
('Alejandra','Fuentes Vega','2005-05-19','alejandra.fuentes@gmail.com',5),
('Matías','Chávez Ruiz','2005-08-30','matias.chavez@gmail.com',5),
('Daniela','Ortega Castro','2005-11-22','daniela.ortega@gmail.com',5),
('Juan','Pérez García','2009-03-15','juan.perez@gmail.com',1),
('Lucía','Martínez López','2009-06-20','lucia.martinez@gmail.com',1),
('Diego','Sánchez Ruiz','2008-08-10','diego.sanchez@gmail.com',2),
('Camila','Fernández Díaz','2008-04-22','camila.fernandez@gmail.com',2),
('Andrés','Torres Castro','2007-11-05','andres.torres@gmail.com',3),
('Valeria','Rojas Mendoza','2007-02-14','valeria.rojas@gmail.com',3),
('Miguel','Silva Quispe','2006-09-01','miguel.silva@gmail.com',4),
('Paula','García León','2006-12-18','paula.garcia@gmail.com',4),
('Jorge','Vega Herrera','2005-07-25','jorge.vega@gmail.com',5),
('Daniela','Flores Ríos','2005-05-30','daniela.flores@gmail.com',5);

-- CURSOS
INSERT INTO cursos(nombre,descripcion,creditos,grado_id,profesor_id) VALUES
('Matemática ','Álgebra y aritmética',5,1,1),
('Comunicación ','Comprensión lectora',4,1,2),
('Ciencia y Tecnología','Biología y física básica',4,1,3),
('Historia del Perú','Historia republicana',3,1,4),
('Inglés Básico','Gramática y vocabulario',3,1,5),
('Matemática ','Álgebra y aritmética',5,2,1),
('Comunicación ','Comprensión lectora',4,2,2),
('Ciencia y Tecnología','Biología y física básica',4,2,3),
('Historia del Perú','Historia republicana',3,2,4),
('Inglés Básico','Gramática y vocabulario',3,2,5),
('Matemática ','Álgebra y aritmética',5,3,1),
('Comunicación ','Comprensión lectora',4,3,2),
('Ciencia y Tecnología','Biología y física básica',4,3,3),
('Historia del Perú','Historia republicana',3,3,4),
('Inglés Básico','Gramática y vocabulario',3,3,5),
('Matemática ','Álgebra y aritmética',5,4,1),
('Comunicación ','Comprensión lectora',4,4,2),
('Ciencia y Tecnología','Biología y física básica',4,4,3),
('Historia del Perú','Historia republicana',3,4,4),
('Inglés Básico','Gramática y vocabulario',3,4,5),
('Matemática ','Álgebra y aritmética',5,5,1),
('Comunicación ','Comprensión lectora',4,5,2),
('Ciencia y Tecnología','Biología y física básica',4,5,3),
('Historia del Perú','Historia republicana',3,5,4),
('Inglés Básico','Gramática y vocabulario',3,5,5);


-- MATRICULAS-
INSERT INTO matriculas(alumno_id,curso_id,fecha_matricula) VALUES
(1,1,'2026-03-01'),
(2,2,'2026-03-01'),
(3,3,'2026-03-01'),
(4,3,'2026-03-01'),
(5,4,'2026-03-01'),
(6,4,'2026-03-01'),
(7,5,'2026-03-01'),
(8,5,'2026-03-01'),
(9,1,'2026-03-01'),
(10,2,'2026-03-01'),
(11,1,'2026-03-01'),
(12,1,'2026-03-01'),
(13,2,'2026-03-01'),
(14,2,'2026-03-01'),
(15,3,'2026-03-01'),
(16,3,'2026-03-01'),
(17,3,'2026-03-01'),
(18,3,'2026-03-01'),
(19,4,'2026-03-01'),
(20,4,'2026-03-01'),
(21,4,'2026-03-01'),
(22,4,'2026-03-01'),
(23,5,'2026-03-01'),
(24,5,'2026-03-01'),
(25,5,'2026-03-01'),
(26,5,'2026-03-01'),
(27,4,'2026-03-01'),
(28,3,'2026-03-01'),
(29,3,'2026-03-01'),
(30,5,'2026-03-01');

-- TAREAS
INSERT INTO tareas(nombre,descripcion,fecha_asignacion,fecha_entrega,curso_id) VALUES
('Tarea Álgebra','Ejercicios de ecuaciones','2026-04-01','2026-04-08',1),
('Lectura Comprensiva','Análisis de texto','2026-04-02','2026-04-09',2),
('Experimento de Biología','Informe de laboratorio','2026-04-03','2026-04-10',3),
('Línea de Tiempo','Historia republicana','2026-04-04','2026-04-11',4),
('Vocabulary Test','Práctica de vocabulario','2026-04-05','2026-04-12',5),
('Funciones Cuadráticas','Resolución de problemas','2026-04-06','2026-04-13',6);

-- NOTAS
INSERT INTO notas(alumno_id,tarea_id,nota) VALUES
(1,1,18.50),
(2,2,17.00),
(3,3,15.50),
(4,3,19.00),
(5,4,16.00),
(6,4,18.00),
(7,5,14.50),
(8,5,19.50),
(9,6,17.50),
(10,6,20.00),
INSERT INTO notas (alumno_id, tarea_id, nota) VALUES
-- Alumno 21
(21,1,16),(21,2,18),(21,3,15),(21,4,17),(21,5,19),

-- Alumno 22
(22,1,14),(22,2,16),(22,3,18),(22,4,15),(22,5,17),

-- Alumno 23
(23,1,12),(23,2,14),(23,3,16),(23,4,13),(23,5,15),

-- Alumno 24
(24,1,17),(24,2,18),(24,3,19),(24,4,16),(24,5,18),

-- Alumno 25
(25,1,10),(25,2,12),(25,3,14),(25,4,11),(25,5,13),

-- Alumno 26
(26,1,15),(26,2,17),(26,3,16),(26,4,18),(26,5,19),

-- Alumno 27
(27,1,13),(27,2,15),(27,3,14),(27,4,16),(27,5,17),

-- Alumno 28
(28,1,18),(28,2,19),(28,3,17),(28,4,18),(28,5,20),

-- Alumno 29
(29,1,11),(29,2,13),(29,3,12),(29,4,14),(29,5,15),

-- Alumno 30
(30,1,16),(30,2,15),(30,3,17),(30,4,18),(30,5,16),

-- Alumno 31
(31,1,14),(31,2,16),(31,3,15),(31,4,17),(31,5,18),

-- Alumno 32
(32,1,19),(32,2,18),(32,3,20),(32,4,19),(32,5,18),

-- Alumno 33
(33,1,12),(33,2,14),(33,3,13),(33,4,15),(33,5,16),

-- Alumno 34
(34,1,17),(34,2,16),(34,3,18),(34,4,19),(34,5,17),

-- Alumno 35
(35,1,09),(35,2,11),(35,3,10),(35,4,12),(35,5,13),

-- Alumno 36
(36,1,15),(36,2,16),(36,3,17),(36,4,18),(36,5,19),

-- Alumno 37
(37,1,13),(37,2,15),(37,3,16),(37,4,14),(37,5,17),

-- Alumno 38
(38,1,18),(38,2,17),(38,3,19),(38,4,20),(38,5,18),

-- Alumno 39
(39,1,10),(39,2,12),(39,3,11),(39,4,13),(39,5,14),

-- Alumno 40
(40,1,16),(40,2,18),(40,3,17),(40,4,19),(40,5,20);

-- ASISTENCIAS
INSERT INTO asistencias(alumno_id,fecha,estado) VALUES
(1,'2026-04-09','Ausente'),
(2,'2026-04-09','Presente'),
(3,'2026-04-09','Ausente'),
(4,'2026-04-09','Presente'),
(5,'2026-04-09','Tardanza'),
(6,'2026-04-09','Presente'),
(7,'2026-04-09','Presente'),
(8,'2026-04-09','Tardanza'),
(9,'2026-04-09','Ausente'),
(10,'2026-04-09','Presente'),
(1,'2026-04-10','Presente'),
(2,'2026-04-10','Presente'),
(3,'2026-04-10','Ausente'),
(4,'2026-04-10','Presente'),
(5,'2026-04-10','Tardanza'),
(6,'2026-04-10','Presente'),
(7,'2026-04-10','Presente'),
(8,'2026-04-10','Presente'),
(9,'2026-04-10','Ausente'),
(10,'2026-04-10','Presente'),
(1,'2026-04-11','Presente'),
(2,'2026-04-11','Presente'),
(3,'2026-04-11','Presente'),
(4,'2026-04-11','Presente'),
(5,'2026-04-11','Presente'),
(6,'2026-04-11','Presente'),
(7,'2026-04-11','Presente'),
(8,'2026-04-11','Presente'),
(9,'2026-04-11','Ausente'),
(10,'2026-04-11','Presente'),
(1,'2026-04-12','Presente'),
(2,'2026-04-12','Presente'),
(3,'2026-04-12','Ausente'),
(4,'2026-04-12','Presente'),
(5,'2026-04-12','Tardanza'),
(6,'2026-04-12','Presente'),
(7,'2026-04-12','Presente'),
(8,'2026-04-12','Presente'),
(9,'2026-04-12','Ausente'),
(10,'2026-04-12','Presente'),
(1,'2026-04-15','Presente'),
(2,'2026-04-15','Presente'),
(3,'2026-04-15','Ausente'),
(4,'2026-04-15','Presente'),
(5,'2026-04-15','Tardanza'),
(6,'2026-04-15','Presente'),
(7,'2026-04-15','Presente'),
(8,'2026-04-15','Presente'),
(9,'2026-04-15','Ausente'),
(10,'2026-04-15','Presente'),
(1,'2026-04-16','Presente'),
(2,'2026-04-16','Presente'),
(3,'2026-04-16','Ausente'),
(4,'2026-04-16','Presente'),
(5,'2026-04-16','Tardanza'),
(6,'2026-04-16','Presente'),
(7,'2026-04-16','Presente'),
(8,'2026-04-16','Presente'),
(9,'2026-04-16','Ausente'),
(10,'2026-04-16','Presente')

-- OBSERVACIONES
INSERT INTO observaciones(alumno_id,curso_id,observacion) VALUES
(1,1,'Participa activamente en clase.'),
(2,2,'Excelente comprensión lectora.'),
(3,3,'Debe mejorar la puntualidad.'),
(4,3,'Destaca en actividades prácticas.'),
(5,4,'Necesita reforzar algunos temas.'),
(6,4,'Buen desempeño general.'),
(7,5,'Participación constante.'),
(8,5,'Excelente pronunciación en inglés.'),
(9,6,'Debe entregar tareas a tiempo.'),
(10,6,'Sobresaliente rendimiento académico.');


--AGREGAR ASISTENCIA A CADA ALUMNO
DECLARE @FechaInicio DATE = '2026-03-15';
DECLARE @FechaFin DATE = '2026-06-04';
WHILE @FechaInicio <= @FechaFin
BEGIN
    -- Excluir sábados y domingos
    IF DATENAME(WEEKDAY, @FechaInicio) NOT IN ('Saturday', 'Sunday')
    BEGIN

        DECLARE @AlumnoID INT = 1;

        WHILE @AlumnoID <= 40
        BEGIN

            INSERT INTO asistencias (alumno_id, fecha, estado)
            VALUES (
                @AlumnoID,
                @FechaInicio,
                CASE
                    WHEN ABS(CHECKSUM(NEWID())) % 100 < 80 THEN 'Presente'
                    WHEN ABS(CHECKSUM(NEWID())) % 100 < 90 THEN 'Tardanza'
                    ELSE 'Ausente'
                END
            );

            SET @AlumnoID = @AlumnoID + 1;
        END

    END

    SET @FechaInicio = DATEADD(DAY, 1, @FechaInicio);
END;

--AGREGAR NOTAS
INSERT INTO notas (alumno_id, tarea_id, nota)
SELECT
    a.id,
    t.id,
    CASE

        -- Riesgo académico
        WHEN a.id BETWEEN 1 AND 15
            THEN FLOOR(RAND(CHECKSUM(NEWID()))*5)+5

        -- Rendimiento regular
        WHEN a.id BETWEEN 26 AND 30
            THEN FLOOR(RAND(CHECKSUM(NEWID()))*5)+11

        -- Alto rendimiento
        ELSE FLOOR(RAND(CHECKSUM(NEWID()))*5)+16

    END
FROM alumnos a
CROSS JOIN tareas t
WHERE a.id BETWEEN 1 AND 40;