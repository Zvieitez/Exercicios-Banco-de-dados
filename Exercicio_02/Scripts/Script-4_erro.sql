create table if not exists 
public.equipe_tb(
id_equipe serial primary key,
desc_equipe varchar(45),
data_inclusao timestamp not null default current_timestamp
);

create table if not exists
public.vendedor_tb (
id_vendedor serial primary key,
nome varchar (45),
id_equipe integer not null,
data_inclusao timestamp not null default current_timestamp,
foreign key id_equipe references equipe_tb (id_equipe)
);

create table if not exists
public.produto_tb(
id_produto serial primary key,
desc_produto varchar(45),
valor numeric,
data_inclusao timestamp not null default current_timestamp
);


create table if not exists
public.venda_tb(
id_venda serial primary key,
id_vendedor int,
id_produto int,
id_equipe int,
data_inclusao timestamp not null default current_timestamp,
foreign key id_vendedor references vendedor_tb (id_vendedor),
foreign key id_produto references produto_tb (id_produto),
foreign key id_equipe references equipe_tb (id_equipe),
);