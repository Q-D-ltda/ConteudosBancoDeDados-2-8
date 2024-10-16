create database umParaUm;

drop database if exists umParaUm;

use umParaUm;

create table maridos(
	id_maridos int not null,
    nome_maridos varchar(40) not null,
    primary key(id_maridos) 
);

drop table esposas;

create table esposas (
	id_esposa int not null,
    id_maridos int not null unique,
    nome_esposa varchar(40) not null,
   primary key(id_esposa),
   foreign key(id_maridos) references maridos(id_maridos)
);


insert into maridos
(id_maridos, nome_maridos)
values
(1, 'Mateus'),
(2, 'Gabriel'),
(3, 'Ricardo');

select * from maridos;

insert into esposas
(id_esposa, id_maridos, nome_esposa)
values
(1,1, 'Gabrielle'),
(2,2, 'Ana');

insert into esposas
(id_esposa, id_maridos, nome_esposa)
values
(3,2,'Sônia');

select * from esposas;