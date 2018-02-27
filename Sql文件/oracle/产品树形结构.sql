select * from BOOT_CODE_CATEGORY t where t.category_name like '%产品%';
select * from boot_code_entry a where a.category_id = '100005';

select * from boot_code_entry a where a.entry_name like '%财产保险%';--存的是枚举值
select * from boot_code_entry a where a.entry_name like '%意外%';
select * from boot_code_entry a where a.category_id = '100005'
select * from boot_code_entry a where a.entry_id = '1001625'

select * from T_ENDORSE_TYPE t for update;
