var database = require("../database/config")

function ranking() {
    var instrucao = `
    SELECT 
    fk_musica AS musica,
    nome_musica AS nome_da_musica,
    COUNT(fk_musica) AS votos
FROM
    musica_favorita
        JOIN
    musica ON musica.id_musica = musica_favorita.fk_musica
GROUP BY fk_musica
ORDER BY votos DESC
LIMIT 10;
    `;

    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

module.exports = {
    ranking
};