create database grupo04;
use grupo04;

create table usuario(
id_usuario int primary key auto_increment not null,
nome_usuario varchar(45) not null,
data_nascimento varchar(10) not null,
email_usuario varchar(100) not null,
nick_name varchar(45) not null unique,
senha varchar(16) not null unique
);

create table livro(
id_livro int primary key not null auto_increment,
genero_livro int not null,
nome_livro varchar(45) not null,
autor_livro varchar(45) not null,
ano_publicacao int(4) not null,
id_usuario int not null
);

alter table livro
add constraint fk_idusuario foreign key (id_usuario) references usuario (id_usuario);


select * from usuario;
select * from livro;