use red;

-- main tables cleanup
drop table if exists students;
drop table if exists rooms;
drop table if exists slots;
drop table if exists organizations;

create table slots(

room_id integer,
slot_id integer,
free_seats integer,
constraint slots primary key(room_id, slot_id)
);
insert into slots (room_id, slot_id, free_seats) values (1,1,100);
insert into slots (room_id, slot_id, free_seats) values (1,2,100);
insert into slots (room_id, slot_id, free_seats) values (2,1,150);
insert into slots (room_id, slot_id, free_seats) values (2,2,150);
insert into slots (room_id, slot_id, free_seats) values (3,1,200);
insert into slots (room_id, slot_id, free_seats) values (3,2,200);
insert into slots (room_id, slot_id, free_seats) values (4,1,180);
insert into slots (room_id, slot_id, free_seats) values (4,2,180);
insert into slots (room_id, slot_id, free_seats) values (5,1,250);
insert into slots (room_id, slot_id, free_seats) values (5,2,250);

create table students(

student_id integer primary key auto_increment,
first_name varchar(30),
last_name varchar(30),
university_number varchar(30),
email varchar(30),
room_id integer,
slot_id integer,
constraint room_id_fk foreign key(room_id, slot_id) references slots(room_id, slot_id)
);
insert into students (first_name,last_name,university_number,email,room_id,slot_id) values ('Andrea','Tagliabue',920647,'920647@studenti.polimi.it',1,1);
insert into students (first_name,last_name,university_number,email,room_id,slot_id) values ('Morgana','Garbarini',212224,'s212224@studenti.polito.it',1,2);
insert into students (first_name,last_name, university_number,email,room_id,slot_id) values ('Marika','Messina', 232545, 's232545@studenti.unict.it', 1,2 );
insert into students (first_name,last_name, university_number,email,room_id,slot_id) values ('Rosanna','Pellicano', 249457, 's249457@studenti.polito.it', 3,1);
insert into students (first_name,last_name, university_number,email,room_id,slot_id) values ('Simona','Fartade', 204934, 's204934@studenti.polito.it', 1,2);
insert into students (first_name,last_name, university_number,email,room_id,slot_id) values ('Tommaso','Giromini', 225685, 's225685@studenti.polito.it', 1,2);

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

create table rooms(

room_id integer primary key auto_increment,
capacity integer,
location varchar(30),
address varchar(30),
city varchar(30),
organization_id integer,
silent varchar(2),
constraint rooms_fk foreign key(organization_id) references organizations(organization_id)
);
 insert into rooms (capacity, location, address, city, organization_id, silent) values ('100', '45.05080786715206', 'via Michelangelo 17bis', 'Turin', '3', 'si');
 insert into rooms (capacity, location, address, city, organization_id, silent) values ('150', '45.067539249059784', 'via Verdi 26M', 'Turin', '3', 'si');
 insert into rooms (capacity, location, address, city, organization_id, silent) values ('200', '45.06417338819595', 'corso Duca Degli Abruzzi 24', 'Turin','1', 'no');
 insert into rooms (capacity, location, address, city, organization_id, silent) values ('180', '45.073670542813645', 'lungo Dora Siena 100A', 'Turin','2', 'si');
 insert into rooms (capacity, location, address, city, organization_id, silent) values ('250', '45.0681917369412', "via sant'Ottavio 20", 'Turin','2', 'no');

commit;