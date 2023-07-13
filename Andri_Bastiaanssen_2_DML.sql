-- Picnic
insert  
	country
		(country)
Value
	('Netherlands');

insert  
	location
		(country_ID, City)
value 
	(1,'Amsterdam');
    
    
insert 
	industry
		(industry) 
value 
	('Food');
  
  
insert 
	company
		(Company_name, location_ID, industry_ID) 
Value
	('Pic Nic', 1, 1);


insert
	contact
		(first_name, last_name)
values
		('Mathijs', 'Roobeek'),
        ('Susan', 'Lagerweij');


insert 
	company_contact
		(company_ID, contact_ID)
values 
	('1', '1'),
	('1', '2');


insert 
	function_title
		(function_title) 
Value
	('Data Analyst');
    

insert 
	hours
		(hours) 
Value
	(40);
    

insert 
	level_work
		(work_level)
Value
	('Entry');
    
    
insert 
	location_work
		(location)
value 
	('On-site');
    
    
insert  
	preferred_experience
		(preferred_experience)
values
	('SQL'),
    ('Tableau'),
    ('Python');
    
    
insert 
	degree_or_skill
		(degree_or_skill)
values
	('Master'),
    ('Skills');


insert 
	requirement
(degree_or_skill_ID, requirement) 
value 
	(1,'Engineering'),
	(1,'Econometrics'),
	(1,'Mathematics'),
	(1, 'Physics'),
    (2,'Excel'),
    (2,'Data');
    
    
insert 
	work_experience
		(work_experience)
value 
	('0-2');


insert 
	work_language
		(work_language)
value
	('English');


insert
	vacancy
		(function_title_ID, company_ID, location_work_ID, hours_ID, level_ID, country_ID, work_experience_ID,Use_emoji,Who_are_you)
value
	('1','1','1','1','1','1','1',1,
	'You combine first-class analytical skills with a creative and problem-solving mindset. You don’t only see numbers in data sets, but you see opportunities.
	As an innovative thinker you constantly generate your own ideas. You’re also ambitious – you come up with smart solutions, not easy ones.
	Superior presentation and communication skills allow you to convert complexity into digestible information for your team. You are confident and take ownership of your projects, but also collaborate with and motivate your colleagues!'
);


insert
	preferred_experience_vacancy
		(preferred_experience_ID, vacancy_id)
values
	(1,1),
    (2,1),
    (3,1);

insert 
	requirement_vacancy
		(requirement_ID,vacancy_ID)
values
	(1,1),
    (2,1),
    (3,1),
    (4,1),
    (5,1),
    (6,1);


insert into 
	work_language_vacancy
		(work_language_ID, vacancy_ID)
value 
	(1,1);

-- Polaroid
insert 
	industry
		(industry)
value
	('E-commerce');


insert into 
	company
		(company_name, location_ID, industry_ID) 
Value
	('Polaroid', 2,2);


insert into 
	contact
		(e_mail)
value
	('careers@polaroid.com');


insert 
	company_contact
		(company_ID, contact_ID)
value 
	(2,3);


insert  
	function_title
		(function_title) 
Value
	('Ecommerce Data Analyst');


insert  
	location_work 
		(location) 
value
	('hybird');


insert into 
	vacancy
		(function_title_ID, company_ID, Location_work_ID, hours_ID, level_ID, country_ID, work_experience_ID,Use_emoji,Who_are_you)
value
	('2','2','2','1','1','1','1',0,
	'Strong attention to detail and ability to work in a fast-paced, deadline-driven environment
	Proven ability to work independently and as part of a team
	A self-starter with a passion for data analysis and a desire to continuously learn and improve
	A results-oriented individual with a track record of delivering actionable insights that drive digital marketing performance
	A skilled user of Python, Google Analytics, Looker Studio, and SQL and able to extract insights from large data sets to improve digital marketing performance.'
);


insert 
	preferred_experience
		(preferred_experience)
value 
	('PowerBI');


insert 
	preferred_experience_vacancy
		(preferred_experience_ID, vacancy_id)
Value 
	(4,2);

insert 
	degree_or_skill
		(degree_or_skill)
value 
	('Bachelor');


insert requirement
(requirement, degree_or_skill_ID) 
values 
('Computerscience', 3),
('Mathematics', 3),
('Economics', 3),
('Google analytics',2),
('Looker studio',2),
('PowerBi',2);


alter table requirement 
drop index requirement,
add constraint requirement_combination unique (requirement, degree_or_skill_ID);


insert  
	requirement_vacancy
		(requirement_ID,vacancy_ID)
values
	(7,2),
    (8,2),
    (9,2),
    (10,2),
    (11,2),
    (12,2);
    

alter table requirement_vacancy
add constraint requirement_vacancy_combination unique (requirement_ID, vacancy_ID);

alter table preferred_experience_vacancy
add constraint preferred_experience_vacancy_combination unique (preferred_experience_ID, vacancy_ID);


insert into 
	work_language_vacancy
	(work_language_ID, vacancy_ID)
Value
	('1', '2');

-- LEAP
insert 
	location
		(country_ID, City)
value 
	(1, 'Eindhoven');


insert 
	industry
		(industry)
value
	('Recruitment');


insert 
	company
		(company_name, location_ID, industry_ID) 
value
	('LEAP', 2, 3);


insert 
	contact
		(E_mail)
value
	('dguinnane@leap29.com');


insert 
	company_contact
		(company_ID, contact_ID)
value 
	(3,4);


insert 
	requirement 
		(requirement, degree_or_skill_ID) 
value
	('SQL'),
	('Python', 2), 
	('Microsoft Azure', 2),
	('Analytical Skills',2);

insert into
	vacancy
		(function_title_ID, company_ID, Location_work_ID, hours_ID, level_ID, country_ID, work_experience_ID,Use_emoji,Who_are_you)
Value
	('1','3','1','1','1','1','1',0,
	'You will regulate, optimize and safeguard the processes and dashboard functionalities like designs, scripting, presentation choices, test findings, availability and authorizations in collaboration with the BI Team.
	You will Analyse onboarded datasets to identify inconsistencies and proactively resolve data issues.
	Communicate findings and recommendations to stakeholders in a clear and concise manner.
	You will gather requirements in the business for dashboards / reports and translate them into appropriate solution designs'
);

insert 
	work_language
		(work_language)
value
	('Dutch');

insert 
	work_language_vacancy
		(work_language_ID, vacancy_ID)
value 
	(1, 3),
	(2, 3);


-- ImpactSearch 

insert 
	location 
		(country_ID, City)
value 
	(1, 'Rotterdam');
    
insert 
	industry
		(industry)
value
	('Finance');

insert 
	company 
		(location_ID, industry_ID, company_name)
value 
	(3,4, 'ImpactSearch');

insert 
	contact
		(first_name, Last_name, Linkedin)
Value 
	('Frank', 'de Winter', 'https://www.linkedin.com/in/frdewinter/');


insert 
	company_contact
		(company_ID, contact_ID)
value 
	(4,5);


insert 
	function_title
		(function_title)
value 
	('Business intelligence & Data Analyst');


insert 
	level_work 
		(work_level)
value 
	('Associate');

insert 
	work_experience
		(work_experience)
value
	('2-5');


insert into 
	vacancy
		(function_title_ID, company_ID, Location_work_ID, hours_ID, level_ID, country_ID, work_experience_ID,Use_emoji,Who_are_you)
Value
	('3','4','1','1','2','1','2',0,
	'Probleemoplosser met goede communicatie- en adviesvaardigheid'
);

insert 
	requirement 
		(requirement, degree_or_skill_ID)
value 
	('UI/UX',2);


insert  
	requirement_vacancy
		(requirement_ID,vacancy_ID)
value 
	(13,4),
	(15,4),
	(7,4),
	(2,4),
	(9,4),
	(12,4),
	(14,4),
	(17,4);

insert 
	work_language_vacancy
		(work_language_ID, vacancy_ID)
value
	(1,4),
	(2,4);

-- ING 
insert 
	industry
	(industry)
value
	('Banking');

insert 
	company
		(Company_name, industry_ID, location_ID)
value 
	('ING', 5, 2);


insert 
	contact
		(first_name, Last_name, E_mail )
value 
	('Angenita', 'de Rijke', 'angenita.de.rijke@ing.com');


insert 
	company_contact
		(company_ID, contact_ID)
value 
	(5,6);


insert 
	function_title
		(function_title)
value 
	('Data Analyst Compliance');


insert into 
	vacancy
		(function_title_ID, company_ID, Location_work_ID, hours_ID, level_ID, country_ID, work_experience_ID,Use_emoji,Who_are_you)
value
	('4','5','1','1','1','1','1',0,
	'Have a passion for data
	Are curious and proactive
	Have the capacity to learn new content quickly
	Have good communication skills and know how to make your results understandable for the compliance experts
	Have good documenting skills
	Have a helicopter view, but also have attention to details
	Have the skills to function independently and effectively'
);


insert 
	preferred_experience 
		(preferred_experience)
values 
	('banking'),
	('risk management');
    

insert 
	preferred_experience_vacancy
		(preferred_experience_ID, vacancy_id)
value
	(5,5),
	(6,5);


insert 
	requirement 
		(requirement, degree_or_skill_ID)
values 
	('Cognos', 2),
	('SAS', 2);

insert  
	requirement_vacancy
		(requirement_ID,vacancy_ID)
value 
	(7,5),
	(8,5),
	(9,5),
	(13,5),
	(12,5),
	(18,5),
	(19,5);

insert 
	work_language_vacancy
		(work_language_ID, vacancy_ID)
value
	(1,5),
	(2,5);

-- Creative Clicks
insert 
	industry
		(industry)
value
	('Mobile Marketing');


insert 
	company 
(Company_name, location_ID, industry_ID)
value 
('Creative Clicks', 2,6);


insert 
	contact
		(first_name, last_name, linkedin)
value
	('Nicholas','Viljoen','https://www.linkedin.com/in/talentacquisitionmanager1/');


insert 
	company_contact 
		(company_ID, contact_ID)
value 
	(6, 7);


insert 
	level_work 
		(work_level)
value 
	('Mid-Semior');

insert 
	work_experience
		(work_experience)
value 
	(3);

insert into 
	vacancy
		(function_title_ID, company_ID, Location_work_ID, hours_ID, level_ID, country_ID, work_experience_ID,Use_emoji,Who_are_you)
Value
	('1','6','1','1','1','1','3',0,
	'Experience in an Digital Payment flows or performance marketing environment is a plus.
	Business stakeholder minded.
	A curious person that gets motivated by solving data challenges, understanding customer behavior, and exploring the complexity of digital payment data.
	Excellent communication skills and able to present complicated concepts to stakeholders in a synthetic way.
	You can propose and build fresh solutions, but also test and guarantee the quality of your analyses and implementations.'
);


insert 
	preferred_experience
		(preferred_experience)
Values 
	('Project Management'),
	('Dax'),
	('Power Query'),
	('Machine Learning');


insert 
	preferred_experience_vacancy
		(preferred_experience_ID, vacancy_id)
values
	(3,6),
	(7,6),
	(8,6),
	(9,6),
	(10,6);

insert 
	requirement
		(requirement, degree_or_skill_ID)
values 
	('Tablau',2),
	('agile Wow',2);


insert 
	requirement_vacancy
		(requirement_ID, vacancy_ID)
value 
	(1,6),
	(2,6),
	(3,6),
	(4,6),
	(7,6),
	(8,6),
	(9,6),
	(15,6),
	(12,6),
	(13,6),
	(20,6),
	(21,6);


insert 
	work_language_vacancy
		(work_language_ID, vacancy_ID)
value
	(1,6);


-- Ace & Tate
insert 
	company
		(Industry_ID, location_ID, Company_name)
value 
	(3, 2, 'Ace & Tate');


insert 
	function_title 
		(function_title)
value
	('E-commerce intern');

insert 
	level_work 
		(work_level)
value 
	('Internship');


insert 
	work_experience
		(work_experience)
value 
	('0');


insert into 
	vacancy
		(function_title_ID, company_ID, Location_work_ID, hours_ID, level_ID, country_ID, work_experience_ID,Use_emoji,Who_are_you)
Value
	('5','7','1','1','4','1','4',0,
	'Are data driven but also able to give contribution to the creative part
	Are detail-oriented, able to take responsibility and work independently, and have a solution-oriented attitude
	Have a strong interest in e-commerce and start-ups'
);

insert 
	requirement 
		(requirement, degree_or_skill_ID)
values
	('Business', 3),
	('Marketing', 3),
	('Psychology', 3),
	('Google Sheets',2);

insert 
	requirement_vacancy
		(requirement_ID, vacancy_ID)
values
	(8,7),
	(22,7),
	(23,7),
	(24,7),
	(5,7),
	(25,7);

insert  
	work_language_vacancy
		(work_language_ID, vacancy_ID)
values
	(1,7),
	(2,7);
    

insert 
	industry
		(industry)
value 
	('Fashion');


insert 
	company 
		(industry_ID, location_ID, Company_name)
value
	(7, 2, 'Otrium');


insert 
	function_title 
		(function_title)
value 
	('Data Analytics Internship');
    

insert into 
	vacancy
		(function_title_ID, company_ID, Location_work_ID, hours_ID, level_ID, country_ID, work_experience_ID,Use_emoji,Who_are_you)
value
	('6','8','2','1','4','1','4',0,
	'Strong in quantitative & problem solving skills
	Solutions-oriented, a self-starter and have an eye for detail
	A quick learner, motivated and enjoy working with new technologies
	Able to and enjoy working in a fast-paced, dynamic and international team environment'
);


insert 
	preferred_experience_vacancy
		(preferred_experience_ID, vacancy_id)
value
	(1,8);

insert 
	requirement_vacancy
		(requirement_ID, vacancy_ID)
Values 
	(1,8),
	(2,8),
	(3,8),
	(7,8),
	(8,8),
	(9,8),
	(22,8);

insert 
	work_language_vacancy
		(work_language_ID, vacancy_ID)
values 
	(1,8),
	(2,8);


-- Furore

insert 
	industry
		(industry)
value
	('IT');


insert
	company 
		(industry_ID, location_ID, company_name)
value 
	(8, 2,'Furore');


insert 
	contact 
		(first_name, last_name, E_mail, linkedin)
values 
	('Tom', 'Rooseboom', 't.rooseboom@furore.com', 'https://www.linkedin.com/in/tom-rooseboom-b51752110/');
	
    
insert 
	company_contact 
		(company_ID, contact_ID)
value
	(9,8);


insert 
	function_title
		(function_title)
value 
	('Junior Data Consultant');


insert 
	hours 
		(hours)
value 
	(32);


insert into 
	vacancy
		(function_title_ID, company_ID, Location_work_ID, hours_ID, level_ID, country_ID, work_experience_ID,Use_emoji,Who_are_you)
Value
	('7','9','2','2','1','1','4',0,
	'Jij bent te herkennen aan je affiniteit met data en de zorg. Je bent op zoek naar een eerste uitdagende baan op het gebied van data in de zorg, bent leergierig en gaat een technische uitdaging niet uit de weg.'
);

insert 
	work_language_vacancy
		(work_language_ID, vacancy_ID)
values 
	(2,9);


insert 
	preferred_experience
		(preferred_experience)
values 
	('Data modelingen'),
	('Expierence in data-analist'),
	('Health care');


insert 
	preferred_experience_vacancy
		(preferred_experience_ID, vacancy_id)
values
	(11,9),
	(12,9),
	(13,9);


insert 
	requirement_vacancy
		(vacancy_ID, requirement_ID)
values
	(9,1),
	(9,2),
	(9,3),
	(9,4),
	(9,22),
	(9,23),
	(9,24);


-- Datavibes 
insert 
	industry 
		(industry)
value
	('Software');


insert 
	location
		(country_ID, City)
value 
	(1,'Gouda');


insert 
	company 
		(industry_ID, location_ID, Company_name)
value 
	(9, 4,'Datavibes');


insert 
	location_work
		(location)
value
	('Remote');


insert into 
	vacancy
		(function_title_ID, company_ID, Location_work_ID, hours_ID, level_ID, country_ID, work_experience_ID,Use_emoji,Who_are_you)
Value
	('1','10','3','1','3','1','3',0,
	'Leergierig en analytisch sterk
	Flexibel en pragmatisch
	Uitstekende sociale en communicatieve vaardigheden
	Kan je goed analyseren, plannen en organiseren
	Ondernemend, klantgericht, zelfstandig, stressbestendig, resultaatgericht en collegiaal
	Beschik je over uitstekende mondelinge en schriftelijke communicatievaardigheden
	Proactief en resultaatgericht');
 
 
insert 
	requirement
		(requirement)
values 
	('Scrum and Agile'), 
	('DAX'),
	('Data-modelingen');


insert 
	requirement_vacancy
		(vacancy_ID, requirement_ID)
values 
	(10,7),
	(10,8),
	(10,9),
	(10,22), 
	(10,23),
	(10,24),
	(10,13),
	(10,12),
	(10,26),
	(10,27),
	(10,28);


insert 
	work_language_vacancy
		(work_language_ID, vacancy_ID)
values 
	(2,10);

-- Peroptyx
insert 
	industry
		(industry)
value 
	('Digital Mapping');


insert 
	company
		(industry_ID, Location_ID, Company_name)
value 
	(10, 2, 'Peroptyx');
    
    
insert
	vacancy
		(function_title_ID, company_ID, Location_work_ID, hours_ID, level_ID, country_ID, work_experience_ID,Use_emoji,Who_are_you)
Value
	('1','11','3','2','1','1','4',0,
	'Good understanding and general knowledge of the geography and culture of Netherlands.'
);


insert 
	work_language_vacancy
		(work_language_ID, vacancy_ID)
values 
	(2,11),
	(1,11);
    

-- G-STAT
insert 
	industry  
		(industry)
value
	('Data');

insert 
	country
		(country)
value 
	('Israel');

insert 
	location 
		(country_ID, city)
value 
	(2, 'Rosh HaAyin');


insert 
	company 
		(industry_ID, location_ID, Company_name)
value
	(11,5, 'G-STAT');
    

insert 
	vacancy
		(function_title_ID, company_ID, Location_work_ID, hours_ID, level_ID, country_ID, work_experience_ID,Use_emoji,Who_are_you)
Value
	('1','12','2','1','1','2','2',0,
	'you possess in-depth analytical skills, a developed business sense, and an understanding of business processes'
);


insert  
	preferred_experience
		(preferred_experience)
values 
	('Sales'),
	('Business Objects');

insert
	preferred_experience_vacancy
		(preferred_experience_ID, vacancy_id)
value
	(14,12),
	(15,12);


insert 
	requirement_vacancy
		(vacancy_ID,requirement_ID)
value 
	(12,7),
	(12,8),
	(12,9),
	(12,24),
	(12,22),
	(12,23),
	(12,28),
	(12,13),
	(12,16);
    

insert 
	work_language_vacancy
		(work_language_ID, vacancy_ID)
Value 
	(1,12);


-- Unit 
insert 
	location 
		(city, country_ID) 
value 
	('Tel Aviv-Yafo', 2);

insert 
	company
		(industry_ID, location_ID, company_name)
value
(5,6,'Unit');


insert into 
	vacancy
		(function_title_ID, company_ID, Location_work_ID, hours_ID, level_ID, country_ID, work_experience_ID,Use_emoji,Who_are_you)
Value
	('1','13','1','1','1','2','3',0,
	'Strong problem solver who is curious, creative and highly analytical.
	Desire to take ownership over projects in a results-driven environment.
	Comfortable working in a client facing environment, communicating with c-level executives in and out of Unit.
	Ability to self-motivate, pick things up quickly, and adapt in a fast-paced environment.'
);


insert  
	preferred_experience
		(preferred_experience)
values 
	('Web analytics'),
	('Defining/analyzing client'),
	('Pandas'),
	('Numpy');


insert 
	preferred_experience_vacancy
		(preferred_experience_ID,vacancy_id)
value 
	(3,13),
	(16,13),
	(17,13),
	(18,13),
	(19,13);


insert 
	requirement 
		(requirement,degree_or_skill_ID)
values 
	('Superset',2);


insert   
	requirement_vacancy
		(requirement_ID, vacancy_ID)
value 
	(7,13),
	(8,13),
	(9,13),
	(22,13),
	(23,13),
	(24,13),
	(11,13),
	(12,13),
	(13,13),
	(20,13),
	(29,13);


insert 
	work_language
		(work_language)
value 
	('Hebrew');


insert 
	work_language_vacancy
		(work_language_ID, vacancy_ID)
values
	(1,13),
	(3,13);


-- Rounds 
insert 
	industry 
		(industry)
value 
	('Development');

insert 
	company 
		(industry_ID, location_ID, Company_name) 
value
	(12, 6, 'Rounds');


insert 
	contact 
		(first_name, last_name, linkedin)
value 
	('Yossi', 'Wasserman', 'https://www.linkedin.com/in/yossi-wasserman');


insert 
	company_contact 
		(company_ID, contact_ID)
value 
	(14, 9);


insert into 
	function_title 
		(function_title)
value 
	('Data Analyst Team Lead');


insert 
	work_experience
		(work_experience)
value 
	(4);


insert 
	vacancy
		(function_title_ID, company_ID, Location_work_ID, hours_ID, level_ID, country_ID, work_experience_ID,Use_emoji,Who_are_you)
Value
	('8','14','3','1','3','2','5',0,
	'you will be working closely with the VP of R&D Engineering, using your analytical skills to lead a team of talented data analysts to uncover insights and make impactful decisions.'
);


insert 
	requirement
		(requirement, degree_or_skill_ID)
value 
	('Data Studio', 2);


insert 
	requirement_vacancy
		(requirement_ID, vacancy_ID)
Value 
	(5,14),
	(13,14),
	(20,14),
	(30,14);


insert 
	work_language_vacancy
		(work_language_ID, vacancy_ID)
values
	(1,14);


-- Konnecto 
insert 
	industry
		(industry)
value 
	('Marketing');


insert 
	company 
		(industry_ID, Location_ID, company_name)
value 
(13, 6, 'Konnecto');


insert 
	function_title 
		(function_title)
value 
	('Senior Data Analyst');


insert 
	vacancy
		(function_title_ID, company_ID, Location_work_ID, hours_ID, level_ID, country_ID, work_experience_ID,Use_emoji,Who_are_you)
value
	('9','15','1','1','3','2','5',0,
	'Strong analytical and statistical skills, extensive knowledge of significance tests and distributions
	Ability to turn complex data into business insights. Understand Business and product needs fast and build an execution plan to meet them.
	A highly independent and creative team player who works well with others
	Experience in fast-paced, high-intensity work environment');


insert 
	work_language_vacancy
		(work_language_ID, vacancy_ID)
values
	(1,15);


insert 
	preferred_experience
		(preferred_experience)
values
	('Data visualization'),
	('Marketing analytics'),
	('Java Script');


insert 
	preferred_experience_vacancy
		(preferred_experience_ID, vacancy_id)
value 
	(11,15),
	(20,15),
	(21,15),
	(22,15),
	(3,15);


insert 
	requirement_vacancy
		(requirement_ID, vacancy_ID)
Value 
	(13,15),
	(7,15),
	(8, 15),
	(22,15),
	(23,15),
	(9,15);























	






    
