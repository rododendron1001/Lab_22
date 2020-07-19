select top(100) c.CompanyId, d.CityName
from Company c
left join Address a
on c.MainAddressId=a.AddressId
right join City d
on a.CityId=d.CityId
where c.CompanyId is NULL
order by d.CityName
;



