DROP DATABASE IF EXISTS baba_das_estrelas;

CREATE DATABASE baba_das_estrelas;

USE baba_das_estrelas;


CREATE TABLE Jogadores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    numero_telefone VARCHAR(20),
    is_active BOOLEAN DEFAULT TRUE,
    is_admin BOOLEAN DEFAULT FALSE
);


CREATE TABLE Estatisticas (
    jogador_id INT PRIMARY KEY,
    gols INT DEFAULT 0,
    assistencias INT DEFAULT 0,
    jogos INT DEFAULT 0,
    quantidade_estrelas INT DEFAULT 0,
    FOREIGN KEY (jogador_id) REFERENCES Jogadores(id) ON DELETE CASCADE
);


CREATE TABLE Partida (
    id INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(255),
    local VARCHAR(100),
    hora DATETIME
);


CREATE TABLE Mensagens (
    id INT PRIMARY KEY AUTO_INCREMENT,
    conteudo TEXT NOT NULL,
    hora DATETIME DEFAULT CURRENT_TIMESTAMP,
    jogador_id INT NOT NULL,
    FOREIGN KEY (jogador_id) REFERENCES Jogadores(id)
);


CREATE TABLE Banimento (
    id INT PRIMARY KEY AUTO_INCREMENT,
    razao VARCHAR(255) NOT NULL,
    inicio DATETIME NOT NULL,
    fim DATETIME,
    jogador_id INT NOT NULL,
    FOREIGN KEY (jogador_id) REFERENCES Jogadores(id)
);


CREATE TABLE jogador_partida (
    jogador_id INT NOT NULL,
    partida_id INT NOT NULL,
    PRIMARY KEY (jogador_id, partida_id),
    FOREIGN KEY (jogador_id) REFERENCES Jogadores(id) ON DELETE CASCADE,
    FOREIGN KEY (partida_id) REFERENCES Partida(id) ON DELETE CASCADE
);


CREATE TABLE administra_jogador (
    admin_id INT NOT NULL,
    membro_id INT NOT NULL,
    PRIMARY KEY (admin_id, membro_id),
    FOREIGN KEY (admin_id) REFERENCES Jogadores(id) ON DELETE CASCADE,
    FOREIGN KEY (membro_id) REFERENCES Jogadores(id) ON DELETE CASCADE
);


SHOW TABLES;
DESC Jogadores;
DESC Estatisticas;
DESC Partida;
DESC Mensagens;
DESC Banimento;
DESC jogador_partida;
DESC administra_jogador;