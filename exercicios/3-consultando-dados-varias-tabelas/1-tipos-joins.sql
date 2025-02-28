-- Crie uma consulta para realizar um left join com as tabelas "albums" e "artists"
SELECT * -- Todas as colunas
FROM albums -- Da tabela albums
-- E faca um left join com a tabela 'artists' 
-- Onde a coluna 'ArtistID' de 'albums' seja igual a coluna 'ArtistId' de 'artists'
LEFT JOIN artists ON albums.ArtistId = artists.ArtistId ;