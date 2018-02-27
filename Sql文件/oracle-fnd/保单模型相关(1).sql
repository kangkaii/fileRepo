select * from t_policy_model;

select * from t_clob_content where id  in('214056844500582400');
select * from t_clob_content where id  in('214057094944792576') for update;

select * from t_clob_content where id  in('214056844350140417');
select * from t_clob_content where id  in('214057094797443073')  for update;

select * from t_clob_content where id  in(select STRUCT_CLOB_ID from t_policy_model);
select * from t_clob_content where id  in(select DISPLAY_CLOB_ID from t_policy_model);


delete
  from t_clob_content
 where id in (select STRUCT_CLOB_ID
                from t_policy_model
               where id = '215282851748429824'
              union all
              select DISPLAY_CLOB_ID
                from t_policy_model
               where id = '215282851748429824');
delete from t_policy_model  where id='215282851748429824';
