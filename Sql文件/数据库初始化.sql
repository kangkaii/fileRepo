select distinct owner from all_objects ;--for update;
select * from dba_users for update;
create user c##kangkai identified by kangkai
create user kangkai identified by kangkai;

grant create session to c##kangkai;--����c##kangkai�û�����session��Ȩ�ޣ�����½Ȩ��

����grant unlimited tablespace to c##kangkai;--����c##kangkai�û�ʹ�ñ�ռ��Ȩ��

����grant create table to c##kangkai;--���贴�����Ȩ��

����grant drop any table to c##kangkai;--����ɾ�����Ȩ��

����grant insert any table to c##kangkai;--������Ȩ��

����grant update any table to c##kangkai;--�޸ı��Ȩ��

grant select on tablename to c##kangkai;--����c##kangkai�û��鿴ָ�����Ȩ��

����grant drop on tablename to c##kangkai;--����ɾ�����Ȩ��

����grant insert on tablename to c##kangkai;--��������Ȩ��

����grant update on tablename to c##kangkai;--�����޸ı��Ȩ��

����grant insert(id) on tablename to c##kangkai;

����grant update(id) on tablename to c##kangkai;--�����ָ�����ض��ֶεĲ�����޸�Ȩ�ޣ�ע�⣬ֻ����insert��update

����grant alert all table to c##kangkai;--����c##kangkai�û�alert������Ȩ��
