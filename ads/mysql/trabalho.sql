drop database if exists ocorrencias_aeronauticas;

create database ocorrencias_aeronauticas;

use ocorrencias_aeronauticas;

CREATE TABLE fator_contribuinte (
    codigo_ocorrencia3 VARCHAR(255),
    fator_nome VARCHAR(255),
    fator_aspecto VARCHAR(255),
    fator_condicionante VARCHAR(255),
    fator_area VARCHAR(255)
);

CREATE TABLE ocorrencia_tipo (
    codigo_ocorrencia1 VARCHAR(255),
    ocorrencia_tipo VARCHAR(255),
    ocorrencia_tipo_categoria VARCHAR(255),
    taxonomia_tipo_icao VARCHAR(255)
);

CREATE TABLE recomendacao (
    codigo_ocorrencia4 VARCHAR(255),
    recomendacao_numero VARCHAR(255),
    recomendacao_dia_assinatura VARCHAR(255),
    recomendacao_dia_encaminhamento VARCHAR(255),
    recomendacao_dia_feedback VARCHAR(255),
    recomendacao_status VARCHAR(255),
    recomendacao_destinatario_sigla VARCHAR(255),
    recomendacao_destinatario VARCHAR(255),
    recomendacao_conteudo TEXT
);

CREATE TABLE ocorrencia (
    codigo_ocorrencia1 VARCHAR(255),
    codigo_ocorrencia4 VARCHAR(255),
    codigo_ocorrencia2 VARCHAR(255),
    codigo_ocorrencia3 VARCHAR(255),
    codigo_ocorrencia VARCHAR(255),
    ocorrencia_classificacao VARCHAR(255),
    ocorrencia_latitude VARCHAR(255),
    ocorrencia_longitude VARCHAR(255),
    ocorrencia_cidade VARCHAR(255),
    ocorrencia_uf VARCHAR(255),
    ocorrencia_pais VARCHAR(255),
    ocorrencia_aerodromo VARCHAR(255),
    ocorrencia_dia VARCHAR(255),
    ocorrencia_hora VARCHAR(255),
    investigacao_aeronave_liberada VARCHAR(255),
    investigacao_status VARCHAR(255),
    divulgacao_relatorio_numero VARCHAR(255),
    divulgacao_relatorio_publicado VARCHAR(255),
    divulgacao_dia_publicacao VARCHAR(255),
    total_recomendacoes VARCHAR(255),
    total_aeronaves_envolvidas VARCHAR(255),
    ocorrencia_saida_pista VARCHAR(255)
);

CREATE TABLE aeronave (
    codigo_ocorrencia2 VARCHAR(255),
    aeronave_matricula VARCHAR(255),
    aeronave_operador_categoria VARCHAR(255),
    aeronave_tipo_veiculo VARCHAR(255),
    aeronave_fabricante VARCHAR(255),
    aeronave_modelo VARCHAR(255),
    aeronave_tipo_icao VARCHAR(255),
    aeronave_motor_tipo VARCHAR(255),
    aeronave_motor_quantidade VARCHAR(255),
    aeronave_pmd VARCHAR(255),
    aeronave_pmd_categoria VARCHAR(255),
    aeronave_assentos VARCHAR(255),
    aeronave_ano_fabricacao VARCHAR(255),
    aeronave_pais_fabricante VARCHAR(255),
    aeronave_pais_registro VARCHAR(255),
    aeronave_registro_categoria VARCHAR(255),
    aeronave_registro_segmento VARCHAR(255),
    aeronave_voo_origem VARCHAR(255),
    aeronave_voo_destino VARCHAR(255),
    aeronave_fase_operacao VARCHAR(255),
    aeronave_tipo_operacao VARCHAR(255),
    aeronave_nivel_dano VARCHAR(255),
    aeronave_fatalidades_total VARCHAR(255)
);
