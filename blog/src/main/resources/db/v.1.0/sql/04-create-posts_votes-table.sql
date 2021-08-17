CREATE TABLE IF NOT EXISTS post_votes (
    id integer NOT NULL auto_increment,
    time datetime(6) NOT NULL,
    value TINYINT NOT NULL,
    post_id integer NOT NULL,
    user_id integer NOT NULL,
    PRIMARY KEY (id)
    ) engine=InnoDB
GO

ALTER TABLE post_votes
ADD CONSTRAINT fk_post_vote_post
FOREIGN KEY (post_id) REFERENCES posts (id)
ON DELETE CASCADE
GO

ALTER TABLE post_votes
ADD CONSTRAINT fk_post_vote_user
FOREIGN KEY (user_id) REFERENCES users (id)
ON DELETE CASCADE
GO