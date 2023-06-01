var pesquisaModel = require("../models/pesquisaModel");

function pesquisa(req, res) {
    var musica_pesquisada = req.body.emailServer;


    if (musica_pesquisada == undefined) {
        res.status(400).send("Sua pesquisa está undefined!");
    } 
     else {
        
        pesquisaModel.pesquisa(musica_pesquisada)
            .then(
                function (resultado) {
                    console.log(`\nResultados encontrados: ${resultado.length}`);
                    console.log(`Resultados: ${JSON.stringify(resultado)}`); // transforma JSON em String

                    if (resultado.length == 1) {
                        console.log(resultado);
                        res.json(resultado[0]);
                    } else if (resultado.length == 0) {
                        res.status(403).send("Infelizmente não temos essa música");
                    }
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log("\nEssa música não foi encontrada", erro.sqlMessage);
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }

}


module.exports = {
    pesquisa
}