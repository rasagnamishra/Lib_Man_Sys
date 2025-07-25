
create database lib_man_sys;

use lib_man_sys;

create table lib (
library_id int primary key,
name varchar(20),
campus_location varchar(100),
contact_email varchar(50) unique,
phone_number varchar(20) 
);

ALTER TABLE lib 
ADD COLUMN created_at TIMESTAMP DEFAULT,
ADD COLUMN updated_at TIMESTAMP DEFAULT;

create table book (
    book_id int primary key,
    title varhar(200) not null,
    isbn varchar(20) unique,
    publication_date date,
    total_copies int,
    available_copies int,
    library_id int,
    foreign key (library_id) references lib(library_id)
);


ALTER TABLE book
ADD COLUMN created_at TIMESTAMP DEFAULT,
ADD COLUMN updated_at TIMESTAMP DEFAULT;


create table author (
author_id int primary key,
first_name varchar(50),
last_name varchar(50),
birth_date date,
nationality varchar(50),
biography text
);

ALTER TABLE author 
ADD COLUMN created_at TIMESTAMP DEFAULT,
ADD COLUMN updated_at TIMESTAMP DEFAULT;


create table category (
category_id int primary key, 
name varchar(50), 
description text
);

ALTER TABLE category 
ADD COLUMN created_at TIMESTAMP DEFAULT,
ADD COLUMN updated_at TIMESTAMP DEFAULT;


create table bookauthor(
book_id int, 
author_id int,
primary key (book_id, author_id),
foreign key (book_id) references book(book_id),
foreign key (author_id) references author(author_id)
);

ALTER TABLE bookauthor
ADD COLUMN created_at TIMESTAMP DEFAULT,
ADD COLUMN updated_at TIMESTAMP DEFAULT;


create table bookcategory (
book_id int, 
category_id int,
primary key (book_id, category_id),
foreign key (book_id) references book(book_id),
foreign key (category_id) references category(category_id)
);

ALTER TABLE bookcategory 
ADD COLUMN created_at TIMESTAMP DEFAULT,
ADD COLUMN updated_at TIMESTAMP DEFAULT;


create table member(
member_id int primary key, 
first_name varchar(50), 
last_name varchar(50), 
email varchar(50) unique, 
phone varchar(30), 
member_type varchar(20) check (member_type in ('student','faculty')), 
registration_date date
);

ALTER TABLE `member` 
ADD COLUMN created_at TIMESTAMP DEFAULT,
ADD COLUMN updated_at TIMESTAMP DEFAULT;


create table borrowing (
borrowing_id int primary key, 
member_id int, 
book_id int, 
borrow_date date, 
due_date date, 
return_date date, 
late_fee decimal(8,5),
foreign key (member_id) references member(member_id),
foreign key (book_id) references book(book_id)
);

ALTER TABLE borrowing 
ADD COLUMN created_at TIMESTAMP DEFAULT,
ADD COLUMN updated_at TIMESTAMP DEFAULT;


create table review(
review_id int primary key, 
member_id int unique, 
book_id int unique, 
rating int check (rating between 1 and 5), 
comment text, 
review_date date,
foreign key (member_id) references member(member_id),
foreign key (book_id) references book(book_id)
);

ALTER TABLE review 
ADD COLUMN created_at TIMESTAMP DEFAULT,
ADD COLUMN updated_at TIMESTAMP DEFAULT;
