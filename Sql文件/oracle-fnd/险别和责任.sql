select * from t_product_items  t where t.COVERAGE_CODE=  'K00079000';
select * from t_product_liabilitys  t where t.LIABILITY_CODe in('R0000036','') /*for update*/;
select * from  t_product_item_liability as t where t.COVERAGE_CODE=  'K00079000';
delete from t_product_liabilitys  where id in('26','27')
select * from t_product_liabilitys  for update

select count(1) from t_product_items as t where t.COVERAGE_CODE=  'K00079000';
select * from t_product_liabilitys ;
select * from  t_product_item_liability as t where t.COVERAGE_CODE=  'K00079000';

/*UPDATE t_product_items 
SET 
    CT_ClAUSE_PATH = CONCAT(CT_ClAUSE, '.html'),
    Parameter = 0.1111,
    ctsi = 100.11,
    BASE_RATE = 0.1111,
    MIN_BASE_RATE = 0.0001,
    MAX_BASE_RATE = 0.9999,
    BASE_RATE_RULE = CONCAT(CT_NAME_CN, '费率规则'),
    UNIT_PREM = 11.12,
    ACC_SI = 1,
    ACC_PREM = 1*/
    
  /*  UPDATE t_product_liabilitys 
SET 
    Parameter = 0.1111,
    LIABILITYSI = 100.11,
    BASE_RATE = 0.1111,
    MIN_BASE_RATE = 0.0001,
    MAX_BASE_RATE = 0.9999,
    BASE_RATE_RULE = CONCAT(LIABILITY_NAME, '费率规则'),
    UNIT_PREM = 11.12,
    ACC_SI = 1,
    ACC_PREM = 1*/
/*delete from t_product_items*/
/*drop table t_product_items2*/

/*update t_product_items t set t.created_on=sysdate,t.created_by='system',t.operate_version=0*/
