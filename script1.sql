-- Creamos nuestra base de datos
drop database if exists practica6; 
create database practica6;
use practica6;

-- Crear tabla de usuarios
CREATE TABLE `users` (
	`username` varchar(50) NOT NULL,
	`password` varchar(50) NOT NULL,
	`enabled` tinyint(1) NOT NULL,
	PRIMARY KEY (`username`)
) ENGINE=InnoDB;

-- Crear tabla de roles
CREATE TABLE `authorities` (
	`username` varchar(50) NOT NULL,
	`authority` varchar(50) NOT NULL,
	UNIQUE KEY `authorities_idx_1` (`username`,`authority`),
	CONSTRAINT `authorities_ibfk_1`
	FOREIGN KEY (`username`)
	REFERENCES `users` (`username`)
) ENGINE=InnoDB;

-- Insertamos nuestros usuarios
INSERT INTO `users` VALUES ('edgar','{noop}edgar123',1);
INSERT INTO `users` VALUES ('zaira','{noop}zaira123',1);

-- Insertamos (asignamos roles) a nuestros usuarios.
INSERT INTO `authorities` VALUES ('edgar','USER');
INSERT INTO `authorities` VALUES ('zaira','ADMIN');