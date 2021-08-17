CREATE TABLE IF NOT EXISTS captcha_codes (
    id integer NOT NULL auto_increment,
    code TINYTEXT NOT NULL,
    secret_code TINYTEXT NOT NULL,
    time datetime(6) NOT NULL,
    PRIMARY KEY (id)
    ) engine=InnoDB



