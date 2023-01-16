DROP TABLE IF EXISTS anuncio_table;
DROP TABLE IF EXISTS msg_table;
DROP TABLE IF EXISTS user_role;
DROP TABLE IF EXISTS user_table;


CREATE TABLE user_table (
  user_name varchar(30) NOT NULL,
  user_pass varchar(255) NOT NULL,
  user_email varchar(255) NOT NULL,
  enable smallint NOT NULL DEFAULT 1,
  PRIMARY KEY (user_name)
);

insert  into user_table values ('admin','$2a$10$dl8TemMlPH7Z/mpBurCX8O4lu0FoWbXnhsHTYXVsmgXyzagn..8rK', 'admin@exemplo.com', 1);
-- user2 / teste123
insert  into user_table values ('user2','$2a$10$bKWhb9hIUD3xxxtzfhvodugWIK3Gbw4vRySYOnBqy2O4gtqZ78jUK','user2@exemplo.com', 1);


CREATE TABLE user_role (
  user_name varchar(30) NOT NULL,
  user_role varchar(15) NOT NULL,
  FOREIGN KEY (user_name) REFERENCES user_table (user_name)
);

insert  into user_role(user_name,user_role) values ('admin','ROLE_ADMIN');
insert  into user_role(user_name,user_role) values ('user2','ROLE_USER');

CREATE TABLE anuncio_table (
    anuncio_id SERIAL PRIMARY KEY,
    tipoAnuncio varchar(20),
    tipologia varchar(20),
    detalhes varchar(50),
    localizacao varchar(30),
    genero varchar(20),
    preco varchar(5),
    anunciante varchar(30),
    contacto varchar(9),
    data date,
    estado varchar(10),
    anuncio_user_name varchar(30)
);

insert into anuncio_table values (DEFAULT, 'procura', 'quarto', 'bonito', 'evora','m', '200', 'bernardo', '999999999', '12-02-2022', 'ativo', 'admin');
insert into anuncio_table values (DEFAULT, 'oferta', 'quarto', 'bonito', 'evora','m', '200', 'bernardo', '999999999', '12-02-2022', 'ativo', 'admin');

CREATE TABLE msg_table (
    msg_id SERIAL PRIMARY KEY,
    anuncioMsg_id integer NOT NULL,
    msg varchar(300)
);





