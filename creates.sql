create database bdLojaDeRoupas
go

create table tbCliente(
idCliente int primary key identity(1,1),
nomeCliente varchar(60) ,
idadeCliente int
)

select * from tbCliente

create table tbFabricante(
idFabricante int primary key identity(1,1),
nomeFabricante varchar(75)
)

create table tbFuncionario(
	idFuncionario int primary key identity(1,1),
	nomeFuncionario varchar (60) ,
	idadeFuncionario int ,
	dataAdimissao date,
	salarioFuncionario smallmoney
)

create table tbVendedor(
	idVendedor int primary key identity(1,1) ,
	nomeVendedor varchar(60)
)

create table tbVenda(
	idVenda int primary key identity(1,1),
	dataVenda date,
	idCliente int foreign key references tbCliente(idCliente),
	idVendedor int foreign key references tbVendedor(idVendedor),
	totalVendas int 
)

create table tbProduto(
	idProduto int primary key identity(1,1),
	nomeProduto varchar(75) ,
	precoProduto smallmoney ,
	dataEntradaProduto date ,
	idFuncionario int foreign key references tbFuncionario(idFuncionario),
	idFabricante int foreign key references tbFabricante(idFabricante)

)

create table tbItensVenda(
	idItensVenda int primary key identity(1,1),
	idVenda int foreign key references tbVenda(idVenda),
	idProduto int foreign key references tbProduto(idProduto),
	quantidadeItens int,
	subTotalItens int
	
)


















