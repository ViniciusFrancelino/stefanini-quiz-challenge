var express = require("express");
var router = express.Router();

var usuarioController = require("../controllers/usuariosController.js");

router.post("/cadastrar", function (req, res) {
    usuarioController.cadastrar(req, res);
})

router.get("/ranquear/:numero", function (req, res) {
    usuarioController.ranquear(req, res);
})

module.exports = router;