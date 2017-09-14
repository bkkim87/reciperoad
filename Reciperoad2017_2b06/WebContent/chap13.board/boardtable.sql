create table board(
	num int auto_increment primary key ,
	writer varchar(10) not null,
	email varchar(30),
	subject varchar(50) not null,
	passwd varchar(12) not null,
	reg_date datetime not null,
	readcount int default 0,
	ref int not null,
	re_step smallint not null,
	re_level smallint not null,
	content text not null,
	ip varchar(20) not null
);

insert into board(writer,email,subject,passwd,reg_date, ref,re_step,re_level,content,ip) values(,,?,?,?,?,?,?,?,?)";
select max(num) from board
select * from board;
drop table board;