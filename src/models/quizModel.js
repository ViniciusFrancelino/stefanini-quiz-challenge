var database = require("../database/config")

function registrar(idUsuario, pontuacao) {
    var instrucaoSql = `
        INSERT INTO registro_quiz (usuario_idUsuario, pontuacao) VALUES (${idUsuario}, ${pontuacao});
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    registrar
};