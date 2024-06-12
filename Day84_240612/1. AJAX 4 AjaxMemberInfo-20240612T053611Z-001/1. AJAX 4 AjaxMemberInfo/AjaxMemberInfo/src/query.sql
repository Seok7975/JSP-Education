use testdb;
create table user(
userName varchar(20),
userAge int,
userGender varchar(20),
userEmail varchar(40));

alter table user modify userEmail varchar(40);

insert into user values('슈퍼맨', 30, '남자',  'superman@naver.com');
insert into user values('배트맨', 25, '남자',  'batman@naver.com');
insert into user values('로빈', 20, '남자',  'robin@naver.com');
insert into user values('원더우먼', 29, '여자',  'wonderwoman@naver.com');
insert into user values('홍길동', 35, '남자',  'honggildong@naver.com');
insert into user values('홍길순', 32, '여자',  'honggilsoon@naver.com');
insert into user values('이순신', 50, '남자', 'leesoonshin@naver.com');
insert into user values('캣우먼', 40, '여자', 'catwoman@naver.com');
insert into user values('김유신', 60, '남자', 'kimyushin@naver.com');

#SET SQL_SAFE_UPDATES = 0;