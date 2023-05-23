var rankingModel = require("../models/rankingModel");

function ranking(req, res) {
    rankingModel.ranking().then(function(resultado){
        // precisamos informar que o resultado voltará para o front-end como uma resposta em json
        res.status(200).json(resultado);
    }).catch(function(erro){
        res.status(500).json(erro.sqlMessage);
    })
}


module.exports = {
    ranking
}