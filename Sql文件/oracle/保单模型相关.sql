--保单模型（树）相关--
--1，数据字典表与子表（树形结构）
select * from BOOT_CODE_CATEGORY t where t.category_name like '%保单模型树%';
select * from BOOT_CODE_ENTRY t where t.category_id = '100006';
--2，保单模型更新、新增、复制
select * from T_POLICY_MODEL t;
select * from T_CLOB_CONTENT t where t.id = '230257895403532288';
select * from T_CLOB_CONTENT t where t.id = '230257895043092481';
