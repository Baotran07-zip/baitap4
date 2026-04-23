CREATE DATABASE ss02_bt4;
USE ss02_bt4;

CREATE TABLE books(
         book_id CHAR(5) PRIMARY KEY,
		 title VARCHAR(200) NOT NULL,
         quantity INT CHECK (quantity >= 0 ),
         rental_price DECIMAL (10, 2) DEFAULT 5000
);
CREATE TABLE borrow_books(
	     borrow_id INT AUTO_INCREMENT PRIMARY KEY,
         book_id CHAR(5),
         borrow_date DATE DEFAULT (CURRENT_DATE),
         CONSTRAINT FOREIGN KEY (book_id) REFERENCES books(book_id)
);