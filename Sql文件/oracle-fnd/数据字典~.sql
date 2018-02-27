

-- 数据字典相关

select * from boot_code_entry a where a.category_id='2011';
select * from boot_code_entry a where a.entry_name like '否';--存的是枚举值


select * from boot_code_category c where c.category_name like '%展业%' --存的是属性名，查询后找到  category_id 去 boot_code_entry查询枚举值

select * from boot_code_category c where c.category_id = '3013' --存的是属性名，查询后找到  category_id 去 boot_code_entry查询枚举值

select * from boot_code_category t where t.GROUP_CODE ='product-dev';



-- 数据字典刷新url 样例http://192.168.10.183:9084/categories/refresh/product-dev/businessMode


-- 产品模型树
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


-- 保单模型树
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

-- 角色树
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




-- 页面模版树
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

