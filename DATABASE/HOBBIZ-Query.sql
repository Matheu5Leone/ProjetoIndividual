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
    hobby1 VARCHAR(50),
    hobby2 VARCHAR(50),
    hobby3 VARCHAR(50),
    hobby4 VARCHAR(50),
    hobby5 VARCHAR(50), 
    hobby6 VARCHAR(50),
    fkUsuario INT, FOREIGN KEY (fkUsuario) REFERENCES usuario(id),
    PRIMARY KEY (idHobby, fkUsuario)
)AUTO_INCREMENT = 10000;
SELECT * FROM hobby;






-- INSERT INTO hobby (hobby1, hobby2, hobby3, hobby4, hobby5, hobby6, fkUsuario) VALUES
-- ('${hobby1}','${hobby2}','${hobby3}','${hobby4}','${hobby5}','${hobby6}','${fkUsuario}');

-- drop table hobby;