CREATE DATABASE IF NOT EXISTS hobbiz;
USE hobbiz;

CREATE TABLE IF NOT EXISTS usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	senha VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS hobby (
fkUsuario INT NOT NULL,
	FOREIGN KEY (fkUsuario) REFERENCES usuario(id),
card INT NOT NULL,
titulo VARCHAR(45) NOT NULL,
quando DATETIME,
horasDedicadas TIME,
	PRIMARY KEY (fkUsuario, card)
);



INSERT INTO usuario (nome, email, senha) VALUES
('lele','lele@gmail','lele');
INSERT INTO hobby VALUES
(1,1,'Tricotar','2022-12-14 13:00:00', '01:30:00');


SELECT usuario.nome, hobby.titulo FROM usuario 
	JOIN hobby ON usuario.id = hobby.fkUsuario
			WHERE usuario.id = 1;

SELECT * FROM usuario;
SELECT * FROM hobby;



drop database hobbiz;


