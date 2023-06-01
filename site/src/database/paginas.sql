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
(null, 'Chico Buarque'),
(null, 'João Gilberto'),
(null, 'Djavan'),
(null, 'Queen'),
(null, 'Legião Urbana'),
(null, 'Raimundos'),
(null, 'Raul Seixas'),
(null, 'Vitor e Leo'),
(null, 'Leonardo'),
(null, 'Milionário e José Rico'),
(null, 'Cartola'),
(null, 'Adoniran Barbosa'),
(null, 'The Beatles'),
(null, 'Led Zeppelin'),
(null, 'Black Sabbath'),
(null, 'Pink Floyd'),
(null, 'Pearl Jam'),
(null, 'Kiss'),
(null, 'The Who'),
(null, 'Red Hot Chilli Peppers'),
(null, 'Eagles');

INSERT INTO genero VALUES 
(null, 'Rock'),
(null, 'MPB'),
(null, 'Samba'),
(null, 'Sertanejo');

INSERT INTO usuario VALUES 
(null, 'Arthur', 'arthur@email.com', '123', 'Rock'),
(null, 'Matheus', 'matheus@email.com', '123', 'MPB');


CREATE TABLE musica (
id_musica int primary key auto_increment,
nome_musica VARCHAR(45) NOT NULL,
cifra_musica LONGTEXT,
fk_genero int,
constraint fk_genero_musica foreign key (fk_genero)
references genero (id_genero),
fk_artista int,
constraint fk_artista_musica foreign key (fk_artista)
references artista (id_artista)
);

select * from musica;

INSERT INTO musica values 
(null, 'Behind blue eyes', "Intro: <b>Em</b>  <b>G6</b>  <b>D5(9)</b>  <b>C9</b>  <b>A5(9)</b>
   <b>Em</b>                <b>G6</b>
E|<u>----------</u>0<u>-----------------</u>0<u>------------</u>
B|<u>------------</u>0<u>------------------</u>3<u>---------</u>
G|<u>-------</u>0<u>------</u>0<u>-----------</u>0<u>------</u>0<u>-------</u>
D|<u>-----</u>2<u>----------</u>0<u>-------</u>0<u>----------</u>0<u>-----</u>
A|<u>---</u>2<u>------------------</u>2<u>------------------</u>
E|<u>-</u>0<u>----------------</u>3<u>----------------------</u></span></span>
   <b>D5(9)</b>
E|<u>--------</u>0<u>---------------</u>0<u>----------------</u>
B|<u>-----</u>3<u>----</u>3<u>---</u>3<u>------</u>3<u>----</u>3<u>---</u>3<u>----------</u>
G|<u>---</u>2<u>--</u>2<u>-----</u>2<u>------</u>2<u>--</u>2<u>-----</u>2<u>------------</u>
D|<u>-</u>0<u>--------------</u>0<u>------------------------</u>
A|<u>-----------------------------------------</u>
E|<u>-----------------------------------------</u></span></span>
   <b>C9</b>
E|<u>---------</u>0<u>---------------</u>0<u>---------------</u>
B|<u>-----</u>3<u>-----</u>3<u>---</u>3<u>-----</u>3<u>-----</u>3<u>---</u>3<u>---------</u>
G|<u>---</u>0<u>---</u>0<u>-----</u>0<u>-----</u>0<u>---</u>0<u>-----</u>0<u>-----------</u>
D|<u>-----------------------------------------</u>
A|<u>-</u>3<u>--------------</u>3<u>------------------------</u>
E|<u>-----------------------------------------</u></span></span>
   <b>A5(9)</b>
E|<u>--------</u>0<u>----------------</u>0<u>---------------</u>
B|<u>----</u>0<u>-----</u>0<u>---</u>0<u>------</u>0<u>-----</u>0<u>---</u>0<u>---------</u>
G|<u>------</u>2<u>-----</u>2<u>----------</u>2<u>-----</u>2<u>-----------</u>
D|<u>---</u>2<u>---------------</u>2<u>---------------------</u>
A|<u>-</u>0<u>--------------</u>0<u>------------------------</u>
E|<u>-----------------------------------------</u></span></span>

Verso 1:
 <b>Em</b>                     <b>G6</b>              <b>D5(9)</b>
No one knows what it's like, to be the bad man,
           <b>C9</b>         <b>A5(9)</b>
To be the sad man, behind blue eyes
 <b>Em</b>                     <b>G6</b>         <b>D5(9)</b>
No one knows what it's like to be hated,
       <b>C9</b>               <b>A5(9)</b>
To be fated, to telling only lies
Dedilhado das Estrofes:
   <b>Em</b>                <b>G6</b>
E|<u>----------</u>0<u>-----------------</u>0<u>------------</u>
B|<u>------------</u>0<u>------------------</u>3<u>---------</u>
G|<u>-------</u>0<u>------</u>0<u>-----------</u>0<u>------</u>0<u>-------</u>
D|<u>-----</u>2<u>----------</u>0<u>-------</u>0<u>----------</u>0<u>-----</u>
A|<u>---</u>2<u>------------------</u>2<u>------------------</u>
E|<u>-</u>0<u>----------------</u>3<u>----------------------</u></span></span>
   <b>D5(9)</b>
E|<u>--------</u>0<u>---------------</u>0<u>----------------</u>
B|<u>-----</u>3<u>----</u>3<u>---</u>3<u>------</u>3<u>----</u>3<u>---</u>3<u>----------</u>
G|<u>---</u>2<u>--</u>2<u>-----</u>2<u>------</u>2<u>--</u>2<u>-----</u>2<u>------------</u>
D|<u>-</u>0<u>--------------</u>0<u>------------------------</u>
A|<u>-----------------------------------------</u>
E|<u>-----------------------------------------</u></span></span>
   <b>C9</b>
E|<u>---------</u>0<u>---------------</u>0<u>---------------</u>
B|<u>-----</u>3<u>-----</u>3<u>---</u>3<u>-----</u>3<u>-----</u>3<u>-------------</u>
G|<u>---</u>0<u>---</u>0<u>-----</u>0<u>-----</u>0<u>---</u>0<u>------</u>0<u>----------</u>
D|<u>-----------------------------------------</u>
A|<u>-</u>3<u>--------------</u>3<u>------------------------</u>
E|<u>-----------------------------------------</u></span></span>

Refrão:
         <b>C</b>   <b>D</b>                <b>G</b>
But my dreams, they aren't as empty,
       <b>C</b>          <b>D</b>        <b>E</b>  <b>E4</b> <b>E</b> <b>E4</b> <b>E</b>
As my conscience seems to be
        <b>Bm</b>          <b>C9</b>
I have hours, only lonely
            <b>D</b>                       <b>A5(9)</b>
My love is vengeance that's never free

Verso 2:
 <b>Em</b>                     <b>G6</b>                  <b>D5(9)</b>
No one knows what it's like to feel these feelings
        <b>C9</b>              <b>A5(9)</b>
Like I do, and I blame you
 <b>Em</b>                   <b>G6</b>           <b>D5(9)</b>
No one bites back as hard on their anger
            <b>C9</b>                       <b>A5(9)</b>
None of my pain and woe, can show through

Refrão:
         <b>C</b>   <b>D</b>                <b>G</b>
But my dreams, they aren't as empty,
       <b>C</b>          <b>D</b>        <b>E</b>  <b>E4</b> <b>E</b> <b>E4</b> <b>E</b>
As my conscience seems to be
        <b>Bm</b>          <b>C9</b>
I have hours, only lonely
            <b>D</b>                       <b>A5(9)</b>
My love is vengeance that's never free

( <b>Em</b>  <b>G6</b>  <b>D5(9)</b>  <b>C9</b>  <b>A5(9)</b> )

Verso 3:
 <b>Em</b>                    <b>G</b>               <b>D5(9)</b>
No one knows what its like, to be mistreated,
         <b>C9</b>        <b>A5(9)</b>
To be defeated, behind blue eyes
 <b>Em</b>                 <b>G</b>                 <b>D5(9)</b>
No one know how to say, that they're sorry
           <b>C9</b>                <b>A5(9)</b>
And don't worry, I'm not telling lies

Refrão:
         <b>C</b>   <b>D</b>                <b>G</b>
But my dreams, they aren't as empty,
       <b>C</b>          <b>D</b>        <b>E</b>  <b>E4</b> <b>E</b> <b>E4</b> <b>E</b>
As my conscience seems to be
        <b>Bm</b>          <b>C9</b>
I have hours, only lonely
            <b>D</b>                       <b>A5(9)</b>
My love is vengeance that's never free

Final:
 <b>Em</b>                     <b>G6</b>              <b>D5(9)</b>
No one knows what it's like, to be the bad man,
           <b>C9</b>         <b>A5(9)</b>
To be the sad man, behind blue eyes", '1', '1'),


(null, 'João e Maria', '[Intro] <b>Am9</b>  <b>F6</b>  <b>Am</b>  <b>F9</b>
        <b>Am</b>  <b>F6</b>  <b>Am</b>  <b>F9</b>  <b>Am</b>

<span class="tablatura">[Tab - Intro]

Parte 1 de 4
      <b>Am9</b>        <b>F6</b>            <b>Am</b>
<span class="cnt">E|<u>----</u>5<u>-------------------------</u>0<u>---------</u>0<u>-</u>|
B|<u>----</u>0<u>---</u>5<u>------</u>3<u>---</u>1<u>-</u>0h1p0<u>------</u>1<u>---------</u>|
G|<u>----</u>5<u>-----</u>5<u>----</u>2<u>-----------</u>2<u>------</u>2<u>---</u>2<u>---</u>|
D|<u>-</u>7<u>--</u>7<u>-</u>7<u>-----</u>7<u>--</u>0<u>-</u>0<u>------------------</u>2<u>-----</u>|
A|<u>----</u>0<u>-------------------------</u>0<u>-----------</u>|
E|<u>---------------</u>1<u>--------------------------</u>|</span></span>

<span class="tablatura">Parte 2 de 4
   <b>F9</b>              <b>Am</b>         <b>F6</b>
<span class="cnt">E|<u>-</u>3<u>-</u>1<u>-</u>0h1p0<u>--------</u>5<u>-------------------</u>0<u>-</u>1<u>-</u>|
B|<u>-</u>1<u>--------</u>3<u>-</u>1<u>-</u>0<u>------</u>5<u>------</u>3<u>---</u>0<u>-</u>1<u>-</u>3<u>-----</u>|
G|<u>-</u>2<u>---------------------</u>5<u>----</u>2<u>-------------</u>|
D|<u>-</u>3<u>-----------------</u>7<u>-----</u>7<u>--</u>0<u>-</u>0<u>-----------</u>|
A|<u>-----------------</u>0<u>------------------------</u>|
E|<u>----------------------------</u>1<u>-------------</u>|</span></span>

<span class="tablatura">Parte 3 de 4
   <b>Am</b>               <b>F9</b>
<span class="cnt">E|<u>-</u>0h1p0<u>---------</u>0<u>--</u>3<u>-</u>1<u>-</u>0h1p0<u>---------------</u>|
B|<u>-------</u>1<u>---</u>0<u>-</u>1<u>----</u>1<u>---------</u>3<u>-</u>1<u>-</u>0<u>---------</u>|
G|<u>---------</u>2<u>--------</u>2<u>-----------------------</u>|
D|<u>------------------</u>3<u>-----------------------</u>|
A|<u>-</u>0<u>----------------------------------------</u>|
E|<u>------------------------------------------</u>|</span></span>

<span class="tablatura">Parte 4 de 4
   <b>Am</b>
<span class="cnt">E|<u>-------------</u>5<u>----------------------------</u>|
B|<u>-------</u>0<u>-</u>1/5<u>------------------------------</u>|
G|<u>-</u>2<u>-</u>1<u>-</u>2<u>------------------------------------</u>|
D|<u>------------------------------------------</u>|
A|<u>-</u>0<u>----------------------------------------</u>|
E|<u>------------------------------------------</u>|</span></span>

[Primeira Parte]

<span class="tablatura">[Tab - Primeira Parte]

[Parte 1 de 5]
   <b>Dm7</b>          <b>Bm7(5-)</b>     <b>C</b>                       
<span class="cnt">E|<u>-----</u>1<u>---</u>1<u>--------------------</u>0<u>-----------</u>|
B|<u>-----</u>1<u>---</u>1<u>--------</u>3<u>---</u>3<u>-------</u>1<u>-----------</u>|
G|<u>---</u>2<u>---</u>2<u>----------</u>2<u>---</u>2<u>-----</u>0<u>-------------</u>|
D|<u>-</u>0<u>---------</u>0<u>----</u>3<u>---</u>3<u>----------</u>2<u>---</u>2<u>------</u>|
A|<u>--------------</u>2<u>---------</u>2<u>-</u>3<u>---------------</u>|
E|<u>---------------------------------</u>0<u>--------</u>|</span></span>

<span class="tablatura">Parte 2 de 5
   <b>Am</b>           <b>Dm7</b>         <b>G7</b>                                         
<span class="cnt">E|<u>-----</u>0<u>---</u>0<u>--------</u>1<u>---</u>1<u>-------</u>1<u>---</u>1<u>-------</u>|
B|<u>-----</u>1<u>---</u>1<u>--------</u>1<u>---</u>1<u>-------</u>0<u>---</u>0<u>-------</u>|
G|<u>---</u>2<u>---</u>2<u>--------</u>2<u>---</u>2<u>-------</u>0<u>---</u>0<u>---------</u>|
D|<u>--------------</u>0<u>---------</u>0<u>-----------------</u>|
A|<u>-</u>0<u>---------</u>0<u>------------------------------</u>|
E|<u>--------------------------</u>3<u>---------</u>3<u>-----</u>|</span></span>

<span class="tablatura">Parte 3 de 5
   <b>C</b>                        <b>B7</b>         <b>B7/F#</b>                
<span class="cnt">E|<u>----</u>0<u>---</u>0<u>-------</u>0<u>-------------</u>2<u>---</u>2<u>-------</u>|
B|<u>----</u>1<u>---</u>1<u>-------</u>1<u>-------------</u>4<u>---</u>4<u>-------</u>|
G|<u>--</u>0<u>---</u>0<u>---</u>0<u>---</u>0<u>---</u>0<u>---------</u>2<u>---</u>2<u>---------</u>|
D|<u>--------------------</u>2p0<u>-------------------</u>|
A|<u>-</u>3<u>----------</u>3<u>-----------</u>3<u>-</u>2<u>---------</u>2<u>-----</u>|
E|<u>--------------------------------------</u>2<u>---</u>|</span></span>

<span class="tablatura">Parte 4 de 5
             <b>Em</b>                <b>C</b>                                
<span class="cnt">E|<u>---</u>2<u>---</u>2<u>-------------------------</u>0<u>---</u>0<u>----</u>|
B|<u>---</u>4<u>---</u>4<u>-------</u>0<u>---</u>0<u>-------------</u>1<u>---</u>1<u>----</u>|
G|<u>-</u>2<u>---</u>2<u>---------</u>0<u>---</u>0<u>-----------</u>0<u>---</u>0<u>------</u>|
D|<u>-------------</u>2<u>---</u>2<u>-------</u>2<u>-</u>0<u>--------------</u>|
A|<u>---------</u>2<u>-----------</u>2<u>-------</u>3<u>------------</u>|
E|<u>-----------</u>0<u>-----------</u>0<u>------------------</u>|</span></span>

<span class="tablatura">Parte 5 de 5
       <b>F7</b>          <b>E7</b>              <b>Am</b>                                    
<span class="cnt">E|<u>-------------</u>1<u>-------</u>0<u>-------------</u>0<u>------</u>|
B|<u>---------</u>1<u>---</u>1<u>-------</u>3<u>-------------</u>1<u>------</u>|
G|<u>---------</u>2<u>---------</u>1<u>---------------</u>0<u>------</u>|
D|<u>-------</u>1<u>---</u>1<u>-----------</u>3<u>-</u>2<u>-</u>0<u>--------------</u>|
A|<u>-----------------------------</u>3<u>-</u>2<u>-</u>0<u>----</u>2<u>-</u>3<u>-</u>|
E|<u>-</u>3<u>-</u>2<u>-</u>1<u>---------</u>1<u>-</u>0<u>------------------------</u>|</span></span>

                  <b>Dm7</b>
Agora eu era o herói
           <b>Bm7(5-)</b>           <b>C</b>  <b>Am</b>
E o meu cavalo só falava inglês
               <b>Dm7</b>
A noiva do cowboy
       <b>G7</b>                  <b>C</b>
Era você além das outras três
                  <b>B7</b>
Eu enfrentava os batalhões
<b>B7/F#</b>               <b>Em</b>
      Os alemães e seus canhões
                  <b>C</b>
Guardava o meu bodoque e ensaiava
   <b>F7</b>               <b>E7</b>  <b>Am</b>
O rock para as matinês

[Segunda Parte]

<span class="tablatura">[Tab - Segunda Parte]

Parte 1 de 5
   <b>Dm7</b>          <b>Bm7(5-)</b>     <b>C</b>                       
<span class="cnt">E|<u>-----</u>1<u>---</u>1<u>--------------------</u>0<u>-----------</u>|
B|<u>-----</u>1<u>---</u>1<u>--------</u>3<u>---</u>3<u>-------</u>1<u>-----------</u>|
G|<u>---</u>2<u>---</u>2<u>----------</u>2<u>---</u>2<u>-----</u>0<u>-------------</u>|
D|<u>-</u>0<u>---------</u>0<u>----</u>3<u>---</u>3<u>----------</u>2<u>---</u>2<u>------</u>|
A|<u>--------------</u>2<u>---------</u>2<u>-</u>3<u>---------------</u>|
E|<u>---------------------------------</u>0<u>--------</u>|</span></span>

<span class="tablatura">Parte 2 de 5
   <b>Am</b>           <b>Dm7</b>         <b>Bm7(5-)</b>                                         
<span class="cnt">E|<u>-----</u>0<u>---</u>0<u>--------</u>1<u>---</u>1<u>-------------------</u>|
B|<u>-----</u>1<u>---</u>1<u>--------</u>1<u>---</u>1<u>-------</u>3<u>---</u>3<u>-------</u>|
G|<u>---</u>2<u>---</u>2<u>--------</u>2<u>---</u>2<u>---------</u>2<u>---</u>2<u>-------</u>|
D|<u>--------------</u>0<u>---------</u>0<u>---</u>3<u>---</u>3<u>---------</u>|
A|<u>-</u>0<u>---------</u>0<u>--------------</u>2<u>---------</u>2<u>-----</u>|
E|<u>------------------------------------------</u>|</span></span>

<span class="tablatura">Parte 3 de 5
   <b>Gm6/Bb</b>       <b>A7</b>  <b>G/B</b>  <b>A7/C#</b>  <b>Dm7</b>
<span class="cnt">E|<u>---------------------------------</u>1<u>---</u>1<u>----</u>|
B|<u>-----</u>3<u>---</u>3<u>----</u>2<u>----</u>3<u>----</u>5<u>--------</u>1<u>---</u>1<u>----</u>|
G|<u>-----</u>0<u>---</u>0<u>----</u>0<u>----</u>0<u>----</u>0<u>-</u>0<u>----</u>2<u>---</u>2<u>------</u>|
D|<u>---</u>2<u>---</u>2<u>---</u>2<u>----</u>2<u>----</u>0<u>-------</u>0<u>---------</u>0<u>--</u>|
A|<u>-</u>1<u>------------</u>0<u>----</u>2<u>----</u>4<u>-----------------</u>|
E|<u>------------------------------------------</u>|</span></span>

<span class="tablatura">Parte 4 de 5
   <b>G7</b>          <b>C</b>             <b>F7</b> 
<span class="cnt">E|<u>-----</u>1<u>---</u>1<u>-------</u>0<u>---</u>0<u>-------------</u>1<u>------</u>|
B|<u>-----</u>0<u>---</u>0<u>-------</u>1<u>---</u>1<u>---------</u>1<u>---</u>1<u>------</u>|
G|<u>---</u>0<u>---</u>0<u>-------</u>0<u>---</u>0<u>-----------</u>2<u>----------</u>|
D|<u>-----------------------------</u>1<u>---</u>1<u>--------</u>|
A|<u>-------------</u>3<u>----------------------------</u>|
E|<u>-</u>3<u>---------</u>3<u>-----------</u>3<u>-</u>2<u>-</u>1<u>----------</u>1<u>---</u>|</span></span>

<span class="tablatura">Parte 5 de 5
   <b>Bb7M</b>        <b>E7</b>          <b>Am9</b>    
<span class="cnt">E|<u>---------</u>1<u>-------------------</u>0<u>---</u>0<u>--------</u>|
B|<u>-----</u>3<u>---</u>3<u>-------</u>3<u>---</u>3<u>-------</u>1<u>---</u>1<u>--------</u>|
G|<u>-----</u>2<u>-----------</u>1<u>---</u>1<u>-----</u>4<u>---</u>4<u>----------</u>|
D|<u>---</u>3<u>---</u>3<u>-------</u>0<u>---</u>0<u>---------------</u>2<u>------</u>|
A|<u>-</u>1<u>---------</u>1<u>-------------</u>0<u>----------------</u>|
E|<u>-------------</u>0<u>---------</u>0<u>------------------</u>|</span></span>

<span class="tablatura"><span class="cnt">E|<u>-----</u>0<u>---</u>0<u>--------------------------------</u>|
B|<u>-----</u>1<u>---</u>1<u>--------------------------------</u>|
G|<u>---</u>4<u>---</u>4<u>----------------------------------</u>|
D|<u>-----------</u>2<u>------------------------------</u>|
A|<u>-</u>0<u>----------------------------------------</u>|
E|<u>------------------------------------------</u>|</span></span>

                <b>Dm7</b>
Agora eu era o rei
         <b>Bm7(5-)</b>          <b>C</b>   <b>Am</b>
Era o bedel e era também juiz
              <b>Dm7</b>            <b>Bm7(5-)</b>
E pela minha lei a gente era obrigado
         <b>Gm6/Bb</b>  
A ser feliz
<b>A7</b>  <b>G/B</b>    <b>A7/C#</b>  <b>Dm7</b>
    E     vo_____cê
           <b>G7</b>
Era a princesa
               <b>C</b>
Que eu fiz coroar
           <b>F7</b>              <b>Bb7M</b>
E era tão linda de se admirar
            <b>E7</b>            <b>Am9</b>
Que andava nua pelo meu país

[Refrão]

<span class="tablatura">[Tab - Refrão - Primeira Estrofe]

Parte 1 de 3
   <b>Am9</b>         <b>E/G#</b>       <b>A/G</b>
<span class="cnt">E|<u>-----</u>0<u>---</u>0<u>--------------------------------</u>|
B|<u>-----</u>1<u>---</u>1<u>-------</u>5<u>---</u>5<u>------</u>2<u>---</u>2<u>---------</u>|
G|<u>---</u>4<u>---</u>4<u>---------</u>4<u>---</u>4<u>------</u>2<u>---</u>2<u>---------</u>|
D|<u>---------------</u>2<u>---</u>2<u>------</u>2<u>---</u>2<u>-----------</u>|
A|<u>-</u>0<u>---------</u>0<u>------------------------------</u>|
E|<u>-------------</u>4<u>---------</u>4<u>-</u>3<u>--------</u>3<u>-</u>2<u>-----</u>|</span></span>

<span class="tablatura">Parte 2 de 3
   <b>Dm/F</b>           <b>Bm7(5-)</b>     <b>C</b>    
<span class="cnt">E|<u>-----</u>1<u>--------------</u>1<u>---</u>1<u>-------</u>0<u>---------</u>|
B|<u>-----</u>3<u>-</u>3<u>------------</u>3<u>---</u>3<u>-------</u>1<u>---------</u>|
G|<u>---</u>2<u>--------------</u>2<u>---</u>2<u>-------</u>0<u>---</u>0<u>-------</u>|
D|<u>----------</u>2p0<u>-----------------------</u>2p0<u>---</u>|
A|<u>--------------</u>3<u>-</u>2<u>---------</u>2<u>-</u>3<u>-----------</u>3<u>-</u>|
E|<u>-</u>1<u>----------------------------------------</u>|</span></span>

<span class="tablatura">Parte 3 de 3
   <b>Bb7M</b>        <b>E7/B</b>
<span class="cnt">E|<u>------------------------------------------</u>|
B|<u>-----</u>3<u>---</u>3<u>-------</u>3<u>------------------------</u>|
G|<u>-----</u>2<u>---</u>2<u>-------</u>1<u>------------------------</u>|
D|<u>---</u>3<u>---</u>3<u>-------</u>1<u>---</u>1<u>---</u>1<u>------------------</u>|
A|<u>-</u>1<u>---------</u>1<u>-</u>2<u>----------------------------</u>|
E|<u>---------------------</u>0<u>--------------------</u>|</span></span>

               <b>E/G#</b>
Não, não fuja não
            <b>A/G</b>
Finja que agora
                   <b>Dm/F</b>
Eu era o seu brinquedo
<b>Bm7(5-)</b>                  <b>C</b>
       Eu era o seu pião
<b>Bb7M</b>              <b>E7/B</b>
O seu bicho preferido

<span class="tablatura">[Tab - Refrão - Segunda Estrofe]

[Parte 1 de 3]
   <b>Am9</b>         <b>E7/B</b>        <b>A7/C#</b>
<span class="cnt">E|<u>-----</u>0<u>---</u>0<u>-------</u>0<u>---</u>0<u>-------</u>5<u>---</u>5<u>--------</u>|
B|<u>-----</u>1<u>---</u>1<u>-------</u>3<u>---</u>3<u>-------</u>5<u>---</u>5<u>--------</u>|
G|<u>---</u>4<u>---</u>4<u>-------</u>1<u>---</u>1<u>-------</u>0<u>---</u>0<u>----------</u>|
D|<u>------------------------------------------</u>|
A|<u>-</u>0<u>---------</u>0<u>-</u>2<u>---------</u>2<u>-</u>4<u>---------</u>4<u>------</u>|
E|<u>------------------------------------------</u>|</span></span>

<span class="tablatura">Parte 2 de 3
   <b>Dm7</b>            <b>Bm7(5-)</b>     <b>C</b>    <b>Am7</b> <b>Am7/G</b>                   
<span class="cnt">E|<u>-----</u>1<u>---</u>1<u>---------------------</u>0<u>----------</u>|
B|<u>-----</u>1<u>---</u>1<u>---------</u>3<u>---</u>3<u>-------</u>1<u>----------</u>|
G|<u>---</u>2<u>---</u>2<u>-----------</u>2<u>---</u>2<u>-------</u>0<u>----------</u>|
D|<u>-</u>0<u>---------------</u>3<u>---</u>3<u>-------------</u>2<u>---</u>2<u>--</u>|
A|<u>-----------</u>0<u>-</u>1<u>-</u>2<u>---------</u>0<u>-</u>2<u>-</u>3<u>---</u>0<u>--------</u>|
E|<u>-------------------------------------</u>3<u>----</u>|</span></span>

<span class="tablatura">Parte 3 de 3
  <b>F#m7(5-)</b> <b>F7M</b>  <b>E7</b> <b>Am9</b>
<span class="cnt">E|<u>---------------------</u>0<u>---</u>0<u>-------</u>0<u>----</u>0<u>---</u>|
B|<u>---</u>1<u>-----</u>1<u>----</u>3<u>------</u>1<u>---</u>1<u>-------</u>1<u>----</u>1<u>---</u>|
G|<u>---</u>2<u>-----</u>2<u>----</u>1<u>----</u>4<u>---</u>4<u>-------</u>4<u>----</u>4<u>-----</u>|
D|<u>---</u>2<u>-----</u>2<u>----</u>0<u>------------</u>2<u>--------------</u>|
A|<u>-----------------</u>0<u>-----------</u>0<u>----------</u>0<u>-</u>|
E|<u>-</u>2<u>-----</u>1<u>----</u>0<u>-----------------------------</u>|</span></span>

 <b>Am</b>           <b>E7/B</b>
Vem, me dê a mão
          <b>A7/C#</b>           
A gente agora
              <b>Dm7</b>
Já não tinha medo
<b>Bm7(5-)</b>                 <b>C</b>
        No tempo da maldade
   <b>Am7</b>      <b>Am7/G</b>   <b>F#m7(5-)</b>  
Acho que a gente   nem
<b>F7M</b>     <b>E7</b>    <b>Am9</b>
    Tinha nascido

[Terceira Parte]

<span class="tablatura">[Tab - Terceira Parte]

[Parte 1 de 5]
   <b>Dm7</b>          <b>Bm7(5-)</b>     <b>C</b>                       
<span class="cnt">E|<u>-----</u>1<u>---</u>1<u>--------------------</u>0<u>-----------</u>|
B|<u>-----</u>1<u>---</u>1<u>--------</u>3<u>---</u>3<u>-------</u>1<u>-----------</u>|
G|<u>---</u>2<u>---</u>2<u>----------</u>2<u>---</u>2<u>-----</u>0<u>-------------</u>|
D|<u>-</u>0<u>---------</u>0<u>----</u>3<u>---</u>3<u>----------</u>2<u>---</u>2<u>------</u>|
A|<u>--------------</u>2<u>---------</u>2<u>-</u>3<u>---------------</u>|
E|<u>---------------------------------</u>0<u>--------</u>|</span></span>

<span class="tablatura">Parte 2 de 5
   <b>Am</b>           <b>Dm7</b>         <b>Bm7(5-)</b>                                         
<span class="cnt">E|<u>-----</u>0<u>---</u>0<u>--------</u>1<u>---</u>1<u>-------------------</u>|
B|<u>-----</u>1<u>---</u>1<u>--------</u>1<u>---</u>1<u>-------</u>3<u>---</u>3<u>-------</u>|
G|<u>---</u>2<u>---</u>2<u>--------</u>2<u>---</u>2<u>---------</u>2<u>---</u>2<u>-------</u>|
D|<u>--------------</u>0<u>---------</u>0<u>---</u>3<u>---</u>3<u>---------</u>|
A|<u>-</u>0<u>---------</u>0<u>--------------</u>2<u>---------</u>2<u>-----</u>|
E|<u>------------------------------------------</u>|</span></span>

<span class="tablatura">Parte 3 de 5
   <b>Gm6/Bb</b>       <b>A7</b>  <b>G/B</b>  <b>A/C#</b>  <b>Dm7</b>
<span class="cnt">E|<u>---------------------------------</u>1<u>---</u>1<u>----</u>|
B|<u>-----</u>3<u>---</u>3<u>----</u>2<u>----</u>3<u>----</u>5<u>--------</u>1<u>---</u>1<u>----</u>|
G|<u>-----</u>0<u>---</u>0<u>----</u>0<u>----</u>0<u>----</u>0<u>-</u>0<u>----</u>2<u>---</u>2<u>------</u>|
D|<u>---</u>2<u>---</u>2<u>---</u>2<u>----</u>2<u>----</u>0<u>-------</u>0<u>---------</u>0<u>--</u>|
A|<u>-</u>1<u>------------</u>0<u>----</u>2<u>----</u>4<u>-----------------</u>|
E|<u>------------------------------------------</u>|</span></span>

<span class="tablatura">Parte 4 de 5
   <b>G7</b>          <b>C</b>             <b>F7</b> 
<span class="cnt">E|<u>-----</u>1<u>---</u>1<u>-------</u>0<u>---</u>0<u>-------------</u>1<u>------</u>|
B|<u>-----</u>0<u>---</u>0<u>-------</u>1<u>---</u>1<u>---------</u>1<u>---</u>1<u>------</u>|
G|<u>---</u>0<u>---</u>0<u>-------</u>0<u>---</u>0<u>-----------</u>2<u>----------</u>|
D|<u>-----------------------------</u>1<u>---</u>1<u>--------</u>|
A|<u>-------------</u>3<u>----------------------------</u>|
E|<u>-</u>3<u>---------</u>3<u>-----------</u>3<u>-</u>2<u>-</u>1<u>----------</u>1<u>---</u>|</span></span>

<span class="tablatura">Parte 5 de 5
   <b>Bb7M</b>        <b>E7</b>          <b>Am9</b>    
<span class="cnt">E|<u>---------</u>1<u>-------------------</u>0<u>---</u>0<u>--------</u>|
B|<u>-----</u>3<u>---</u>3<u>-------</u>3<u>---</u>3<u>-------</u>1<u>---</u>1<u>--------</u>|
G|<u>-----</u>2<u>-----------</u>1<u>---</u>1<u>-----</u>4<u>---</u>4<u>----------</u>|
D|<u>---</u>3<u>---</u>3<u>-------</u>0<u>---</u>0<u>----------------------</u>|
A|<u>-</u>1<u>---------</u>1<u>-------------</u>0<u>----------------</u>|
E|<u>-------------</u>0<u>---------</u>0<u>-------------</u>0<u>----</u>|</span></span>

             <b>Dm7</b>
Agora era fatal
              <b>Bm7(5-)</b>               
Que o faz-de-conta
              <b>C</b>  <b>Am</b>
Terminasse assim
                  <b>Dm7</b>
Pra lá desse quintal
         <b>Bm7(5-)</b>                <b>Gm6/Bb</b>
Era uma noite que não tem mais fim
<b>A7</b>  <b>G/B</b>   <b>A7/C#</b>  <b>Dm7</b>         <b>G7</b>
   Pois  vo_____cê sumiu no mundo
           <b>C</b>
Sem me avisar
           <b>F7</b>
E agora eu era
                  <b>Bb7M</b>
Um louco a perguntar
               <b>E7</b>
O que é que a vida vai
          <b>Am9</b>  
Fazer de mim

[Final] <b>Am9</b>  <b>Am/G</b>  <b>Am9</b>  <b>F7M</b>  <b>Am9</b>

<span class="tablatura">[Tab - Final]

   <b>F7M</b>         <b>Am9</b>          <b>F7M</b>         <b>Am9</b>
<span class="cnt">E|<u>-----</u>0<u>---</u>0<u>-------</u>0<u>---</u>0<u>--------</u>0<u>---</u>0<u>---</u>0<u>---</u>|
B|<u>-----</u>1<u>---</u>1<u>-------</u>1<u>---</u>1<u>--------</u>1<u>---</u>1<u>---</u>1<u>---</u>|
G|<u>---</u>2<u>---</u>2<u>-------</u>4<u>---</u>4<u>--------</u>2<u>---</u>2<u>-----</u>4<u>---</u>|
D|<u>--------------------------------------</u>2<u>---</u>|
A|<u>-------------</u>0<u>------------------------</u>0<u>---</u>|
E|<u>-</u>1<u>---------</u>0<u>------------</u>0<u>-</u>1<u>---------</u>0<u>-----</u>|</span></span>', '2', '2');

insert into musica values
(null, 'Bohemian Rhapsody', "[Primeira Parte]

<b>F#m</b>
Is this the real life?
<b>B7</b>
Is this just fantasy?
 <b>E</b>
Caught in a landslide
      <b>A</b>
No escape from reality
<b>F#m</b>
Open your eyes
     <b>A</b>                    <b>D</b>
Look up to the skies and see
<b>Bm</b>
I'm just a poor boy
<b>E</b>
I need no sympathy
        <b>Bb</b>        <b>A</b>    <b>G#</b>    <b>A</b>
Because I'm easy come, easy go
 <b>Bb</b>     <b>A</b>     <b>G#</b>     <b>A</b>
Little high, little low
<b>D</b>           <b>A</b>
Anyway the wind blows
 <b>B7</b>             <b>E</b>
Doesn't really matter to me

[Segunda Parte]

    <b>A</b>              <b>F#m</b>
To me… Mama, just killed a man
       <b>Bm</b>
Put a gun against his head
                             <b>E</b>
Pulled my trigger, now he's dead
 <b>A</b>              <b>F#m</b>
Mama, life had just begun
     <b>Bm</b>
But now I've gone 
                  <b>E</b>
And thrown it all away

[Terceira Parte]

 <b>D</b>    <b>Bm</b>
Mama! Ooh!
        <b>Em</b>
Didn't mean to make you cry
   <b>A</b>
If I'm not back again 
             <b>D</b>
This time tomorrow
      <b>A</b>         <b>Bm</b>
Carry on, carry on
       <b>Gm</b>             <b>D</b>
As if nothing really matters

[Quarta Parte]

<b>A</b>               <b>F#m</b>
  Too late, my time has come
        <b>Bm</b>
Sends shivers down my spine
                       <b>E</b>
Body's aching all the time
 <b>A</b>                      <b>F#m</b>
Goodbye everybody I've got to go
       <b>Bm</b>
Gotta leave you all behind
       <b>E</b>
And face the truth
 <b>D</b>    <b>Bm</b>   <b>Em</b>
Mama! Ooh! I don't wanna die
   <b>A</b>
I sometimes wish 
                       <b>D</b>
I'd never been born at all

( <b>Bm</b>  <b>Em</b>  <b>A</b>  <b>D</b>  <b>Bm</b>  <b>Em</b>  <b>C</b> )

[Quinta Parte]

<b>G#</b>
   I see a little silhouetto of a man

Scaramouche! Scaramouche!

Will you do the fandango?
  <b>C</b>              <b>G</b>
Thunderbolt and lightning
 <b>F#</b>          <b>Eb7</b>        <b>G#</b>
Very, very frightening me!

Galileo! Galileo! Galileo! Galileo!

Galileo, Figaro! Magnifico!

[Sexta Parte]

<b>Bb</b>   <b>A</b>      <b>G#</b>   <b>A</b>
I'm just a poor boy 
     <b>Bb</b>  <b>A</b>    <b>G#</b>    <b>A</b>
And no__body loves me
 <b>D</b>
He's just a poor boy 

From a poor family
  <b>G</b>            <b>D</b>
Spare him his life
           <b>E</b>        <b>A</b>
From this monstrosity

[Sétima Parte]

<b>Bb</b>    <b>A</b>    <b>G#</b>    <b>A</b>
Easy come, easy go

 <b>Bb</b>       <b>A</b>      <b>G#</b>
Will you let me go?
 <b>A</b>  <b>D</b>  <b>A</b>
Bismillah!
 <b>D</b>   <b>A</b>
No, we will not let you go!
<b>A</b>  <b>D</b>  <b>A</b>
Bismillah!

We will not let you go!
<b>A</b>  <b>D</b>  <b>A</b>
Bismillah!

We will not let you go! let me go!

We will not let you go! let me go!

Will not let you go! Let you go!
 <b>Bb</b>  <b>G</b>   <b>C#2</b>  <b>C</b>   <b>F</b>   <b>A</b>   <b>D</b>   
No, no, no,  no, no, no, no!

Oh, mamma mia, mamma mia!
                   <b>A</b>
Mamma mia, let me go!
  <b>D</b>    <b>G</b>         <b>C#7</b>
Beelzebub has a devil 
      <b>F#</b>       <b>A</b>       <b>A</b>       <b>A</b>
Put aside for me! For me! For me!

[Oitava Parte]

( <b>D</b>  <b>E</b> )

<b>A</b>
  So you think you can stone me 

And spit in my eye?

So you think you can love me 
                 <b>G</b>
And leave me to die?
<b>Em</b>   <b>A</b>    <b>Em</b>                      <b>A</b>
Oh, baby!   Can't do this to me, baby!
 <b>Em</b>            <b>A</b>
Just gotta get out
 <b>Em</b>             <b>A</b>           <b>D</b>    <b>E</b>
Just gotta get right outta here!

( <b>F</b>  <b>G</b>  <b>A</b>  <b>Bb</b>  <b>G</b>  <b>A</b> )

[Nona Parte]

<b>D</b>  <b>A</b>  <b>Bm</b>  <b>Bb°</b>  <b>Bm</b>   <b>Bb°</b>  <b>Bm</b>  <b>A</b>  <b>D</b>  <b>C#7</b>  
          Oh, yeah! Oh, yeah!

( <b>F#m</b>  <b>G</b>   <b>D</b> )

 <b>Bm</b>             <b>F#m</b>
Nothing really matters
<b>Bm</b>          <b>F#m</b>
Anyone can see
 <b>Bm</b>             <b>Gm</b>
Nothing really matters
 <b>A</b>                         <b>D</b>
Nothing really matters to me

( <b>G</b>  <b>D</b>  <b>D°</b>  <b>A</b>  <b>Am</b>  <b>B7</b>  <b>E</b> )

<b>A</b>    <b>E</b>       <b>G</b>     <b>B7</b>   <b>E</b>
Any way the wind blows", '1', '5');

INSERT INTO musica VALUES

(null, 'Killer Queen', "          <b>Cm</b>
She keeps Moet and Chandon,
<b>A#</b>
 In her pretty cabinet.
<b>Cm</b>
''Let them eat cake'', she says,
<b>A#</b>               <b>D#</b>
 Just like Mary Antoinette.

  <b>D#</b>        <b>A#</b>
A built in remedy,
    <b>D#7</b>           <b>G#</b>
For Kruschev and Kennedy,
    <b>G#m</b>           <b>D#</b>
And any time, an invitation,
<b>A#</b>
 You can't decline.

Bridge 1:

<b>G7</b>          <b>Cm</b>
 Caviar and cigarettes,
<b>A#7</b>              <b>D#</b>
 Well versed in etiquette.
      <b>D7</b>         <b>Gm</b>
Extra-ordinarily nice.

<b>F7</b>
 She's a...

Chorus 1:

<b>A#</b>       <b>Dm</b>
 Killer Queen,
<b>Gm</b>          <b>Dm</b>
 Gunpowder, gelatine,
<b>Gm</b>               <b>A7</b>   <b>Dm</b>
 Dynamite with a laser beam.
<b>G7</b>                       <b>C</b>
 Guaranteed to blow your mind;
<b>A#</b>
 Anytime, ooh...

<b>A7</b>          <b>Dm</b>
 Recommended at the price,
   <b>G7</b>          <b>Cm</b>
In-satiable in appetite;
<b>C</b>  <b>A#</b>
     Wanna try?


Verse 2:

     <b>Cm</b>
To a-void complications,
    <b>A#</b>
She never kept the same address.
<b>Cm</b>
 In conversation,
     <b>A#</b>                <b>D#</b>
She spoke just like a baroness.

<b>D#</b>             <b>A#</b>
 Met a man from China,
     <b>D#7</b>             <b>G#</b>
Went down to Geisha Minah,
       <b>G#m</b>         <b>D#</b>
Then a-gain, inci-dentally,
          <b>A#</b>
If you're that way inclined.

Bridge 1:

<b>A#</b>           <b>G7</b>             <b>Cm</b>
 Perfume came naturally from Paris,
(Naturally),
   <b>A#7</b>                 <b>D#</b>
Be-cause she couldn't care less;
     <b>D7</b>             <b>Gm</b>
Fast-idious and pre-cise.

<b>F7</b>
 She's a...

Chorus 2:


<b>A#</b>       <b>Dm</b>
 Killer Queen,
<b>Gm</b>          <b>Dm</b>
 Gunpowder, gelatine,
<b>Gm</b>               <b>A7</b>   <b>Dm</b>
 Dynamite with a laser beam.
<b>G7</b>                       <b>C</b>
 Guaranteed to blow your mind;
<b>A#</b>
 Anytime, ooh...

Solo:

Bridge 3:

          <b>G7</b>            <b>Cm</b>
Drop of a hat, she's as willing as,
<b>G7</b>            <b>Cm</b>
 Playful as a pussycat.
     <b>A#</b>           <b>D#</b>
Then momentarily out of action,
<b>A#</b>            <b>D#</b>
 Temporarily out if gas;
   <b>D7</b>         <b>Gm</b>    <b>F</b>
To absolutely drive you...

<b>A#</b>   <b>F</b>   <b>A#</b>  <b>F</b>
 Wi-ld, wi-ld;
       <b>F</b>
(She's out to get you!)

<b>F7</b>
 She's a...

Chorus 3:

<b>A#</b>       <b>Dm</b>
 Killer Queen,
<b>Gm</b>          <b>Dm</b>
 Gunpowder, gelatine,
<b>Gm</b>               <b>A7</b>   <b>Dm</b>
 Dynamite with a laser beam.
<b>G7</b>                       <b>C</b>
 Guaranteed to blow your mind;
<b>A#</b>
 Anytime, ooh...

<b>A7</b>          <b>Dm</b>
 Recommended at the price,
   <b>G7</b>          <b>Cm</b>
In-satiable in appetite;
<b>C</b>  <b>A#</b>
     Wanna try?


Outro:

<b>F7</b>  <b>A#</b>  <b>F7</b>  <b>A#</b>,
<b>F7</b>  <b>A#</b>  <b>F7</b>  <b>A#</b>  <b>D#</b>", '1', '5');

INSERT INTO musica VALUES 

(null, 'Love of My Life', "[Intro] <b>D</b>  <b>Bm</b>  <b>Em</b>  <b>A</b>  <b>A7</b>
        <b>D</b>  <b>Bm</b>  <b>G6</b>  <b>D9/F#</b>  <b>E</b>

[Primeira Parte]

 <b>A</b>
Love of my life
 <b>F#m7</b>
You've hurt me
 <b>Bm</b>
You've broken my heart
<b>E</b>
And now you leave me
 <b>A</b>          <b>A7</b>             <b>D</b>
Love of my life can't you see?
  <b>Bm</b>             <b>F#m7</b>
Bring it back, bring it back
 <b>G</b>              <b>D</b>
Don't take it away from me
    <b>G</b>    <b>D</b>   <b>Bm</b>     <b>Em</b>
Because you don't know
  <b>A</b>            <b>D</b>
What it means to me

[Segunda Parte]

 <b>A</b>
Love of my life
 <b>F#m7</b>
Don't leave me
 <b>Bm</b>
You've taken my heart
<b>E</b>
And now desert me
 <b>A</b>          <b>A7</b>             <b>D</b>
Love of my life can't you see
  <b>Bm</b>             <b>F#m7</b>
Bring it back, bring it back
 <b>G</b>                <b>D</b>
Don't take it away from me
 <b>G</b>       <b>D</b>   <b>Bm</b>    <b>Em</b>
Because you don't know
  <b>A</b>               <b>D</b>
What it means to me

[Pré-Refrão]

 <b>Bm</b>
You will remember
  <b>F#m</b>
When this is blown over
<b>G</b>                            <b>D</b>    <b>A</b>
And everything's all by the way
  <b>Bm</b>
When I grow older
<b>F#m</b>                      <b>A</b>
I will be there at your side
 <b>Cº</b>
   To remind you
<b>Em</b>
How I still love you
<b>A</b>             <b>D</b>
I still love you

[Final]

<b>Bm</b>                 <b>F#m</b>
hurry back - hurry back
<b>G</b>                       <b>D</b>
Don't take it away from me
<b>G</b>        <b>D</b>   <b>Bm</b>    <b>Em</b>
Because you don't know
  <b>A</b>               <b>D</b>
What it means to me

 <b>Bm</b>
Love of my life
 <b>F#m</b>             <b>G</b>  <b>Gm</b>  <b>D</b>
Love of my life", '1', '5'),
(null, 'Yesterday', "[Intro] <b>G</b>

[Primeira Parte]

 <b>G</b>
Yesterday
<b>F#m</b>          <b>B7</b>                <b>Em</b> 
    All my troubles seemed so far away
 <b>C</b>      <b>D</b>     
Now it looks as though 
         <b>G</b>        
They're here to stay
    <b>Em</b>   <b>A</b>        <b>C</b>     <b>G</b> 
Oh, I believe in yesterday

 <b>G</b>
Suddenly
<b>F#m</b>          <b>B7</b>            <b>Em</b>
    I'm not half the man I used to be
<b>C</b>             <b>D</b>            <b>G</b>   
  There's a shadow hanging over me
     <b>Em</b>    <b>A</b>        <b>C</b>     <b>G</b>
Oh, yesterday came suddenly

[Segunda Parte]

  <b>F#m</b>  <b>B7</b>  <b>Em</b>     <b>C</b>            <b>Am</b>
Why  she  had to go? I don't know
     <b>D</b>        <b>G</b>
She wouldn't say
<b>F#m</b>  <b>B7</b>   <b>Em</b>         <b>C</b>
I   said something wrong 
       <b>Am</b>       <b>D</b>     <b>G</b>
Now I long for yesterday

[Terceira Parte]

 <b>G</b>
Yesterday
<b>F#m</b>           <b>B7</b>           <b>Em</b>
    Love was such an easy game to play
<b>C</b>        <b>D</b>               <b>G</b>
  Now I need a place to hide away
     <b>Em</b>   <b>A</b>        <b>C</b>     <b>G</b>
 Oh, I believe in yesterday

[Segunda Parte]

  <b>F#m</b>  <b>B7</b>  <b>Em</b>     <b>C</b>            <b>Am</b>
Why  she  had to go? I don't know
     <b>D</b>        <b>G</b>
She wouldn't say
<b>F#m</b>  <b>B7</b>   <b>Em</b>         <b>C</b>
I   said something wrong 
       <b>Am</b>       <b>D</b>     <b>G</b>
Now I long for yesterday

[Terceira Parte]

 <b>G</b>
Yesterday
<b>F#m</b>           <b>B7</b>           <b>Em</b>
    Love was such an easy game to play
<b>C</b>        <b>D</b>               <b>G</b>
  Now I need a place to hide away
    <b>Em</b>   <b>A</b>        <b>C</b>     <b>G</b>
Oh, I believe in yesterday

 <b>Em</b>      <b>A</b>       <b>C</b>   <b>G</b>
Hum hum hum hum hum hum hum", '1', '14'),
(null, 'Hey Jude', "[Primeira Parte]

      <b>F</b>                   <b>C</b>
Hey, Jude, don't make it bad
        <b>C7</b>                   <b>F</b>
Take a sad song and make it better
   <b>Bb</b>                           <b>F</b>
Remember, to let her into your heart
               <b>C</b>                <b>F</b>
Then you can start, to make it better

[Segunda Parte]

      <b>F</b>                <b>C</b>
Hey, Jude, don't be afraid
          <b>C7</b>                 <b>F</b>
You were made to go out and get her
     <b>Bb</b>                             <b>F</b>
The minute you let her under your skin
            <b>C</b>              <b>F</b>
Then you begin to make it better

[Terceira Parte]

<b>F</b>                             <b>Bb</b>
  And anytime you feel the pain
      <b>F</b>      <b>Gm</b>
Hey, Jude, refrain
       <b>F</b>         <b>C</b>              <b>F</b>    
Don't carry the world upon your shoulders

                               <b>Bb</b>
For well you know that it's a fool
      <b>F</b>     <b>Gm</b>
Who plays it cool
    <b>F</b>          <b>C</b>            <b>F</b>
By making his world a little colder
               <b>C</b>
Na na na na na na na na na

[Quarta Parte]

      <b>F</b>                  <b>C</b>
Hey, Jude, don't let me down
          <b>C7</b>                   <b>F</b>
You have found her now go and get her
   <b>Bb</b>                          <b>F</b>
Remember to let her into your heart
               <b>C</b>               <b>F</b>
Then you can start to make it better

<b>F</b>                         <b>Bb</b>
  So let it out and let it in
      <b>F</b>     <b>Gm</b>
Hey, Jude, begin
         <b>F</b>          <b>C</b>           <b>F</b>         <b>F</b>
You're waiting for someone to perform with
                                 <b>Bb</b>
And don't you know that is just you?
      <b>F</b>          <b>Gm</b>
Hey, Jude, you'll do
     <b>F</b>            <b>C</b>              <b>F</b>
The movement you need is on your shoulder
                <b>C</b>
Na na na na na na na na na

[Quinta Parte]

      <b>F</b>                   <b>C</b>
Hey, Jude, don't make it bad
        <b>C7</b>                   <b>F</b>
Take a sad song and make it better
   <b>Bb</b>                            <b>F</b>
Remember to let her under your skin
               <b>C</b>              <b>F</b>
Then you'll begin to make it better

Better, better, better,better, better, oh!

           <b>Eb</b>           <b>Bb</b>               <b>F</b>
Na, na na na na na na ,na na na na, Hey Jude
           <b>Eb</b>           <b>Bb</b>               <b>F</b>
Na, na na na na na na ,na na na na, Hey Jude
           <b>Eb</b>           <b>Bb</b>               <b>F</b>
Na, na na na na na na ,na na na na, Hey Jude

Na, na na na na na na ,na na na na, Hey Jude", '1', '14'),
(null, 'Let it be', "[Intro] <b>C</b>  <b>G</b>  <b>Am</b>  <b>F</b>  <b>C</b>  <b>G</b>  <b>F</b>   <b>C</b>

[Primeira Parte] 

        <b>C</b>              <b>G</b>
When I find myself in times of trouble
 <b>Am</b>          <b>F</b>          
Mother Mary comes to me
  <b>C</b>                <b>G</b>              <b>F</b>  <b>C</b>
Speaking words of wisdom, let it be

    <b>C</b>              <b>G</b>
And in my hour of darkness
         <b>Am</b>                <b>F</b>           
She is standing right in front of me
  <b>C</b>                <b>G</b>              <b>F</b>  <b>C</b>
Speaking words of wisdom, let it be

[Refrão] 

         <b>Am</b>         <b>G</b>         <b>F</b>             <b>C</b>
Let it   be, let it be, let it be, let it be
                  <b>G</b>              <b>F</b> <b>C</b>
Whisper words of wisdom, let it be

[Segunda Parte] 

<b>C</b>              <b>G</b>
And when the broken-hearted people
 <b>Am</b>            <b>F</b>          
Living in the world agree
  <b>C</b>                  <b>G</b>           <b>F</b>  <b>C</b>
There will be an answer, let it be

      <b>C</b>                    <b>G</b>
For though they may be parted
           <b>Am</b>                  <b>F</b>           
There is still a chance that they will see
  <b>C</b>              <b>G</b>               <b>F</b>  <b>C</b>
There will be an answer, let it be

[Refrão] 

        <b>Am</b>         <b>G</b> 
Let it be, let it be 
        <b>F</b>          <b>C</b>
Let it be, let it be
                 <b>G</b>       
There will be an answer
        <b>F</b>  <b>C</b>
Let it be

        <b>Am</b>         <b>G</b> 
Let it be, let it be 
        <b>F</b>          <b>C</b>
Let it be, let it be
                  <b>G</b>              <b>F</b>  <b>C</b>
Whisper words of wisdom, let it be

[Segunda Parte] 

      <b>C</b>                  <b>G</b>
And when the night is cloudy
           <b>Am</b>                 <b>F</b>           
There is still a light that shines on me
  <b>C</b>            <b>G</b>              <b>F</b>  <b>C</b>
Shine until tomorrow, let it be

   <b>C</b>              <b>G</b>
I wake up to the sound of music
 <b>Am</b>          <b>F</b>           
Mother Mary comes to me
  <b>C</b>                <b>G</b>              <b>F</b>  <b>C</b>
Speaking words of wisdom, let it be

[Refrão] 

        <b>Am</b>         <b>G</b> 
Let it be, let it be 
        <b>F</b>          <b>C</b>
Let it be, let it be
                 <b>G</b>       
There will be an answer
        <b>F</b>  <b>C</b>
Let it be

        <b>Am</b>         <b>G</b> 
Let it be, let it be 
        <b>F</b>          <b>C</b>
Let it be, let it be
                  <b>G</b>              <b>F</b>  <b>C</b>
Whisper words of wisdom, let it be", '1', '14'),
(null, 'Dont let me down', "[Refrão]

<b>E</b>               <b>F#m</b>                <b>E</b>
  Don't let me down, don't let me down
              <b>F#m</b>                <b>E</b>
Don't let me down, don't let me down

(pausa)

[Primeira Parte]

                               <b>F#m</b>
Nobody ever loved me like she does
                      <b>E</b>   (pausa)
Oh she does, yes she does

And if somebody loved me 
          <b>F#m</b>
Like she do me
                       <b>E</b>   (pausa)
Oh she do me, yes she does

[Refrão]

              <b>F#m</b>                <b>E</b>
Don't let me down, don't let me down
              <b>F#m</b>                <b>E</b>
Don't let me down, don't let me down

(pausa)

[Segunda Parte]

                     <b>E</b>
I'm in love for the first time
                           <b>B7</b>
Don't you know it's gonna last

It's a love that lasts forever
                      <b>E</b>      (pausa)
It's a love that had no past

[Refrão]

              <b>F#m</b>                <b>E</b>
Don't let me down, don't let me down
              <b>F#m</b>                <b>E</b>
Don't let me down, don't let me down

(pausa)

[Terceira Parte]

<b>F#m</b>
And from the first time 
                 <b>F#m</b>
That she really done me
                             <b>E</b>
Oh she done me, she done me good

(pausa)
                            <b>F#m</b>
I guess nobody ever really done me
                             <b>E</b>
Oh she done me, she done me good

(pausa)

[Refrão]

              <b>F#m</b>                <b>E</b>
Don't let me down, don't let me down
              <b>F#m</b>                <b>E</b>
Don't let me down, don't let me down

(pausa)

( <b>F#m</b>  <b>E</b>  <b>F#m</b>  <b>E</b> )", '1', '14');

INSERT INTO musica VALUES
(null, 'Oceano', '[Primeira Parte]

<b>D</b>       <b>G</b>                   <b>A</b>
  Assim    que o dia amanheceu
       <b>A#°</b>         <b>Bm</b>    
Lá no mar alto da paixão
                       <b>Am</b>  <b>D</b>
Dava pra ver o tempo ruir
<b>Gm</b>        <b>C</b>           <b>F#m</b>
  Cadê você, que solidão
<b>B7</b>         <b>E7</b>       <b>A7</b>
   Esquecerá  de mim

<b>D</b>       <b>G</b>                     <b>A7</b>
  Enfim,   de tudo que há na terra
        <b>A#°</b>               <b>Bm</b> 
Não há nada em  lugar nenhum
                             <b>Am</b>  <b>D</b>
Que vá crescer sem você chegar
<b>Gm</b>           <b>C</b>           <b>F#m</b>
   Longe de ti   tudo parou
<b>B7</b>         <b>E7</b>                <b>A7</b>
   Ninguém sabe o que eu sofri

[Refrão]

<b>Dm</b>           <b>C</b>              <b>F</b>   
Amar é um deserto e seus temores

( <b>Em7</b>  <b>A7</b> )

 <b>Dm</b>               <b>C</b>           <b>F</b>
Vida que vai  na sela dessas dores
     <b>Gm</b>      <b>Am</b>      <b>Bb7M</b>       <b>Em7</b>  <b>A7</b>
Não sabe voltar, me dá   teu calor

 <b>Dm</b>               <b>C</b>              <b>F</b>
Vem me fazer feliz  porque eu te amo

( <b>Em7</b>  <b>A7</b> )

 <b>Dm</b>              <b>C</b>          <b>F</b>
Você deságua em mim e eu oceano
       <b>Gm</b>        <b>Am</b>       <b>Bb7M</b>     <b>Em7</b>  <b>A7</b>
Me esqueço que amar  é  quase uma dor

 <b>D</b>    <b>F</b>      <b>G</b>    <b>C</b>    <b>D</b>   <b>F</b>    <b>G</b>     <b>C</b>   <b>D</b>
Só   sei    vi___ver  se  for  por   vo__cê

( <b>F</b>  <b>G</b>  <b>C</b>  <b>D</b> )', '4', '2'),
(null, 'Se', '[Intro] <b>A</b>  <b>D</b>  <b>F#m7</b>  <b>E</b>
        <b>A</b>  <b>D</b>  <b>F#m7</b>  <b>E</b>
        <b>A</b>  <b>D</b>  <b>F#m7</b>  <b>E</b>
        <b>A</b>  <b>D</b>  <b>F#m7</b>  <b>E</b>

[Primeira Parte]

      <b>A</b>         <b>D</b>             <b>F#m7</b>
Você disse que não sabe se não
        <b>A</b>              <b>D</b>        <b>C#m7</b>
Mas também não tem certeza que sim
<b>D</b>         <b>G#m7</b>  <b>F#m7</b>      <b>B7</b>
  Quer saber? Quando é assim
       <b>D</b>   <b>C#m7</b>  <b>Bm7</b>    <b>E</b>  <b>G</b>
Deixa vir do    coração

      <b>A</b>           <b>D</b>             <b>F#m7</b>
Você sabe que eu só penso em você
      <b>A</b>         <b>D</b>              <b>C#m7</b>  
Você diz que vive pensando em mim
<b>D</b>       <b>G#m7</b>  
  Pode ser
 <b>F#m7</b>   <b>B7</b>
Se é assim

[Pré-Refrão]

      <b>D</b>                <b>C#m7</b>
Você tem que largar a mão do não
 <b>D</b>                    <b>C#m7</b>
Soltar essa louca, arder de paixão
        <b>D</b>             <b>C#m7</b>
Não há como doer pra decidir
      <b>Bm7</b>
Só dizer sim ou não
     <b>D</b>   <b>C#m7</b>  <b>Bm7</b>  <b>E</b>     <b>A</b> 
Mas você a____do___ra um Se

( <b>D</b>  <b>F#m7</b>  <b>E</b> )

[Refrão] 

<b>A</b>         <b>D</b>              <b>F#m7</b>       <b>E</b>
  Eu levo a sério mas você disfarça
<b>A</b>       <b>D</b>                  <b>F#m7</b>        <b>E</b>
  Você me diz à beça e eu nessa de horror
<b>A</b>       <b>D</b>                  <b>F#m7</b>      <b>E</b>
  E me remete ao frio que vem lá do Sul
<b>A</b>         <b>D</b>                    <b>F#m7</b>      <b>E</b>
  Insiste em zero a zero e eu quero um a um

<b>A</b>               <b>D</b>           <b>F#m7</b>      <b>E</b>
  Sei lá o que te dá, não quer meu calor
<b>A</b>         <b>D</b>                    <b>F#m7</b>       <b>E</b>
  São Jorge, por favor, me empresta o dragão
<b>A</b>               <b>D</b>          <b>F#m7</b>    <b>E</b>
  Mais fácil aprender japonês em Braille
<b>A</b>         <b>D</b>            <b>F#m7</b>     <b>E</b>
  Do que você decidir se dá ou não

( <b>A</b>  <b>D</b>  <b>F#m7</b>  <b>E</b> )
( <b>A</b>  <b>D</b>  <b>F#m7</b>  <b>E</b> )

[Primeira Parte]

      <b>A</b>         <b>D</b>             <b>F#m7</b>
Você disse que não sabe se não
        <b>A</b>              <b>D</b>        <b>C#m7</b>
Mas também não tem certeza que sim
<b>D</b>         <b>G#m7</b>  <b>F#m7</b>      <b>B7</b>
  Quer saber? Quando é assim
       <b>D</b>   <b>C#m7</b>  <b>Bm7</b>    <b>E</b>  <b>G</b>
Deixa vir do    coração

      <b>A</b>           <b>D</b>             <b>F#m7</b>
Você sabe que eu só penso em você
      <b>A</b>         <b>D</b>              <b>C#m7</b>  
Você diz que vive pensando em mim
<b>D</b>       <b>G#m7</b>  
  Pode ser
 <b>F#m7</b>   <b>B7</b>
Se é assim

[Pré-Refrão]

      <b>D</b>                <b>C#m7</b>
Você tem que largar a mão do não
 <b>D</b>                    <b>C#m7</b>
Soltar essa louca, arder de paixão
        <b>D</b>             <b>C#m7</b>
Não há como doer pra decidir
      <b>Bm7</b>
Só dizer sim ou não
     <b>D</b>   <b>C#m7</b>  <b>Bm7</b>  <b>E</b>     <b>A</b> 
Mas você a____do___ra um Se

( <b>D</b>  <b>F#m7</b>  <b>E</b> )

[Refrão] 

<b>A</b>         <b>D</b>              <b>F#m7</b>       <b>E</b>
  Eu levo a sério mas você disfarça
<b>A</b>       <b>D</b>                  <b>F#m7</b>        <b>E</b>
  Você me diz à beça e eu nessa de horror
<b>A</b>       <b>D</b>                  <b>F#m7</b>      <b>E</b>
  E me remete ao frio que vem lá do Sul
<b>A</b>         <b>D</b>                    <b>F#m7</b>      <b>E</b>
  Insiste em zero a zero e eu quero um a um

<b>A</b>               <b>D</b>           <b>F#m7</b>      <b>E</b>
  Sei lá o que te dá, não quer meu calor
<b>A</b>         <b>D</b>                    <b>F#m7</b>       <b>E</b>
  São Jorge, por favor, me empresta o dragão
<b>A</b>               <b>D</b>          <b>F#m7</b>    <b>E</b>
  Mais fácil aprender japonês em Braille
<b>A</b>         <b>D</b>            <b>F#m7</b>     <b>E</b>
  Do que você decidir se dá ou não', '2', '4');
  
  INSERT INTO musica VALUES 
  (null, 'Chega de saudade', ' <b>Dm</b>          <b>E</b>      <b>Bbm</b>   <b>A</b>    <b>Dm</b>
Vai  minha tristeza e diz a ela que sem ela
          <b>A</b>   <b>Dm</b>     <b>E</b>    <b>Am</b>
Não pode ser,    diz-lhe numa prece
            <b>Bb</b>                 <b>Em</b>
Que ela regresse, porque eu não posso
      <b>A</b>    <b>Dm</b>       <b>E</b>        <b>Bbm</b>
Mais sofrer_ chega de saudade a realidade
    <b>A</b>    <b>Am</b>         <b>D</b>         <b>Gm</b>
É que sem ela não há paz, não há beleza
   <b>A</b>  <b>Dm</b>            
É só tristeza e a melancolia
         <b>E</b>            <b>Bbm</b>            <b>Dm</b>  <b>A</b>
Que não sai de mim, não sai de mim, não sai

 <b>D</b>   <b>B</b>   <b>E</b>
Mas se ela voltar, se ela voltar
           <b>G</b>     <b>A</b>    <b>D</b>
Que coisa linda, que coisa louca
      <b>D</b>        <b>F°</b>         <b>Em</b>
Pois há menos peixinhos a nadar no mar
              <b>Bm</b>
Do que os beijinhos que eu darei
        <b>Em</b>  <b>A</b>  <b>D</b>    <b>Bm</b>       <b>E</b>
Na sua bo______ca,    dentro dos meus braços
      <b>F#</b>          <b>Bm</b>     <b>Bbm</b>      <b>Am</b>
Os abraços hão de ser, milhões de abraços
<b>D</b>   <b>G</b>           <b>Gm</b>           <b>F#m</b>
Aper__tado assim, colado assim, calado assim
<b>B</b>            <b>E</b>       <b>A</b>          <b>F#m</b>
Abraços e beijinhos e carinhos sem ter fim

              <b>B</b>             <b>E</b>       <b>A</b>
Que é pra acabar com este negócio de você
           <b>D</b>
Viver sem mim

 <b>D</b>      <b>Gm</b>
Não há paz,não há beleza
   <b>A</b>  <b>Dm</b>               
É só tristeza e a melancolia
     <b>E</b>            <b>Bbm</b>            <b>Dm</b>  <b>A</b>
Que não sai de mim, não sai de mim, não  sai

 <b>D</b>   <b>B</b>   <b>E</b>
Mas se ela voltar, se ela voltar
           <b>G</b>     <b>A</b>    <b>D</b>
Que coisa linda, que coisa louca
      <b>D</b>        <b>F°</b>         <b>Em</b>
Pois há menos peixinhos a nadar no mar
              <b>Bm</b>
Do que os beijinhos que eu darei
        <b>Em</b>  <b>A</b>  <b>D</b>    <b>Bm</b>       <b>E</b>
Na sua bo______ca,    dentro dos meus braços
      <b>F#</b>          <b>Bm</b>     <b>Bbm</b>      <b>Am</b>
Os abraços hão de ser, milhões de abraços
<b>D</b>   <b>G</b>           <b>Gm</b>           <b>F#m</b>
Aper__tado assim, colado assim, calado assim
<b>B</b>         <b>E</b>       <b>A</b>             <b>F#m</b>
Abraços e beijinhos e carinhos sem ter fim

              <b>B</b>             <b>E</b>       <b>A</b>
Que é pra acabar com este negócio de você
           <b>D</b>
Viver sem mim
           <b>B</b>          <b>E</b>     <b>A</b>         <b>D</b>
Não quero mais esse negócio de você longe de mim
          <b>B</b>           <b>E</b>       <b>A</b>          <b>D</b>
Vamos deixar com esse negócio de você viver sem mim', '4', '2');

select * from artista;

SELECT * FROM musica;


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
constraint pk_composta_fav primary key(fk_usuario, fk_musica, fk_artista)
);

 SELECT 
    fk_musica AS musica,
    nome_musica AS nome_da_musica,
    musica.fk_artista AS id_artista,
    artista.nome_artista AS nome_do_artista,
    musica.fk_genero AS id_genero,
    genero.nome_genero AS genero_musica,
    cifra_musica as cifra,
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
LIMIT 10;


INSERT INTO musica_favorita VALUES 
(1, 1, 1);
INSERT INTO musica_favorita VALUES 
(1, 2, 2);
INSERT INTO musica_favorita VALUES 
(1, 3, 5);
INSERT INTO musica_favorita VALUES 
(1, 4, 5);
INSERT INTO musica_favorita VALUES 
(1, 5, 14);
INSERT INTO musica_favorita VALUES 
(2	, 5, 14);

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
    musica.nome_musica = 'João e Maria';


select * from musica;