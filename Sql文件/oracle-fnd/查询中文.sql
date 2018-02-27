select * from T_MARKET_SCHEME_VERSION t where t.scheme_version_name_cn like '%жа%';
select * from T_MARKET_SCHEME_VERSION t where t.scheme_version_name_cn like concat(concat('%','жа'),'%')  
