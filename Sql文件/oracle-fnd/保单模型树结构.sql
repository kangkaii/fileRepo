select * from boot_code_spec_attr where CATEGORY_ID IN ('100008')/* for update*/;

SELECT *
  FROM boot_code_category t
 WHERE t.category_code IN ('product-VIEW_TEMPLATE_TREE');

SELECT *
  FROM boot_code_entry e
 WHERE e.category_id IN
       (SELECT c.category_id
          FROM boot_code_category c
         WHERE c.category_code IN ('product-VIEW_TEMPLATE_TREE')) for update;
