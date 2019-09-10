CREATE TABLE account (
  account_no INT(10)  NOT NULL, 
  customer VARCHAR(30) NOT NULL, 
  address VARCHAR(50) NOT NULL,
  PRIMARY KEY (account_no)
);

CREATE TABLE items (
  item VARCHAR(30)  NOT NULL,
  item_price DOUBLE NOT NULL,
  PRIMARY KEY (item)
);

CREATE TABLE orders (
  order_no INT(10) NOT NULL,
  account_no INT NOT NULL,
  order_date DATE NOT NULL,
  order_total DOUBLE NOT NULL,
  PRIMARY KEY (order_no),
  FOREIGN KEY (account_no) REFERENCES account(account_no)
);

CREATE TABLE order_item (
  order_item_ID INT NOT NULL,
  item VARCHAR(30) NOT NULL,
  qty INT(2) NOT NULL,
  PRIMARY KEY (order_item_ID),
  FOREIGN KEY (item) REFERENCES items(item) 
);
