CREATE TABLE IF NOT EXISTS global_settings (
    id integer NOT NULL auto_increment,
    code varchar(255) NOT NULL,
    name varchar(255) NOT NULL,
    value varchar(255) NOT NULL,
    PRIMARY KEY (id)
    ) engine=InnoDB
