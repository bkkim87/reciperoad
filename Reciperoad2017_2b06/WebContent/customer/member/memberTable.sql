create table member(
	mem_id varchar(50) primary key,
	passwd varchar(50) not null,
	phone varchar(50) not null,
	job varchar(50) null,
	email varchar(50) null,
	zipcode varchar(50) not null,
	address1 varchar(50) not null,
	address2 varchar(50) not null,
	gender varchar (10) not null,
	mem_name varchar(50) not null,
	mem_num1 varchar(50) not null,
	mem_num2 varchar(50) not null,
	pwhint varchar(50) not null,
	hintanswer varchar(100) not null,
	reg_date datetime
);

desc member;
use 2b06_db;
drop table member;
select * from member;

create table member(
    id varchar(50) not null primary key,
    passwd varchar(16) not null,
    name varchar(10) not null,
    reg_date datetime not null
);
create table test(
    num_id int not null primary key auto_increment,
    title varchar(50) not null,
    content text not null
);

update member set passwd='1111' where mem_id='kbkcan'