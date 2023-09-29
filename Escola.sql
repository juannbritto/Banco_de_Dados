CREATE DATABASE Gerencia_Escola;

USE Gerencia_Escola;

CREATE TABLE Escolas(
	EscolaID INT PRIMARY KEY AUTO_INCREMENT,
    NomeEscola VARCHAR(255) NOT NULL,
    Endereco VARCHAR(255) NOT NULL,
    Telefone VARCHAR(23) NOT NULL
);

INSERT INTO Escolas(NomeEscola, Endereco, Telefone)
VALUES('SENAI', 'Dendezeiros', '71 9 9999-9999'),
('SENAI2', 'Dendezeiros', '71 9 9999-9999'),
('SENAI3', 'Dendezeiros', '71 9 9999-9999'),
('SENAI4', 'Dendezeiros', '71 9 9999-9999'),
('SENAI5', 'Dendezeiros', '71 9 9999-9999');

CREATE TABLE Alunos(
	Matricula INT PRIMARY KEY AUTO_INCREMENT,
    NomeAluno VARCHAR(255) NOT NULL,
    DataNascimento DATE NOT NULL,
    Endereco VARCHAR(255) NOT NULL,
    Telefone VARCHAR(23) NOT NULL,
	EscolaID INT,
    FOREIGN KEY (EscolaID) REFERENCES Escolas(EscolaID)
);

INSERT INTO Alunos(NomeAluno, DataNascimento, Endereco, Telefone, EscolaID)
VALUES('Diogo', 20000101, 'Nordeste', '71 9 9999-9999', 1 ),
('Diogo2', 20000101, 'Nordeste', '71 9 9999-9999', 1),
('Diogo3', 20000101, 'Nordeste', '71 9 9999-9999', 2),
('Diogo4', 20000101, 'Nordeste', '71 9 9999-9999', 2),
('Diogo5', 20000101, 'Nordeste', '71 9 9999-9999', 3);

SELECT Escolas.NomeEscola, COUNT(Alunos.Matricula) AS "Número de Alunos"
FROM Escolas
INNER JOIN Alunos ON Escolas.EscolaID = Alunos.EscolaID
GROUP BY Escolas.NomeEscola;