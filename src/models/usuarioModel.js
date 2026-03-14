var database = require("../database/config")

function cadastrar(nome) {
    var instrucaoSql = `
        INSERT INTO usuario (nome) VALUES ('${nome}');
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function ranquear(numero) {
    var instrucaoSql = `
        SELECT nome, pontuacao
        FROM registro_quiz
        JOIN usuario ON idUsuario = usuario.idUsuario
        ORDER BY pontuacao DESC
        LIMIT ${numero};

    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    cadastrar,
    ranquear
};