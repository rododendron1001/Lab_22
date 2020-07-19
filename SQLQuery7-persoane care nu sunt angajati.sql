select  ltrim(p.LastName) LastName, ltrim(p.FirstName) FirstName, FORMAT(p.DateOfBirth, 'dd/MM/yyyy ') DateOfBirth, e.CompanyId CompanyId
from Employee e
right join Person p
on e.EmployeeId=p.PersonId
where e.CompanyId is NULL
order by LastName, FirstName, DateofBirth
;