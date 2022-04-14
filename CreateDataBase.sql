----------ATIVIDADE UPDATE - DELETE

--Criar o banco de dados abaixo, suas tabelas, campos e relacionamentos.
--Criar um script para criação de banco e tabelas, outro script para os INSERTs e 
--um terceiro script para os UPDATES+ DELETEs.-
create table tbFabricante(
codFabricante INT PRIMARY KEY IDENTITY (1,1),
nomeFabricante varchar(60) not null,
cnpjFabricante char(18) not null
)
------------EXECUTADO-------------------

create table tbProduto(
codProduto INT PRIMARY KEY IDENTITY (1,1),
nomeProduto varchar(60),
precoProduto smallmoney not null,
pesoProduto decimal not null,
codFabricante int foreign key references tbFabricante(codFabricante)
)
-------------------------------------------------
select * from tbFabricante
