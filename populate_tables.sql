insert into tb_funcionario values (12, 'Funcionario 1', 1569.99, '1994-10-27');
insert into tb_funcionario values (13, 'Funcionario 2', 1769.99, '2000-03-12');
insert into tb_funcionario values (14, 'Funcionario 3', 2369.99, '2007-12-17');

select * from tb_funcionario tf 

insert into tb_cliente values (1, 'Cliente 1', '123456789-00', 'email@teste.com');
insert into tb_cliente values (2, 'Cliente 2', '123456789-01', 'email2@teste.com');
insert into tb_cliente values (3, 'Cliente 3', '123456789-02', 'email3@teste.com');

select * from tb_cliente tc 

insert into tb_venda values (1, '2022-07-12', 'Cartão', 12.99, 1);
insert into tb_venda values (2, '2022-07-12', 'Cartão', 19.99, 3);
insert into tb_venda values (3, '2022-07-12', 'Dinhiero', 12.99, 2);

select * from tb_venda tv 

insert into tb_funcionario_has_tb_venda values (12,1);
insert into tb_funcionario_has_tb_venda values (14,2);
insert into tb_funcionario_has_tb_venda values (13,3);

select * from tb_funcionario_has_tb_venda tfhtv 

insert into tb_sessao values (1, '2022-07-13', '02:20:00', '2022-07-13 10:00:00+03');
insert into tb_sessao values (2, '2022-07-12', '02:00:00', '2022-07-14 17:00:00+03');
insert into tb_sessao values (3, '2022-07-08', '01:45:00', '2022-07-15 15:00:00+03');

select * from tb_sessao ts 

insert into tb_funcao values (1, 'Faxineiro', null, 1);
insert into tb_funcao values (2, 'Vendedor', 'Vende pipoca e doce', 2);
insert into tb_funcao values (3, 'Lanternihna', null, 3);

select * from tb_funcao tf 

insert into tb_funcionario_has_tb_funcao values (12, 1);
insert into tb_funcionario_has_tb_funcao values (13, 2);
insert into tb_funcionario_has_tb_funcao values (14, 3);

select * from tb_funcionario_has_tb_funcao tfhtf 

insert into tb_propagandas values (1, 'Propaganda Avon', 'Avon', 0, 1);
insert into tb_propagandas values (2, 'Propaganda Marlboro', 'Marlboro', 18, 2);
insert into tb_propagandas values (3, 'Propaganda League of Legends', 'Riot Games', 12, 3);

select * from tb_propagandas tp 

insert into tb_produto values (1, null, 'Chiclete', 2.19, 1, 2); 
insert into tb_produto values (2, null, 'Bala', 1.19, 2, 1); 
insert into tb_produto values (3, null, 'Pipoca', 8.29, 3, 3); 

select * from tb_produto tp 

insert into tb_sala values ('Sala A', 199);
insert into tb_sala values ('Sala B', 299);
insert into tb_sala values ('Sala C', 600);

select * from tb_sala ts 

insert into tb_sala_has_tb_sessao values ('Sala A', 1);
insert into tb_sala_has_tb_sessao values ('Sala B', 2);
insert into tb_sala_has_tb_sessao values ('Sala C', 3);

select * from tb_sala_has_tb_sessao tshts 

insert into tb_filme values ('Nome brasileiro 1', '1997-01-01', 'Diretor XYC', null, 'Sinopse blablabla', 'Infantil', 1);
insert into tb_filme values ('Nome brasileiro 2', '1998-01-01', 'Diretor ABC', null, 'Sinopse blablabla', 'Terror', 2);
insert into tb_filme values ('Nome brasileiro 3', '1999-01-01', 'Diretor AC', 'Nome original', null, 'Comédia', 3);

select * from tb_filme tf 

insert into tb_premiacoes values ('Oscar comédia', '2005-12-21', 'Nome brasileiro 1');
insert into tb_premiacoes values ('Oscar doidão', '2012-11-11', 'Nome brasileiro 2');
insert into tb_premiacoes values ('Oscar x', '2001-01-11', 'Nome brasileiro 3');

select * from tb_premiacoes tp 