create database um_para_muitos;

use um_para_muitos;

create table estudantes(
	id_estudante int not null,
	nome_estudante varchar(40) not null,
	primary key(id_estudante)
);

create table disciplinas(
	id_disciplina int not null,
	nome_disciplina varchar(40) not null,
	primary key(id_disciplina)
);

create table estudantes_notas(
	id_estudante int not null,
    id_disciplina int not null,
    nota decimal(3,1),
    foreign key(id_estudante) references estudantes(id_estudante),
    foreign key(id_disciplina) references disciplinas(id_disciplina)
);

insert into estudantes
values
(1, 'André'),
(2, 'Bernardo'),
(3, 'Carolina');

select * from estudantes;

insert into disciplinas
values
(1, 'Banco de Dados'),
(2, 'Algoritmo de Programação'),
(3, 'Programação de Computadores');

select * from disciplinas;

insert into estudantes_notas
(id_estudante, id_disciplina, nota)
values
(1,1, 10),
(1,2, 9.5),
(1,3, 7),
(2,1, 6.5),
(2,2, 4),
(2,3, 1),
(3,1, 10),
(3,2, 9.5),
(3,3, 9);

select * from estudantes_notas;

select nome_estudante, nome_disciplina, nota
from estudantes, disciplinas, estudantes_notas
where estudantes.id_estudante = estudantes_notas.id_estudante and disciplinas.id_disciplina = estudantes_notas.id_disciplina;








