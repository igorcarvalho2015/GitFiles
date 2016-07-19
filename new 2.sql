--CREATE DOMAIN MAT AS INT(4) (	CHECK (VALUE > 0000 AND VALUE < 9999));

CREATE TABLE Cargo (
	idCargo			INT 		NOT NULL,
	strCargo		VARCHAR(30)	NOT NULL,
	strDescricao	VARCHAR(30),
	MinSal			VARCHAR(15)	NOT NULL,
	MaxSal			VARCHAR(15)	NOT NULL,
	PRIMARY KEY (idCargo));

CREATE TABLE Usuario (
	idUsuario		INT			NOT NULL,
	strLogin		VARCHAR(50)	NOT NULL,
	strSenha		VARCHAR(50)	NOT NULL,
	btAtivo			BIT			NOT NULL,
	id_Func			INT,
	PRIMARY KEY (idUsuario)
	CONSTRAINT func_pk FOREIGN KEY id_Func REFERENCES Funcionario (idFuncionario) ON DELETE RESTRICT ON UPDATE RESTRICT);


CREATE TABLE Funcionario (
	idFuncionario	INT 		NOT NULL,
	strNome 		VARCHAR(50) NOT NULL,
	Matricula		INT(4),
	CPF				INT 		NOT NULL,
	dtNascimento	DATETIME	NOT NULL,
	Salario			VARCHAR(30)	NOT NULL,
	btAtivo			BIT			NOT NULL,
	id_Cargo		INT			NOT NULL,
	id_Gerente		INT,
	PRIMARY KEY (idFuncionario),
	FOREIGN KEY id_Cargo REFERENCES Cargo (idCargo) ON DELETE SET NULL,
	FOREIGN KEY id_Gerente REFERENCES Funcionario (idFuncionario));
	
CREATE TABLE Logs (
	idLog			INT 		NOT NULL,
	acao 			VARCHAR(50) NOT NULL,
	dtacao			DATETIME	NOT NULL,
	id_Usuario		INT,
	FOREIGN KEY id_Usuario REFERENCES Usuario (idUsuario) ON DELETE SET NULL);
	
ALTER TABLE Usuario ADD CONSTRAINT func_pk FOREIGN KEY id_Func REFERENCES Funcionario (idFuncionario) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE Funcionario ADD CONSTRAINT valida_Ano CHECK (YEAR(dtNascimento) > 1900)