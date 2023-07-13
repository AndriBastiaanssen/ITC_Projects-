create schema Andri_Bastiaanssen_Checkpoint2;

use Andri_Bastiaanssen_Checkpoint2;

create table 
	level_work(
		level_ID int auto_increment,
        work_level varchar(10),
unique
	(work_level),
primary key
	(level_ID)
);

create table 
	location_work(
		location_work_ID int auto_increment, 
		location varchar(10) not null,
unique
	(location),
primary key 
	(location_work_ID)
);

create table 
	hours(
		hours_ID int auto_increment, 
		hours int not null, 
unique
	(hours),
primary key  
	(hours_ID)
);


create table 
	work_experience(
		work_experience_ID int auto_increment,
		work_experience varchar(20) not null,
unique
	(work_experience),
primary key 
	(work_experience_ID)
);

create table 
	function_title(
		function_title_ID int auto_increment,
        function_title varchar(50) not null,
unique 
	(function_title),
primary key 
	(function_title_ID)
);

 create table 
	country(
		country_ID int auto_increment,
        country varchar(20),
unique 
	(country), 
primary key 
	(country_ID)
);

create table 
	location(
		location_ID int auto_increment,
        country_ID int, 
        city varchar(40) not null,
unique
	(city),
primary key
	(location_ID),
foreign key
	(country_ID) references country(country_ID)
);

create table
	contact(
		contact_ID int auto_increment,
        first_name varchar(30) default 'No firstname',
        last_name varchar(30) default 'No lastname',
        e_mail varchar(50) default 'No E-mail',
        telephone_number varchar(20) default 'No telephonenumber',
        linkedin varchar (100) default 'No linkedin',

unique
	(first_name, last_name, e_mail, telephone_number, linkedin),
primary key 
	(contact_ID)
);

create table 
	industry(
		industry_ID int auto_increment,
        industry varchar(20),
unique 
	(industry),
primary key 
	(industry_ID)
);

create table
	company(
		company_ID int auto_increment,
        industry_ID int,
        location_ID int,
        company_name varchar(30),
unique 
	(company_name),
primary key 
	(company_ID),
foreign key 
(industry_ID) references industry(industry_ID),
foreign key 
(location_ID) references location(location_ID)
);

create table 
	company_contact(
		company_ID int,
        contact_ID int, 
foreign key
(company_ID) references company(company_ID),
foreign key 
(contact_ID) references contact (contact_ID)
);

create table 
	work_language(
		work_language_ID int auto_increment,
        work_language varchar(30),
unique 
	(work_language),
primary key 
	(work_language_ID)
);

create table 
	preferred_experience(
		preferred_experience_ID int auto_increment,
        preferred_experience varchar(40),
unique
	(preferred_experience), 
primary key 
	(preferred_experience_ID)
);

create table
	degree_or_skill(
		degree_or_skill_ID int auto_increment, 
        degree_or_skill varchar(20),
unique 
(degree_or_skill),
primary key
(degree_or_skill_ID)
);

create table 
	requirement(
		requirement_ID int auto_increment,
        degree_or_skill_ID int,
        requirement varchar(50),
unique 
	(requirement),
primary key 
	(requirement_ID), 
foreign key 
	(degree_or_skill_ID) references degree_or_skill (degree_or_skill_ID)
);

create table 
	vacancy(
		vacancy_ID int auto_increment, 
        function_title_ID int, 
        company_ID int, 
        location_work_ID int,
        hours_ID int, 
        level_ID int, 
        country_ID int, 
        work_experience_ID int, 
        who_are_you varchar(1000),
        use_emoji bit(1),
primary key
	(vacancy_ID),
foreign key 
	(function_title_ID) references function_title (function_title_ID),
foreign key
    (company_ID) references company (company_ID),
foreign key
    (location_work_ID) references location_work (location_work_ID),
foreign key 
	(hours_ID) references hours (hours_ID), 
foreign key 
	(level_ID) references level_work(level_ID),
foreign key 
	(country_ID) references country(country_ID), 
foreign key 
	(work_experience_ID) references work_experience (work_experience_ID)
);

create table
	requirement_vacancy(
		requirement_ID int, 
        vacancy_ID int, 
foreign key 
	(requirement_ID) references requirement (requirement_ID),
foreign key
	(vacancy_ID) references vacancy (vacancy_ID)
);

create table 
	preferred_experience_vacancy(
		preferred_experience_ID int, 
        vacancy_ID int, 
foreign key 
	(preferred_experience_ID) references preferred_experience (preferred_experience_ID),
foreign key
	(vacancy_ID) references vacancy(vacancy_ID)
);

create table 
	work_language_vacancy(
		work_language_ID int,
        vacancy_ID int, 
foreign key
	(work_language_ID) references work_language (work_language_ID), 
foreign key 
	(vacancy_ID) references vacancy (vacancy_ID)
);