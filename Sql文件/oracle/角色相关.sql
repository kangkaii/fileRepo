SELECT * FROM boot.t_product_role where role_code in( 'subjectType','coverageGroupInfo','coverage','liability');
SELECT * FROM boot.t_clob_content where id in(SELECT CLOB_ID FROM boot.t_product_role);
#select * from t_tag;
#select * from t_role_tag_relation;
#该函数用于为当前连接设置默认的字符集字符串csname指定了1个有效的字符集名称
#
SELECT * FROM boot.t_clob_content where id in('222350584428261377','222353448825233409','195011243581878213') for update;

SELECT * FROM boot.t_product_role where role_code in( 'PolicyBaseinfo')
SELECT (SELECT wm_concat(c.CONTENT)
          FROM t_clob_content c
         WHERE c.ID = p.CLOB_ID),
       p.*
  FROM t_product_role p
 ORDER BY p.ROLE_CODE;
