create table teacher2(  
tno varchar2(10) primary key,  
tname varchar2(20)  
); 

create table teacher1(  
tno varchar2(10) primary key,  
tname varchar2(20)  
);
insert into teacher1 values ('t001', '����1');  
insert into teacher1 values ('t002', '����1');  
insert into teacher1 values ('t003', '������1');  
insert into teacher1 values ('t004', 't004');  
commit; 

insert into teacher2 values ('t001', '����2');  
insert into teacher2 values ('t002', '����2');  
insert into teacher2 values ('t003', '������2');  
insert into teacher2 values ('t005', 't005');  
commit; 

--�� teacher2 �е� t001��t002��t003����Ӧ�� ����2������2��������2 д�� teacher1

--1.�Ӳ�ѯʵ��----->ֱ�ӽ� teacher1 �� t004 ����Ϊ null
update teacher1 t1 set t1.tname = 
 (select t2.tname from teacher2 t2 where t2.tno = t1.tno)
 
--2.��������������where exists
update teacher1 set tname = 
 (select tname from teacher2 where teacher2.tno = teacher1.tno)
  where exists (select 1 from teacher2 where teacher2.tno = teacher1.tno)
  --��д2
  update teacher1 set tname = (
         select tname from teacher2 where teacher1.tno = teacher2.tno
         )
  where exists (select 1 from teacher2 where teacher1.tno = teacher2.tno);
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
