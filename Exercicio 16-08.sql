create database exercicio16_08;
 
create table Clientes (Id integer,Idade integer(10), Nome varchar(40), Escolaridade varchar(50),  Email varchar(50), Estado varchar(15), primary key (id));

create table Vendas (Id integer, NroNotaFiscal integer(20), Serie varchar(20), Data date, IdCliente integer, primary key (id), foreign key (idCliente) references Clientes(id));

create table Produtos (Id integer, Descricao varchar(50), Preco varchar(25), primary key (id));

create table Itens (IdVenda integer, IdProduto integer, Quantidade integer(20), foreign key(IdVenda) references Vendas(Id), foreign key (IdProduto) references Produtos (Id));


insert into Clientes values (1,27,'Andreia Biancato','Mestrado','teste@teste.com','RS');
insert into Clientes values (3,27,'Maricelia Soares','Superior Completo','andreia@gmail.com','SC');
insert into Clientes values (9,27,'Juliana Baroni','Primario incompleto','ju@gmail.com','SP');
insert into Clientes values (10,27,'Panicat','Jardim Completo','biscate@band.com','RJ');

insert into Produtos values (1,'Tv LCD 32','R$ 1.699,00');
insert into Produtos values (2,'Mouse Opitico Microsoft','R$ 158,36');
insert into Produtos values (3,'Telefone Celular Iphone','R$ 1.989,25');
insert into Produtos values (4,'Home Theater Philips','R$ 999,00');

insert into Itens values (1,1,2);
insert into Itens values (1,2,3);
insert into Itens values (1,3,5);
insert into Itens values (2,2,1);
insert into Itens values (3,1,2);
insert into Itens values (3,2,1);
insert into Itens values (3,3,4);
insert into Itens values (4,1,1);

insert into Vendas values (1,1233,'ab','2012-03-03',1);
insert into Vendas values (2,555,'c3f','2011-03-03',9);
insert into Vendas values (3,778,'vb4','2011-12-03',9);
insert into Vendas values (4,5553,'cbf','2011-12-09',3);

1) Mostre o nome do cliente, nota fiscal, e serie de todas as vendas realizadas utilizando explicit
join e implicit join;
SELECT clientes.Nome, Vendas.NroNotaFiscal, Vendas.Serie FROM Clientes, Vendas JOIN Vendas ON clientes.id = Vendas.IdCliente;

2) Mostre o nome do cliente, nota fiscal e serie de todas as vendas que incluírem um Iphone;
select Clientes.Nome, Vendas.NroNotaFiscal, Vendas.Serie from Clientes, Vendas, Produtos where Produtos.Descricao like '%Iphone%'; 

3) Mostre a descrição de todos os produtos incluídos em todas as vendas ordenando pelo numero
da Nota Fiscal;
select Produtos.id, Produtos.Descricao, Produtos.Preco,Vendas.NroNotaFiscal from Produtos, Vendas order by Vendas.Serie;

4) Altere a tabela Vendas, incluindo um campo Data, do tipo Date;
ALTER TABLE Vendas ADD Data date;

5) Selecione todos os registros da tabela vendas, formatando a saída para dd/mm/aaaa;
SELECT DATE_FORMAT(Data, '%d/%m/%Y') FROM Vendas;

6) Mostre o numero da nota fiscal, serie, nome do cliente e data da venda, utilizando um RIGHT
OUTER JOIN e ordenando pela data da venda de forma decrescente;

SELECT  Vendas.NroNotaFiscal, Vendas.Serie, Clientes.Nome, Vendas.Data from Clientes, Vendas
RIGHT JOIN Clientes,Vendas order by - Vendas.Data;