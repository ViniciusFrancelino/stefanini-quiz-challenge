var database = require("../database/config")

function registrar(usuarioId, pontuacao) {
    var instrucaoSql = `
        INSERT INTO registro_quiz (usuarioId, pontuacao) VALUES (${usuarioId}, ${pontuacao});
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    registrar
};