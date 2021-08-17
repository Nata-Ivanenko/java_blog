CREATE TABLE IF NOT EXISTS users (
    id integer NOT NULL auto_increment,
    code varchar(255),
    email varchar(255) NOT NULL,
    is_moderator TINYINT NOT NULL,
    name varchar(255) NOT NULL,
    password varchar(255) NOT NULL,
    photo TEXT,
    reg_time datetime(6) NOT NULL,
    PRIMARY KEY (id)
    ) engine=InnoDB