CREATE DATABASE Logistica;

USE Logistica;

CREATE TABLE Cliente(
IdCliente INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255) NOT NULL,
DataNascimento DATE NOT NULL,
Telefone VARCHAR(255) NOT NULL
);

INSERT INTO Cliente(Nome, DataNascimento, Telefone)
VALUES('Joao', 20231013, '71 9 9999-9999'),
('Joao2', 20231012, '71 9 9999-9989');

CREATE TABLE Endereco(
IdEndereco INT PRIMARY KEY AUTO_INCREMENT,
Logradouro VARCHAR(255) NOT NULL,
Numero VARCHAR(10) NOT NULL,
Cidade VARCHAR(225) NOT NULL
);

INSERT INTO Endereco(Logradouro, Numero, Cidade)
VALUES('Campo Grande', '1980', 'Salvador'),
('Campo Santo', '50', 'Salvador');

CREATE TABLE EnderecoCliente(
IdCliente INT,
FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente),
IdEndereco INT,
FOREIGN KEY (IdEndereco) REFERENCES Endereco(IdEndereco)
);

INSERT INTO EnderecoCliente(IdCliente, IdEndereco)
Values(1,1),
(1,2);

SELECT Cliente.Nome, Endereco.Logradouro
FROM Cliente
INNER JOIN EnderecoCliente ON Cliente.IdCliente = EnderecoCliente.IdCliente
INNER JOIN Endereco ON EnderecoCliente.IdEndereco = Endereco.IdEndereco  
ORDER BY Cliente.Nome;
