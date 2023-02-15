CREATE DATABASE Futebol;
USE Futebol;

CREATE TABLE Clube(
	id_clube INT NOT NULL IDENTITY(1,1),
	nome VARCHAR(50) NOT NULL,
	estadio VARCHAR(50) NULL,
	num_vitorias INT NULL,
	num_derrotas INT NULL,
	num_empates INT NULL,
	CONSTRAINT PK_id_clube PRIMARY KEY (id_clube)
);
CREATE TABLE Jogador(
	id_jogador INT NOT NULL IDENTITY(1,1),
	id_clube INT NOT NULL,
	nome VARCHAR(50) NOT NULL,
	data_nascimento DATE NULL,
	nacionalidade VARCHAR(50) NULL,
	num_gols INT NULL, 
	salario INT NULL,
	aptidao VARCHAR(20) NULL,
	CONSTRAINT PK_id_jogador PRIMARY KEY (id_jogador),
	CONSTRAINT FK_id_clube FOREIGN KEY (id_clube) REFERENCES Clube (id_clube)
);
CREATE TABLE Liga(
	id_liga INT NOT NULL IDENTITY(1,1),
	nome VARCHAR(50) NOT NULL,
	num_rodadas INT NULL,
	CONSTRAINT PK_id_liga PRIMARY KEY (id_liga) 
);
CREATE TABLE Partida(
	id_partida INT NOT NULL IDENTITY(1,1),
	id_liga INT NOT NULL,
	id_mandante INT NOT NULL,
	id_visitante INT NOT NULL,
	data_partida DATE NOT NULL,
	placar VARCHAR(5) NULL,
	vencedor VARCHAR(20) NULL,
	derrotado VARCHAR(20) NULL, 
	empate BIT NULL,
	CONSTRAINT PK_id_partida PRIMARY KEY (id_partida),
	CONSTRAINT FK_id_liga FOREIGN KEY (id_liga) REFERENCES Liga (id_liga),
	CONSTRAINT FK_id_mandante FOREIGN KEY (id_mandante) REFERENCES Clube (id_clube),
	CONSTRAINT FK_id_visitante FOREIGN KEY (id_visitante) REFERENCES Clube (id_clube)
);