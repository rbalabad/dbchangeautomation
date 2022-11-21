--liquibase formatted sql

-- changeset rbalabadru:hub-schema-1.0-1
--precondition-sql-check expectedResult:0 SELECT COUNT(*) FROM user_tables where table_name='CUSTOMERS'
--comment: Customers DDL
CREATE TABLE Customers 
(
	ID NUMBER,
	NAME VARCHAR2(255),
	email VARCHAR2(255)
);
--rollback DROP TABLE Customers

-- changeset rbalabadru:hub-schema-1.0-2
ALTER TABLE Customers Add (COUNTRY VARCHAR2(100));
--rollback select 'rollback hub-schema-1.0-2'

-- changeset rbalabadru:hub-schema-1.0-3
ALTER TABLE Customers Add (website VARCHAR2(250));
--rollback select 'NA'

-- changeset rbalabadru:hub-schema-1.0-4
CREATE TABLE Orders
(
	ID NUMBER,
	ORDER_NO NUMBER,
	PRODUCT_ID NUMBER
);
--rollback DROP TABLE Orders

-- changeset rbalabadru:hub-schema-1.0-5
ALTER TABLE Orders Add (ORDER_DATE TimeStamp);
--rollback select 'rollback hub-schema-1.0-5'

-- changeset rbalabadru:hub-schema-1.0-6
ALTER TABLE Orders Add (ORDER_TOTAL NUMBER(10,2));
--rollback select 'rollback hub-schema-1.0-6'

-- changeset rbalabadru:hub-schema-1.0-7
ALTER TABLE Orders Add (SALES_CHANNEL VARCHAR2(100));
--rollback select 'rollback hub-schema-1.0-7'

-- changeset rbalabadru:hub-schema-1.0-8
ALTER TABLE Orders Add (SALES_REP VARCHAR2(255));
--rollback select 'rollback hub-schema-1.0-8'

-- changeset rbalabadru:hub-schema-1.0-9
ALTER TABLE Customers Add (SERVICE_REP VARCHAR2(255));
--rollback select 'rollback hub-schema-1.0-9'

-- changeset rbalabadru:hub-schema-1.0-10
ALTER TABLE Orders Add (CUST_ID NUMBER);
--rollback select 'rollback hub-schema-1.0-10'

-- changeset rbalabadru:hub-schema-1.0-11
ALTER TABLE Orders Add (CURRENCY VARCHAR2(10));
--rollback select 'rollback hub-schema-1.0-11'

-- changeset rbalabadru:hub-schema-1.0-12
ALTER TABLE Orders Add (TAX_AMOUNT NUMBER);
--rollback select 'rollback hub-schema-1.0-12'