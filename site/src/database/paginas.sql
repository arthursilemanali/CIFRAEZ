CREATE DATABASE CIFRAEZ;
USE CIFRAEZ;

CREATE TABLE usuario (
id_usuario INT PRIMARY KEY auto_increment,
nome_usuario VARCHAR(45) NOT NULL,
email_usuario VARCHAR(200) NOT NULL,
senha_usuario VARCHAR(20) NOT NULL,
genero_usuario_fav VARCHAR(45) NOT NULL
);

CREATE TABLE artista (
id_artista INT PRIMARY KEY AUTO_INCREMENT,
nome_artista VARCHAR(45)
);

CREATE TABLE genero (
id_genero INT PRIMARY KEY auto_increment,
nome_genero VARCHAR(45)
);

INSERT INTO artista VALUES 
(null, 'Limp Biskit'),
(null, 'Chico Buarque');

INSERT INTO genero VALUES 
(null, 'Rock'),
(null, 'MPB');

INSERT INTO usuario VALUES 
(null, 'teste', 'teste@teste.teste', 'teste123', 'Rock'),
(null, 'teste2', 'teste2@teste.teste', 'teste123', 'MPB');


CREATE TABLE musica (
id_musica int primary key auto_increment,
nome_musica VARCHAR(45) NOT NULL,
fk_genero int,
constraint fk_genero_musica foreign key (fk_genero)
references genero (id_genero),
fk_artista int,
constraint fk_artista_musica foreign key (fk_artista)
references artista (id_artista)
);

INSERT INTO musica values 
(null, 'Behind blue eyes', '100', '100'),
(null, 'João e Maria', '101', '101');

CREATE TABLE musica_favorita (
fk_usuario int,
constraint fk_usuario foreign key (fk_usuario)
references usuario (id_usuario),
fk_musica int,
constraint fk_musica_fav foreign key (fk_musica)
references musica (id_musica),
fk_artista int,
constraint fk_artista_fav foreign key (fk_artista)
references artista (id_artista),
constraint pk_composta_fav primary (fk_usuario, fk_musica, fk_artista)
);

SELECT 
    fk_musica AS musica,
    nome_musica AS nome_da_musica,
    COUNT(fk_musica) AS votos
FROM
    musica_favorita
        JOIN
    musica ON musica.id_musica = musica_favorita.fk_musica
GROUP BY fk_musica
ORDER BY fk_musica DESC
LIMIT 10;