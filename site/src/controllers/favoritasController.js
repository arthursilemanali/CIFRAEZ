var favoritasModel = require("../models/favoritasModel");

function favoritas(req, res) {
    var usuario = req.params.idUsuario;

    if (usuario == undefined) {
        res.status(400).send("Logue primeiro");
    } else {
        favoritasModel.favoritas(usuario)
            .then(function (resultado) {
                console.log(`\nResultados encontrados: ${resultado.length}`);
                console.log(`Resultados: ${JSON.stringify(resultado)}`); // transforma JSON em String

                if (resultado.length == 1) {
                    console.log(resultado);
                    res.json(resultado[0]);
                } else if (resultado.length == 0) {
                    res.status(403).send("Você não tem músicas favoritas");
                }
            })
            .catch(function (erro) {
                console.log(erro);
                console.log(
                    "\nHouve um erro ao buscar a música! Erro: ",
                    erro.sqlMessage
                );
                res.status(500).json(erro.sqlMessage);
            });
    }
}

module.exports = {
    favoritas
};