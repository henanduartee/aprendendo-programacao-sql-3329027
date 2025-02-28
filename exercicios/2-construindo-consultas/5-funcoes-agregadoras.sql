-- Para a tabela "invoices", crie uma consulta que retorne o país e a soma das compras realizadas nele, bem como o valor da compra mínima e máxima, a quantidade de compras realizadas e o ticket médio de cada compra.
SELECT 
BillingCountry as pais,
SUM(Total) as soma_compras,
COUNT(Total) as qnt_compras_realizadas,
MIN(Total) as menor_compra,
MAX(Total) as maior_valor,
ROUND(AVG(Toral), 2) as ticket_medio -- ROUND executa o arredondamento de casas decimais, nesse caso 2 casas decimais(segundo argumento)
FROM
invoices
WHERE
BillingCountry = 'Austria';