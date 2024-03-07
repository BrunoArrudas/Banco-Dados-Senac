USE desafiobackend;

CREATE DATABASE IF NOT EXISTS desafioBackend;

USE desafioBackend;

CREATE TABLE IF NOT EXISTS Hospedagem(
 codHospedagem INT AUTO_INCREMENT,
 codChale INT,
 estado VARCHAR(50) NOT NULL,
 dataInicio DATETIME NOT NULL,
 dataFim DATETIME NOT NULL,
 qtdPessoas VARCHAR(50) NOT NULL,
 desconto INT NOT NULL ,
 valorFinal INT,
 PRIMARY KEY (codHospedagem),
 FOREIGN KEY (codChale) REFERENCES Chale(codChale)
);

ALTER TABLE Hospedagem
ADD FOREIGN KEY (codCliente) REFERENCES Cliente(codCliente);

CREATE TABLE IF NOT EXISTS Hospedagem_Servico (
codHospedagem INT,
codServico INT,
dataServico INT,
PRIMARY KEY (dataServico),
FOREIGN KEY (codHospedagem) REFERENCES Hospedagem(codHospedagem),
FOREIGN KEY (codServico) REFERENCES Servico(codServico),
valorServico VARCHAR(6) NOT NULL
);

CREATE TABLE IF NOT EXISTS Cliente(
codCliente INT AUTO_INCREMENT,
nomeCliente VARCHAR(50) NOT NULL,
rgCliente VARCHAR(10) NOT NULL,
enderecoCliente VARCHAR(50) NOT NULL,
bairroCliente VARCHAR(50) NOT NULL,
cidadeCliente VARCHAR(50) NOT NULL,
estadoCliente VARCHAR(50) NOT NULL,
CEPCliente VARCHAR(8) NOT NULL,
nascimentoCliente DATE NOT NULL,
PRIMARY KEY (codCliente)
);

CREATE TABLE IF NOT EXISTS Chale (
codChale INT AUTO_INCREMENT,
localizacao VARCHAR(50) NOT NULL,
capacidade VARCHAR(4) NOT NULL,
valorAltaEstacao VARCHAR(6) NULL,
valorBaixaEstacao VARCHAR(6) NULL,
PRIMARY KEY (codChale)
);

CREATE TABLE IF NOT EXISTS Chale_Item(
codChale INT,
nomeItem INT,
FOREIGN KEY (codChale) REFERENCES Chale(codChale),
FOREIGN KEY (nomeItem) REFERENCES Item(nomeItem)
);

CREATE TABLE IF NOT EXISTS Item(
nomeItem INT,
descricaoItem VARCHAR (100) NOT NULL,
PRIMARY KEY (nomeItem)
);

CREATE TABLE IF NOT EXISTS Telefone(
telefone INT,
codCliente INT,
tipoTelefone VARCHAR(14) NOT NULL,
FOREIGN KEY (codCliente) REFERENCES Cliente(codCliente)
);

CREATE TABLE IF NOT EXISTS Servico(
codServico INT,
nomeServico VARCHAR(50) NOT NULL,
valorServico VARCHAR(6) NOT NULL,
PRIMARY KEY (codServico)
);
