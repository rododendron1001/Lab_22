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
union
(
select  ltrim(p.LastName) LastName, ltrim(p.FirstName) FirstName, p.DateOfBirth DateOfBirth, 1 IsEmployee
from Employee e
left join Person p
on e.EmployeeId=p.PersonId
) 
order by LastName, FirstName, DateofBirth
;

==================== TEST
select  ltrim(p.LastName) LastName, ltrim(p.FirstName) FirstName, FORMAT(p.DateOfBirth, 'dd/MM/yyyy ') DateOfBirth, e.CompanyId CompanyId, ISNULL(e.CompanyId,0) IsEmployee
from Employee e
right join Person p
on e.EmployeeId=p.PersonId
order by LastName, FirstName, DateofBirth
;


