select a.CompanyName, b.AddressLine, c.CityName, d.CountyName, e.CountryName
from Company a
left join Address b
on a.MainAddressId=b.AddressId
left join City c
on b.CityId=c.CityId
left join County d
on c.CountyId=d.CountyId
left join Country e
on d.CountryId=e.CountryId
order by a.CompanyName, CountryName, d.CountyName, c.CityName;