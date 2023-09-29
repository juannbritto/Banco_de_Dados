CREATE DATABASE Estoque;

USE Estoque;

CREATE TABLE Produtos(
	ProdutoID INT PRIMARY KEY AUTO_INCREMENT,
    NomeProduto VARCHAR(255) NOT NULL,
    Descricao VARCHAR(255) NOT NULL,
    PrecoUnitario INT NOT NULL,
    EstoqueMinimo INT NOT NULL
);

INSERT INTO Produtos(NomeProduto, Descricao, PrecoUnitario, EstoqueMinimo)
VALUES('Desinfetante', 'Desinfetante para casa', 7.00, 50 );

CREATE TABLE Fornecedor(
	FornecedorID INT PRIMARY KEY AUTO_INCREMENT,
    NomeFornecedor VARCHAR(255) NOT NULL,
    Endereco VARCHAR(255) NOT NULL,
    Telefone VARCHAR(23) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    ProdutoID INT,
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
);

INSERT INTO Fornecedor(NomeFornecedor, Endereco, Telefone, Email)
VALUES('Pinho Sol', 'Salvador-BA', '71 9 9999-9999', 'pinho.sol@gmail.com');

SELECT Produtos.NomeProduto, Fornecedor.NomeFornecedor
FROM Produtos
INNER JOIN Fornecedor
ON Produtos.ProdutoID = Fornecedor.FornecedorID; 
