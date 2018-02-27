select * from boot_code_spec_attr where CATEGORY_ID IN ('30000001');
SELECT * FROM boot_code_category t WHERE t.category_id IN ('30000001');
SELECT * FROM boot_code_entry e WHERE category_id = '30000001' for update;

select * from boot_code_spec_attr where CATEGORY_ID IN ('30000002') for update;
SELECT * FROM boot_code_category t WHERE t.category_id IN ('30000002');
SELECT * FROM boot_code_entry e WHERE category_id = '30000002' for update;



SELECT *
  FROM boot_code_entry e
 WHERE category_id = '30000002'
   and parent_id = '3000000271'
   for update;


SELECT *
  FROM boot_code_entry e
 WHERE category_id = '30000002'
   for update;
