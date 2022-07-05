--3 fabricantes: Malwee, Marisol e Cia da Malha--
insert into tbFabricante(nomeFabricante)
values ('Malwee'),
		('Marisol'),
		('Cia da Malha')

		select * from tbProduto

--3 produtos para cada fabricante--
insert into tbProduto(nomeProduto, idFabricante, precoProduto)
	values ('Camiseta Show Show',1,20),
			('Celular Moto',1,1600),
			('Teclado Ryzen',1,300),
			
			('Teclas Quebradas(edição limitada)',2,60),
			('Monitor LG',2,700),
			('Carro Volks',2,30000),
			
			('Carrregador Portátil',3,40),
			('Guarda-Chuva',3,25),
			('Computador Lenovo',3,3000)


--2 funcionários--
insert into tbFuncionario(nomeFuncionario)

values 
	('Marilda Dutra Alves'),
	('Júnior Fernando Oliveira')
	

--5 clientes--
insert into tbCliente(nomeCliente)
	values
	('Marta Rodrigues'),
	('Monica Alves'),
	('Vanessa Ferraz'),
	('Aline Mendonça'),
	('Clodoaldo Perez')

--2 vendedores--
insert into tbVendedor(nomeVendedor)

values
	('João Santana'),
	('Raquel Torres')

--1 venda para cada cliente, sendo que cada venda terá 2 itens de venda--
--Distribuir as vendas entre os dois vendedores cadastrados--
insert into tbVenda(dataVenda, idCliente, idVendedor, totalVendas)
values	('12/03/2021', 1, 1, 1),
		('13/05/2020', 2, 1, 1),
		('14/10/2019', 3, 1, 1),
		('17/03/2020', 4, 2, 1),
		('11/03/2022', 5, 2, 1)

insert into tbItensVenda(idVenda,idProduto,quantidadeItens,subTotalItens)

values
		(1,1,2,2),
		(2,2,2,2),
		(3,3,2,2),
		(4,4,2,2),
		(5,5,2,1)