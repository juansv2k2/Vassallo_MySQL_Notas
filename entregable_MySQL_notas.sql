
-- Generar base de datos --

DROP DATABASE IF EXISTS db_notas;
CREATE DATABASE db_notas;
USE db_notas;


-- Tabla de usuarios


DROP TABLE IF EXISTS db_notas.usuarios;
CREATE TABLE db_notas.usuarios (
  id int(100) NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
PRIMARY KEY (id)
);

-- Tabla de notas
DROP TABLE IF EXISTS db_notas.notas;
CREATE TABLE db_notas.notas (
  id int(100) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  titulo VARCHAR(100) NOT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  descripcion VARCHAR(1000) NOT NULL,
  usuario_id int(100) NOT NULL,
  FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

-- Tabla de categorias 
DROP TABLE IF EXISTS db_notas.categorias;
CREATE TABLE db_notas.categorias (
  id int(100) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(1000) NOT NULL
);

-- Tabla categorias-notas
DROP TABLE IF EXISTS db_notas.categorias_notas;
CREATE TABLE db_notas.categorias_notas (
  id int(100) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  categorias_id int(100) NOT NULL,
  notas_id int(100) NOT NULL,
FOREIGN KEY (categorias_id) REFERENCES categorias (id),
FOREIGN KEY (notas_id) REFERENCES notas (id)
);


-- Crear usuarios de prueba 

INSERT INTO db_notas.usuarios (nombre, email)
VALUES ("Juan 1", "juanp1@hotmail.com");

INSERT INTO db_notas.usuarios (nombre, email)
VALUES ("Juan 2", "juanp2@hotmail.com");


INSERT INTO db_notas.usuarios (nombre, email)
VALUES ("Juan 3", "juanp3@hotmail.com");

INSERT INTO db_notas.usuarios (nombre, email)
VALUES ("Juan 4", "juanp4@hotmail.com");

INSERT INTO db_notas.usuarios (nombre, email)
VALUES ("Juan 5", "juanp5@hotmail.com");

INSERT INTO db_notas.usuarios (nombre, email)
VALUES ("Juan 6", "juanp6@hotmail.com");

INSERT INTO db_notas.usuarios (nombre, email)
VALUES ("Juan 7", "juanp7@hotmail.com");

INSERT INTO db_notas.usuarios (nombre, email)
VALUES ("Juan 8", "juanp8@hotmail.com");

INSERT INTO db_notas.usuarios (nombre, email)
VALUES ("Juan 9", "juanp9@hotmail.com");

INSERT INTO db_notas.usuarios (nombre, email)
VALUES ("Juan 10", "juanp10@hotmail.com");

-- Crear notas de prueba 

INSERT INTO db_notas.notas (titulo, created_at, descripcion, usuario_id)
VALUES ("TituloNota 1", CURDATE(), "DescripcionNota 1", 1);

INSERT INTO db_notas.notas (titulo, created_at, descripcion, usuario_id)
VALUES ("TituloNota 2", CURDATE(), "DescripcionNota 2", 1);

INSERT INTO db_notas.notas (titulo, created_at, descripcion, usuario_id)
VALUES ("TituloNota 3", CURDATE(), "DescripcionNota 3", 2);

INSERT INTO db_notas.notas (titulo, created_at, descripcion, usuario_id)
VALUES ("TituloNota 4", CURDATE(), "DescripcionNota 4", 2);

INSERT INTO db_notas.notas (titulo, created_at, descripcion, usuario_id)
VALUES ("TituloNota 5", CURDATE(), "DescripcionNota 5", 3);

INSERT INTO db_notas.notas (titulo, created_at, descripcion, usuario_id)
VALUES ("TituloNota 6", CURDATE(), "DescripcionNota 6", 4);

INSERT INTO db_notas.notas (titulo, created_at, descripcion, usuario_id)
VALUES ("TituloNota 7", CURDATE(), "DescripcionNota 7", 4);

INSERT INTO db_notas.notas (titulo, created_at, descripcion, usuario_id)
VALUES ("TituloNota 8", CURDATE(), "DescripcionNota 8", 5);

INSERT INTO db_notas.notas (titulo, created_at, descripcion, usuario_id)
VALUES ("TituloNota 9", CURDATE(), "DescripcionNota 9", 5);

INSERT INTO db_notas.notas (titulo, created_at, descripcion, usuario_id)
VALUES ("TituloNota 10", CURDATE(), "DescripcionNota 10", 5);

INSERT INTO db_notas.notas (titulo, created_at, descripcion, usuario_id)
VALUES ("TituloNota 11", CURDATE(), "DescripcionNota 11", 10);

-- Crear categorias 

INSERT INTO db_notas.categorias (nombre)
VALUES ("Categoria 1");

INSERT INTO db_notas.categorias (nombre)
VALUES ("Categoria 1");

INSERT INTO db_notas.categorias (nombre)
VALUES ("Categoria 2");

INSERT INTO db_notas.categorias (nombre)
VALUES ("Categoria 2");

INSERT INTO db_notas.categorias (nombre)
VALUES ("Categoria 3");


INSERT INTO db_notas.categorias (nombre)
VALUES ("Categoria 3");

INSERT INTO db_notas.categorias (nombre)
VALUES ("Categoria 4");

INSERT INTO db_notas.categorias (nombre)
VALUES ("Categoria 4");

INSERT INTO db_notas.categorias (nombre)
VALUES ("Categoria 4");

INSERT INTO db_notas.categorias (nombre)
VALUES ("Categoria 5");

INSERT INTO db_notas.categorias (nombre)
VALUES ("Categoria 5");

-- relacion NOTAS-CATEGORIAS

INSERT INTO db_notas.categorias_notas (notas_id, categorias_id)
VALUES (1, 3);

INSERT INTO db_notas.categorias_notas (notas_id, categorias_id)
VALUES (1, 2);

INSERT INTO db_notas.categorias_notas (notas_id, categorias_id)
VALUES (2, 3);

INSERT INTO db_notas.categorias_notas (notas_id, categorias_id)
VALUES (2, 4);

INSERT INTO db_notas.categorias_notas (notas_id, categorias_id)
VALUES (1, 5);

