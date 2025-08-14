create database escola;

use escola;

create table professor(
id_professor int not null primary key,
nome varchar(100) not null,
especialidade varchar (100),
 salario decimal(10,2),
 uf char(2)
 );


create table disciplina(
id_disciplina int auto_increment not null primary key,
nome varchar(100) not null,
id_professor int,
carga_horaria int,
foreign key (id_professor) references professor (id_professor)
);



create table aluno(
id_aluno int auto_increment not null primary key,
nome varchar(100) not null,
sexo char(1),
data_nascimento date,
nota_final decimal(4,2),
ativo boolean
);


create table curso(
id_curso int auto_increment not null primary key,
nome varchar(100) not null,
carga_horaria int,
modalidade varchar(50)
);

create table matricula(
id_matricula int auto_increment not null primary key,
id_aluno int,
id_curso int,
data_matricula date,
foreign key (Id_aluno) references aluno(id_aluno),
foreign key (id_curso) references curso(id_curso)
);

create table login(
id_login  int auto_increment not null primary key,
id_aluno int,
data_hora datetime,
ip varchar(40),
sucesso boolean,
foreign key (id_aluno) references aluno(id_aluno)
);

show tables;

-- insert dados professor
insert into professor (id_professor,nome,especialidade,salario,uf) values
(1,'joão da silva','banco de dados','2500.00','PR');

-- insert disciplinas
insret into disciplinas(nome,id_professor,carga_horaria) values
('Banco de dados iniciante',1,60);

-- Alunos
insert into aluno (nome,sexo,data_nascimento,nota_final,ativo) values
('Marinho da silva','m',2007-05-10, 8.5, true);

