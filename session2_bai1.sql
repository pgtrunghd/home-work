CREATE DATABASE LibraryDB;

CREATE SCHEMA library;

CREATE TABLE library.books (
	book_id serial primary key,
	title varchar(100) not null,
	author varchar(50) not null,
	published_year int,
	price numeric(10,2)
);

ALTER TABLE library.books
ADD COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

DROP TABLE library.books

