create table students(
    id serial primary key,
    full_name varchar(50) not null,
    gender varchar(50) not null,
    birth_year int not null,
    major varchar(50) not null,
    gpa decimal(3, 1)
);

insert into
    students(id, full_name, gender, birth_year, major, gpa)
values 
    (1, 'Nguyễn Văn A', 'Nam', 2002, 'CNTT', 3.6),
    (2, 'Trần Thị Bích Ngọc', 'Nữ', 2001, 'Kinh tế', 3.2),
    (3, 'Lê Quốc Cường', 'Nam', 2003, 'CNTT', 2.7),
    (4, 'Phạm Minh Anh', 'Nữ', 2000, 'Luật', 3.9),
    (5, 'Nguyễn Văn A', 'Nam', 2002, 'CNTT', 3.6),
    (6, 'Lưu Đức Tài', 2004, 2004, 'Cơ khí', NULL),
    (7, 'Võ Thị Thu Hằng', 'Nữ', 2001, 'CNTT', 3.0);

update students
set gpa = 3.4
where full_name = 'Lê Quốc Cường';

delete from students
where gpa is null;

select id, full_name, gender, birth_year, major, gpa from students
where gpa >= 3.0 and major = 'CNTT'
limit 3;

select distinct major from students;

select id, full_name, gender, birth_year, major, gpa from students
where major = 'CNTT'
order by gpa desc, full_name asc;

select id, full_name, gender, birth_year, major, gpa from students
where full_name like 'Nguyễn%';

select id, full_name, gender, birth_year, major, gpa from students
where birth_year between 2001 and 2003;