CREATE DATABASE RH;

USE RH;

CREATE TABLE Departamentos(
DepartamentoId INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255) NOT NULL
);

INSERT INTO Departamentos(Nome)
VALUES('Administração'),
('Financeiro'),
('Adminstração'),
('Financeiro'),
('Recursos Humanos');

CREATE TABLE Funcionarios(
FuncionarioId INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255) NOT NULL,
Cargo VARCHAR(45) NOT NULL,
DataContratacao DATE NOT NULL,
Salario DOUBLE NOT NULL,
DepartamentoId INT,
FOREIGN KEY (DepartamentoId) REFERENCES Departamentos(DepartamentoId) 
);

INSERT INTO Funcionarios(Nome, Cargo, DataContratacao, Salario, DepartamentoId)
VALUES('Joao', 'Assistente Administrativo', 20231013, 2200, 1),
('Maria', 'Assistente Financeiro', 20231012, 2100, 2),
('Paulo', 'Diretor Administrativo', 20231011, 3200, 1),
('Fernanda', 'Diretor Financeiro', 20231010, 3100, 2),
('Kailan', 'Assistente de RH', 20231009, 2000, 5);

CREATE TABLE Dependentes(
DependenteID INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(255),
DataNascimento DATE,
FuncionarioId INT,
FOREIGN KEY (FuncionarioId) REFERENCES Funcionarios(FuncionarioId) 
);

INSERT INTO Dependentes(Nome, DataNascimento, FuncionarioId)
VALUES('Pedro', 20000910, 1),
('Joao Paulo', 20000606, 1),
('Pedro Paulo', 20000505, 2),
('Fernanda Maria', 20000709, 2),
('Joao Pedro', 20000811, 5);


SELECT Funcionarios.FuncionarioId, Funcionarios.Nome AS 'Nome do Funcionarios', Dependentes.DependenteId, Dependentes.Nome AS 'Nome do Dependente', Departamentos.DepartamentoId, Departamentos.Nome AS 'Nome do Departamento'
FROM Funcionarios
INNER JOIN Dependentes ON Funcionarios.FuncionarioId = Dependentes.FuncionarioId
INNER JOIN Departamentos ON Funcionarios.DepartamentoId = Departamentos.DepartamentoId
ORDER BY Funcionarios.FuncionarioId;

DROP DATABASE RH;