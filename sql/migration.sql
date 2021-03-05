use red;

-- main tables cleanup
drop table if exists students;
drop table if exists rooms;
drop table if exists slots;
drop table if exists managers;

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
password varchar(8),
room_id integer,
slot_id integer,
constraint room_id_fk foreign key(room_id, slot_id) references slots(room_id, slot_id)
);
insert into students (first_name,last_name,university_number,email,password,room_id,slot_id) values ('Andrea','Tagliabue',920647,'920647@studenti.polimi.it','password',1,1);
insert into students (first_name,last_name,university_number,email,password,room_id,slot_id) values ('Morgana','Garbarini',212224,'s212224@studenti.polito.it','password',1,2);
insert into students (first_name,last_name, university_number,email,password,room_id,slot_id) values ('Marika','Messina', 232545, 's232545@studenti.unict.it','password', 1,2 );
insert into students (first_name,last_name, university_number,email,password,room_id,slot_id) values ('Rosanna','Pellicano', 249457, 's249457@studenti.polito.it','password', 3,1);
insert into students (first_name,last_name, university_number,email,password,room_id,slot_id) values ('Simona','Fartade', 204934, 's204934@studenti.polito.it','password', 1,2);
insert into students (first_name,last_name, university_number,email,password,room_id,slot_id) values ('Tommaso','Giromini', 225685, 's225685@studenti.polito.it', 'password',1,2);

create table managers(

manager_id integer primary key auto_increment,
manager_name varchar(20),
	manager_surname varchar(25) not null,
	email varchar(25),
    password varchar(8),
	phone_number varchar(20),
    organization_name varchar(20)
);
insert into managers (manager_name, manager_surname, email, password,  phone_number, organization_name) values ('Mario','Ginobili','mario.ginobili@gmail.com', 'password','3926465377','PoliTo');
insert into managers (manager_name, manager_surname, email, password, phone_number, organization_name) values ('Giulia','Rossi','giulia.rossi@gmail.com', 'password','3334756908', 'UniTo');
insert into managers (manager_name, manager_surname, email, password, phone_number, organization_name) values ('Silvano','Negri','s.negri@gmail.com', 'password', '3247658943','Edisu');

create table rooms(

room_id integer primary key auto_increment,
name varchar(30),
capacity integer,
location varchar(30),
address varchar(30),
city varchar(30),
manager_id integer,
silent varchar(2),
constraint rooms_fk foreign key(manager_id) references managers(manager_id)
);
 insert into rooms (name, capacity, location, address, city, manager_id, silent) values ('Aula Studio Opera','100', '45.05080786715206', 'via Michelangelo 17bis', 'Turin', '3', 'si');
 insert into rooms (name, capacity, location, address, city, manager_id, silent) values ('Verdi','150', '45.067539249059784', 'via Verdi 26M', 'Turin', '3', 'si');
 insert into rooms (name, capacity, location, address, city, manager_id, silent) values ('Politecnico', '200', '45.06417338819595', 'corso Duca Degli Abruzzi 24', 'Turin','1', 'no');
 insert into rooms (name, capacity, location, address, city, manager_id, silent) values ('Campus Einaudi', '180', '45.073670542813645', 'lungo Dora Siena 100A', 'Turin','2', 'si');
 insert into rooms (name, capacity, location, address, city, manager_id, silent) values ('Palazzo nuovo','250', '45.0681917369412', "via sant'Ottavio 20", 'Turin','2', 'no');

commit;