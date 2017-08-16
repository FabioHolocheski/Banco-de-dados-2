create database Industria_beleza;

create table vendedor (id integer, nome integer(50), id_regiao integer, id_veiculo integer, primary key (id), foreign key (id_regiao) references regiao(id),foreign key (id_veiculo) references veiculo(id));

create table regiao (id integer, descricao varchar(50), primary key (id));

create table veiculo(id integer, nome varchar(50), placa varchar(30), primary key (id));	

create table produto (id integer, nome varchar(50), preco float(15), primary key (id));	

create table cliente (id integer, nome integer,  primary key (id));
 
create table nota_fiscal (id integer, id_vendedor integer, id_cliente integer, id_produto integer, QTD_vendida integer(20),  primary key (id), foreign key (id_vendedor) references vendedor(id),foreign key (id_cliente) references cliente (id), foreign key (id_produto) references produto(id));
 
