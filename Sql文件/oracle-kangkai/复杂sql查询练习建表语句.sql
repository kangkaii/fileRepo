???prompt Disabling triggers for COURSE...
alter table COURSE disable all triggers;
prompt Disabling triggers for SC...
alter table SC disable all triggers;
prompt Disabling triggers for STUDENT...
alter table STUDENT disable all triggers;
prompt Disabling triggers for TABLE1...
alter table TABLE1 disable all triggers;
prompt Disabling triggers for TABLE2...
alter table TABLE2 disable all triggers;
prompt Disabling triggers for TEACHER...
alter table TEACHER disable all triggers;
prompt Disabling triggers for TEACHER1...
alter table TEACHER1 disable all triggers;
prompt Disabling triggers for TEACHER2...
alter table TEACHER2 disable all triggers;
prompt Deleting TEACHER2...
delete from TEACHER2;
commit;
prompt Deleting TEACHER1...
delete from TEACHER1;
commit;
prompt Deleting TEACHER...
delete from TEACHER;
commit;
prompt Deleting TABLE2...
delete from TABLE2;
commit;
prompt Deleting TABLE1...
delete from TABLE1;
commit;
prompt Deleting STUDENT...
delete from STUDENT;
commit;
prompt Deleting SC...
delete from SC;
commit;
prompt Deleting COURSE...
delete from COURSE;
commit;
prompt Loading COURSE...
insert into COURSE (cno, cname, tno)
values ('c01', 'EJB3.011', 't002');
insert into COURSE (cno, cname, tno)
values ('c001', 'J2SE', 't002');
insert into COURSE (cno, cname, tno)
values ('c002', 'Java Web', 't002');
insert into COURSE (cno, cname, tno)
values ('c003', 'SSH', 't001');
insert into COURSE (cno, cname, tno)
values ('c004', 'Oracle', 't001');
insert into COURSE (cno, cname, tno)
values ('c005', 'SQL SERVER 2005', 't003');
insert into COURSE (cno, cname, tno)
values ('c006', 'C#', 't003');
insert into COURSE (cno, cname, tno)
values ('c007', 'JavaScript', 't002');
insert into COURSE (cno, cname, tno)
values ('c008', 'DIV+CSS', 't001');
insert into COURSE (cno, cname, tno)
values ('c009', 'PHP', 't003');
insert into COURSE (cno, cname, tno)
values ('c010', 'EJB3.0', 't002');
commit;
prompt 11 records loaded
prompt Loading SC...
insert into SC (sno, cno, score)
values ('s005', 'c00311', 11);
insert into SC (sno, cno, score)
values ('s001', 'c001', 78.9);
insert into SC (sno, cno, score)
values ('s002', 'c001', 80.9);
insert into SC (sno, cno, score)
values ('s003', 'c001', 81.9);
insert into SC (sno, cno, score)
values ('s004', 'c001', 60.9);
insert into SC (sno, cno, score)
values ('s001', 'c002', 82.9);
insert into SC (sno, cno, score)
values ('s002', 'c002', 72.9);
insert into SC (sno, cno, score)
values ('s003', 'c002', 81.9);
insert into SC (sno, cno, score)
values ('s001', 'c003', 59);
insert into SC (sno, cno, score)
values ('s001', 'c0089', 11);
commit;
prompt 10 records loaded
prompt Loading STUDENT...
insert into STUDENT (sno, sname, sage, ssex)
values ('s001', '张三', 23, '男');
insert into STUDENT (sno, sname, sage, ssex)
values ('s002', '李四', 23, '男');
insert into STUDENT (sno, sname, sage, ssex)
values ('s003', '吴鹏', 25, '男');
insert into STUDENT (sno, sname, sage, ssex)
values ('s004', '琴沁', 20, '女');
insert into STUDENT (sno, sname, sage, ssex)
values ('s005', '王丽', 20, '女');
insert into STUDENT (sno, sname, sage, ssex)
values ('s006', '李波', 21, '男');
insert into STUDENT (sno, sname, sage, ssex)
values ('s007', '刘玉', 21, '男');
insert into STUDENT (sno, sname, sage, ssex)
values ('s008', '萧蓉', 21, '女');
insert into STUDENT (sno, sname, sage, ssex)
values ('s009', '陈萧晓', 23, '女');
insert into STUDENT (sno, sname, sage, ssex)
values ('s010', '陈美', 22, '女');
commit;
prompt 10 records loaded
prompt Loading TABLE1...
insert into TABLE1 (idd, val)
values ('01', 'aaaa');
insert into TABLE1 (idd, val)
values ('02', 'bbbb');
insert into TABLE1 (idd, val)
values ('02', 'bbbb');
insert into TABLE1 (idd, val)
values ('03', 'cccc');
insert into TABLE1 (idd, val)
values ('04', 'dddd');
insert into TABLE1 (idd, val)
values ('06', '6666');
commit;
prompt 6 records loaded
prompt Loading TABLE2...
insert into TABLE2 (idd, val)
values ('01', 'aaaa');
insert into TABLE2 (idd, val)
values ('02', 'bbbb');
insert into TABLE2 (idd, val)
values ('03', 'cccc');
insert into TABLE2 (idd, val)
values ('04', 'dddd');
insert into TABLE2 (idd, val)
values ('05', 'eeee');
insert into TABLE2 (idd, val)
values ('05', 'eee');
insert into TABLE2 (idd, val)
values ('03', 'ccc');
commit;
prompt 7 records loaded
prompt Loading TEACHER...
insert into TEACHER (tno, tname)
values ('t001', '刘阳');
insert into TEACHER (tno, tname)
values ('t002', '谌燕');
insert into TEACHER (tno, tname)
values ('t003', '胡明星');
commit;
prompt 3 records loaded
prompt Loading TEACHER1...
insert into TEACHER1 (tno, tname)
values ('t001', '刘阳2');
insert into TEACHER1 (tno, tname)
values ('t002', '谌燕2');
insert into TEACHER1 (tno, tname)
values ('t003', '胡明星2');
insert into TEACHER1 (tno, tname)
values ('t004', 't004');
commit;
prompt 4 records loaded
prompt Loading TEACHER2...
insert into TEACHER2 (tno, tname)
values ('t001', '刘阳2');
insert into TEACHER2 (tno, tname)
values ('t002', '谌燕2');
insert into TEACHER2 (tno, tname)
values ('t003', '胡明星2');
insert into TEACHER2 (tno, tname)
values ('t005', 't005');
commit;
prompt 4 records loaded
prompt Enabling triggers for COURSE...
alter table COURSE enable all triggers;
prompt Enabling triggers for SC...
alter table SC enable all triggers;
prompt Enabling triggers for STUDENT...
alter table STUDENT enable all triggers;
prompt Enabling triggers for TABLE1...
alter table TABLE1 enable all triggers;
prompt Enabling triggers for TABLE2...
alter table TABLE2 enable all triggers;
prompt Enabling triggers for TEACHER...
alter table TEACHER enable all triggers;
prompt Enabling triggers for TEACHER1...
alter table TEACHER1 enable all triggers;
prompt Enabling triggers for TEACHER2...
alter table TEACHER2 enable all triggers;
