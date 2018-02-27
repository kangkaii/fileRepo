select *
  from T_PAGEBLOCK_TEMPLATE t
 where t.block_id = '277831098086264832'
   and( t.block_name like '%投%'
    or t.block_name like '%投%');

select * from T_PAGEBLOCK_TEMPLATE t where t.block_name like '%' || '投保' || '%';
select * from T_PAGEBLOCK_TEMPLATE t where t.block_name like concat(concat('%','投保'),'%');

select  'map.put("' || t.block_id || '","' || t.block_name || '")'
from T_PAGEBLOCK_TEMPLATE t where t.block_name like '%' || '投保' || '%';

select concat(t.block_id,t.block_name) from T_PAGEBLOCK_TEMPLATE t where t.block_name like '%投保%';


CREATE TABLE tab1 (col1 VARCHAR2(6), col2 CHAR(6),
        col3 VARCHAR2(6), col4 CHAR(6) );

INSERT INTO tab1 (col1,  col2,     col3,     col4)
        VALUES   ('abc', 'def   ', 'ghi   ', 'jkl');
        
INSERT INTO tab1 (col1,  col2,     col3,     col4)
       VALUES   ('1a', '456   ', '321   ', '234');
       
INSERT INTO tab1 (col1,  col2,     col3,     col4)
       VALUES   ('45345', '656   ', '65   ', 'a1');
        
SELECT * from tab1 t where t.col1 like '%a%';
SELECT * from tab1 t where t.col1 like '%' || 'a' || '%';
SELECT * from tab1 t where t.col1 like  concat(concat('%','a'),'%');

SELECT 'map.put("' || t.col1 || '","' || t.col2 || '")' "put"
        FROM tab1 t;
        
