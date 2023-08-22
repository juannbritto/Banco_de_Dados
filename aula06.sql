
-- Mostrar os bancos de dados;
	SHOW DATABASES;
    
-- Acessar o banco de dados;
	USE aula06;
    
CREATE TABLE teste_aula(
	Id INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(30) NOT NULL,
    Telefone varchar(23) NOT NULL,
    Email varchar(255) NOT NULL
);
-- Inserir dados na tabela
INSERT INTO teste_aula(Nome, Telefone, Email)
VALUES ('Jessica', '(71) 99875-1272', 'jessica@gmail.com');

-- Mostrar resgistros na tabela.
SELECT * FROM teste_aula;

-- Mostrar nome e e-mail do cliente
SELECT Nome, Email FROM teste_aula;

-- Apagar Tabela
DROP TABLE teste_aula;

-- Atualizar dados dentro da tabela
UPDATE teste_aula 
SET Telefone = '(71) 99875-1272'
WHERE id = 3;

-- Apagando dados da Tabela
DELETE FROM teste_aula
WHERE Id= 1;

