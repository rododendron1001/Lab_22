--- varianta I
select dn.DepartmentName, d.CompanyId
from DepartmentNames dn
left join Department d
on dn.DepartmentName=d.DepartmentName
where d.CompanyId is NULL
;


--- varianta II
select DepartmentName 
from DepartmentNAmes
where DepartmentName not in 
(
select distinct DepartmentName
from DEpartment
where CompanyId is not null
);