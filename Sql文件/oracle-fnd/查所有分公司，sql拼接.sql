select distinct cn.code, cn.name from costmanage.iforganization cn where cn.name like '%�ֹ�˾%' and cn.helpcode = '1' and length(cn.code) != 7;
select distinct 'map.put("'||cn.code|| '",' || cn.name || '")' from costmanage.iforganization cn where cn.name like '%�ֹ�˾%' and length(cn.code) = 7;
--select distinct 'map.put("'||name||'","'||code||'")'
select distinct name,code from costmanage.iforganization cn where cn.name like '%�ֹ�˾%' and length(cn.code) = 7;
