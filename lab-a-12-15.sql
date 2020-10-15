CREATE TABLE marchandise(
id INTEGER PRIMARY KEY,
productName VARCHAR(100),
productType VARCHAR(100)
);

CREATE TABLE customer(
id INTEGER PRIMARY KEY,
firstName VARCHAR(100),
lastName VARCHAR(250),
address VARCHAR(250)
);

CREATE TABLE orders (
orderNumber INTEGER PRIMARY KEY,
productId INTEGER,
customerId INTEGER,orders
FOREIGN KEY (productId) REFERENCES marchandise(id),
FOREIGN KEY (customerId) REFERENCES customer(id)
);

INSERT INTO marchandise VALUES
	(1, "Graphic T-Shirt", "Clothing"),
    (2, "Beanie Hat", "Clothing"),
    (3, "Phone Case", "Accessories"),
    (4, "Keychain", "Accessories"),
    (5, "Music Album", "Media")

INSERT INTO customer VALUES 
	(1, "John", "Doe", "12345 Riverview dr, Townsville, Neberaska"),
    (2, "Charles", "Bartels", "4444 Some rd, Atown, Texas"),
    (3, "Mike", "Tyson", "Information Withheld")
    
INSERT INTO orders VALUES
(1, 2, 3),
(2, 2, 1),
(3, 3, 2),
(4, 1, 2),
(5, 5, 2)

SELECT * FROM customer;












