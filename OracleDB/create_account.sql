create table account(
id varchar2(20) primary key,
name varchar2(10) not null,
pw varchar2(20) not null,
pwhint varchar2(20) not null,
tel varchar2(20) not null,
auth varchar2(1) not null check (auth in ('y','n')));

create table book(
isbn varchar2(20) primary key,
title varchar2(20) not null,
writer varchar2(20) not null,
category varchar2(10) not null,
bookcnt NUMBER(2) not null);

insert into book values ('12345','�Ͽ��� �����̴� ��','����ī�� �Ϸ�Ű','�Ҽ�','2');
insert into book values ('12346','�Ͽ��� �����̴� ��','����ī�� �Ϸ�Ű','�Ҽ�','2');
insert into book values ('12347','�Ͽ��� �����̴� ��','����ī�� �Ϸ�Ű','�Ҽ�','2');
insert into book values ('12348','�Ͽ��� �����̴� ��','����ī�� �Ϸ�Ű','�Ҽ�','2');
insert into book values ('12349','�Ͽ��� �����̴� ��','����ī�� �Ϸ�Ű','�Ҽ�','2');
insert into book values ('12350','�Ͽ��� �����̴� ��','����ī�� �Ϸ�Ű','�Ҽ�','2');

select * from account;
select * from book;

delete from account where id = 'lucky';
update account set pwhint = '��ö��' where id = 'abc123';

commit;