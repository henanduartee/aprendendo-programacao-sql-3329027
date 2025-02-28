-- Construa uma consulta para a tabela "invoice_items" que retorne apenas as colunas InvoiceId, TrackId e UnitPrice.
SELECT
TrackID,
UnitPrice
FROM
invoice_teams;

-- Inclua nessa consulta mais três colunas, cada uma como resultado de uma operação aritmética diferente
SELECT
TrackID,
UnitPrice,
UnitPrice * 1.3, -- Esta coluna nao existe na tabela original, sendo apenas uma consulta
UnitPrice + 2.11, -- É possível realizar varias operacoes aritméticas
(UnitPrice + 2.11) % 2
FROM
invoice_teams;
-- Incremente essa consulta utilizando a cláusula WHERE, a qual restringirá o resultado apenas para linhas cujo o InvoiceId seja maior do que 20 e menor ou igual a 30
SELECT
TrackID,
UnitPrice,
UnitPrice * 1.3, -- Esta coluna nao existe na tabela original, sendo apenas uma consulta
UnitPrice + 2.11, -- É possível realizar varias operacoes aritméticas
(UnitPrice + 2.11) % 2
FROM
invoice_teams
WHERE TrackId != 3; -- Também é possível usar outros operadores: = < > => =< <> !=
