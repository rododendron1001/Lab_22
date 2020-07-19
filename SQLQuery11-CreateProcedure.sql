create or alter procedure Proc1 @cp nvarchar(25)
as 
select  ltrim(p.LastName) LastName, ltrim(p.FirstName) FirstName, p.DateOfBirth DateOfBirth, ed.DepartmentId DepartmentId, d.DepartmentName DepartmentName, e.BadgeCode BadgeCode
from Employee e
left join Person p
on e.EmployeeId=p.PersonId
left join Company c
on e.CompanyId=c.CompanyId
left join EmployeeDepartment ed
on e.EmployeeId=ed.EmployeeId
left join Department d
on ed.DepartmentId=d.DepartmentId
where c.CompanyName=@cp
;


execute Proc1 N'HP';
go