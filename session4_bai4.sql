create table products(
    id serial primary key,
    name varchar(50) not null,
    category varchar(50) not null,
    price int not null,
    stock int,
    manufacturer varchar(50) not null
);

insert into
    products(id, name, category, price, stock, manufacturer)
values
    (1, 'Laptop Dell XPS 13', 'Laptop', 25000000, 12, 'Dell'),
    (2, 'Chuột Logitech M90', 'Phụ kiện', 150000, 50, 'Logitech'),
    (3, 'Bàn phím cơ Razer', 'Phụ kiện', 2200000, 0, 'Razer'),
    (4, 'Macbook Air M2', 'Laptop', 32000000, 7, 'Apple'),
    (5, 'iPhone 14 Pro Max', 'Điện thoại', 35000000, 15, 'Apple'),
    (6, 'Laptop Dell XPS 13', 'Laptop', 25000000, 12, 'Dell'),
    (7, 'Tai nghe AirPods 3', 'Phụ kiện', 4500000, null, 'Apple');

insert into
    products(id, name, category, price, stock, manufacturer)
values
    (8, 'Chuột không dây Logictech M170', 'Phụ kiện', 300000, 20, 'Logitech');

update products
set price = price * 1.1
where manufacturer = 'Apple';

delete from products
where stock = 0;

select id, name, category, price, stock, manufacturer from products
where price between 1000000 and 30000000;

select id, name, category, price, stock, manufacturer from products
where stock is null;

select distinct manufacturer from products;

select id, name, category, price, stock, manufacturer from products
order by price desc, name asc;

select id, name, category, price, stock, manufacturer from products
where name ilike '%laptop%';

select id, name, category, price, stock, manufacturer from products
order by price desc
limit 2;