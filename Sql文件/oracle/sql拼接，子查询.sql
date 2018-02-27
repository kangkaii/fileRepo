select t.branch_code,t.dept_code,t.section_code from costmanage.cc_sales_info t;
select * from costmanage.cc_sales_info t;
select * from costmanage.iforganization;


-- 经办人

select t.branch_code ,t.deptgrp_code ,t.dept_code ,t.section_code , min(t.agent_code), min(t.agent_name) ,
  '<entry code="'|| min(t.agent_code)|| '" name="'  || min(t.agent_name) ||'"  ext.subcompany="'||t.branch_code || '" ext.departmentName="'|| cn.name || '"ext.sectionName="'||  cn.name  || '"/>'
 from costmanage.cc_sales_info t ,costmanage.iforganization cn  
  where exists(select 1 from  costmanage.iforganization c where c.unique_code = 
 t.org_code = cn.unique_code
 group by t.branch_code,t.deptgrp_code ,t.dept_code,t.section_code,cn.name;
  
 
select
(select o.name from  costmanage.iforganization o where o.unique_code = t.branch_code) as subcompanyName,
(select o.name from  costmanage.iforganization o where o.unique_code = t.branch_code||'.'|| t.deptgrp_code||'.'||t.dept_code) as deptName,
(select o.name from  costmanage.iforganization o where o.unique_code = t.branch_code||'.'|| t.deptgrp_code||'.'||t.dept_code||'.'||t.section_code) as sectionName,
 t.branch_code,t.dept_code,t.section_code, min(t.agent_code), min(t.agent_name) ,
 '<entry code="'|| min(t.agent_code)|| '" name="'  || min(t.agent_name) ||'"  ext.subcompany="'||subcompanyName || '" ext.departmentName="'|| deptName || '"ext.sectionName="'||  sectionName  || '"/>'
 from costmanage.cc_sales_info t
  group by t.branch_code,t.deptgrp_code,t.dept_code,t.section_code;
  
 
 select t.branch_code,t.dept_code,t.section_code, min(t.agent_code), min(t.agent_name) ,
  '{"code": "'||     min(t.agent_code)|| '", "name": "'  || min(t.agent_name) ||'" ,"ext":{ "subcompany": "'||t.branch_code || '", "departmentCode": "'|| t.dept_code || '", "sectionCode": "'||     t.section_code || '"}},'
 from costmanage.cc_sales_info t join costmanage.iforganization c on t.
  group by t.branch_code,t.dept_code,t.section_code;
  
  
  select
 t.branch_code,t.dept_code,t.section_code, min(t.agent_code), min(t.agent_name) ,
 '<entry code="'|| min(t.agent_code)|| '" name="'  || min(t.agent_name) ||'"  ext.subcompany="'||(select o.name from  costmanage.iforganization o where o.unique_code = t.branch_code)|| '" ext.departmentCode="'|| (select o.code from  costmanage.iforganization o where o.unique_code = t.branch_code||'.'|| t.deptgrp_code||'.'||t.dept_code) || '" ext.departmentName="'|| (select o.name from  costmanage.iforganization o where o.unique_code = t.branch_code||'.'|| t.deptgrp_code||'.'||t.dept_code)|| '" ext.sectionCode="'|| (select o.code from  costmanage.iforganization o where o.unique_code = t.branch_code||'.'|| t.deptgrp_code||'.'||t.dept_code) || '" ext.sectionName="'||  (select o.name from  costmanage.iforganization o where o.unique_code = t.branch_code||'.'|| t.deptgrp_code||'.'||t.dept_code||'.'||t.section_code)   || '"/>'
 from costmanage.cc_sales_info t
  group by t.branch_code,t.deptgrp_code,t.dept_code,t.section_code;
  
  
select distinct 'map.put("' || name || '","' || code || '")'
  from costmanage.iforganization o
 where name like '%分公司%'
   and length(code) = 7;
   
   
  select distinct  name , code   from costmanage.iforganization o
 where name like '%分公司%'
   and length(code) = 7
  
