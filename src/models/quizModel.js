var database = require("../database/config")

function registrar(nome, pontuacao) {
    var instrucaoSql = `
        INSERT INTO registro_quiz (usuario_nome, pontuacao) VALUES (${nome}, ${pontuacao});
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    registrar
};