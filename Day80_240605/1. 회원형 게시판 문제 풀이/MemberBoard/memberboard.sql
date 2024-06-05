create table memberboard(
	no int auto_increment primary key,
	id varchar(20) not null,
	title varchar(100) not null,
	contents text not null,
	hit int not null default 0,
	wtime timestamp not null default CURRENT_TIMESTAMP,
	groupNum int not null default 0,
	stepNum int not null default 0,
	indentNum int not null default 0,
    foreign key (id) references member (id) on delete cascade
);