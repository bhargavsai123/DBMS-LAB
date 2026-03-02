CREATE TABLE categories(
	id INT PRIMARY KEY, 
	name VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE products(
	p_id INT PRIMARY KEY, 
	name VARCHAR(20) NOT NULL, 
	price DECIMAL(10,2) NOT NULL CHECK (price > 0), 
	quantity INT NOT NULL DEFAULT 0 CHECK (quantity >= 0), 
	category_id INT DEFAULT 0, 
	FOREIGN KEY(category_id) REFERENCES categories(id)
);

INSERT INTO categories (id, name) VALUES
(0,'Miscellaneous'),
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Books'),
(4, 'Home'),
(5, 'Sports');

INSERT INTO products (p_id, name, price, quantity, category_id) VALUES
(101, 'Laptop', 74999.99, 10, 1),
(102, 'Headphones', 5000.00, 25, 1),
(103, 'TShirt', 799.99, 50, 2),
(104, 'Jeans', 1499.99, 30, 2),
(105, 'Novel', 259.99, 40, 3),
(106, 'Cookware', 1200.00, 15, 4),
(107, 'Football', 750.00, 20, 5),
(108, 'Desk Lamp', 350.00, 18, 4);

INSERT INTO products VALUE (108, 'Comic Book', 199.99, 20, 3);

INSERT INTO products VALUE (109, 'Comic Book', 199.99, -20, 3);

ALTER TABLE products ADD CONSTRAINT chk_p_id CHECK(p_id > 0);

ALTER TABLE products MODIFY category_id INT NOT NULL;

CREATE VIEW category_summ AS SELECT category_id, AVG(price) as avg_price, SUM(quantity) as total_quantity FROM products GROUP BY category_id;

SELECT * FROM category_summ;


