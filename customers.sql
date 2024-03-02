create schema netology1

    create table netology1.customers
(
    id           serial primary key,
    name         varchar(50) not null,
    surname      varchar(50) not null,
    age          int check ( age > 0 and age < 110 ),
    phone_number varchar(15)
);

insert into netology1.customers(name, surname, age, phone_number)
values ('John','Brown',15,'555768') ,
       ('Alexey','Petrov',20,'9166756437') ,
       ('Mary','Green',99,'7658732') ,
       ('Denis','Golubev',58,'9362637482') ,
       ('Kate','Katina',86,'9187362736') ,
       ('Alexey','Wood',13,'37637473') ;