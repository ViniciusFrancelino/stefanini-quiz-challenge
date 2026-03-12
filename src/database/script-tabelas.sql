CREATE DATABASE stefanini_challenge;
USE stefanini_challenge;

CREATE TABLE usuario(
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
);

CREATE TABLE faixa(
idFaixa INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
usuarioId INT,
FOREIGN KEY (usuarioId) REFERENCES usuario(idUsuario)
);

CREATE TABLE quiz(
idQuiz INT PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE tentativas(
idTentativa INT AUTO_INCREMENT,
usuarioId INT NOT NULL,
quizId INT NOT NULL,
data_tentativa DATETIME NOT NULL,
pontuacao_total INT NULL,
PRIMARY KEY(idTentativa, usuarioId, quizId),
FOREIGN KEY (usuarioId) REFERENCES usuario(idUsuario),
FOREIGN KEY (quizId) REFERENCES quiz(idQuiz)
);

CREATE TABLE perguntas(
idPergunta INT PRIMARY KEY AUTO_INCREMENT,
pergunta VARCHAR(70) NOT NULL,
quizId INT,
FOREIGN KEY (quizId) REFERENCES quiz(idQuiz)
);

CREATE TABLE respostas(
idResposta INT PRIMARY KEY AUTO_INCREMENT,
pergunta VARCHAR(70) NOT NULL
);

CREATE TABLE pontuacao(
perguntaId INT,
respostaId INT,
pontuacao INT,
PRIMARY KEY(perguntaId, respostaId),
FOREIGN KEY (perguntaId) REFERENCES perguntas(idPergunta),
FOREIGN KEY (respostaId) REFERENCES respostas(idResposta)
);

