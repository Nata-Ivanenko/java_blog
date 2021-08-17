ALTER TABLE post_comments
DROP FOREIGN KEY fk_post_post_comm
GO

ALTER TABLE post_comments
DROP FOREIGN KEY fk_post_comm_post_comm
GO

ALTER TABLE post_comments
DROP FOREIGN KEY fk_post_comm_user
GO

DROP TABLE IF EXISTS post_comments
GO