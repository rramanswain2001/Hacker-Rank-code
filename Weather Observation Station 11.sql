SET NOCOUNT ON;

select DISTINCT city from station
where city not like '[AEIOU]%' OR CITY not LIKE '%[AEIOU]'
go