DROP TABLE IF EXISTS peliculas;
DROP TABLE IF EXISTS usuarios;
DROP TABLE IF EXISTS pendiente;

PRAGMA foreign_keys = ON;

CREATE TABLE 'usuarios' (
    'id' INTEGER PRIMARY KEY AUTOINCREMENT,
    'nombre' TEXT NOT NULL,
    'peliculafav' INTEGER,
    FOREIGN KEY ('peliculafav') REFERENCES 'peliculas' ('id')
);

CREATE TABLE 'peliculas'(
    'id' INTEGER PRIMARY KEY AUTOINCREMENT,
    'titulo' TEXT NOT NULL,
    'genero' TEXT NOT NULL,
    'año' INTEGER NOT NULL,
    'director' TEXT NOT NULL
);

CREATE TABLE 'pendiente'(
    'id' INTEGER PRIMARY KEY AUTOINCREMENT,
    'usuario' INTEGER,
    'pelicula' INTEGER,
    FOREIGN KEY ('usuario') REFERENCES 'usuarios' ('id'),
    FOREIGN KEY ('pelicula') REFERENCES 'peliculas' ('id')
);

INSERT INTO peliculas (titulo, genero, año, director) VALUES 
('El viaje de Chihiro', 'Fantasía', 2001, 'Hayao Miyazaki'),
('Akira', 'Ciencia Ficción', 1988, 'Katsuhiro Otomo'),
('La tumba de las luciérnagas', 'Drama', 1988, 'Isao Takahata'),
('Your Name', 'Romance', 2016, 'Makoto Shinkai'),
('Mi vecino Totoro', 'Fantasía', 1988, 'Hayao Miyazaki'),
('Ghost in the Shell', 'Ciencia Ficción', 1995, 'Mamoru Oshii'),
('Perfect Blue', 'Suspenso', 1997, 'Satoshi Kon'),
('El castillo ambulante', 'Fantasía', 2004, 'Hayao Miyazaki');

INSERT INTO usuarios (nombre, peliculafav) VALUES ('Usuario1', 2),
('Usuario2', 3),
('Usuario3', 2),
('Usuario4', 1),
('Usuario5', 8),
('Usuario6', 7),
('Usuario7', 7),
('Usuario8', 2),
('Usuario9', 1),
('Usuario10', 2);

INSERT INTO pendiente(usuario, pelicula) VALUES
(1,1),
(2,3);

SELECT usuarios.nombre, peliculas.titulo AS pelicula_pendiente
FROM usuarios
JOIN pendiente ON usuarios.id = pendiente.usuario
JOIN peliculas ON pendiente.pelicula = peliculas.id;
