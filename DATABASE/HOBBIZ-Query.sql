CREATE DATABASE hobbiz;
USE hobbiz;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);
SELECT * FROM usuario;

CREATE TABLE hobby (
	idHobby INT AUTO_INCREMENT,
	nome VARCHAR(50),
    fkUsuario INT, FOREIGN KEY (fkUsuario) REFERENCES usuario(id),
    PRIMARY KEY (idHobby, fkUsuario)
)AUTO_INCREMENT = 10000;
SELECT * FROM hobby;

INSERT INTO hobby (nome) VALUES
('AS', 1);