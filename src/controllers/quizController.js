var quizModel = require("../models/quizModel");

function registrar(req, res) {
    var usuarioId = req.body.usuarioIdServer;
    var pontuacao = req.body.pontuacaoServer;

    if (usuarioId == undefined) {
        res.status(400).send("O ID do usuário está undefined!");
    } else {

        quizModel.registrar(usuarioId, pontuacao)
            .then(
                function (resultado) {
                    res.json(resultado);
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log(
                        "\nHouve um erro ao realizar o cadastro de pontuação! Erro: ",
                        erro.sqlMessage
                    );
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }
}

module.exports = {
    registrar
};