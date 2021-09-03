CREATE TABLE customer (
    email VARCHAR(30),
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    phone_number NUMBER(13),
    address VARCHAR(100),
);

CREATE TABLE admin(
    admin_id VARCHAR(10),
    first_name VARCHAR(30),
    last_name VARCHAR(30),
);

CREATE TABLE convection (
    convection_id VARCHAR(10),
    convection_name VARCHAR(30),
);

CREATE TABLE order_item (
    order_id  VARCHAR(10),
    product_id VARCHAR(10),
    quantity INT(3),
);

#EH YANG SUBTYPE BELOM NGERTI

CREATE TABLE product (
    product_id VARCHAR(10),
    product_name VARCHAR(30),
    product_color VARCHAR(30),
    product_quantity INT(3),
    product_price INT(8),
    product_description VARCHAR(10000)
);

CREATE TABLE order(
    order_id  VARCHAR(10),
    order_date DATE(8),
    total_price INT(8)
);

CREATE TABLE payment(
    payment_id VARCHAR(10),
    payment_date DATE(8),
);