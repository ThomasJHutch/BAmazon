DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products
(
  item_id INT
  AUTO_INCREMENT NOT NULL,
  product_name VARCHAR
  (45) NOT NULL,
  product_sales DECIMAL
  (10,2) DEFAULT 0,
  department_name VARCHAR
  (45) NOT NULL,
  price DECIMAL
  (10,2) NOT NULL,
  stock_quantity INT
  (10) NOT NULL,
  primary key
  (item_id)
);

  SELECT *
  FROM products;

  INSERT INTO products
    (product_name, department_name, price, stock_quantity)
  VALUES
    ("Call of Duty: Modern Warfare", "Video Games", 59.99, 5000),
    ("GTA 5", "Video Games", 59.99, 4800),
    ("steak", "Food and Drink", 28.49, 20),
    ("Hawaiian Shirts", "Apparel", 135, 20),
    ("Tactical pants", "Apparel", 145, 15),
    ("Tooth Brush", "Necessities", 6, 55),
    ("Ford Vs. Ferrari", "Films", 24.99, 5000),
    ("Once Upon A Time in... Hollywood", "Films", 24.99, 400);


  CREATE TABLE departments
  (
    department_id INT
    AUTO_INCREMENT NOT NULL,
  department_name VARCHAR
    (45) NOT NULL,
  over_head_costs DECIMAL
    (10,2) NOT NULL,
  primary key
    (department_id)
);

    SELECT *
    FROM departments;

    INSERT INTO departments
      (department_name, over_head_costs)
    VALUES
      ("Video Games", 200),
      ("Food and Drink", 100),
      ("Apparel", 50),
      ("Necessities", 300),
      ("Films", 35)
