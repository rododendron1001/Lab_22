--- varianta I
select PersonId, FirstName, LastName, FORMAT(DateOfBirth, 'dd/MM/yyyy ') DateOfBirth 
from  Person
where substring(ltrim(FirstName),1,1) = 'Z'
order by FirstName;


----- varianta II
select PersonId, FirstName, LastName, FORMAT(DateOfBirth, 'dd/MM/yyyy ') DateOfBirth 
from  Person
where ltrim(FirstName) like  'Z%'
order by FirstName;