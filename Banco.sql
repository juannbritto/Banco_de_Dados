CREATE DATABASE IF NOT EXISTS Banco CHARSET utf8;


USE Banco;

CREATE TABLE IF NOT EXISTS Clientes (
    Cpf VARCHAR(14) PRIMARY KEY, 
    Nome VARCHAR(255),
    Endereco VARCHAR(155),
    Telefone VARCHAR(23),
    Email VARCHAR(155) UNIQUE
) DEFAULT CHARSET utf8;

-- Insere dados na tabela de Clientes
INSERT INTO Clientes (Cpf, Nome, Endereco, Telefone, Email)
VALUES
    ('835.134.013-92', 'Kailan Veloso', 'Salvador, BA', '71 99313-0341', 'kailanvelos@email.com'),
    ('492.675.218-06', 'Valentina Ribeiro', 'São Paulo, SP', '11 98765-4321', 'valentina.ribeiro@email.com'),
    ('318.524.976-20', 'Lucas Alves', 'Rio de Janeiro, RJ', '21 99876-5432', 'lucasalves@email.com'),
    ('754.312.609-47', 'Sofia Pereira', 'Belo Horizonte, MG', '31 9815-8234', 'sofia.pereira@email.com'),
    ('629.841.753-89', 'Mateus Silva', 'Porto Alegre, RS', '51 9425-3130', 'mateus.silva@email.com');

-- Cria a tabela de ContasBancarias
CREATE TABLE IF NOT EXISTS ContasBancarias (
    NumeroConta INT PRIMARY KEY AUTO_INCREMENT,
    Agencia VARCHAR(30) NOT NULL,
    TipoConta VARCHAR(25) NOT NULL,
    Saldo DECIMAL(10, 2) NOT NULL,
    CpfCliente VARCHAR(14) NOT NULL,
    FOREIGN KEY (CpfCliente) REFERENCES Clientes(Cpf)
);

-- Insere dados na tabela de ContasBancarias
INSERT INTO ContasBancarias (Agencia, TipoConta, Saldo, CpfCliente)
VALUES
    ('013', 'Corrente', 230.06, '835.134.013-92'),
    ('09', 'Poupança', 50.90, '492.675.218-06'),
    ('88', 'Poupança', 900.50, '318.524.976-20'),
    ('42', 'Corrente', 20.00, '754.312.609-47'),
    ('56', 'Corrente', 4340.90, '629.841.753-89');

-- Seleciona os nomes dos clientes e seus saldos nas contas bancárias
SELECT Clientes.Nome, ContasBancarias.Saldo
FROM Clientes
INNER JOIN ContasBancarias
ON Clientes.Cpf = ContasBancarias.CpfCliente;