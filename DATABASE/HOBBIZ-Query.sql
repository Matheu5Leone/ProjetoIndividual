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

SELECT * FROM usuario;
SELECT * FROM hobby;

INSERT INTO usuario (nome, email, senha) VALUES
('','',''),
('','',''),
('','',''),
('','',''),
('','',''),
('','','');
INSERT INTO hobby VALUES
(x,x,'','', '', null, null), (x,x,'','', '', null, null),
(x,x,'','', '', null, null), (x,x,'','', '', null, null),
(x,x,'','', '', null, null), (x,x,'','', '', null, null),
(x,x,'','', '', null, null), (x,x,'','', '', null, null), 
(x,x,'','', '', null, null), (x,x,'','', '', null, null),
(x,x,'','', '', null, null), (x,x,'','', '', null, null),
(x,x,'','', '', null, null), (x,x,'','', '', null, null),
(x,x,'','', '', null, null), (x,x,'','', '', null, null); 


