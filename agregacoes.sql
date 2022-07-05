-------------------------Funções de Agregação-------

--1--
select count(idFabricante) as 'Total de fabricantes' from tbFabricante
--2--
select count(idFuncionario) as 'Total de Funcionário Cadastrados' from tbFuncionario
--3--
select count(idCliente) as 'Total de Clientes Cadastrados' from tbCliente
--4--
select AVG(precoProduto) as 'Média do preço dos produto'from tbProduto
--5--
select MAX(precoProduto) as 'Maior venda realizada' from tbProduto
--6--
select MiN(precoProduto) as 'Menor venda realizada' from tbProduto
--7--
select MIN(precoProduto) as 'Valor do menor produto Cadastrado' from tbProduto
--8--
select MAX(precoProduto) as 'Valor do maior produto Cadastrado' from tbProduto
--9--
select count(idVenda) as 'Total de vendas realizadas' from tbVenda
--10--
select sum(idVenda) as 'Soma de todas as vendas 'from tbVenda
--11--
select avg(idVenda) as 'Média de todas as vendas'from tbVenda