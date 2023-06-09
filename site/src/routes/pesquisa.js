var express = require("express");
var router = express.Router();

var pesquisaController = require("../controllers/pesquisaController");

router.get("/:nomeMusica", function (req, res) {
    pesquisaController.pesquisa(req, res);
});

module.exports = router;