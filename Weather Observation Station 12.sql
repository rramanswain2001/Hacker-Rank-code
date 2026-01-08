SET NOCOUNT ON;


select distinct city from station
where city not like '[AEIOU]%' and CITY not LIKE '%[AEIOU]'

go