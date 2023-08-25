CREATE DATABASE aula07;

USE aula07;

CREATE TABLE Livros(
	Id INT PRIMARY KEY AUTO_INCREMENT,
	Livro VARCHAR(50) NOT NULL,
	Autor VARCHAR (30) NOT NULL,
	Sexo_do_Autor Varchar(15) NOT NULL,
	Número_de_Páginas INT NOT NULL,
	Editora VARCHAR (30) NOT NULL,
	Valor_Capa_Comum DOUBLE NOT NULL,
	Valor_Kindle DOUBLE NOT NULL,
	Ano_da_Publicação INT NOT NULL 
);

INSERT INTO Livros(Livro, Autor, Sexo_do_Autor, Número_de_Páginas, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_da_Publicação)
VALUES('Pai Rico, Pai Pobre', 'Robert T.Kiyosaki', 'Masculino', 336, 'Alta Books', 61.53, 58.45, 2018),
('Mindset', 'Carol S.Dweck', 'Feminino', 312, 'Objetiva', 38.99, 14.95, 2017),
('Como fazer amigos e influenciar pessoas','Dale Carnegie','Masculino',256,'Sextate',38.99,33.24,2019),
('A Cabana','Willian P.Young','Masculino',240,'Arqueiro',35.99,17.90,2008),
('O Poder do Hábito','Charles Duhigg','Masculino',408,'Objetiva',42.99,29.90,2012),
('Código Limpo','Robert C.Martin','Masculino',425,'Alta Books',91.99,87.30,2009),
('Essencialismo','Greg McKoewn','Masculino',272,'Sextante',53.58,33.24,2015),
('Me Poupe!','Nathalia Arcuti','Feminino',176,'Sextante',32.86,17.09,2018),
('Comece pelo Porquê','Simon Sinek','Masculino',256,'Sextante',50.58,24.90,2018),
('O Alquimista','Paulo Coelho','Masculino',206,'Paralela',24.70,14.70,2017);

-- Trazer todos os dados
SELECT * FROM Livros;
-- WHERE Id = 5 AND Livro = 'Pai Rico, Pai Pobre';
-- WHERE Id = 5 AND Livro LIKE 'R%';
-- ORDER BY Nome Asc;

-- Trazer o nome do livro e da editora
SELECT Livro, Editora FROM Livros;

-- Trazer o nome do livro, editora e autores do sexo masculino
SELECT livro, Editora, Autor, Sexo_do_Autor FROM Livros 
WHERE Sexo_do_Autor LIKE 'Masculino';

-- Trazer nome do livro, numero de páginas e autores do sexo feminino;
Select livro, Número_de_Páginas, Autor, Sexo_do_Autor FROM Livros
WHERE Sexo_do_Autor LIKE 'Feminino';

-- Trazer o nome do autor, editora e ano de publicação dos livros que tenham sido publicados a partir do ano 2017  
SELECT Autor, Editora, Ano_da_Publicação FROM Livros
WHERE Ano_da_Publicação >= 2017;

-- Trazer o nome dos autores do sexo masculino com livros publicados pela editora Sextante ou pela editora Altas Books
SELECT Autor, Sexo_do_Autor, Editora FROM Livros
WHERE Sexo_do_Autor LIKE 'Masculino' AND Editora LIKE 'Sextante' OR Editora LIKE 'Alta Books';

-- Trazer o nome do livro, do autor, número de páginas, editora, ano de publicação e valor com capa comum
SELECT Livro, Número_de_Páginas, Editora, Ano_da_Publicação, Valor_Capa_Comum FROM Livros;

-- Trazer o nome do livro, autor, número de páginas e valor no Kindle
SELECT livro, Autor, Número_de_Páginas, Valor_Kindle FROM Livros;

-- Trazer o nome dos autores com livros publicados pela editora Sextante
SELECT Autor FROM Livros
WHERE Editora LIKE 'Sextante';

-- Trazer o nome do livro, autores, valor com capa comum e valor no Kindle
SELECT Livro, Autor, Valor_Capa_Comum, Valor_Kindle FROM Livros;


