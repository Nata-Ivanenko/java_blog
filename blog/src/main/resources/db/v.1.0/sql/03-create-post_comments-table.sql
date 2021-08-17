CREATE TABLE IF NOT EXISTS post_comments (
    id integer NOT NULL auto_increment,
    text TEXT NOT NULL,
    time datetime(6) NOT NULL,
    parent_id integer,
    post_id integer NOT NULL,
    user_id integer NOT NULL,
    PRIMARY KEY (id)
    ) engine=InnoDB
GO

ALTER TABLE post_comments
ADD CONSTRAINT fk_post_comm_post_comm
FOREIGN KEY (parent_id) REFERENCES post_comments (id)
ON DELETE CASCADE
GO

ALTER TABLE post_comments
ADD CONSTRAINT fk_post_post_comm
FOREIGN KEY (post_id) REFERENCES posts (id)
ON DELETE CASCADE
GO

ALTER TABLE post_comments
ADD CONSTRAINT fk_post_comm_user
FOREIGN KEY (user_id) REFERENCES users (id)
ON DELETE CASCADE
GO