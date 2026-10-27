CREATE DATABASE IF NOT EXISTS ocorencias_aeronauticas;
USE ocorencias_aeronauticas;

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS ocorrencia;
DROP TABLE IF EXISTS recomendacao;
DROP TABLE IF EXISTS fator_contribuinte;
DROP TABLE IF EXISTS aeronave;
DROP TABLE IF EXISTS ocorrencia_tipo;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE ocorrencia_tipo (
    id_ocorrencia_tipo INT NOT NULL,
    codigo_ocorrencia INT NOT NULL,
    ocorrencia_tipo VARCHAR(255),
    ocorrencia_tipo_categoria VARCHAR(100),
    taxonomia_tipo_icao VARCHAR(50)
);

CREATE TABLE aeronave (
    id_aeronave INT NOT NULL,
    codigo_ocorrencia INT NOT NULL,
    aeronave_matricula VARCHAR(20),
    aeronave_operador_categoria VARCHAR(100),
    aeronave_tipo_veiculo VARCHAR(100),
    aeronave_fabricante VARCHAR(100),
    aeronave_modelo VARCHAR(100),
    aeronave_tipo_icao VARCHAR(50),
    aeronave_motor_tipo VARCHAR(50),
    aeronave_motor_quantidade INT,
    aeronave_pmd DECIMAL(10,2),
    aeronave_pmd_categoria VARCHAR(50),
    aeronave_assentos INT,
    aeronave_ano_fabricacao INT,
    aeronave_pais_fabricante VARCHAR(100),
    aeronave_pais_registro VARCHAR(100),
    aeronave_registro_categoria VARCHAR(50),
    aeronave_registro_segmento VARCHAR(50),
    aeronave_voo_origem VARCHAR(100),
    aeronave_voo_destino VARCHAR(100),
    aeronave_fase_operacao VARCHAR(100),
    aeronave_tipo_operacao VARCHAR(100),
    aeronave_nivel_dano VARCHAR(50),
    aeronave_fatalidades_total INT
);

CREATE TABLE fator_contribuinte (
    id_fator INT NOT NULL,
    codigo_ocorrencia INT NOT NULL,
    fator_nome VARCHAR(255),
    fator_aspecto VARCHAR(100),
    fator_condicionante VARCHAR(255),
    fator_area VARCHAR(100)
);

CREATE TABLE recomendacao (
    id_recomendacao INT NOT NULL,
    codigo_ocorrencia INT NOT NULL,
    recomendacao_numero VARCHAR(50),
    recomendacao_dia_assinatura DATE,
    recomendacao_dia_encaminhamento DATE,
    recomendacao_dia_feedback DATE,
    recomendacao_status VARCHAR(100),
    recomendacao_destinatario_sigla VARCHAR(50),
    recomendacao_destinatario VARCHAR(255),
    recomendacao_conteudo TEXT
);

CREATE TABLE ocorrencia (
    codigo_ocorrencia INT NOT NULL,
    ocorrencia_classificacao VARCHAR(100),
    ocorrencia_latitude VARCHAR(50),
    ocorrencia_longitude VARCHAR(50),
    ocorrencia_cidade VARCHAR(150),
    ocorrencia_uf VARCHAR(2),
    ocorrencia_pais VARCHAR(100),
    ocorrencia_aerodromo VARCHAR(50),
    ocorrencia_dia DATE,
    ocorrencia_hora TIME,
    investigacao_aeronave_liberada VARCHAR(10),
    investigacao_status VARCHAR(100),
    divulgacao_relatorio_numero VARCHAR(50),
    divulgacao_relatorio_publicado VARCHAR(10),
    divulgacao_dia_publicacao DATE,
    total_recomendacoes INT,
    total_aeronaves_envolvidas INT,
    ocorrencia_saida_pista VARCHAR(10)
);

ALTER TABLE ocorrencia_tipo 
    ADD CONSTRAINT pk_ocorrencia_tipo PRIMARY KEY (id_ocorrencia_tipo);

ALTER TABLE aeronave 
    ADD CONSTRAINT pk_aeronave PRIMARY KEY (id_aeronave);

ALTER TABLE fator_contribuinte 
    ADD CONSTRAINT pk_fator_contribuinte PRIMARY KEY (id_fator);

ALTER TABLE recomendacao 
    ADD CONSTRAINT pk_recomendacao PRIMARY KEY (id_recomendacao);

ALTER TABLE ocorrencia 
    ADD CONSTRAINT pk_ocorrencia PRIMARY KEY (codigo_ocorrencia);

ALTER TABLE ocorrencia_tipo 
    ADD CONSTRAINT fk_ocorrencia_tipo FOREIGN KEY (codigo_ocorrencia) REFERENCES ocorrencia(codigo_ocorrencia);

ALTER TABLE recomendacao 
    ADD CONSTRAINT fk_ocorrencia_recomendacao FOREIGN KEY (codigo_ocorrencia) REFERENCES ocorrencia(codigo_ocorrencia);

ALTER TABLE aeronave 
    ADD CONSTRAINT fk_ocorrencia_aeronave FOREIGN KEY (codigo_ocorrencia) REFERENCES ocorrencia(codigo_ocorrencia);

ALTER TABLE fator_contribuinte 
    ADD CONSTRAINT fk_ocorrencia_fator FOREIGN KEY (codigo_ocorrencia) REFERENCES ocorrencia(codigo_ocorrencia);

DESCRIBE ocorrencia;
DESCRIBE ocorrencia_tipo;
DESCRIBE aeronave;
DESCRIBE fator_contribuinte;
DESCRIBE recomendacao;