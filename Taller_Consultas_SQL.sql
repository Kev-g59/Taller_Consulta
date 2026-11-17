-- Taller práctico - Consultas SQL
-- Base de datos: EmpresaBD

USE EmpresaBD;

-- REGISTROS DE LA TABLA DEPARTAMENTO
#INSERTAR DATOS EN DEPARTAMENTO
INSERT INTO Departamento (DeptID, NombreDepto, Ubicacion) VALUES
(1, "Recursos Humanos", "Piso 2 - Edificio Principal"),
(2, "Tecnología", "Piso 3  Edificio Principal"),
(3, "Finanzas", "Piso 2 - Edificio Principal"),
(4, "Mercadeo", "Piso 1 - Edificio Principal"),
(5, "Ventas", "Sede Comercial"),
(6, "Operaciones", "Centro Logistico");

-- REGISTROS DE LA TABLA EMPLEADO
INSERT INTO Empleado (EmpID, Nombre, Apellido, Edad, Salario, DeptID) VALUES
(101, 'Laura',    'Gomez',      29, 3200000.00, 1),
(102, 'Carlos',   'Ramirez',    35, 4500000.00, 2),
(103, 'Andres',   'Martinez',   27, 3800000.00, 2),
(104, 'Diana',    'Torres',     41, 5200000.00, 3),
(105, 'Sofia',    'Herrera',    31, 4100000.00, 4),
(106, 'Miguel',   'Castro',     38, 3600000.00, 5),
(107, 'Valentina','Rojas',      26, 3000000.00, 1),
(108, 'Jorge',    'Moreno',     45, 6100000.00, 2),
(109, 'Camila',   'Diaz',       33, 4700000.00, 3),
(110, 'Felipe',   'Ortiz',      24, 2800000.00, 4),
(111, 'Natalia',  'Vargas',     37, 3900000.00, 5),
(112, 'Daniel',   'Silva',      30, 3400000.00, 6),
(113, 'Paula',    'Mendoza',    28, 3300000.00, 1),
(114, 'Ricardo',  'Acosta',     50, 7200000.00, 3),
(115, 'Mariana',  'Pineda',     32, 4400000.00, 4),
(116, 'Sebastian','Navarro',    22, 2500000.00, 6),
(117, 'Gabriela', 'Leon',       39, 5300000.00, 2),
(118, 'Esteban',  'Cortes',     34, 4200000.00, 5),
(119, 'Isabella', 'Reyes',      25, 3100000.00, 6),
(120, 'Oscar',    'Fuentes',    43, 4900000.00, 5);

-- NIVEL 1. CONSULTAS BÁSICAS - SELECT

-- Ejercicio 1
-- Consultar todos los registros de la tabla Departamento
SELECT * FROM Departamento;

-- Ejercicio 2
-- Consultar todos los empleados registrados en la empresa
SELECT * FROM Empleado;

-- Ejercicio 3
-- Mostrar únicamente el nombre, apellido y salario de los empleados
SELECT Nombre, Apellido, Salario FROM Empleado;

-- Ejercicio 4
-- Consultar los empleados que tengan una edad superior a 30 años
SELECT * FROM Empleado WHERE Edad > 30;

-- Ejercicio 5
-- Consultar los empleados cuyo salario sea superior a $4.000.000
SELECT * FROM Empleado WHERE Salario > 4000000;

-- Ejercicio 6
-- Mostrar los empleados cuyo nombre sea 'Laura'
SELECT * FROM Empleado WHERE Nombre = 'Laura';

-- Ejercicio 7
-- Consultar los departamentos ubicados en el edificio principal
SELECT * FROM Departamento WHERE Ubicacion LIKE '%Edificio Principal%';

-- NIVEL 2. ORDENAMIENTO Y FILTROS

-- Ejercicio 8
-- Mostrar todos los empleados ordenados alfabéticamente por apellido
SELECT * FROM Empleado ORDER BY Apellido ASC;

-- Ejercicio 9
-- Consultar los empleados ordenados de mayor a menor salario
SELECT * FROM Empleado ORDER BY Salario DESC;

-- Ejercicio 10
-- Mostrar los empleados que tengan entre 25 y 40 años
SELECT * FROM Empleado WHERE Edad BETWEEN 25 AND 40;

-- Ejercicio 11
-- Consultar los empleados cuyo salario esté entre $3.000.000 y $5.000.000
SELECT * FROM Empleado WHERE Salario BETWEEN 3000000 AND 5000000;

-- Ejercicio 12
-- Mostrar los empleados cuyo apellido comience por la letra 'M'
SELECT * FROM Empleado WHERE Apellido LIKE 'M%';

-- Ejercicio 13
-- Consultar los empleados que pertenezcan a los departamentos con DeptID 2, 3 o 5
SELECT * FROM Empleado WHERE DeptID IN (2, 3, 5);
