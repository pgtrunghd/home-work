create table students(
    id serial primary key,
    name varchar(50) not null,
    age int not null,
    major varchar(50) not null,
    gpa decimal(3, 2) not null
);

insert into
    students(id, name, age, major, gpa)
values
    (1, 'An', 20, 'CNTT', 3.5),
    (2, 'Bình', 21, 'Toán', 3.2),
    (3, 'Cường', 22, 'CNTT', 3.8),
    (4, 'Dương', 20, 'Vật lý', 3.0),
    (5, 'Em', 21, 'CNTT', 2.9);

insert into
    students(id, name, age, major, gpa)
values
    (6, 'Hùng', 23, 'Hoá học', 3.4);

update students
set gpa = 3.6
where name = 'Bình';

delete from students
where gpa < 3.0;

select name, major from students
order by gpa desc;

select name from students
where major = 'CNTT'
limit 1;

select id, name, age, major, gpa from students
where gpa between 3.0 and 3.6;

select id, name, age, major, gpa from students
where name like 'C%';

select id, name, age, major, gpa from students
order by name asc
limit 3;

select id, name, age, major, gpa from students
order by name asc
limit 3 offset 1;
