---insert Address for the new Company 'Oracle'
insert into Address
values(243,'Oracle Street 10',95000); 

-- select to see the ID din Address
select * from Address
where AddressLine like 'Oracle%';

---insert new Company 'Oracle'
insert into Company (CompanyName, MainAddressId)
values ('Oracle',8681);
------------------------------------------------

--select  (case aa.CompanyName when NULL then 'N/A' else aa.CompanyName end) CompanyName, (case aa.DepartmentName when NULL then 'N/A' else aa.DepartmentName end) DepartmentName
---Query that returns 'N/A' when No Company or No Department
select ISNULL(aa.CompanyName,'N/A') CompanyName, ISNULL(aa.DepartmentName,'N/A') DepartmentName
from
(
select a.DepartmentName DepartmentName, a.CompanyName CompanyName
from
(
select dn.DepartmentName DepartmentName , c.CompanyName CompanyName
from DepartmentNames dn
left join Department d
on dn.DepartmentName=d.DepartmentName
full join Company c
on c.CompanyId=d.CompanyId
) a
) aa
order by aa.CompanyName, aa.DepartmentName
;

