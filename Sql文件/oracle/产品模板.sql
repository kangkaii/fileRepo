SELECT * FROM boot.t_product_model_template;

select * from t_policy_model a where a.id = '218024702269472768' for update;

delete from t_clob_content where id in ('218024702273044481', '218024702432862208');
insert into t_clob_content
select *
  from t_clob_content as of timestamp timestamp'2017-8-30 19:00:00'
 where id in ('218024702273044481', '218024702432862208');


select *  from t_clob_content where id in ('218024702273044481', '218024702432862208');
