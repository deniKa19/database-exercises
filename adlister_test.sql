use adlister_db;


create table users (
id int unsigned not null auto_increment,
username VARCHAR (50) not null,
email VARCHAR (50) not null,
password VARCHAR (50) not null,
primary key (id)
);


create table ads (
id int unsigned not null auto_increment,
user_id int unsigned not null,
title VARCHAR (20) not null,
description VARCHAR (100) not null,
primary key(id),
foreign key (user_id) references users(id)

);