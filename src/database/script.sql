<<<<<<< Updated upstream
CREATE DATABASE stefanini_quiz;
USE stefanini_quiz;

CREATE TABLE usuario(
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL

);

CREATE TABLE registro_quiz(
    idRegistro INT PRIMARY KEY AUTO_INCREMENT,
    pontuacao INT NOT NULL,
    usuarioId INT NOT NULL,
    FOREIGN KEY (usuarioId) REFERENCES usuario(idUsuario)
);
