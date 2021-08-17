CREATE TABLE IF NOT EXISTS posts (
    id integer NOT NULL auto_increment,
    date_time datetime(6) NOT NULL,
    is_active TINYINT NOT NULL,
    moderation_status enum('NEW','ACCEPTED','DECLINED') NOT NULL,
    text TEXT NOT NULL,
    title varchar(255) NOT NULL,
    view_count integer NOT NULL,
    user_id integer NOT NULL,
    moderator_id integer,
    PRIMARY KEY (id)
    ) engine=InnoDB
GO

ALTER TABLE posts
ADD CONSTRAINT fk_user_post
FOREIGN KEY (user_id) REFERENCES users (id)
ON DELETE CASCADE
GO

ALTER TABLE posts
ADD CONSTRAINT fk_moderator_post
FOREIGN KEY (moderator_id) REFERENCES users (id)
ON DELETE CASCADE
GO

