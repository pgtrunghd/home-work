ALTER TABLE library.Books
ADD COLUMN genre VARCHAR(50) NOT NULL;

ALTER TABLE library.Books
RENAME COLUMN available TO is_available;

ALTER TABLE sales.Members
DROP COLUMN email;

DROP TABLE sales.OrderDetails;