-- Criando bando de dados com nome "Empresa"
CREATE DATABASE Empresa;

-- Selecionando o banco de dados para inserir comandos
USE Empresa;

CREATE TABLE Cliente(
	Id INT PRIMARY KEY AUTO_INCREMENT, 
    Nome Varchar(255) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
	Telefone VARCHAR(23) NOT NULL,
    Id_Endereco INT,
    FOREIGN KEY (Id_Endereco) REFERENCES Enderecos(Id)
);

CREATE TABLE Enderecos (
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Logradouro VARCHAR(255) NOT NULL,
    cep VARCHAR(10) NOT NULL,
    numero VARCHAR(5),
    complemento VARCHAR(255),
    cidade VARCHAR(255)
);