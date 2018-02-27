--保单角色库相关--（业务角色库）
--1,数据字典表与子表
select * from BOOT_CODE_CATEGORY t where t.category_name like '%角色%';
select * from BOOT_CODE_ENTRY t where t.category_id = '30000001';
--角色表
select * from T_PRODUCT_ROLE t ;
select * from T_CLOB_CONTENT t where t.id = '227108326668120665';
