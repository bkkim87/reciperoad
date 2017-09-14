create table qustionboard(
	num int primary key auto_increment,
	mem_id varchar(50),
	email varchar(30),
	qtype char(10) not null,
	subject varchar(50) not null,
	reg_date datetime not null,
	readcount int default 0,
	ref int not null,
	re_step smallint not null, 
	re_level smallint not null,
	content text not null,
	ip varchar(20) not null,
	constraint fkmem_id foreign key(mem_id) references member (mem_id) on delete no action
	);
	
	desc  qustionboard;
	
	drop table qustionboard;
