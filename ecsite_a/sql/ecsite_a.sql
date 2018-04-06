set names utf8;
set foreign_key_checks = 0;
drop database if exists ecsite_a;

create database if not exists ecsite_a;
use ecsite_a;

drop table if exists login_user_transaction;

create table login_user_transaction(
id int not null primary key auto_increment,
login_id varchar(16) unique,
login_pass varchar(16),
user_name varchar(50),
user_address varchar(100),
user_phone varchar(20),
insert_date datetime,
updated_date datetime
);

drop table if exists item_info_transaction;

create table item_info_transaction(
id int not null primary key auto_increment,
item_name varchar(30),
item_price int,
item_stock int,
insert_date datetime,
update_date datetime
);

drop table if exists user_buy_item_transaction;

create table user_buy_item_transaction(
id int not null primary key auto_increment,
item_transaction_id int,
item_name varchar(255),
total_price int,
total_count int,
user_master_id varchar(16),
pay varchar(30),
insert_date datetime,
delete_date datetime
);


INSERT INTO item_info_transaction(item_name, item_price, item_stock) VALUES(
"ピアス", 500, 50,
"イヤリング", 800, 50,
"ネックレス", 1000, 50,
"バレッタ", 950, 50,
"ブレスレット", 780, 50
);
