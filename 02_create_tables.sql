CREATE TABLE library.Members (
	member_id SERIAL PRIMARY KEY,
	full_name VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL UNIQUE,
	phone VARCHAR(20),
	birth_date DATE,
	address TEXT,
	status VARCHAR(20) DEFAULT 'active',
	join_date DATE DEFAULT CURRENT_DATE
);

CREATE TABLE library.Genres (
	genre_id SERIAL PRIMARY KEY,
	genre_name VARCHAR(50) NOT NULL,
	description TEXT
);

CREATE TABLE library.Books (
	book_id SERIAL PRIMARY KEY,
	isbn VARCHAR(20) NOT NULL UNIQUE,
	title VARCHAR(150) NOT NULL,
	published_year INT,
	publisher VARCHAR(100),
	total_copies INT NOT NULL,
	available_copies INT NOT NULL,
	genre_id INT
);

CREATE TABLE library.Authors (
	author_id SERIAL PRIMARY KEY,
	author_name VARCHAR(50) NOT NULL,
	bio TEXT
);

CREATE TABLE library.Books_Authors (
	book_author_id SERIAL PRIMARY KEY,
	book_id INT,
	author_id INT
);

CREATE TABLE library.Borrow_Cards (
	borrow_card_id SERIAL PRIMARY KEY,
	member_id INT,
	borrow_date DATE NOT NULL DEFAULT CURRENT_DATE,
	due_date DATE NOT NULL,
	return_date DATE
);

CREATE TABLE library.Borrow_Details (
	borrow_detail_id SERIAL PRIMARY KEY,
	borrow_card_id INT,
	book_id INT
);