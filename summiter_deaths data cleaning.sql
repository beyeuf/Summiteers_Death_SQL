select*
from PortfolioProjects..summiter_deaths
select distinct[cause of death], case 
	when [Cause of death] like '%disappearance%' then 'Disappeared'
	when [Cause of death] like '%fall%' then 'Fall'
	when [Cause of death] like '%fell%' then 'Fall'
	when [Cause of death] like '%avalanche%' then 'Avalanche'
	when [Cause of death] like '%altitude sickness%' then 'Altitude Sickness'
	when [Cause of death] like '%exhaustion%' then 'Exhaustion or Exposure'
	when [Cause of death] like '%exposure%' then 'Exhaustion or Exposure'
	when [Cause of death] like '%hape%' then 'Exhaustion or Exposure'
	when [Cause of death] like '%hace%' then 'Exhaustion or Exposure'
	when [Cause of death] like '%cold%' then 'Exhaustion or Exposure'
	when [Cause of death] like '%cerebral%' then 'Exhaustion or Exposure'
	when [Cause of death] like '%edema%' then 'Exhaustion or Exposure'
	when [Cause of death] like '%storm%' then 'Exhaustion or Exposure'
	when [Cause of death] like '%hypothermia%' then 'Exhaustion or Exposure'
	when [Cause of death] like '%disappeared%' then 'Disappeared'
	when [Cause of death] like '%serac%' then 'Serac Deaths'
	when [Cause of death] like '%stroke%' then 'Illness'
	when [Cause of death] like '%cardiac%' then 'Illness'
	when [Cause of death] like '%heart%' then 'Illness'
	when [Cause of death] like '%illness%' then 'Illness'
	else 'Miscellaneous'
end as cause_of_death
from PortfolioProjects..summiter_deaths


select distinct([cause of death]), count([cause of death])
from PortfolioProjects..summiter_deaths
group by [cause of death]


select [cause of death]
from PortfolioProjects..summiter_deaths


update PortfolioProjects..summiter_deaths
set cause = case 
	when [Cause of death] like '%disappearance%' then 'Disappeared'
	when [Cause of death] like '%fall%' then 'Fall'
	when [Cause of death] like '%fell%' then 'Fall'
	when [Cause of death] like '%avalanche%' then 'Avalanche'
	when [Cause of death] like '%altitude sickness%' then 'Altitude Sickness'
	when [Cause of death] like '%exhaustion%' then 'Exhaustion or Exposure'
	when [Cause of death] like '%exposure%' then 'Exhaustion or Exposure'
	when [Cause of death] like '%hape%' then 'Exhaustion or Exposure'
	when [Cause of death] like '%hace%' then 'Exhaustion or Exposure'
	when [Cause of death] like '%cold%' then 'Exhaustion or Exposure'
	when [Cause of death] like '%cerebral%' then 'Exhaustion or Exposure'
	when [Cause of death] like '%edema%' then 'Exhaustion or Exposure'
	when [Cause of death] like '%storm%' then 'Exhaustion or Exposure'
	when [Cause of death] like '%suffocation%' then 'Exhaustion or Exposure'
	when [Cause of death] like '%hypothermia%' then 'Exhaustion or Exposure'
	when [Cause of death] like '%disappeared%' then 'Disappeared'
	when [Cause of death] like '%serac%' then 'Serac Deaths'
	when [Cause of death] like '%stroke%' then 'Illness'
	when [Cause of death] like '%cardiac%' then 'Illness'
	when [Cause of death] like '%heart%' then 'Illness'
	when [Cause of death] like '%pneumonia%' then 'Illness'
	when [Cause of death] like '%froze%' then 'Exhaustion or Exposure'
	when [Cause of death] like '%illness%' then 'Illness'
	else 'Miscellaneous'
end
from PortfolioProjects..summiter_deaths
--fall, avalanche, altitude sickness, Exhaustion of Exposure, Disappeared, Heart Attack, Hit by heavy objects, Serac Deaths

select count(cause)
from PortfolioProjects..summiter_deaths
where cause = 'Miscellaneous'

delete from PortfolioProjects..summiter_deaths
where [cause of death] = 'Exact cause and date of death unknown'

select distinct([cause of death]), count([cause of death])
from PortfolioProjects..summiter_deaths
where cause = 'Miscellaneous'
group by [cause of death]

update PortfolioProjects..summiter_deaths
set cause = 'Exhaustion or Exposure'
where [cause of death] = 'Died on descent due to bad weather'
