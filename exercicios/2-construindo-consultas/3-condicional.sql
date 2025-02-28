-- Escreva uma consulta que retorne o nome por extenso dos estados brasileiros
SELECT DISTINCT
Country as pais,
State as estado_sigla,
CASE
	WHEN State = 'SP' THEN 'Sao Paulo'
	WHEN State = 'RJ' THEN 'Rio de Janeiro'
	ELSE 'Estado desconhecido' --ELSE é opcional, pois volta NULL por default
END as estado
FROM
customers
WHERE 
Country LIKE 'Brazil';
