var database = require("../database/config")

function pesquisar(pesquisa) {
   // console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function entrar(): ", email, senha)
    var instrucao = `
    SELECT 
    nome_musica AS nome_da_musica,
    musica.fk_artista AS id_artista,
    artista.nome_artista AS nome_do_artista,
    musica.fk_genero AS id_genero,
    genero.nome_genero AS genero_musica,
    cifra_musica AS cifra
FROM
    musica
        JOIN
    genero ON musica.fk_genero = genero.id_genero
        JOIN
    artista ON musica.fk_artista = artista.id_artista
WHERE
    musica.nome_musica = '${pesquisa}';
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

module.exports = {
    pesquisar
};

