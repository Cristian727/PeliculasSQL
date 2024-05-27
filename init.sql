DROP TABLE IF EXISTS mensajes;
DROP TABLE IF EXISTS usuarios;
PRAGMA foreign_keys = ON;

CREATE TABLE `usuarios` (
    'id' INTEGER NOT NULL UNIQUE,
    'nombre' TEXT NOT NULL UNIQUE,
    'edad' INTEGER,
    'pais' TEXT,
    'email' TEXT NOT NULL UNIQUE,
    'balance' REAL NOT NULL,
    'rol' TEXT NOT NULL,
    PRIMARY KEY ('id' AUTOINCREMENT)
    )STRICT;

CREATE TABLE `mensajes` (
    'id' INTEGER NOT NULL UNIQUE,
    'mensaje' TEXT NOT NULL,
    'autor' INTEGER NOT NULL,
    FOREIGN KEY('autor') REFERENCES 'usuarios'('id'),
    PRIMARY KEY ('id' AUTOINCREMENT)
    );

INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) VALUES('Laura', 28, 'España', 'laura@example.com', 1000, 'usuario');
INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) VALUES('Hiroshi', 35, 'Japón', 'hiroshi@example.com', 500, 'usuario');
INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) VALUES('Marina', 23, 'Grecia', 'marina@example.com', 700, 'usuario');
INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) VALUES('Raj', 30, 'India', 'raj@example.com', 900, 'usuario');
INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) VALUES('Emma', 26, 'Canadá', 'emma@example.com', 1200, 'usuario');
INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) VALUES('Carlos', 31, 'Argentina', 'carlos@example.com', 800, 'usuario');
INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) VALUES('Liu', 29, 'China', 'liu@example.com', 1100, 'usuario');
INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) VALUES('Anastasia', 27, 'Rusia', 'anastasia@example.com', 950, 'usuario');
INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) VALUES('Mohammed', 32, 'Egipto', 'mohammed@example.com', 600, 'usuario');
INSERT INTO usuarios (nombre, edad, pais, email, balance, rol) VALUES('Maria', 24, 'Brasil', 'maria@example.com', 850, 'usuario');
