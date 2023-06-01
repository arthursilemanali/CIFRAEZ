var pesquisaModel = require("../models/pesquisaModel");


function pesquisa(req, res) {
    var pesquisa = req.params.nomeMusica;

    if (pesquisa == undefined) {
        res.status(400).send("Sua pesquisa está undefined!");
    }
     else {
        
        pesquisaModel.pesquisar(pesquisa)
            .then(
                function (resultado) {
                    console.log(`\nResultados encontrados: ${resultado.length}`);
                    console.log(`Resultados: ${JSON.stringify(resultado)}`); // transforma JSON em String

                    if (resultado.length == 1) {
                        console.log(resultado);
                        res.json(resultado[0]);
                    } else if (resultado.length == 0) {
                        res.status(403).send("Música não encontrada");
                    }
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log("\nHouve um erro ao buscar a música! Erro: ", erro.sqlMessage);
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }

}


module.exports = {
    pesquisa
}