ALTER TABLE library.Books
ADD CONSTRAINT foreign_key_books_genres FOREIGN KEY (genre_id) REFERENCES library.Genres (genre_id);

ALTER TABLE library.Books_Authors
ADD CONSTRAINT foreign_key_bookauthors_books FOREIGN KEY (book_id) REFERENCES library.Books (book_id);

ALTER TABLE library.Books_Authors
ADD CONSTRAINT foreign_key_bookauthors_authors FOREIGN KEY (author_id) REFERENCES library.Authors (author_id);

ALTER TABLE library.Borrow_Cards
ADD CONSTRAINT foreign_key_borrowcards_member FOREIGN KEY (member_id) REFERENCES library.Members (member_id);

ALTER TABLE library.Borrow_Details
ADD CONSTRAINT foreign_key_bookdetails_borrowcards FOREIGN KEY (borrow_card_id) REFERENCES library.Borrow_Cards (borrow_card_id);

ALTER TABLE library.Borrow_Details
ADD CONSTRAINT foreign_key_bookdetails_books FOREIGN KEY (book_id) REFERENCES library.Books (book_id);

ALTER TABLE library.Borrow_Cards
ADD CONSTRAINT check_due_date CHECK (due_date > borrow_date);

ALTER TABLE library.Books
ADD CONSTRAINT check_total_copies CHECK (total_copies >= 0),
ADD CONSTRAINT check_available_copies CHECK (total_copies >= available_copies);

ALTER TABLE library.Members
ADD CONSTRAINT check_member_status CHECK (status IN ('active', 'inactive'));