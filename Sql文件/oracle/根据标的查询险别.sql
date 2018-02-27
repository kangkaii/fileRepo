select *
  from t_product_items productite0_
 where 1 = 1
   /*and productite0_.ct_code = 'string'
   and productite0_.ct_name_cn like ('%' || 'string' || '%')
   and productite0_.ct_name_en like ('%' || 'string' || '%')*/
   and productite0_.ct_type = '1'
   /*and productite0_.product_code = 'A'
   and productite0_.main_code = 'string'*/
   and exists
 (select 1
          from t_product_item_liability    productite1_,
               t_product_liability_subject productlia2_
         where productlia2_.subject_code = 'B03'
           and productlia2_.subject_risk_code in ('R0201', '')
           and (productite1_.ct_code = productite0_.ct_code and
               productite1_.liability_code = productlia2_.liability_code and
               productlia2_.type = '1' or
               productlia2_.type = '0' and
               productlia2_.liability_code = productite0_.ct_code))
