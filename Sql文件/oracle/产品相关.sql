SELECT * FROM boot.t_product_model /*for update*/;
SELECT * FROM t_product_version_mapping;
SELECT * FROM boot.t_clob_content where id='215590364600254466';


SELECT (select distinct a.entry_code
          from boot_code_entry a
         where a.entry_id in
               (select e.parent_id
                  from t_product_model t, boot_code_entry e
                 WHERE e.category_id = '100005'
                   and t.product_code = e.entry_code
                   and t.product_id = v.product_id)),
       v.*
  FROM t_product_version_mapping v;
SELECT *
  FROM boot.t_clob_content
 where id in (SELECT CONTENT_CLOB_ID
                FROM t_product_version_mapping a
               where a.product_version_id in ('215710796086382592'));
SELECT *
  FROM boot.t_clob_content
 where id in (SELECT STRUCT_CLOB_ID
                FROM t_product_version_mapping a
               where product_version_id in ('215710796086382592'));



SELECT (SELECT wm_concat(c.CONTENT)
          FROM t_clob_content c
         WHERE c.ID = p.content_clob_id),
       p.*
  FROM t_product_version_mapping p;


SELECT * FROM boot.t_clob_content where id in(select STRUCT_CLOB_ID FROM t_product_version_mapping );
SELECT * FROM boot.t_clob_content where id in(select CONTENT_CLOB_ID FROM t_product_version_mapping );
#select * from t_tag;
#select * from t_product_tag_relation;
SELECT * FROM boot.t_product_model where PRODUCT_ID in('205783590025351168');
SELECT * FROM t_product_version_mapping where PRODUCT_ID in('215710796086382592');
SELECT * FROM boot.t_clob_content where id in(SELECT CONTENT_CLOB_ID FROM t_product_version_mapping where PRODUCT_ID in('222283126057259008'));
SELECT * FROM boot.t_clob_content where id in(SELECT STRUCT_CLOB_ID FROM t_product_version_mapping where PRODUCT_ID in('222283126057259008'));
SELECT * FROM boot.t_clob_content where id='215590364600254466';
SELECT * FROM boot.t_clob_content where id='215143003760914434' for update;
