----- varianta I
select *
from
(
select a.LastName LastName, a.FirstName FirstName, FORMAT(a.DateOfBirth, 'dd/MM/yyyy ') DateOfBirth, a.IsEmployee IsEmployee
from 
(
select  ltrim(p.LastName) LastName, ltrim(p.FirstName) FirstName, p.DateOfBirth DateOfBirth, e.CompanyId CompanyId, 0 IsEmployee
from Employee e
right join Person p
on e.EmployeeId=p.PersonId
where e.CompanyId is null
) a
) aa
union all
(
select  ltrim(p.LastName) LastName, ltrim(p.FirstName) FirstName, p.DateOfBirth DateOfBirth, 1 IsEmployee
from Employee e
left join Person p
on e.EmployeeId=p.PersonId
) 
order by LastName, FirstName, DateofBirth
;

----- varianta II
set ANSI_NULLS off;
select a.LastName, a.FirstName, a.DateOfBirth, case a.CompanyId when NULL then 0 else 1 end  IsEmployee
from
(
select  ltrim(p.LastName) LastName, ltrim(p.FirstName) FirstName, FORMAT(p.DateOfBirth, 'dd/MM/yyyy ') DateOfBirth, e.CompanyId CompanyId
from Employee e
right join Person p
on e.EmployeeId=p.PersonId
) a
;


