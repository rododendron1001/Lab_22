create view Employees_Companies_Departments as
select  ltrim(p.LastName) LastName, ltrim(p.FirstName) FirstName, FORMAT(p.DateOfBirth, 'dd/MM/yyyy ') DateOfBirth, c.CompanyId CompanyId, c.CompanyName CompanyNAme, ed.DepartmentId DepartmentId, d.DepartmentName DepartmentName, e.BadgeCode BadgeCode
from Employee e
left join Person p
on e.EmployeeId=p.PersonId
left join Company c
on e.CompanyId=c.CompanyId
left join EmployeeDepartment ed
on e.EmployeeId=ed.EmployeeId
left join Department d
on ed.DepartmentId=d.DepartmentId
;

