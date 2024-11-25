/* para mysql en phpmyadmin crear una tabla usuario con campos completos*/
CREATE TABLE `usuario_avanzado` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `clave` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `fecha_creacion` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `activo` TINYINT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;    



/*************  ✨ Codeium Command ⭐  *************/
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `clave` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/******  823fe349-42f6-46ea-bbae-630564edb92e  *******/     

-- Crear tabla Usuarios
CREATE TABLE IF NOT EXISTS Usuarios (
  id INT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  clave VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  fecha_creacion DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  activo TINYINT(1) NOT NULL DEFAULT 1
);

-- Crear tabla Opciones
CREATE TABLE IF NOT EXISTS Opciones (
  id INT PRIMARY KEY,
  Codigo CHAR(2) NOT NULL,
  Nombre VARCHAR(100) NOT NULL,
  Tipo CHAR(10) NOT NULL DEFAULT 'Menu',
  Detalle VARCHAR(100) NOT NULL,
  Padre CHAR(2) NOT NULL,
  Modulo CHAR(10) NOT NULL
);

-- Crear tabla Perfiles_Usuarios
CREATE TABLE IF NOT EXISTS Perfiles_Usuarios (
  id INT PRIMARY KEY,
  Nombre CHAR(50) NOT NULL
);

-- Agregar valores de ejemplo a la tabla Usuarios
INSERT INTO Usuarios (id, nombre, clave, email, fecha_creacion, activo)
VALUES
  (1, 'Juan Pérez', 'clave123', 'juan@example.com', '2022-01-01 12:00:00', 1),
  (2, 'María Rodríguez', 'clave456', 'maria@example.com', '2022-01-02 13:00:00', 1),
  (3, 'Pedro García', 'clave789', 'pedro@example.com', '2022-01-03 14:00:00', 1);

-- Agregar valores de ejemplo a la tabla Opciones
INSERT INTO Opciones (id, Codigo, Nombre, Tipo, Detalle, Padre, Modulo)
VALUES
  (1, '01', 'Opción 1', 'Menu', 'Detalle de la opción 1', '', 'modulo1'),
  (2, '02', 'Opción 2', 'Menu', 'Detalle de la opción 2', '01', 'modulo2'),
  (3, '03', 'Opción 3', 'Modulo', 'Detalle de la opción 3', '', 'modulo3');

-- Agregar valores de ejemplo a la tabla Perfiles_Usuarios
INSERT INTO Perfiles_Usuarios (id, Nombre)
VALUES
  (1, 'Administrador'),
  (2, 'Usuario'),
  (3, 'Invitado');