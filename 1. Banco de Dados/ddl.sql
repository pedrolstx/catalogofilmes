create database catalogoFilmesDB;
use catalogofilmesDB;

create table tb_usuario (
	id_usuario int primary key auto_increment,
    nm_usuario varchar(100),
    ds_email varchar(200),
    ds_senha varchar(20)
);

create table tb_filme (
	id_filme int primary key auto_increment,
    id_usuario int,
    nm_filme varchar(200),
    ds_sinopse varchar(4000),
    vl_avaliacao decimal(15,2),
    dt_lancamento date,
    bt_disponivel boolean,
    img_filme varchar(800),
    foreign key (id_usuario) references tb_usuario (id_usuario)
);
