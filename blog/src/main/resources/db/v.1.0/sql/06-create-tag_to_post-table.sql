CREATE TABLE IF NOT EXISTS tag_to_post (
       id integer NOT NULL auto_increment,
       tag_id integer NOT NULL,
       post_id integer NOT NULL,
       PRIMARY KEY (id)
    ) engine=InnoDB
GO

ALTER TABLE tag_to_post
ADD CONSTRAINT fk_tag_to_post_post
FOREIGN KEY (post_id) REFERENCES posts (id)
ON DELETE CASCADE
GO

ALTER TABLE tag_to_post
ADD CONSTRAINT fk_tag_to_post_tag
FOREIGN KEY (tag_id) REFERENCES tags (id)
ON DELETE CASCADE
GO