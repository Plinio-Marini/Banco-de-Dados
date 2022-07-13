create table if not exists tb_funcionario(
	num_carteira INT not null,
	nome varchar(45) not null,
	salario float not null,
	dt_admissao date not null,
	constraint num_carteira primary key (num_carteira),
	unique(num_carteira)
);

create table if not exists tb_cliente(
	id_cliente INT not null,
	nome varchar(45) not null,
	cpf varchar(45) not null,
	email varchar(45) not null,
	constraint id_cliente primary key (id_cliente),
	unique(id_cliente)
);

create table if not exists tb_venda(
	id_venda INT not null,
	dt_venda date not null,
	forma_pagamento varchar(45) not null,
	valor_total float not null,
	id_cliente INT not null,
	constraint id_venda primary key (id_venda),
	unique(id_venda),
	constraint id_cliente foreign key (id_cliente)
		references tb_cliente(id_cliente)
);

create table if not exists tb_funcionario_has_tb_venda(
	num_carteira INT not null,
	id_venda INT not null,
	constraint num_carteira foreign key (num_carteira)
		references tb_funcionario(num_carteira),
	constraint id_venda foreign key (id_venda)
		references tb_venda(id_venda)
);

create table if not exists tb_sessao(
	id_sessao int not null,
	dt_sessao date not null,
	duracao_sessao time not null,
	horario_exib timestamp with time zone not null,
	constraint id_sessao primary key (id_sessao),
	unique(id_sessao)
);

create table if not exists tb_funcao(
	id_funcao int not null,
	nome_funcao varchar(45) not null,
	desc_funcao varchar(45),
	id_sessao int not null,
	constraint id_funcao primary key (id_funcao),
	unique(id_funcao),
	constraint id_sessao foreign key (id_sessao)
		references tb_sessao(id_sessao)
);

create table if not exists tb_funcionario_has_tb_funcao(
	num_carteira INT not null,
	id_funcao INT not null,
	constraint num_carteira foreign key (num_carteira)
		references tb_funcionario(num_carteira),
	constraint id_funcao foreign key (id_funcao)
		references tb_funcao(id_funcao)
);

create table if not exists tb_propagandas(
	id_propaganda int not null,
	nome varchar(45) not null,
	agencia varchar(45) not null,
	faixa_etaria int not null,
	id_sessao int not null,
	constraint id_propaganda primary key (id_propaganda),
	unique(id_propaganda),
	constraint id_sessao foreign key (id_sessao)
		references tb_sessao(id_sessao)
);

create table if not exists tb_produto(
	id_produto int not null,
	descricao varchar(45),
	nome varchar(45) not null,
	valor float not null,
	id_venda int not null,
	id_sessao int not null,
	constraint id_produto primary key (id_produto),
	unique(id_produto),
	constraint id_venda foreign key (id_venda)
		references tb_venda(id_venda),
	constraint id_sessao foreign key (id_sessao)
		references tb_sessao(id_sessao)
);

create table if not exists tb_sala(
	nome varchar(45) not null,
	capacidade int not null,
	constraint nome primary key (nome),
	unique(nome)
);

create table if not exists tb_sala_has_tb_sessao(
	nome_sala varchar(45) not null,
	id_sessao INT not null,
	constraint nome_sala foreign key (nome_sala)
		references tb_sala(nome),
	constraint id_sessao foreign key (id_sessao)
		references tb_sessao(id_sessao)
);

create table if not exists tb_filme(
	nome_br varchar(45) not null,
	ano_lancamento date not null,
	diretor varchar(45) not null,
	nome_original varchar(45),
	sinopse varchar(400),
	tipo varchar(45) not null,
	id_sessao int not null,
	constraint nome_br primary key (nome_br),
	unique(nome_br),
	constraint id_sessao foreign key (id_sessao)
		references tb_sessao(id_sessao)
);

create table if not exists tb_premiacoes(
	nome varchar(45) not null,
	ano date not null,
	filme_nome_br varchar(45) not null,
	constraint nome_premiacao primary key (nome),
	unique(nome),
	constraint filme_nome_br foreign key (filme_nome_br)
		references tb_filme(nome_br)
);