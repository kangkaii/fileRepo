select distinct owner from all_objects ;--for update;
select * from dba_users for update;
create user c##kangkai identified by kangkai
create user kangkai identified by kangkai;

grant create session to c##kangkai;--授予c##kangkai用户创建session的权限，即登陆权限

　　grant unlimited tablespace to c##kangkai;--授予c##kangkai用户使用表空间的权限

　　grant create table to c##kangkai;--授予创建表的权限

　　grant drop any table to c##kangkai;--授予删除表的权限

　　grant insert any table to c##kangkai;--插入表的权限

　　grant update any table to c##kangkai;--修改表的权限

grant select on tablename to c##kangkai;--授予c##kangkai用户查看指定表的权限

　　grant drop on tablename to c##kangkai;--授予删除表的权限

　　grant insert on tablename to c##kangkai;--授予插入的权限

　　grant update on tablename to c##kangkai;--授予修改表的权限

　　grant insert(id) on tablename to c##kangkai;

　　grant update(id) on tablename to c##kangkai;--授予对指定表特定字段的插入和修改权限，注意，只能是insert和update

　　grant alert all table to c##kangkai;--授予c##kangkai用户alert任意表的权限
