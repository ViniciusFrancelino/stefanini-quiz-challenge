var database = require("../database/config")

function cadastrar(nome) {
    var instrucaoSql = `
        INSERT INTO usuario (nome) VALUES ('${nome}');
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function ranquear() {
    var instrucaoSql = `
        SELECT 
            u.nome, rq.pontuacao
        FROM registro_quiz rq
        JOIN usuario u
            ON u.idUsuario = rq.usuario_idUsuario
        ORDER BY rq.pontuacao DESC
        LIMIT 5;
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    cadastrar,
    ranquear
};