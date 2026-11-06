DROP DATABASE IF EXISTS lab_security;
CREATE DATABASE IF NOT EXISTS lab_security;
USE lab_security;

-- Tablas para JdbcUserDetailsManager (ejemplo de clase)
CREATE TABLE rol (
    idrol  INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL
);

CREATE TABLE usuario (
    idusuario INT PRIMARY KEY AUTO_INCREMENT,
    nombre    VARCHAR(45),
    apellido  VARCHAR(45),
    email     VARCHAR(100) NOT NULL UNIQUE,
    pwd       VARCHAR(255) NOT NULL,
    activo    TINYINT NOT NULL DEFAULT 1,
    idrol     INT NOT NULL,
    FOREIGN KEY (idrol) REFERENCES rol(idrol)
);

INSERT INTO rol (nombre) VALUES ('admin'), ('logistica');

-- password de ambos: 123456 (hash BCrypt)
INSERT INTO usuario (nombre, apellido, email, pwd, activo, idrol) VALUES
('Ana',  'Admin', 'admin@northwind.com',
 '$2b$10$E9KQN/QPguOtxI5tEUvR7O3JvAXpH3elbJpdHrm12edcXt5VKmRsq', 1, 1),
('Luis', 'Logis', 'logistica@northwind.com',
 '$2b$10$E9KQN/QPguOtxI5tEUvR7O3JvAXpH3elbJpdHrm12edcXt5VKmRsq', 1, 2);
