-- Na tabela salario_classe altere o atributo "nivel" para que seu tipo de dado seja varchar, com tamanho máximo de 50 caracteres
ALTER TABLE salario_classe
ADD nivel varchar(50);

-- Na tabela employees, adicione uma coluna para receber o id_salario
ALTER TABLE employees
ADD id_salario INTEGER;

-- Alterando Nome da Tabela salario_classe.
ALTER TABLE salario_classe RENAME TO salario_classe_old;

-- Criando nova tabela salario_classe
CREATE TABLE salario_classe (
id_salario INTEGER PRIMARY KEY AUTOINCREMENT,
nivel TEXT,
salario INTEGER
);

-- Excluindo tabela salario_classe_old
DROP TABLE salario_classe_old;
