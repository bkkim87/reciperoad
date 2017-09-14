create table member(
	mem_name varchar(50), 
	mem_id varchar(50),
	mem_birth char(16),
	password varchar(50),
	email varchar(50)
);

desc member;

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
    content text not null,
);