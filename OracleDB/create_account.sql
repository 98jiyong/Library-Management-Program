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

create table loanlist(
isbn varchar2(20) not null,
title varchar2(20) not null,
writer varchar2(20) not null,
category varchar2(10) not null,
id varchar2(20) not null);

insert into book values ('9788936434120','�ҳ��� �´�','�Ѱ�','�Ҽ�','5');
insert into book values ('9788936434595','ä��������','�Ѱ�','�Ҽ�','3');
insert into book values ('2090000151824','�ٽ�, �����Ǿ���','���¼�','����','4');
insert into book values ('9788959897223','Ʈ���� �ڸ��� 2025','�賭�� �� 10��','����','10');
insert into book values ('9788932024639','������ ������ �־� �ξ���','�Ѱ�','������','3');
insert into book values ('9791194330424','�ؼ���','���� �϶�','�ι�','2');
insert into book values ('9791198945617','�̺��� ����� �ʿ��� ���ϴ� ��','���μ�','������','4');
insert into book values ('9791157847679','���¿��� AI ���� 2025','���¿�','����','4');
insert into book values ('9788934985501','����� ��Ʈ����, ������ ������ �ȴ�','�׷� �극�̵�','�ڱ���','1');
insert into book values ('9791194033127','�� ���� ������ ���� ���� ����� ���� �ʻ�å','������','�ι�','5');

alter table book modify title varchar2(50);
alter table loanlist modify title varchar2(50);
alter table loanlist add bookcnt number(2) not null; 

select * from account;
select * from loanlist;
select * from book;

desc loanlist;

delete book;
delete loanlist;
delete from book where isbn = '9788959897223';
delete from account where id = 'asd';
update account set pwhint = '��ö��' where id = 'abc123';

commit;