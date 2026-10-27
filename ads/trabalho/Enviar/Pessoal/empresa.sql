drop database if exists empresa_aula;

create database empresa_aula;

use empresa_aula;

CREATE TABLE departamento ( 
numero INT PRIMARY KEY, 
nome VARCHAR(60) NOT NULL, 
gident int, 
dtinicio DATE );

CREATE TABLE funcionario( 
ident INT,
nome VARCHAR(60) NOT NULL,
sobrenome VARCHAR(60) NOT NULL,
 endereco VARCHAR(45),
 dtnasc DATE,
 salario DECIMAL(10,2), 
 sexo CHAR(1),
 supident INT, 
 dnumero INT NOT NULL,
 PRIMARY KEY (ident));
 
 CREATE TABLE projeto (
    numero INT PRIMARY KEY,
    nome VARCHAR(60) NOT NULL,
    localizacao VARCHAR(60),
    dnumero INT NOT NULL
);
 
 ALTER TABLE funcionario ADD CONSTRAINT fk_func_supervisor FOREIGN KEY (supident) REFERENCES funcionario (ident), ADD CONSTRAINT fk_func_departamento FOREIGN KEY (dnumero) REFERENCES departamento (numero);

ALTER TABLE departamento ADD CONSTRAINT fk_dep_gerente FOREIGN KEY (gident) REFERENCES funcionario(ident);

CREATE TABLE trabalha_em ( 
pnumero INT NOT NULL, 
fident int NOT NULL, 
horas DECIMAL(5,2) NOT NULL, 
PRIMARY KEY (pnumero, fident), 
FOREIGN KEY (pnumero) REFERENCES projeto(numero), 
FOREIGN KEY (fident) REFERENCES funcionario(ident), 
CHECK (horas >= 0) );

ALTER TABLE departamento
ADD CONSTRAINT fk_depto_gerente
FOREIGN KEY (gident) REFERENCES funcionario(ident);

create table localizacoes (
dnumero int , 
foreign key (dnumero) references departamento(numero),
localizacao varchar(200),    
primary key(dnumero, localizacao ));


show tables;
desc funcionario;
desc departamento;
desc localizacoes;
desc projeto;
desc trabalha_em;