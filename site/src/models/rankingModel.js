var database = require("../database/config")

function ranking() {
    var instrucao = `
    SELECT 
    fk_musica AS musica,
    nome_musica AS nome_da_musica,
    musica.fk_artista AS id_artista,
    artista.nome_artista AS nome_do_artista,
    musica.fk_genero AS id_genero,
    genero.nome_genero AS genero_musica,
    COUNT(fk_musica) AS votos
FROM
    musica_favorita
        JOIN
    musica ON musica.id_musica = musica_favorita.fk_musica
        JOIN
    artista ON musica.fk_artista = artista.id_artista
        JOIN
    genero ON musica.fk_genero = genero.id_genero
GROUP BY fk_musica
ORDER BY votos DESC
LIMIT 10;`

    console.log("Executando a instrução SQL: \n" + instrucao);
    console.log(instrucao[0].musica);
    
    
    
  
    return database.executar(instrucao);
}

module.exports = {
    ranking
};