create table products(
    id serial primary key,
    name varchar(50) not null,
    category varchar(50) not null,
    price decimal(10, 2) not null,
    stock int not null
);

insert into
    products(id, name, category, price, stock)
values
    (1, 'Laptop Dell', 'Electronics', 1500.00, 5),
    (2, 'Chuột Logitech', 'Electronics', 25.50, 50),
    (3, 'Bàn phím Razer', 'Electronics', 120.00, 20),
    (4, 'Tủ lạnh LG', 'Home Appliances', 800.00, 3),
    (5, 'Máy giặt Samsung', 'Home Appliances', 600.00, 2);

insert into
    products(id, name, category, price, stock)
values
    (6, 'Điều hoà Panasonic', 'Home Appliances', 400.00, 10);

update products
set stock = 7
where name = 'Laptop Dell';

delete from products
where stock = 0;

select id, name, category, price, stock from products
order by price asc;

select distinct category from products;

select id, name, category, price, stock from products
where price between 100 and 1000;

select id, name, category, price, stock from products
where name like '%LG%' OR name like '%Samsung%';

select id, name, category, price, stock from products
where name ilike '%lg%' OR name ilike '%samsung%';

select id, name, category, price, stock from products
order by price desc;

select id, name, category, price, stock from products
limit 2 offset 1;

select id, name, category, price, stock from products;
