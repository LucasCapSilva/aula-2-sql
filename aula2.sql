-- criar um banco de dados
create database db_servico_rh;

-- acessar banco de dados
use db_servico_rh;

-- criar uma tabela
create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
salario float not null,
primary key(id)
);

-- busca pela tabela
select * from  tb_funcionarios;

-- insert
insert into tb_funcionarios (nome,idade,salario) values ("Vanessa",00,10000);

-- alteração
alter table tb_funcionarios
add descricao varchar(255);

-- apagar coluna
alter table tb_funcionarios
drop column descricao;

-- alterar nome 
alter table tb_funcionarios change descricao descricao_funcionario varchar(255);

UPDATE tb_funcionarios SET descricao_funcionario = 'pessimo funcionaria' WHERE id = 1 and id = 2;


-- deletar uma linha ou um dado de uma tabela

delete from tb_funcionarios where  id = 2;