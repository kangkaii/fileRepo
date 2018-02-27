select *
  from t_product_item_liability a
 where a.liability_code in
       (select t.liability_code from t_product_liability_subject t);

select t.subject_code,
       t.subject_risk_code,
       wm_concat(t.liability_code),
       wm_concat((select distinct a.ct_code
                   from t_product_item_liability a
                  where a.liability_code = t.liability_code))
  from t_product_liability_subject t
 group by t.subject_code, t.subject_risk_code;
 
 select * from t_product_liability_subject t where t.subject_code='B03';
  
select * from t_product_items a where a.ct_code = 'L00005000';
