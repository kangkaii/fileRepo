

-- �����ֵ����

select * from boot_code_entry a where a.category_id='2011';
select * from boot_code_entry a where a.entry_name like '��';--�����ö��ֵ


select * from boot_code_category c where c.category_name like '%չҵ%' --���������������ѯ���ҵ�  category_id ȥ boot_code_entry��ѯö��ֵ

select * from boot_code_category c where c.category_id = '3013' --���������������ѯ���ҵ�  category_id ȥ boot_code_entry��ѯö��ֵ

select * from boot_code_category t where t.GROUP_CODE ='product-dev';



-- �����ֵ�ˢ��url ����http://192.168.10.183:9084/categories/refresh/product-dev/businessMode


-- ��Ʒģ����
SELECT * FROM boot_code_category t WHERE t.category_code IN
                                         ('product-PRODUCT_TREE');

SELECT *
FROM boot_code_entry e
WHERE e.category_id IN
      (SELECT c.category_id FROM boot_code_category c
       WHERE c.category_code IN ('product-PRODUCT_TREE'))
order by e.ENTRY_ID,e.PARENT_ID
;

SELECT *
FROM boot_code_spec_attr e
WHERE e.category_id IN
      (SELECT c.category_id FROM boot_code_category c
       WHERE c.category_code IN ('product-PRODUCT_TREE'))
;


-- ����ģ����
SELECT * FROM boot_code_category t WHERE t.category_code IN
                                         ('product-POLICY_MODEL_TREE');

SELECT *
FROM boot_code_entry e
WHERE e.category_id IN
      (SELECT c.category_id FROM boot_code_category c
       WHERE c.category_code IN ('product-POLICY_MODEL_TREE'))
order by e.ENTRY_ID,e.PARENT_ID
;

SELECT *
FROM boot_code_spec_attr e
WHERE e.category_id IN
      (SELECT c.category_id FROM boot_code_category c
       WHERE c.category_code IN ('product-POLICY_MODEL_TREE'))
;

-- ��ɫ��
SELECT * FROM boot_code_category t WHERE t.category_code IN
                                         ('product-BUSINESS_ROLE_TREE');

SELECT *
FROM boot_code_entry e
WHERE e.category_id IN
      (SELECT c.category_id FROM boot_code_category c
       WHERE c.category_code IN ('product-BUSINESS_ROLE_TREE'))
order by e.ENTRY_ID,e.PARENT_ID
;

SELECT *
FROM boot_code_spec_attr e
WHERE e.category_id IN
      (SELECT c.category_id FROM boot_code_category c
       WHERE c.category_code IN ('product-BUSINESS_ROLE_TREE'))
;




-- ҳ��ģ����
SELECT * FROM boot_code_category t WHERE t.category_code IN
                                         ('product-VIEW_TEMPLATE_TREE');

SELECT *
FROM boot_code_entry e
WHERE e.category_id IN
      (SELECT c.category_id FROM boot_code_category c
       WHERE c.category_code IN ('product-VIEW_TEMPLATE_TREE'))
order by e.ENTRY_ID,e.PARENT_ID
;

SELECT *
FROM boot_code_spec_attr e
WHERE e.category_id IN
      (SELECT c.category_id FROM boot_code_category c
       WHERE c.category_code IN ('product-VIEW_TEMPLATE_TREE'))
;

