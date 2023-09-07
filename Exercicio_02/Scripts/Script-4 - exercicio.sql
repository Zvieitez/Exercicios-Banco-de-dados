select * from agencia 

--1/2 qtde de registros da tabela agência e colocar o apelido na coluna
select count(*) as qtde_total from agencia; 
--ou
select count(*) qtde_total from agencia;

--3/4 - Faça uma consulta SQL que apresente o valor atual da sequence cliente_numero_seq
select nextval('cliente_numero_seq');  

--5 - Faça uma consulta SQL que apresente a quantidade total de registros da tabela cliente_transacoes, cujo valor das transações estejam igual ou acima de R$ 800,00
select * from cliente_transacoes 

select * from cliente_transacoes where valor >= 800;

select count(*) from cliente_transacoes where valor >= 800; 

--6 - Faça uma consulta SQL que apresente a quantidade total de clientes da tabela cliente cujo nome é "Emílio"

select * from cliente 

select * 
from cliente
where nome like '%Emílio%'

select count(*) 
from cliente
where nome like '%Emílio%'

--7 - Faça uma consulta SQL que apresente ordene de forma decrescente o campo numero da tabela conta_corrente

select * from conta_corrente 

select * from conta_corrente order by numero desc ;

--8 - Faça uma consulta SQL que apresente no resultado o menor e o maior valor de transacao efetuados na tabela cliente_transacoes

select * from cliente_transacoes 

select min (valor) as minimo from cliente_transacoes;

select max (valor) as maximo from cliente_transacoes;

--ou

select 
min (valor) as minimo,
max (valor) as maximo
from cliente_transacoes 

--9 - Faça uma consulta SQL que apresente no resultado todos os valores de transações entre
--R$ 400,00 e R$ 800,00 efetuados na tabela cliente_transacoes. Ao final ordene esses valores em orderm crescente

select * from cliente_transacoes where valor between 400 and 800 order by valor asc;

--ou

select *
from cliente_transacoes 
where valor >= 400
and valor <= 800
order by valor asc;

--10 - Faça uma consulta SQL que apresente no resultado todos os nomes que comecem com a letra "A"
--na tabela cliente. Após ordene de forma decrescente os nomes.

select * from cliente where nome like 'A%' order by nome desc;





