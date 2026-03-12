CREATE DATABASE dojotech;
USE dojotech;

CREATE TABLE usuario(
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    CONSTRAINT chk_email CHECK(email LIKE '%@%' AND email LIKE '%.com'),
    senha VARCHAR(30) NOT NULL,
    faixaId INT,
	FOREIGN KEY (faixaId) REFERENCES faixa(idFaixa)
);

CREATE TABLE faixa(
    idFaixa INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE registro_quiz(
    idRegistro INT PRIMARY KEY AUTO_INCREMENT,
    usuarioId INT NOT NULL,
    pontuacao INT NOT NULL,
    dataHora DATETIME DEFAULT CURRENT_TIMESTAMP,
    mensagem VARCHAR(255) NULL,
    FOREIGN KEY (usuarioId) REFERENCES usuario(idUsuario)
);

CREATE TABLE quiz_info(
    idQuiz INT PRIMARY KEY AUTO_INCREMENT,
    nomeQuiz VARCHAR(50) NOT NULL
);

CREATE TABLE perguntas(
    idPergunta INT PRIMARY KEY AUTO_INCREMENT,
    textoPergunta VARCHAR(255) NOT NULL,
    quizId INT,
    FOREIGN KEY (quizId) REFERENCES quiz_info(idQuiz)
);

CREATE TABLE respostas_tentativa(
    idRespostaTentativa INT PRIMARY KEY AUTO_INCREMENT,
    registroId INT,
    perguntaId INT,
    FOREIGN KEY (registroId) REFERENCES registro_quiz(idRegistro),
    FOREIGN KEY (perguntaId) REFERENCES perguntas(idPergunta)
);

INSERT INTO faixa (nome) VALUES 
('Branca'), 
('Amarela'), 
('Azul'), 
('Vermelha'), 
('Preta');

INSERT INTO quiz_info (nomeQuiz) VALUES
('Fundamentos do Hapkido');

