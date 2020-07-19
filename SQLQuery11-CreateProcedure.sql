create or alter procedure Proc1 @cp nvarchar(25)
as 
set nocount on;
select  ltrim(p.LastName) LastName, ltrim(p.FirstName) FirstName, FORMAT(p.DateOfBirth,'dd/MM/yyyy') DateOfBirth, ed.DepartmentId DepartmentId, d.DepartmentName DepartmentName, e.BadgeCode BadgeCode
from dbo.Employee e
left join dbo.Person p
on e.EmployeeId=p.PersonId
left join dbo.Company c
on e.CompanyId=c.CompanyId
left join dbo.EmployeeDepartment ed
on e.EmployeeId=ed.EmployeeId
left join dbo.Department d
on ed.DepartmentId=d.DepartmentId
where c.CompanyName=@cp
;


execute Proc1 N'HP';
go