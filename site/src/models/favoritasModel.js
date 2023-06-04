var database = require("../database/config")

function favoritas(usuario) {
   // console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function entrar(): ", email, senha)
    var instrucao = `

    SELECT 
    fk_musica AS musica,
    nome_musica AS nome_da_musica,
    musica.fk_artista AS id_artista,
    artista.nome_artista AS nome_do_artista,
    musica.fk_genero AS id_genero,
    genero.nome_genero AS genero_musica,
    cifra_musica as cifra,
FROM
    musica_favorita
        JOIN
    musica ON musica.id_musica = musica_favorita.fk_musica
        JOIN
    artista ON musica.fk_artista = artista.id_artista
        JOIN
    genero ON musica.fk_genero = genero.id_genero
GROUP BY fk_musica WHERE id_usuario = ${usuario};

    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

module.exports = {
    favoritas
};