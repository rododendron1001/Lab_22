select  ltrim(p.LastName) LastName, ltrim(p.FirstName) FirstName, FORMAT(p.DateOfBirth, 'dd/MM/yyyy ') DateOfBirth
from Employee e
left join Person p
on e.EmployeeId=p.PersonId
order by p.LastName, p.FirstName, p.DateOfBirth;
