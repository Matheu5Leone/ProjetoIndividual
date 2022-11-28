var express = require("express");
var router = express.Router();

var avisoController = require("../controllers/avisoController");

router.get("/", function (req, res) {
    avisoController.testar(req, res);
});

router.get("/listar", function (req, res) {
    avisoController.listar(req, res);
});

router.get("/listar/:idUsuario", function (req, res) {
    avisoController.listarPorUsuario(req, res);
});

router.get("/pesquisar/:descricao", function (req, res) {
    avisoController.pesquisarDescricao(req, res);
});

router.post("/publicar/:idUsuario", function (req, res) {
    avisoController.publicar(req, res);
});

router.put("/editar/:idAviso", function (req, res) {
    avisoController.editar(req, res);
});

router.delete("/deletar/:idAviso", function (req, res) {
    avisoController.deletar(req, res);
});

/* HOBBIZ */

router.get("/mostrarHobbies/:fkUsuario", function (req, res) {
    avisoController.mostrarHobbies(req, res);
});

router.delete("/deletarHobby/:fkUsuario/:card", function (req, res) {
    avisoController.deletarHobby(req, res);
});

router.get("/ultimosHobbies", function (req, res) {
    avisoController.ultimosHobbies(req, res);
});

router.get("/mostrarHorasDedicadas/:fkUsuario", function (req, res) {
    avisoController.mostrarHorasDedicadas(req, res);
});

module.exports = router;