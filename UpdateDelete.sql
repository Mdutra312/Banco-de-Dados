
--a) - Alterar o nome do fabricante de Visconti para Bauducco em todos os registros
update tbFabricante
set nomeFabricante='Bauducco'
where codFabricante between 1 and 6
--b) - Aumentar o preço do produto com valor inferior a 19,00 em 20%; --
--Exigencia 2 comprida e executada--
update tbProduto
set precoProduto=precoProduto+(precoProduto*20/100)
where precoProduto<19
--c) - Diminuir o preço do produto com valor igual a 19 ou superior em 5%
--Exigencia 3 comprida e executada--
update tbProduto
set precoProduto=precoProduto-(precoProduto*5/100)
where precoProduto>=19

--d) - Alterar o nome do produto de código 1000 para “Ovo Tradicional---
--Exigencia 4 comprida e executada--
update tbProduto
set nomeProduto='Ovo Tradicional'
where codProduto=1000
select * from tbProduto
    
----e) - Excluir os registros com código superior 1005 e inferior a 1008--------
-----------------Exigencia 5 comprida e executada------------------------
delete from tbProduto
where codProduto between 1005 and 1008
-----------------------------------------------
--f) - Excluir os produtos que pesem menos de 400g que não sejam da Lacta
--------------6 completa e executada-----
delete from tbProduto
where codProduto=1000 
---------------------
delete from tbProduto
where codProduto=1009
--g) Alterar o cnpj do fabricante Lacta para 62.432.092/0001-90
-----------G Completa e executada-------------
update tbFabricante
set cnpjFabricante='62.432.092/0001-90'
where codFabricante=2
---------------------------------------------
--h) Diminuir em 10% o peso dos produtos do fabricante 04
-----------H completa executada-------------
update tbProduto
set pesoProduto=pesoProduto-(pesoProduto*10/100)
where codProduto between 1006 and 1008

------------------i) Alterar o nome produto Ovo Toy Story para Ovo Star Wars -------
update  tbProduto
set nomeProduto='Ovo Star Wars'
where codProduto=1009
---------------------------------------


