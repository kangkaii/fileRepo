--产品表
select * from T_PRODUCT_MODEL t;
--产品版本表
select * from t_Product_Version_Mapping t;
--产品版本对应方案表
select * from T_MARKET_SCHEME_VERSION t;
select * from T_MARKET_SCHEME_VERSION t where t.product_version_code = 'J1106390009V00001';

--内容
select * from t_clob_content t where t.id = '235776772372697089';
select * from t_clob_content t where t.id = '236063959177682945';
select * from t_clob_content t where t.id = '236083774195916801';


