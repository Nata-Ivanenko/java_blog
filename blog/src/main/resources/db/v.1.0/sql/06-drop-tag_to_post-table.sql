ALTER TABLE tag_to_post
DROP FOREIGN KEY fk_tag_to_post_post
GO

ALTER TABLE tag_to_post
DROP FOREIGN KEY fk_tag_to_post_tag
GO

DROP TABLE IF EXISTS tag_to_post
GO
