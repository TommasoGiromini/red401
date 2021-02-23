use red;

-- main tables cleanup
drop table if exists students;
drop table if exists rooms;
drop table if exists slots;
drop table if exists organizations;

create table students(

student_id integer primary key auto_increment,
first_name varchar(30),
last_name varchar(30),
university_number varchar(30),
city varchar(30)
);

create table rooms(

room_id integer primary key auto_increment,
capacity integer,
location varchar(30),
address varchar(30),
city varchar(30)
);

create table slots(

room_id integer,
slot_id integer,
free_seats integer,
constraint slots primary key(room_id, slot_id)
);

create table organizations(

organization_id integer,
manager_name varchar(20),
	manager_surname varchar(25) not null,
	email varchar(25) unique not null,
	phone_number varchar(20)
);

commit