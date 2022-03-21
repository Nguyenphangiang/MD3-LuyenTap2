create database tour_mng;
use tour_mng;
create table city(
    id int primary key ,
    cityName varchar(100)
);
create table tourist_destinations (
    id int primary key ,
    destinationsName varchar(100),
    description varchar(255),
    avgPrice int,
    city_id int,
    foreign key (city_id) references city(id)
);
create table tourists (
    id int primary key ,
    touristName varchar(100),
    idNumber varchar(5),
    dateOfBird datetime,
    city_id int,
    foreign key (city_id) references city(id)
);
create table tour_type(
    id int primary key ,
    typeID varchar(10),
    typeName varchar(50)
);
create table tour(
    id int primary key ,
    tourtype_id int,
    tourID varchar(10),
    tourPrice int,
    startDate datetime,
    endDate datetime,
    foreign key (tourtype_id) references tour_type (id)
);
create table tour_bill(
    id int primary key ,
    tour_id int,
    tourist_id int,
    status bit,
    foreign key (tour_id) references tour(id),
    foreign key (tourist_id)references tourists(id)
);