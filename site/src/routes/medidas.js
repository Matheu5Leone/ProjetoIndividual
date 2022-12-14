var express = require("express");
var router = express.Router();

var medidaController = require("../controllers/medidaController");

router.get("/ultimas/:idAquario", function (req, res) {
    medidaController.buscarUltimasMedidas(req, res);
});

router.get("/tempo-real/:idAquario", function (req, res) {
    medidaController.buscarMedidasEmTempoReal(req, res);
})

router.get("/obterDados/:fkUsuario", function (req, res) {
    medidaController.obterDados(req, res);
});

router.get("/obterDados2", function (req, res) {
    medidaController.obterDados2(req, res);
});

module.exports = router;