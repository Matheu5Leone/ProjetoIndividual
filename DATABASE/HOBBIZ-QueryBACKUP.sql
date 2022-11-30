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
registro DATETIME DEFAULT CURRENT_TIMESTAMP,
descricao TINYTEXT,
	PRIMARY KEY (fkUsuario, card)
);

INSERT INTO usuario (nome, email, senha) VALUES
('lele','lele@gmail','lele');
INSERT INTO hobby VALUES
(1,5,'Marmita','20221214160000', '2000', null);


SELECT usuario.nome, hobby.titulo FROM usuario 
	JOIN hobby ON usuario.id = hobby.fkUsuario
			WHERE usuario.id = 1;

SELECT * FROM usuario;
SELECT * FROM hobby WHERE fkUsuario = 1;

UPDATE hobby SET descricao = "Teste hobby" WHERE fkUsuario = 5 AND card = 3;

truncate table usuario;
truncate table hobby;
drop database hobbiz;

DELETE FROM hobby WHERE fkUsuario = 4 AND card = 1;
SELECT usuario.nome, hobby.titulo, hobby.horasDedicadas, hobby.quando, hobby.registro FROM usuario JOIN hobby ON id = fkUsuario ORDER BY hobby.registro DESC;
update hobby set quando = '20221212130000' where fkUsuario = 3 AND card = 1;

SELECT horasDedicadas FROM hobby WHERE fkUsuario = 4 LIMIT 3;


SELECT titulo, TIME_FORMAT(horasDedicadas, '%H%i') AS 'duracao' FROM hobby WHERE fkUsuario = 5; 


SELECT usuario.nome, hobby.titulo FROM usuario JOIN hobby ON id = fkUsuario ORDER BY hobby.registro DESC LIMIT 10;

SELECT SUM(horasDedicadas) AS 'Duração' FROM hobby WHERE fkUsuario = 5;
SELECT SUM(horasDedicadas) FROM hobby WHERE fkUsuario = 5;
SELECT titulo, horasDedicadas FROM hobby WHERE fkUsuario = 5;
SELECT nome, time_format( SEC_TO_TIME( SUM( TIME_TO_SEC(horasDedicadas) ) ),'%H.%i') AS 'totalPorUsuario' FROM hobby JOIN usuario ON fkUsuario = id GROUP BY fkUsuario ORDER BY time_format( SEC_TO_TIME( SUM( TIME_TO_SEC(horasDedicadas) ) ),'%H:%i:%S') DESC;

SELECT time_format( SEC_TO_TIME( SUM( TIME_TO_SEC(horasDedicadas) ) ),'%H:%i:%S') AS 'Duracao', time_format( SEC_TO_TIME( SUM( TIME_TO_SEC(horasDedicadas) ) ),'%H%i%S') AS 'total' FROM hobby WHERE fkUsuario = 5;