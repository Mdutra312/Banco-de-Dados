-------------------Updates--------------------------
--Alterar o nome do fabricante Cia da Malha para Turma da Malha;--
update tbFabricante
set nomeFabricante = 'Turma da malha'
where idFabricante = 3

--Alterar o valor das vendas do cliente de código 1, concedendo ao mesmo 10% de desconto;--
update tbProduto
set precoProduto = precoProduto-(precoProduto*10)/100
where idProduto between 1 and 3

select * from tbProduto

--Aumentar em 20% o preço dos produtos do fabricante de código 2;---
update tbProduto
set precoProduto = precoProduto+(precoProduto*20)/100
where idProduto between 4 and 6

--Remover o segundo item de venda da venda de código 2, n foi --
delete from tbVenda
where idVenda=2
--Fiz o delete desse aq, pq o de cima n pegou 
delete from tbItensVenda
where idItensVenda=2

--Diminuir a quantidade 10 do produto de código 3 do estoque;--
delete from tbItensVenda
where idItensVenda=3

--Deu mensagem de erro, n posso apagar esse,
--pq o código tem dependencia de chave estrangeira 
delete from tbFabricante
where idFabricante=1

select * from tbVenda

--Diminuir a quantidade 10 do produto de código 3 do estoque;--
update tbItensVenda
set quantidadeItens = quantidadeItens-10
where idItensVenda=3

select * from tbItensVenda