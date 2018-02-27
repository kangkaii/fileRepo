select * from T_MARKET_SCHEME_VERSION t ;

select * from t_clob_content cc where cc.id in
 (select msv.clob_content_id from T_MARKET_SCHEME_VERSION msv)  for update ;
 
select * from t_clob_content cc where exists
 (select 1 from T_MARKET_SCHEME_VERSION msv where cc.id = msv.clob_content_id) for update
