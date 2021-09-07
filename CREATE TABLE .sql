CREATE TABLE dl_convections (
    convection_id VARCHAR(10) CONSTRAINT dl_conv_convect_id_pk PRIMARY KEY,
   convection_name VARCHAR(30) CONSTRAINT dl_conv_convect_name_nn NOT NULL
);

CREATE TABLE dl_products (
    product_id VARCHAR(10) CONSTRAINT dl_prods_product_id_pk PRIMARY KEY,
    product_name VARCHAR(30) CONSTRAINT dl_prods_product_name_nn NOT NULL,
    convection_id VARCHAR(10),
    product_quantity INT CONSTRAINT dl_prods_product_qtt_nn NOT NULL,
    product_price INT CONSTRAINT dl_prods_product_prc_nn NOT NULL,
    product_description VARCHAR(4000),
    product_type VARCHAR(10)
    chest_width INT,
    shoulder_width INT,
    sleeve_length INT,
    body_length INT,
    waist_length INT,
    hip_length INT,
CONSTRAINT dl_prods_convect_id_fk FOREIGN KEY (convection_id)
    REFERENCES dl_convections (convection_id),
CONSTRAINT dl_prods_product_typ_ck CHECK 
   (product_type = 'TOP' AND chest_width   IS NOT NULL AND shoulder_width IS NOT NULL AND sleeve_length IS NOT NULL AND body_length IS NOT NULL AND waist_length IS NULL AND hip_length IS NULL)
OR (product_type = 'BOTTOM' AND chest_width IS NULL AND shoulder_width IS NULL AND sleeve_length IS NULL AND body_length IS NULL AND waist_length IS NOT NULL AND hip_length IS NOT NULL)
);

CREATE TABLE dl_customers (
    email VARCHAR(30) CONSTRAINT dl_cust_email_pk PRIMARY KEY,
    first_name VARCHAR(30) CONSTRAINT dl_cust_first_name_nn NOT NULL,
    last_name VARCHAR(30),
    phone_number NUMBER(13) CONSTRAINT dl_cust_phone_num_uk  UNIQUE,
    address VARCHAR(100) CONSTRAINT dl_cust_address_nn NOT NULL
);

CREATE TABLE dl_order_items (
    order_id  VARCHAR(10),
    product_id VARCHAR(10),
    quantity_ordered INT CONSTRAINT dl_ord_items_qtt_ord_nn NOT NULL,
CONSTRAINT dl_ord_items_ord_product_pk PRIMARY KEY (order_id, product_id)


CREATE TABLE dl_orders (
    order_id  VARCHAR(10) CONSTRAINT dl_ords_ord_id_pk PRIMARY KEY,
    email VARCHAR(30) CONSTRAINT dl_ords_email_fk
                                 REFERENCES dl_customers (email),
    order_date DATE CONSTRAINT dl_ords_ord_date_nn NOT NULL,
    total_price INT CONSTRAINT dl_ords_ttl_prc_nn NOT NULL,
    shipment VARCHAR(30) CONSTRAINT dl_ords_shipment_nn NOT NULL 
);

 CREATE TABLE dl_payments (
    payment_id VARCHAR(10) CONSTRAINT dl_payments_pym_id_pk PRIMARY KEY,
    payment_date DATE CONSTRAINT dl_payments_pym_date_nn NOT NULL,
    email VARCHAR(30) CONSTRAINT dl_payments_email_fk
                                 REFERENCES dl_customers (email),
    payment_type VARCHAR(3), 
    account_number INT,
    mitra_id INT,
    ewallet_id INT,
CONSTRAINT dl_payments_pym_typ_ck CHECK (payment_type = 'BPT' AND account_number IS NOT NULL AND mitra_id IS NULL AND ewallet_id IS NULL)
    OR (payment_type = 'MPT' AND account_number IS NULL AND mitra_id IS NOT NULL AND ewallet_id IS NULL) 
    OR (payment_type = 'EPT' AND account_number IS NULL AND mitra_id IS NULL AND ewallet_id IS NOT NULL) 
);

    
CREATE TABLE dl_admins (
    admin_id VARCHAR(10) CONSTRAINT dl_admins_admin_id_pk PRIMARY KEY,
    first_name VARCHAR(30) CONSTRAINT dl_admins_first_name_nn NOT NULL,
    last_name VARCHAR(30)
);




