var express = require("express");
var router = express.Router();

var usuarioController = require("../controllers/usuarioController");

router.post("/cadastrar", function (req, res) {
    usuarioController.cadastrar(req, res);
})

router.get("/ranquear", function (req, res) {
    usuarioController.ranking(req, res);
})

module.exports = router;