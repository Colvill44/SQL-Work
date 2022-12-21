DROP DATABASE IF EXISTS my_web_db;
CREATE DATABASE my_web_db;
use my_web_db;

create table users (
	user_id int primary key auto_increment,
    email_address varchar(100),
    first_name varchar(45) default null,
    last_name varchar(45) default null
);

create table products (
	product_id int primary key auto_increment,
    product_name varchar(45)
);

create table downloads (
	download_id int primary key auto_increment,
    user_id int,
    download_date datetime,
    filename varchar(50),
    product_id int,
    constraint fk_download_users
    foreign key (user_id) references users (user_id),
    constraint fk_download_products
    foreign key (product_id) references products (product_id)
);

