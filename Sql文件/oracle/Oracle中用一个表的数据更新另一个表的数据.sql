create table teacher2(  
tno varchar2(10) primary key,  
tname varchar2(20)  
); 

create table teacher1(  
tno varchar2(10) primary key,  
tname varchar2(20)  
);
insert into teacher1 values ('t001', '刘阳1');  
insert into teacher1 values ('t002', '谌燕1');  
insert into teacher1 values ('t003', '胡明星1');  
insert into teacher1 values ('t004', 't004');  
commit; 

insert into teacher2 values ('t001', '刘阳2');  
insert into teacher2 values ('t002', '谌燕2');  
insert into teacher2 values ('t003', '胡明星2');  
insert into teacher2 values ('t005', 't005');  
commit; 

--将 teacher2 中的 t001，t002，t003，对应的 刘阳2，谌燕2，胡明星2 写入 teacher1

--1.子查询实现----->直接将 teacher1 的 t004 更新为 null
update teacher1 t1 set t1.tname = 
 (select t2.tname from teacher2 t2 where t2.tno = t1.tno)
 
--2.加入限制条件。where exists
update teacher1 set tname = 
 (select tname from teacher2 where teacher2.tno = teacher1.tno)
  where exists (select 1 from teacher2 where teacher2.tno = teacher1.tno)
  --重写2
  update teacher1 set tname = (
         select tname from teacher2 where teacher1.tno = teacher2.tno
         )
  where exists (select 1 from teacher2 where teacher1.tno = teacher2.tno);
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
