create database manga;
use manga;

create table if not exists tbl_manga(
	id int not null auto_increment,
	manga_name varchar(50),
	price float,
	des varchar(255),
	author_name varchar(50),
	primary key(id)
);

