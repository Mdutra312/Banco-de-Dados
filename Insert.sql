
insert into tbFabricante(nomeFabricante,cnpjFabricante)
values

 

('Visconti','12.345.878/0001-90'),
('Lacta','34.567.989/0001-34'),
('Garoto','56.784.564/0001-93'),
('Nestle','98.543.234/0001-03'),
('Arcor','98.543.234/0001-03'),
('Topcau','98.543.234/0001-03')

select * from tbProduto
 

-----------------EXECUTADO-------------------
insert into tbProduto(nomeProduto,precoProduto,pesoProduto,codFabricante)

 

    values  ('Ovo ao leite',19.50,300,1),
            ('Ovo Bis',22.90,400,2),
            ('Ovo Laka',21.98,400,2),
            ('Ovo Shot',24.56,400,2),
            ('Ovo Batom ao leite',26.70,500,3),
            ('Ovo Batom branco',28.90,500,3),
            ('Ovo Tortuguita morango',18.90,400,4),
            ('Ovo Aerado',19,400,4),
            ('Ovo Twist',19.90,400,4),
            ('Ovo Toy Story',12.50,100,5)
DBCC CHECKIDENT('tbProduto', RESEED, 999)
go