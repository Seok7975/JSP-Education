create table mvcboard (
no int auto_increment primary key,
name varchar(20),
title varchar(100),
contents text,
wtime timestamp not null default CURRENT_TIMESTAMP,
hit int default 0,
groupNum int,
stepNum int default 0,
indentNum int default 0);