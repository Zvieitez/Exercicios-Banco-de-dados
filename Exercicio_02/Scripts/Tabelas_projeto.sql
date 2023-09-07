create table if not exists
public.cliente_tb(
id_cliente serial primary key,
nome varchar (160),
cpf varchar (14),
telefone varchar (11),
endereco varchar (200)
);

create table if not exists
public.carro_tb(
id_carro serial primary key,
modelo varchar (40),
cor varchar (40),
fabricante varchar (40),
placa varchar (8),
valor_diaria numeric(5,2)
);

create table if not exists
public.solicitacao_tb(
id_solicitacao serial primary key,
id_cliente int,	
id_carro int,
dt_solicitacao timestamp not null default current_timestamp,
dt_retirada timestamp not null default current_timestamp,
dt_dev_prevista timestamp not null default current_timestamp,
dt_devolucao timestamp not null default current_timestamp,
qtd_dias_aluguel integer,
valor_diaria numeric (5,2),
total_diaria numeric (5,2),
ativo char (1) not null default 'S',
foreign key (id_cliente) references public.cliente_tb (id_cliente),
foreign key (id_carro) references public.carro_tb (id_carro)
);


SELECT id, nome, data_de_nascimento, documento, email
FROM public.db_cliente;

