--liquibase formatted sql
--changeset deepak:create_USER_table
create table USER (
  user_id int primary key not null,
  username varchar(255),
  password VARCHAR(255),
  email VARCHAR(255),
  created DATETIME,
  active TINYINT(2)
);
--changeset deepak:add_colour_column_to_QUANTITY_table
alter table
  QUANTITY
add
  color VARCHAR(45);
--changeset deepak:create_ORDER_table
  CREATE TABLE ORDERS (
    order_id int PRIMARY KEY NOT NULL,
    person_id int,
    order_number int NOT NULL,
    CONSTRAINT fk_user FOREIGN KEY (person_id) REFERENCES USER(user_id) ON DELETE CASCADE ON UPDATE CASCADE
  );