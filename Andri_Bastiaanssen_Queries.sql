use Andri_Bastiaanssen_Checkpoint2;

-- i 10 queries that joins data from 2 tables

select 
	vacancy_ID,
	work_level
from 
	vacancy as v
join 
	level_work as l
on 
	l.level_ID = v.level_ID;
    
select
	company_ID,
    sector
from 
	company as c
join 
	sector as s
on
	s.sector_ID = c.sector_ID;

select 
	City,
    Company_Name
from 
	company as c 
join 
	location as l 
on 
	l.location_ID = c.location_ID;
    
Select 
	vacancy_ID,
    function_title 
from 
	vacancy as v
join 
	function_title as f
on 
	v.function_title_ID = f.function_title_ID;
    
select 
	*
from 
	company as c
join 
	company_contact as cc
on
	cc.company_ID = c.company_ID;

select 
	country_ID,
    hours
from 
	vacancy as v
join 
	hours as h
on
	h.hours_ID = v.hours_ID;

select 
	vacancy_ID, 
    work_language
from 
	work_language_vacancy as v 
join 
	work_language as w
on 
	w.work_language_ID = v.work_language_ID;
    
select 
	vacancy_ID,
    requirement
from 
	requirement_vacancy as v
join 
	requirement as r
on
	r.requirement_ID = v.requirement_ID;

select 
	city,
    country 
from 
	country as c
join 
	location as l 
on 
	c.country_ID = l.country_ID;
    
select 
	company_ID,
    first_name
from 
	company_contact as cc
join 
	contact as c
on
	cc.contact_ID = c.contact_ID;
    
-- ii. 5 queries that joins data from 3 tables (on your own choice) involves built in functions

select 
	concat (company_name) as 'Company',
    country
from 
	 company as c
join 
	location as l
on
	c.location_ID=l.location_ID
join 
	country as v
on 
	l.country_ID=v.country_ID;

select 
	SUBSTRING(function_title, 6) as short_title,
    work_level
from 
	level_work as l
join 
	vacancy as v
on 
	v.level_id = l.level_ID
join 
	function_title as f
on 
	v.function_title_ID = f.function_title_ID;
    
select 
	lower(work_language),
    level_ID
from 
	vacancy as v
join 
	work_language_vacancy as wv
on 
	v.vacancy_ID=wv.vacancy_ID
join 
	work_language as w
on
	wv.work_language_ID=w.work_language_ID;

select 
	upper(requirement),
    v.vacancy_ID
from 
	requirement as r
join 
	requirement_vacancy as rv
on
	r.requirement_ID=rv.requirement_ID
join 
	vacancy as v
on 
	v.vacancy_ID = rv.vacancy_ID;
    
select 
	Company_name, length(Company_name) as length_company_name,
    Company_name,
    industry
    vacancy_ID
from 
	industry as s
join 
	company as c
on 
	s.industry_ID = c.industry_ID
join 
	vacancy as v 
on 
	c.company_ID= v.company_ID;

-- iii. 5 queries that involves aggregation function

select
	count(*) as most_common_requirement, 
    requirement 
from 
	requirement as r
join 
	requirement_vacancy as v
on 
	r.requirement_ID = v.requirement_ID
group by 
	requirement
order by 
	most_common_requirement desc 
limit 1;

select
	location,
    count(vacancy_ID) as Total_vacancy
from 
	location_work as l
join 
	vacancy as v
on 
	l.location_work_ID = v.location_work_ID
group by 
	location 
order by 
	Total_vacancy;

select
	country,
    AVG(hours) AS average_hours
from
	hours as h
join 
	vacancy as v 
ON
	v.hours_ID= h.hours_ID
join 
	country as cv
on 
	cv.country_ID=v.country_ID
group by 
	country
order by 
	average_hours;

select  
	degree_or_skill,
    round((count(*) / (select count(*) from requirement)) * 100 )as percentage 
FROM 
    requirement as r
join 
	degree_or_skill as d 
on 
r.degree_or_skill_ID = d.degree_or_skill_ID
where
    r.degree_or_skill_ID=3;


select 
	vacancy_ID, 
    Company_name, 
(
case 
	when Who_are_you like '%marketing%' then 1
    else 0
end 
+ 
case 
	when Who_are_you like '%creative%' then 2
    else 0
end 
+ 
case 
	when Who_are_you like '%engineering%' then 2
    else 0
end 
+ 
case 
	when Who_are_you like '%responsibility%' then 2
    else 0
end 
+ 
case 
	when Who_are_you like '%solving%' then 1
    else 0
end 
+ 
case 
	when Who_are_you like '%international%' then 1
    else 0
end 
+ 
case 
	when Who_are_you like '%communication%' then 1
    else 0
end 
+     
case 
	when Who_are_you like '%ambitious%' then 1
    else 0
end 
+ 
case 
	when Who_are_you like '%business%' then 1
    else 0
end 
+ 
case 
	when Who_are_you like '%insight%' then 1
    else 0
end 
+ 
case 
	when Who_are_you like '%passion%' then 2
    else 0
end 
+ 
case 
	when Who_are_you like '%responsibility%' then 1
    else 0
end
) as Total_Points 
from 
	vacancy as v
join 
	company as c 
on 
	c.company_ID = v.company_ID
group by 
	company_name,
    v.vacancy_ID,
    Who_are_you
order by
	Total_Points desc;
    

    






    

