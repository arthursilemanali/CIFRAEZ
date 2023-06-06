var express = require("express");
var router = express.Router();

var favoritasController = require("../controllers/favoritasController");

router.get("/favoritas/:idUsuario", function (req, res) {
    favoritasController.favoritas(req, res);
});

module.exports = router;