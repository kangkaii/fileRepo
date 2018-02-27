SELECT *
  FROM boot_code_category t
 WHERE t.category_code IN ('product-PRODUCT_TREE');
SELECT *
  FROM boot_code_entry e
 WHERE e.category_id IN
       (SELECT c.category_id
          FROM boot_code_category c
         WHERE c.category_code IN ('product-PRODUCT_TREE'))
 order by ENTRY_ID asc  for update
;

/*delete
  FROM boot_code_entry e
 WHERE e.category_id IN
       (SELECT c.category_id
          FROM boot_code_category c
         WHERE c.category_code IN ('product-PRODUCT_TREE'))
         and e.entry_id like'2%'
         and not exists(
         select 1 from t_product_model t where t.product_code=e.entry_code
         )
;*/
