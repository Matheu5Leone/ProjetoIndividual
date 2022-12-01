DROP DATABASE hobbiz;
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
('Sebastião', 'sebastia0fre@gmail.com', 'vaqueiro123'),
('Kassila', 'kassilinhaLinda@gmail.com', 'jujubinh4Saltitante'),
('Amanda', 'mandinhapeixeira@gmail.com', 'juliomeuamor'),
('Reinaldo', 'reinaldaocamisa10@gmail.com', 'goldocasemiro'),
('Melissa', 'melzinhaRose@gmail.com', 'f4daEmily'),
('lele','lele@gmail.com','lele');

-- SEBASTIÃO
INSERT INTO hobby (fkUsuario, card, titulo, quando, horasDedicadas, descricao) VALUES
(1, 3, "Beber c/ amigos", "20221203001235", "060000", "Bebedeira na casa do Macedo, levar 1 caixinha de cerveja + dinheiro pra carne."),
(1, 4, "Pescar sozinho", "20221211001000", "080000", "Pescar no Rio Frio, pedir comida da minha mulher e levar isca fresca.");

-- KASSILA
INSERT INTO hobby (fkUsuario, card, titulo, quando, horasDedicadas, descricao) VALUES
(2, 1, "Ler livro de Psi", "20221201002215", "010000",  "Ver qual o livro recomendado na última aula de Psicanálise e ler antes de dormir."),
(2, 5, "Cozinhar", "20221203001500", "030000", "Ver receitinha nova do TikTok (aquela com 3 ingredientes) e testar."),
(2, 6, "Bordar", "20221204001710", "020000", "Terminar aquele bordado (você sabe qual é) o mais rápido e entregar de presente."),
(2, 3, "Assistir com Namorado", "20221206002015", "030000", "Fazer call para assistir novos episódios do ChainSaw Man com o dito cujo.");

-- AMANDA
INSERT INTO hobby (fkUsuario, card, titulo, quando, horasDedicadas, descricao) VALUES
(3, 5, "Ir na célula da Dani", "20221210001800", "040000", "Minha amiga Dani vai fazer sua primeira célula. Devo ir prestigiar o senhor em sua casa e levar bolo!"),
(3, 4, "Ler bíblia", "20221201002000", "023500", "Abrir em uma página aleatória e descobrir qual a mensagem de Deus pra mim!");

-- REINALDO
INSERT INTO hobby (fkUsuario, card, titulo, quando, horasDedicadas, descricao) VALUES
(4, 1, "Jogar bola com os mano", "20221230001800", "052000", "Vai no campo perto da casa do Fabrício."),
(4, 6, "Andar de bike", "20221209001400", "033000", "Passar na casa da Ana e perguntar daquele bagulho lá.");

-- MELISSA
INSERT INTO hobby (fkUsuario, card, titulo, quando, horasDedicadas, descricao) VALUES
(5, 6, "Fazer compras no shopping", "20221201001409", "050000", "Ir com a Ana e Eduarda comprar aquela blusinha."),
(5, 2, "Andar de patins", "20221203001730", "020000", "Ir com a Duda e Julia/encontrar o Danilo."),
(5, 3, "Conversar no salão", "20221213001300", "030000", "Fazer cabelo, mão, pé e massagem com a Rosa! #melhorcabelereira");

-- LELE
INSERT INTO hobby (fkUsuario, card, titulo, quando, horasDedicadas, descricao) VALUES
(6, 1, "Treino de Lockpick", "20221203001300", "010000", "Organizar o cadeado transparente e um lugar silencioso"),
(6, 2, "Manobras com Butterfly", "20221209001400", "003000", "Se possivel gravar o vídeo para postar a manobra completa 🎥");


 -- (x,x,'','', '', null, null), (x,x,'','', '', null, null); 


    