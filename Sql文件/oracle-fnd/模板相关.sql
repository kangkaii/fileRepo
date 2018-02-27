select * from t_view_template;

select t.TEMPLATE_ID,
       (select a.NAME from t_view_template a where a.id = t.TEMPLATE_ID) templatename,
       t.ROLE_ID,
       (select b.ROLE_NAME from t_product_role b where b.ID = t.ROLE_ID) rolename
  from t_role_view_relation t;

SELECT * from t_clob_content where id in(select CLOB_ID from t_view_template);

SELECT * from t_clob_content where id ='214515194853203968' order by to_number(serialno) for update;
