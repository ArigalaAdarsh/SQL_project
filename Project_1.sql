/* Database Creation */
create database relational_Database

/*User Account Table Creation */
create table user_account(id int primary key,user_name varchar(100),email varchar(254),password varchar(200),password_salt varchar(50) null,
password_hash_algorithm varchar(50));
 
/* User Role Table Creation */
create table role(id int primary key,role_name varchar(100));

/* User Status Table Creation */
create table status(id int primary key,status_name varchar(100),is_user_working bit);
 
/* User Has Role Table Creation */
create table user_has_role(id int primary key,role_start_time datetime ,role_end_time datetime null,user_account_id int,role_id int ,foreign key(user_account_id) references user_account(id),foreign key(role_id) references role(id));

/*User Has Status Table Creation */
create table user_has_status(id int primary key,status_start_time datetime,status_end_time datetime,user_account_id int,status_id int,foreign key(user_account_id) references user_account(id),foreign key(status_id) references status(id)); 

/*Inserting values In User Accounts Table */
insert into user_account values(1,'Adarsh','arigalaadarsh780@gmail.com','adarsh@123','adarsh123','password_adarsh'),(2,'Shalini','shaliniarigala6@gmail.com','shalini@123','sahalin123','password_shalini'),(3,'Konkala Harinath','harinath@gmail.com','harinath@123','harinath123','password_harinath');
 
/*Inserting values In User Role Table */
insert into role values(2,'Developer'),(1,'Trainer'),(3,'Trainee');
 
/*Inserting values Status Table */
insert into status values( 1,'Working',1),(2,'Not_Working',0),( 3,'Working',1);

/*Inserting values In User Has Role Table */
insert into user_has_role values(1,'2012-07-19 12:10:22','2022-07-10 12:10:22',1,1),(2,'2010-08-10 09:10:22','2011-08-10 12:10:22',1,3),(3,'2022-01-19 12:10:22','2022-07-10 12:10:22',1,2);

/*Inserting values In User Has Status Table */
insert into user_has_status values(1,'2012-07-19 12:10:22','2022-07-10 12:10:22',1,1),(2,'2010-08-10 09:10:22','2011-08-10 12:10:22',1,3),(3,'2022-01-19 12:10:22','2022-07-10 12:10:22',1,2);

/*Retreving Data from tables */
select * from user_account
select * from role
select * from user_has_role
select * from user_has_status