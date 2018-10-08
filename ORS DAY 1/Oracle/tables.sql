
drop table project;

create table project
(
	project_id varchar2(3) primary key,
	project_name varchar2(10),
	description varchar2(20),
	start_date date,
	end_date date,
	rm_id varchar2(3) references resource_manager(rm_id)
);

drop table requisition;

create table requisition
(
	requisition_id varchar2(3) primary key,
	rm_id varchar2(3)references resource_manager(rm_id),
	project_id varchar2(3) references project(project_id),
	date_created date,
	date_close date,
	current_status varchar2(10),
	vacancy_name varchar2(10),
	skill varchar2(5),
	domain varchar2(5),
	number_required number
);


drop table resource_manager;

create table resource_manager
(
	rm_id varchar2(3) primary key,
	rm_name varchar2(15),
	project_id varchar2(3) references project(project_id),
	experiance_years number,
	
	
	
	
)
































