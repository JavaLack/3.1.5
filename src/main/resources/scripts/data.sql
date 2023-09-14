create table user
(
    id       bigint auto_increment primary key,
    name     varchar(255) not null,
    age      int          not null,
    email    varchar(255) not null,
    password varchar(255) not null,
    username varchar(255)
);

create table role
(
    id   bigint primary key auto_increment,
    name varchar(255)
);

ALTER TABLE role
    ADD UNIQUE (name);
insert into role(name)
values ('ROLE_USER');
insert into role(name)
values ('ROLE_ADMIN');

create table user_role
(
    users_id bigint,
    roles_id bigint
);

INSERT INTO user (id, name, age, email, password, username) VALUES (1, 18, 123, 123, 123, 123);

alter table user_role
    add foreign key (users_id) references user (id);
alter table user_role
    add foreign key (roles_id) references role (id);

insert into user_role (users_id, roles_id) VALUES (1, 2);
