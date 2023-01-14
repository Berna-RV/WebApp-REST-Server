DROP TABLE IF EXISTS user_table;

CREATE TABLE user_table (
  user_name varchar(30) NOT NULL PRIMARY KEY,
  user_pass varchar(255) NOT NULL,
  user_email varchar(50) NOT NULL,
  user_role varchar(15) DEFAULT 'ROLE_2'
);

insert  into user_table values (DEFAULT,'admin','$2a$10$dl8TemMlPH7Z/mpBurCX8O4lu0FoWbXnhsHTYXVsmgXyzagn..8rK', "admin@exemplo.com", 'ROLE_ADMIN');
-- user2 / teste123
insert  into user_table values (DEFAULT,'user2','$2a$10$bKWhb9hIUD3xxxtzfhvodugWIK3Gbw4vRySYOnBqy2O4gtqZ78jUK',"user2@exemplo.com",'ROLE_2');


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

CREATE TABLE msg_table (
    msg_id SERIAL PRIMARY KEY,
    anuncioMsg_id integer NOT NULL,
    msg varchar(300)
);





