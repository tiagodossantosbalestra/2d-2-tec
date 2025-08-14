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
