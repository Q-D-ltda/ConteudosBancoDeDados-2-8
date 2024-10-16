drop database if exists loja;

create database loja;

use loja;

create table cadastro(
	id int not null auto_increment,
    nome varchar(30) not null,
    primary key(id)
);
    
insert into cadastro
    (nome)
    values
    ('Ajax'),
    ('Sansul'),
    ('South Chairs'),
    ('Elon Electro'),
    ('Mike Electro');
    
select * from cadastro;

rename table cadastro to fornecedores;

select * from fornecedores;

alter table fornecedores add column
	estado char(2);
    
update fornecedores
set endereco = 'Rua Rui Barbosa', cidade =  'Maringá', estado = 'PR'
    where id = '5';