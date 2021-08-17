INSERT IGNORE INTO `users` (`id`, `is_moderator`, `reg_time`, `name`, `email`, `password`, `code`, `photo`) VALUES
	(1, b'0','2021-02-13 14:33:47.000000', 'Егор Дворянов', 'egor.d@mail.com', '$2y$10$Vb.pry5vRGNrm6Y79UfBsun/RbXq2', NULL, NULL),
	(2, b'0','2020-09-03 10:03:53.000000', 'Маргарита Барская', 'margo.bar@mail.com', '$2y$60$Vb.pfy8vRGNim6075UfBsun/RcLq2', NULL, NULL),
    (3, b'1','2021-12-25 18:40:10.000000', 'Марк Ершов', 'm.ershov@mail.com', '$2y$76$Ob.sry5kRGIrm6O78UfLsun/EbXq9', NULL, NULL),
    (4, b'0','2021-08-13 02:43:47.000000', 'Сергей Сергеев', 'S_S@mail.com', '$2y$88$Vb.ppo5vKINrm6Y59UfTsun/TbXp1', NULL, NULL),
    (5, b'0','2021-02-18 14:23:14.000000', 'Константин Смолов', 'k.smol@mail.com', '$1y$10$Ub.pry5vEGNrL6Y59UfBsun/QwXq2', NULL, NULL),
    (6, b'1','2020-08-21 14:13:13.000000', 'Алина Петрова', 'alinaPetr@mail.com', '$5y$10$Vb.pry8vRGOrm6Y69UfBsun/RyXq2', NULL, NULL),
    (7, b'0','2021-05-02 17:25:14.000000', 'Михаил Михайлов', 'mih.mih@mail.com', '$2y$10$Vb.qry5vRVwrm6Y79TeBsun/ToXp3', NULL, NULL),
    (8, b'0','2020-12-01 12:45:12.000000', 'Елизавета Макеева', 'lizi.mac@mail.com', '$1w$15$Vb.kjd5vKUNps6Y79UfBsun/RbKi8', NULL, NULL),
    (9, b'0','2021-01-30 04:53:07.000000', 'Арсений Беговой', 'ars_beg@mail.com', '$2y$10$Vb.pry5vLPNrm6Y98UfBsun/RmDq5', NULL, NULL),
    (10, b'1','2021-12-06 18:33:50.000000', 'Марина Филиппова', 'mary.fil@mail.com', '$2y$10$Ib.pur5vRKSrm6Y99UfOhun/RbOq2', NULL, NULL)
GO

INSERT IGNORE INTO `posts` (`id`, `is_active`, `moderation_status`, `moderator_id`, `user_id`, `date_time`, `title`, `text`, `view_count`) VALUES
	(1, b'0', 'DECLINED', 3, 1, '2021-01-04 05:51:27.000000', 'YouTube может отказаться работать на территории России', 'В чем смысл ситуации: сегодня, 16 августа, состоится рассмотрение апелляции Google на решение российского суда, по которому она должна восстановить аккаунт телеканала «Царьград» в сервисе YouTube (помните тот скандал с блокировкой канала, на котором было более миллиона подписчиков), а в случае неисполнения — платить гигантские штрафы.', 10),
    (2, b'0', 'NEW', 3, 3, '2021-05-06 01:33:41.000000','Российским фигуристкам придётся соревноваться с бывшими мужчинами', 'Вы думали мужик на женских соревнованиях по тяжелой атлетике это финиш? Думали, что мужики с ленточками на художественной гимнастике будет пиком абсурда? Нет же. Это только начало.', 5),
    (3, b'1', 'DECLINED', 6, 4, '2021-03-15 14:21:03.000000','Правда ли, что маленьким детям нельзя давать мед?', 'Иногда жена вычитает в интернете какую нибудь глупость, типа «народной приметы» или вообще слухи ничем не подтвержденные что можно когда делать, есть, носить, думать и т.п. Я бешусь со всего этого. Так же воспринял очередное заявление, что маленькому ребенку нельзя давать мед! Как так! Мед — это же природный, полезный продукт. Что бывает чище и полезнее меда?', 9),
    (4, b'0', 'ACCEPTED', 6, 3, '2021-08-02 01:21:26.000000', 'Гой еси, добрый молодец!', 'Очень часто в наших сказках, былинах, балладах и даже старых песнях можно встретить словосочетание «Гой еси, добрый молодец». И если в отношении «доброго молодца» вопросов не возникает (всем понятно, кто это), то что значит «гой еси», не совсем ясно. Можно только предположить, что это такая форма обращения. В большинстве случаев люди считают, что означает фраза «будь здоров».', 4)
GO

INSERT IGNORE INTO `post_comments` (`id`, `parent_id`, `post_id`, `user_id`, `time`, `text`) VALUES
	(1, NULL, 1, 7, '2020-01-17 06:28:12.000000', 'им проще разблокировать чем терять деньги'),
    (2, 1, 1, 6, '2020-01-17 07:29:12.000000', 'Это репутационные издержки.'),
    (3, 1, 1, 5, '2020-01-23 17:09:18.000000', 'полностью согласен'),
    (4, NULL, 1, 4, '2020-01-17 08:29:12.000000', 'Будем жить без ютуба.Все сервисы автоматически останутся без своих видеоархивов.'),
    (5, NULL, 2, 3, '2020-05-21 06:28:45.000000', 'Вот-вот!Уничтожили женский спорт, женское движение...'),
    (6, 5, 2, 1, '2020-05-21 14:36:11.000000', 'В каком-нибудь теннисе или в беге такого не сделать'),
    (7, NULL, 2, 8, '2020-06-15 13:38:15.000000', 'Интересно посмотреть на выступление мужиков в платьицах.'),
    (8, NULL, 3, 10, '2020-03-15 16:38:15.000000', 'Не скажу про детей, но целебные свойства мёда и прочих пчелиных продуктов сильно преувеличены..'),
    (9, 8, 3, 8, '2020-03-15 16:40:05.000000', 'а я верю в его целебные свойства, он мне помогает'),
    (10, 9, 3, 10, '2020-03-15 16:40:05.000000', 'не буду с вами спорить'),
    (11, NULL, 4, 1, '2020-08-03 18:40:45.000000', 'Также ясно и то, что в целом фраза «Гой еси, добрый молодец?» – это вопрос. В переводе на наш язык она означает что-то вроде «Зачем ты, добрый молодец, сюда пришёл?»'),
    (12, 11, 4, 7, '2020-08-03 18:45:41.000000', 'Даже детям понятно при читке сказок что это "здравствуй".'),
    (13, 12, 4, 5, '2020-08-03 19:30:05.000000', 'Гоить птицу - очищать её от перьев.'),
    (14, NULL, 4, 6, '2020-08-03 20:00:45.000000', '"Кто тебя звал? Кто тебе рад?"...')
GO

INSERT IGNORE INTO `tags` (`id`, `name`) VALUES
	(1, 'YouTube'),
	(2, 'Спорт'),
    (3, 'Еда'),
    (4, 'Политика'),
    (5, 'интересно')
GO

INSERT IGNORE INTO `tag_to_post` (`id`, `post_id`, `tag_id`) VALUES
	(1, 1, 1),
	(2, 2, 2),
	(3, 2, 5),
	(4, 3, 3),
	(5, 3, 5),
	(6, 2, 4),
	(7, 4, 5)
GO

INSERT IGNORE INTO `post_votes` (`id`, `user_id`, `post_id`, `time`, `value`) VALUES
	(1, 5, 4, '2021-01-26 19:35:52.000000', 1),
	(2, 6, 3, '2021-01-26 19:35:52.000000', 1),
	(3, 3, 1, '2021-01-26 19:35:52.000000', -1),
	(4, 10, 3, '2021-01-26 19:35:52.000000', 1),
	(5, 6, 1, '2021-01-26 19:35:52.000000', -1),
	(6, 6, 2, '2021-01-26 19:35:52.000000', 1),
	(7, 1, 3, '2021-01-26 19:35:52.000000', -1),
	(8, 5, 3, '2021-01-26 19:35:52.000000', 1),
	(9, 4, 2, '2021-01-26 19:35:52.000000', -1),
	(10, 6, 4, '2021-01-26 19:35:52.000000', 1),
	(11, 10, 2, '2021-01-26 19:35:52.000000', 1),
	(12, 2, 4, '2021-01-26 19:35:52.000000', -1),
	(13, 1, 2, '2021-01-26 19:35:52.000000', 1),
	(14, 7, 2, '2021-01-26 19:35:52.000000', 1),
	(15, 8, 3, '2021-01-26 19:35:52.000000', -1),
	(16, 8, 1, '2021-01-26 19:35:52.000000', 1),
	(17, 8, 2, '2021-01-26 19:35:52.000000', 1)
GO

INSERT IGNORE INTO `captcha_codes` (`id`, `time`, `code`, `secret_code`) VALUES
	(1, '2021-12-31 23:59:59.000000', 'uti2KD', '4e1d8df7-9896-45b7-8e41-96b5d29c163c'),
	(2, '2021-03-01 14:25:00.000000', '59iwiW', '88ce6aad-a387-4ef4-a3d1-ccd90ef45f6b')
GO

INSERT IGNORE INTO `global_settings` (`id`, `code`, `name`, `value`) VALUES
	(1, 'MULTIUSER_MODE', 'Многопользовательский режим', 'NO'),
	(2, 'POST_PREMODERATION', 'Премодерация постов', 'YES'),
	(3, 'STATISTICS_IS_PUBLIC', 'Показывать всем статистику блога', 'YES')
GO