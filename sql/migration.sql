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
insert into students (first_name,last_name,university_number,city) values ('Andrea','Tagliabue',920647,'Milan');
insert into students (first_name,last_name,university_number,city) values ('Morgana','Garbarini',212224,'Turin');
insert into students (first_name,last_name) values ('Marika','Messina');-- 920647,'Milan');
insert into students (first_name,last_name) values ('Rosanna','Pellicano');-- 920647,'Milan');
insert into students (first_name,last_name) values ('Simona','Fartade');-- 920647,'Milan');
insert into students (first_name,last_name) values ('Tommaso','Geronimi');-- 920647,'Milan');


create table rooms(

room_id integer primary key auto_increment,
capacity integer,
location varchar(30),
address varchar(30),
city varchar(30)
);
 insert into rooms (capacity, location, address, city) values (100, 45.05080786715206, 'via Michelangelo 17bis', 'Turin');
 insert into rooms (capacity, location, address, city) values (150, 45.067539249059784, 'via Verdi 26M', 'Turin');
 insert into rooms (capacity, location, address, city) values (200, 45.06417338819595, 'corso Duca Degli Abruzzi 24', 'Turin');
 insert into rooms (capacity, location, address, city) values (180, 45.073670542813645, 'lungo Dora Siena 100A', 'Turin');
 insert into rooms (capacity, location, address, city) values (250, 45.0681917369412, "via sant'Ottavio 20", 'Turin');


create table slots(

room_id integer,
slot_id integer,
free_seats integer,
constraint slots primary key(room_id, slot_id)
);

insert into slots (room_id, slot_id, free_seats) values (1,1,100);


create table organizations(

organization_id integer primary key auto_increment,
organization_name varchar(20),
manager_name varchar(20),
	manager_surname varchar(25) not null,
	email varchar(25),
	phone_number varchar(20)
);
insert into organizations (organization_name,manager_name,manager_surname,email,phone_number) values ('PoliTo','Mario','Ginobili','mario.ginobili@gmail.com','3926465377');
insert into organizations (organization_name,manager_name,manager_surname,email,phone_number) values ('UniTo','Giulia','Rossi','giulia.rossi@gmail.com','3334756908');
insert into organizations (organization_name,manager_name,manager_surname,email,phone_number) values ('Edisu','Silvano','Negri','s.negri@gmail.com','3247658943');


commit;