create schema netology3

    create table netology3.orders
(
    id           serial primary key,
    date         date,
    customer_id  int,
    product_name varchar(255)            not null,
    amount       int check (amount > 0 ) not null,
    foreign key (customer_id) references netology1.customers(id)
);

insert into netology3.orders(date, customer_id, product_name, amount)
values ('01.01.2024', 1, 'bag', 20),
       ('02.02.2023', 6, 'bed', 12),
       ('03.03.2022', 3, 'scarf', 123),
       ('04.04.2021', 5, 'door', 1),
       ('05.05.2020', 2, 'socks', 2),
       ('06.05.2019', 4, 'chair', 15);