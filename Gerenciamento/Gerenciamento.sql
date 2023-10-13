CREATE DATABASE Gerenciamento;

USE Gerenciamento;

CREATE TABLE Endereco(
EnderecoId INT PRIMARY KEY AUTO_INCREMENT,
Logradouro VARCHAR(255) NOT NULL,
Numero VARCHAR(10) NOT NULL,
Cidade VARCHAR(45) NOT NULL
);

INSERT INTO Endereco(Logradouro, Numero, Cidade)
VALUES('Campo Grande', '50', 'Salvador'),
('Cajazeiras', '200', 'Salvador'),
('Praça da Piedade', '70', 'Salvador'),
('Dendezeiros', '100', 'Salvador'),
('Ribeira', '500', 'Salvador');

CREATE TABLE Cliente(
ClienteId INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255) NOT NULL,
Endereco VARCHAR(255) NOT NULL,
EnderecoId INT,
FOREIGN KEY (EnderecoId) REFERENCES Endereco(EnderecoId)
);

INSERT INTO Cliente(Nome, Endereco, EnderecoId)
VALUES('Joao', );