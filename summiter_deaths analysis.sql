select distinct(Mountain)
from PortfolioProjects..summiter_deaths

select distinct(mountain)
from PortfolioProjects..summiter_deaths

--Most common cause of death of summitters
select distinct(cause) as Cause_of_death, count(cause) as fatalities
from PortfolioProjects..summiter_deaths
where cause <> 'Miscellaneous'
group by cause
order by 2 desc

--Fatalities per mountain
select distinct(Mountain) as Mountain, count(cause) as fatalities
from PortfolioProjects..summiter_deaths
where cause <> 'Miscellaneous'
group by Mountain
order by 2 desc

--Fatalities due to falling per mountain
select distinct(Mountain) as Mountain, count(cause) as fatalities
from PortfolioProjects..summiter_deaths
where cause <> 'Miscellaneous' and cause = 'Fall'
group by Mountain
order by 2 desc

--Fatalities due to avalanches per mountain
select distinct(Mountain) as Mountain, count(cause) as fatalities
from PortfolioProjects..summiter_deaths
where cause <> 'Miscellaneous' and cause = 'Avalanche'
group by Mountain
order by 2 desc

--Fatalities due to Exhaustion or Exposure per mountain
select distinct(Mountain) as Mountain, count(cause) as fatalities
from PortfolioProjects..summiter_deaths
where cause <> 'Miscellaneous' and cause = 'Exhaustion or Exposure'
group by Mountain
order by 2 desc


--Most common cause of death of Mounth Everest summitters
select distinct(cause) as Cause_of_death, count(cause) as fatalities
from PortfolioProjects..summiter_deaths
where cause <> 'Miscellaneous' and mountain = 'Mount Everest'
group by cause
order by 2 desc

--Nationalities of fatalities in Mount Everest
select distinct(Nationality) as Cause_of_death, count(cause) as fatalities
from PortfolioProjects..summiter_deaths
where cause <> 'Miscellaneous' and mountain = 'Mount Everest'
group by Nationality
order by 2 desc

--Nationalities of fatalities in K2
select distinct(Nationality) as Cause_of_death, count(cause) as fatalities
from PortfolioProjects..summiter_deaths
where cause <> 'Miscellaneous' and mountain = 'K2'
group by Nationality
order by 2 desc

--Nationalities of fatalities 
select distinct(Nationality) as Nationality, count(cause) as fatalities
from PortfolioProjects..summiter_deaths
where cause <> 'Miscellaneous' 
group by Nationality
order by 2 desc

--Mountains with Japanese fatalities
select distinct(Mountain), count(mountain) as fatalities
from PortfolioProjects..summiter_deaths
where cause <> 'Miscellaneous' and nationality = 'Japan'
group by mountain
order by 2 desc

--Mountains with US fatalities
select distinct(Mountain), count(mountain) as fatalities
from PortfolioProjects..summiter_deaths
where cause <> 'Miscellaneous' and nationality = 'United States'
group by mountain
order by 2 desc

--Mountains with Spain fatalities
select distinct(Mountain), count(mountain) as fatalities
from PortfolioProjects..summiter_deaths
where cause <> 'Miscellaneous' and nationality = 'Spain'
group by mountain
order by 2 desc

--Dates with most fatalities
select date, count(date) as fatalities, Mountain, cause
from PortfolioProjects..summiter_deaths
where cause = 'Avalanche'
group by date, Mountain, cause
order by 1 desc

select date, count(date) as fatalities, Mountain, cause
from PortfolioProjects..summiter_deaths
group by date, Mountain, cause
order by 1 desc

--Determine mts with Nepalese deaths
select distinct(Mountain), count(Nationality) as Fatalities
from PortfolioProjects..summiter_deaths
where Nationality = 'Nepal'
group by Mountain
order by 2 desc

--Dates with most fatalities
with fatalityCTE AS (select date, count(date) as fatalities, Mountain, cause
from PortfolioProjects..summiter_deaths
group by date, Mountain, cause)

select date, fatalities, Mountain, cause
from fatalityCTE
where fatalities > 5
group by date, fatalities,  Mountain, cause
order by 2 desc


