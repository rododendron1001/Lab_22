select b.CountyName, a.Number_Of_Cities 
from 
(
select Count(CityId) as Number_Of_Cities, CountyId as CountyId
from City 
group by CountyId
) a
join County b
on a.CountyId=b.CountyId
;

