SELECT *
  FROM boot_code_category t
 WHERE t.category_code IN ('product-POLICY_MODEL_TREE');
SELECT *
  FROM boot_code_entry e
 WHERE e.category_id IN
       (SELECT c.category_id
          FROM boot_code_category c
         WHERE c.category_code IN ('product-POLICY_MODEL_TREE'));

SELECT *
  FROM boot_code_entry e
 WHERE e.category_id IN
       (SELECT c.category_id
          FROM boot_code_category c
         WHERE c.category_code IN ('product-POLICY_MODEL_TREE'))
   and PARENT_ID = '0'
 order by to_number(ext1) for update;

