create table countries(
  id int not null AUTO_INCREMENT,
  name varchar(100) not null,
  PRIMARY KEY ( id )
);

create table states(
  id int not null AUTO_INCREMENT,
  name varchar(100) not null,
  PRIMARY KEY ( id )
);

create table books(
  bookid int not null AUTO_INCREMENT,
  bookname varchar(100) not null,
  author varchar(100) not null,
  price int,
  PRIMARY KEY (bookid)
);

create table district(
  id int not null AUTO_INCREMENT,
  district_name varchar(100) not null,
  PRIMARY KEY ( id )
);
