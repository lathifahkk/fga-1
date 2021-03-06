CREATE SEQUENCE admin_id_seq
    INCREMENT BY 1
    START WITH 1
    MAXVALUE 100
    MINVALUE 1 
    NOCYCLE
    NOCACHE;
 
CREATE SEQUENCE convection_id_seq
    INCREMENT BY 1
    START WITH 1
    MAXVALUE 1000
    MINVALUE 1 
    NOCYCLE
    NOCACHE;
 
CREATE SEQUENCE order_id_seq
    INCREMENT BY 1
    START WITH 1
    NOMAXVALUE 
    MINVALUE 1 
    NOCYCLE
    NOCACHE;
 
CREATE SEQUENCE product_id_seq
    INCREMENT BY 1
    START WITH 1
    NOMAXVALUE 
    MINVALUE 1 
    NOCYCLE
    NOCACHE;
