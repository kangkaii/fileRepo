--测试 join on  与 left join on
select * from  COURSE cou join SC sc on sc.cno = cou.cno;
select * from  COURSE cou left join SC sc on sc.cno = cou.cno;
select * from  COURSE cou right join SC sc on sc.cno = cou.cno;
select * from  COURSE cou inner join SC sc on sc.cno = cou.cno;
--1、查询“c001”课程比“c002”课程成绩高的所有学生的学号；  
select t1.sno
  from SC t1, SC t2
 where t1.cno = 'c001'
   and t2.cno = 'c002'
   and t1.sno = t2.sno
   and t1.score > t2.score;
--2、查询平均成绩大于70分的同学的学号和平均成绩；
 select * from  
(select s.sno sno,avg(s.score)savg from SC s group by s.sno) t where t.savg > 70;
--2.1查询平均成绩大于70分的同学的名字和平均成绩；
 select stu.sname,t.savg from student stu,
(select s.sno sno,avg(s.score)savg from SC s group by s.sno) t where t.savg > 70 and stu.sno = t.sno;
--3、查询所有同学的学号、姓名、选课数、总成绩；  
 select stu.sno,stu.sname,s.scount,s.ssum from student stu,
(select sc.sno,count(sc.score) scount,sum(sc.score) ssum from SC sc group by sc.sno) s where stu.sno = s.sno;
--4、查询姓“刘”的老师的个数；
select count(*) from TEACHER t where t.tname like '%刘%;'
--5、查询没学过“谌燕”老师课的同学的学号、姓名；
select stu.sno,stu.sname from STUDENT stu where stu.sno not in (
       select sc.sno from SC sc where sc.cno in(
              select cou.cno from COURSE cou where cou.tno = 
              (select t.tno from TEACHER t where t.tname = '谌燕')--已找到所有课程
       )-- 已找到所有学过的人
);
--6、查询学过“c001”并且也学过编号“c002”课程的同学的学号、姓名；(只查到 学号)  
select t.sno from SC t where t.cno = 'c001' and  t.sno in (select sc.sno from SC sc where sc.cno = 'c002')
--7、查询学过“谌燕”老师所教的所有课的同学的学号、姓名； 
select distinct t.sno from SC t where t.cno in(
       select cou.cno from COURSE cou where cou.tno = 
            (select t.tno from TEACHER t where t.tname = '谌燕')--已找到所有课程
       --select cou.cno from COURSE cou join TEACHER te on cou.tno = te.tno where te.tname = '谌燕'
)
--9、查询所有课程成绩小于60分的同学的学号、姓名；  
select s.sno from SC s group by s.sno where s.score < '80'

--10、查询没有学全所有课的同学的学号、姓名； 

--11、查询至少有一门课与学号为“s001”的同学所学相同的同学的学号和姓名；  
