show databases;
show tables;
use 2b06_db;

/*
 * create table 지역
 */
create table busan(
우편번호 varchar(10),
시도 varchar(40),
시군구 varchar(40),
읍면 varchar(40),
도로명코드 varchar(24),
도로명 varchar(160), 
건물번호본번 varchar(10),
건물번호부번 varchar(10),
건물관리번호 varchar(50),
시군구용건물명 varchar(400),
법정동명 varchar(20),
리명 varchar(40),
행정동명 varchar(80),
지번본번 varchar(8),
읍면동일련번호 varchar(4),
지번부번 int,
primary key(건물관리번호)
);

create table chungbuk(
우편번호 varchar(10),
시도 varchar(40),
시군구 varchar(40),
읍면 varchar(40),
도로명코드 varchar(24),
도로명 varchar(160), 
건물번호본번 varchar(10),
건물번호부번 varchar(10),
건물관리번호 varchar(50),
시군구용건물명 varchar(400),
법정동명 varchar(20),
리명 varchar(40),
행정동명 varchar(80),
지번본번 varchar(8),
읍면동일련번호 varchar(4),
지번부번 int,
primary key(건물관리번호)
);

create table chungnam(
우편번호 varchar(10),
시도 varchar(40),
시군구 varchar(40),
읍면 varchar(40),
도로명코드 varchar(24),
도로명 varchar(160), 
건물번호본번 varchar(10),
건물번호부번 varchar(10),
건물관리번호 varchar(50),
시군구용건물명 varchar(400),
법정동명 varchar(20),
리명 varchar(40),
행정동명 varchar(80),
지번본번 varchar(8),
읍면동일련번호 varchar(4),
지번부번 int,
primary key(건물관리번호)
);

create table daegu(
우편번호 varchar(10),
시도 varchar(40),
시군구 varchar(40),
읍면 varchar(40),
도로명코드 varchar(24),
도로명 varchar(160), 
건물번호본번 varchar(10),
건물번호부번 varchar(10),
건물관리번호 varchar(50),
시군구용건물명 varchar(400),
법정동명 varchar(20),
리명 varchar(40),
행정동명 varchar(80),
지번본번 varchar(8),
읍면동일련번호 varchar(4),
지번부번 int,
primary key(건물관리번호)
);

create table daejeon(
우편번호 varchar(10),
시도 varchar(40),
시군구 varchar(40),
읍면 varchar(40),
도로명코드 varchar(24),
도로명 varchar(160), 
건물번호본번 varchar(10),
건물번호부번 varchar(10),
건물관리번호 varchar(50),
시군구용건물명 varchar(400),
법정동명 varchar(20),
리명 varchar(40),
행정동명 varchar(80),
지번본번 varchar(8),
읍면동일련번호 varchar(4),
지번부번 int,
primary key(건물관리번호)
);

create table seoul(
우편번호 varchar(10),
시도 varchar(40),
시군구 varchar(40),
읍면 varchar(40),
도로명코드 varchar(24),
도로명 varchar(160), 
건물번호본번 varchar(10),
건물번호부번 varchar(10),
건물관리번호 varchar(50),
시군구용건물명 varchar(400),
법정동명 varchar(20),
리명 varchar(40),
행정동명 varchar(80),
지번본번 varchar(8),
읍면동일련번호 varchar(4),
지번부번 int,
primary key(건물관리번호)
);

create table gwangju(
우편번호 varchar(10),
시도 varchar(40),
시군구 varchar(40),
읍면 varchar(40),
도로명코드 varchar(24),
도로명 varchar(160), 
건물번호본번 varchar(10),
건물번호부번 varchar(10),
건물관리번호 varchar(50),
시군구용건물명 varchar(400),
법정동명 varchar(20),
리명 varchar(40),
행정동명 varchar(80),
지번본번 varchar(8),
읍면동일련번호 varchar(4),
지번부번 int,
primary key(건물관리번호)
);

create table gyeongbuk(
우편번호 varchar(10),
시도 varchar(40),
시군구 varchar(40),
읍면 varchar(40),
도로명코드 varchar(24),
도로명 varchar(160), 
건물번호본번 varchar(10),
건물번호부번 varchar(10),
건물관리번호 varchar(50),
시군구용건물명 varchar(400),
법정동명 varchar(20),
리명 varchar(40),
행정동명 varchar(80),
지번본번 varchar(8),
읍면동일련번호 varchar(4),
지번부번 int,
primary key(건물관리번호)
);

create table gyeongbuk(
우편번호 varchar(10),
시도 varchar(40),
시군구 varchar(40),
읍면 varchar(40),
도로명코드 varchar(24),
도로명 varchar(160), 
건물번호본번 varchar(10),
건물번호부번 varchar(10),
건물관리번호 varchar(50),
시군구용건물명 varchar(400),
법정동명 varchar(20),
리명 varchar(40),
행정동명 varchar(80),
지번본번 varchar(8),
읍면동일련번호 varchar(4),
지번부번 int,
primary key(건물관리번호)
);

create table gyeongnam(
우편번호 varchar(10),
시도 varchar(40),
시군구 varchar(40),
읍면 varchar(40),
도로명코드 varchar(24),
도로명 varchar(160), 
건물번호본번 varchar(10),
건물번호부번 varchar(10),
건물관리번호 varchar(50),
시군구용건물명 varchar(400),
법정동명 varchar(20),
리명 varchar(40),
행정동명 varchar(80),
지번본번 varchar(8),
읍면동일련번호 varchar(4),
지번부번 int,
primary key(건물관리번호)
);

create table gyunggi(
우편번호 varchar(10),
시도 varchar(40),
시군구 varchar(40),
읍면 varchar(40),
도로명코드 varchar(24),
도로명 varchar(160), 
건물번호본번 varchar(10),
건물번호부번 varchar(10),
건물관리번호 varchar(50),
시군구용건물명 varchar(400),
법정동명 varchar(20),
리명 varchar(40),
행정동명 varchar(80),
지번본번 varchar(8),
읍면동일련번호 varchar(4),
지번부번 int,
primary key(건물관리번호)
);

create table incheon(
우편번호 varchar(10),
시도 varchar(40),
시군구 varchar(40),
읍면 varchar(40),
도로명코드 varchar(24),
도로명 varchar(160), 
건물번호본번 varchar(10),
건물번호부번 varchar(10),
건물관리번호 varchar(50),
시군구용건물명 varchar(400),
법정동명 varchar(20),
리명 varchar(40),
행정동명 varchar(80),
지번본번 varchar(8),
읍면동일련번호 varchar(4),
지번부번 int,
primary key(건물관리번호)
);

create table jeju(
우편번호 varchar(10),
시도 varchar(40),
시군구 varchar(40),
읍면 varchar(40),
도로명코드 varchar(24),
도로명 varchar(160), 
건물번호본번 varchar(10),
건물번호부번 varchar(10),
건물관리번호 varchar(50),
시군구용건물명 varchar(400),
법정동명 varchar(20),
리명 varchar(40),
행정동명 varchar(80),
지번본번 varchar(8),
읍면동일련번호 varchar(4),
지번부번 int,
primary key(건물관리번호)
);

create table jeonbuk(
우편번호 varchar(10),
시도 varchar(40),
시군구 varchar(40),
읍면 varchar(40),
도로명코드 varchar(24),
도로명 varchar(160), 
건물번호본번 varchar(10),
건물번호부번 varchar(10),
건물관리번호 varchar(50),
시군구용건물명 varchar(400),
법정동명 varchar(20),
리명 varchar(40),
행정동명 varchar(80),
지번본번 varchar(8),
읍면동일련번호 varchar(4),
지번부번 int,
primary key(건물관리번호)
);

create table jeonnam(
우편번호 varchar(10),
시도 varchar(40),
시군구 varchar(40),
읍면 varchar(40),
도로명코드 varchar(24),
도로명 varchar(160), 
건물번호본번 varchar(10),
건물번호부번 varchar(10),
건물관리번호 varchar(50),
시군구용건물명 varchar(400),
법정동명 varchar(20),
리명 varchar(40),
행정동명 varchar(80),
지번본번 varchar(8),
읍면동일련번호 varchar(4),
지번부번 int,
primary key(건물관리번호)
);

create table sejong(
우편번호 varchar(10),
시도 varchar(40),
시군구 varchar(40),
읍면 varchar(40),
도로명코드 varchar(24),
도로명 varchar(160), 
건물번호본번 varchar(10),
건물번호부번 varchar(10),
건물관리번호 varchar(50),
시군구용건물명 varchar(400),
법정동명 varchar(20),
리명 varchar(40),
행정동명 varchar(80),
지번본번 varchar(8),
읍면동일련번호 varchar(4),
지번부번 int,
primary key(건물관리번호)
);
create table seoul(
우편번호 varchar(10),
시도 varchar(40),
시군구 varchar(40),
읍면 varchar(40),
도로명코드 varchar(24),
도로명 varchar(160), 
건물번호본번 varchar(10),
건물번호부번 varchar(10),
건물관리번호 varchar(50),
시군구용건물명 varchar(400),
법정동명 varchar(20),
리명 varchar(40),
행정동명 varchar(80),
지번본번 varchar(8),
읍면동일련번호 varchar(4),
지번부번 int,
primary key(건물관리번호)
);
create table ulsan(
우편번호 varchar(10),
시도 varchar(40),
시군구 varchar(40),
읍면 varchar(40),
도로명코드 varchar(24),
도로명 varchar(160), 
건물번호본번 varchar(10),
건물번호부번 varchar(10),
건물관리번호 varchar(50),
시군구용건물명 varchar(400),
법정동명 varchar(20),
리명 varchar(40),
행정동명 varchar(80),
지번본번 varchar(8),
읍면동일련번호 varchar(4),
지번부번 int,
primary key(건물관리번호)
);

/*
 * csv 파일을 테이블에 넣기
 */
LOAD DATA local INFILE 'C:/doro/busan.csv'
INTO TABLE busan
FIELDS TERMINATED BY ',' ;

LOAD DATA local INFILE 'C:/doro/chungbuk.csv'
INTO TABLE chungbuk
FIELDS TERMINATED BY ',' ;

LOAD DATA local INFILE 'C:/doro/chungnam.csv'
INTO TABLE chungnam
FIELDS TERMINATED BY ',' ;

LOAD DATA local INFILE 'C:/doro/daegu.csv'
INTO TABLE daegu
FIELDS TERMINATED BY ',' ;

LOAD DATA local INFILE 'C:/doro/daejeon.csv'
INTO TABLE daejeon
FIELDS TERMINATED BY ',' ;

LOAD DATA local INFILE 'C:/doro/gangwon.csv'
INTO TABLE gangwon
FIELDS TERMINATED BY ',' ;

LOAD DATA local INFILE 'C:/doro/gwangju.csv'
INTO TABLE gwangju
FIELDS TERMINATED BY ',' ;

LOAD DATA local INFILE 'C:/doro/gyeongbuk.csv'
INTO TABLE gyeongbuk
FIELDS TERMINATED BY ',' ;

LOAD DATA local INFILE 'C:/doro/gyeongnam.csv'
INTO TABLE gyeongnam
FIELDS TERMINATED BY ',' ;

LOAD DATA local INFILE 'C:/doro/gyunggi.csv'
INTO TABLE gyunggi
FIELDS TERMINATED BY ',' ;

LOAD DATA local INFILE 'C:/doro/incheon.csv'
INTO TABLE incheon
FIELDS TERMINATED BY ',' ;

LOAD DATA local INFILE 'C:/doro/jeju.csv'
INTO TABLE jeju
FIELDS TERMINATED BY ',' ;

LOAD DATA local INFILE 'C:/doro/jeonbuk.csv'
INTO TABLE jeonbuk
FIELDS TERMINATED BY ',' ;

LOAD DATA local INFILE 'C:/doro/jeonnam.csv'
INTO TABLE jeonnam
FIELDS TERMINATED BY ',' ;

LOAD DATA local INFILE 'C:/doro/sejong.csv'
INTO TABLE sejong
FIELDS TERMINATED BY ',' ;

LOAD DATA local INFILE 'C:/doro/seoul.csv'
INTO TABLE seoul
FIELDS TERMINATED BY ',' ;

LOAD DATA local INFILE 'C:/doro/ulsan.csv'
INTO TABLE ulsan
FIELDS TERMINATED BY ',' ;


/*
 * 지역별 select 문
 */
select * from busan;
select * from chungbuk;
select * from chungnam;
select * from daegu;
select * from daejeon;
select * from gangwon;
select * from gwangju;
select * from gyeongbuk;
select * from gyeongnam;
select * from gyunggi;
select * from incheon;
select * from jeju;
select * from jeonbuk;
select * from jeonnam where 읍면 ='강진읍' limit 10
select * from sejong;
select * from seoul limit 10;
select * from ulsan;



