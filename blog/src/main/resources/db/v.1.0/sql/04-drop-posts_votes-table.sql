ALTER TABLE post_votes
DROP FOREIGN KEY fk_post_vote_post
GO

ALTER TABLE post_votes
DROP FOREIGN KEY fk_post_vote_user
GO

DROP TABLE IF EXISTS post_votes
GO
