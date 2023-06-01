var rankingModel = require("../models/rankingModel");

function ranking(req, res) {
    rankingModel.ranking()
        .then(function (resultado) {
            // console.log(resultado); // Comentado ou removido

            // Precisamos informar que o resultado será retornado para o front-end como uma resposta em JSON
            res.status(200).json(resultado);
        })
        .catch(function (erro) {
            res.status(500).json(erro.sqlMessage);
        });
}

module.exports = {
    ranking
};
