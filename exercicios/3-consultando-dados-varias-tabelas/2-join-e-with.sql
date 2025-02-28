-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists"
SELECT
tra.TrackId as id,
tra.Name as musica,
alb.Title as album,
art.Name as artista
FROM
tracks as tra
--  O primeiro Inner Join que eu vou fazer é com a tabela Albums. Do mesmo jeito, atribuirei um "alias" com as três primeiras letras e agora usarei a cláusula ON para informar a coluna coincidente entre essas tabelas e que usarei como chave para relacioná-las.
INNER JOIN albums as alb ON tra.AlbumId = alb.Album.Id
--  dessa vez a relação entre as tabelas será feita entre a tabela artists e albums
INNER JOIN artists as art ON art.ArtistId = alb.ArtistId

-- Refatore a consulta anterior usando a cláusula "with" e verifique o total de músicas existente na base de terminado artista, ex: Caetano Veloso
-- Com essa cláusula podemos criar uma tabela temporária e realizar consulta utilizando-a. 
--  Essa estrutura acaba de criar uma tabela temporária com quatro colunas oriundas de três tabelas diferentes.
WITH musica as (
SELECT
tra.TrackId as id,
tra.Name as musica,
alb.Title as album,
art.Name as artista
FROM
tracks as tra
--  O primeiro Inner Join que eu vou fazer é com a tabela Albums. Do mesmo jeito, atribuirei um "alias" com as três primeiras letras e agora usarei a cláusula ON para informar a coluna coincidente entre essas tabelas e que usarei como chave para relacioná-las.
INNER JOIN albums as alb ON tra.AlbumId = alb.Album.Id
--  dessa vez a relação entre as tabelas será feita entre a tabela artists e albums
INNER JOIN artists as art ON art.ArtistId = alb.ArtistId
)

-- Agora podemos escrever uma nova consulta considerando apenas essas quatro colunas da tabela Música.
SELECT
artista
COUNT(musica) as qnt_total_musicas
FROM
musica
WHERE
artista LIKE 'Caetano';