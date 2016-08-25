/* CONTROLE DE INVENTARIO - SCRIPT DE INICIALIZAÇÃO */

CREATE DATABASE INVENTARIO;

USE INVENTARIO;

CREATE TABLE Cargo (
		idCargo			int		primary key	auto_increment,
		strCargo		varchar(30)	not null,
		strDescricao	varchar(40)) ENGINE=MyISAM;

CREATE TABLE Funcionario (
		idFuncionario	int		primary key auto_increment,
		strNome			varchar(20)		not null,
		strSobrenome	varchar(30)		not null,
		gerencia		varchar(30)		not null,
		idStatus		int				not null,
		acessaSsistema	int				not null,
		id_cargo		int				not null,
		FOREIGN KEY(id_cargo) REFERENCES Cargo (idCargo));

CREATE TABLE Usuario (
		idUsuario		int		primary key auto_increment,
		strNome			varchar(50)		not null,
		strUsuario		varchar(20) 	not null,
		strSenha		varchar(50)		not null,				-- INSERIR E CONSULTAR UTILIZANDO A FUNC md5(senha_desejada)
		idStatus 		int 			default 1 	not null, 	-- O ATRIBUTO DEFAULT MARCA O CAMPO STATUS COM O VALOR PADRÃO (1)
		id_funcionario	int 			not null	unique,		-- O ATRIBUTO UNIQUE (É UMA DAS RESTRIÇÕES) FAZENDO COM QUE UM ID_FUNCIONARIO SEJA ASSOCIADO A APENAS UM USUÁRIO
		FOREIGN KEY(id_funcionario) REFERENCES Funcionario (idfuncionario));

CREATE TABLE Categoria (
		idCategoria		int				primary key auto_increment,
		StrNmCategoria	varchar(20)		not null,
		strCodCategoria	varchar(3)		not null	unique) ENGINE=MyISAM;
	
CREATE TABLE StatusPatrimonio (
		idStatus		int				primary key auto_increment,
		strNmStatus		varchar(20)		not null unique) ENGINE=MyISAM;

CREATE TABLE Endereco (
		idEndereco		int				primary key auto_increment,
		Logradouro		varchar(50)		not null,
		Numero			int				not null,
		Bairro			varchar(20)		not null);
		
CREATE TABLE Fornecedor (
		idFornecedor	int				primary key	auto_increment,
		strNmFantasia	varchar(30)		not null,
		strRzSocial		varchar(30)		not null,
		InscEstadual	varchar(20)		not null,
		CNPJ			varchar(15)		not null,
		Telefone		int,
		id_endereco		int				not null unique,
		FOREIGN KEY(id_endereco) REFERENCES Endereco (idEndereco));
		
CREATE TABLE Produto (
		idProduto 		int				primary key auto_increment,
		strModelo		varchar(30)		not null,
		QtdEmEstoque	int				not null,
		IMEI			int				unique,
		strSerie		varchar(20)		not null,
		strDescricao	varchar(50),
		id_Categoria	int				not null,
		id_Fornecedor	int				not null,
		FOREIGN KEY(id_Categoria) REFERENCES Categoria (idCategoria),
		FOREIGN KEY(id_Fornecedor) REFERENCES Fornecedor (idFornecedor));

CREATE TABLE Patrimonio (
		idPatrimonio	int				primary key auto_increment,
		strNmTermo		varchar(30),
		strObservacoes	varchar(50),
		dtCriacao		datetime		not null,
		id_funcionario	int				not null,
		id_produto		int				not null,
		id_status		int				not null,
		FOREIGN KEY(id_funcionario) REFERENCES Funcionario (idFuncionario),
		FOREIGN KEY(id_produto) REFERENCES Produto (idProduto),
		FOREIGN KEY(id_status) REFERENCES StatusPatrimonio (idStatus));