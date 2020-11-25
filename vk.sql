-- drop database if exists vk;
-- create database if not exists vk character set = utf8mb4;


drop database if exists vk;
create database if not exists vk character set = utf8mb4;
use vk;


drop table if exists users;
create table users(
	id serial primary key, -- serial = bigint unsigned not null auto_increment unique
	firstname varchar(50) comment 'Имя пользователя',
	lastname varchar(50) comment 'Фамилия пользователя',
	email varchar(120) unique, -- если слово зарезервировано под системные термины, то оно вписывается в кавычках - буква ё
	phone  varchar(20) unique,
	birthday date,
	hometown varchar(100),
	gender char(1), -- один символ
	photo_id bigint unsigned, -- большое число без знака
	create_at datetime default now(), -- значение по умолчанию, now - дата/врея текущего момента
	pass char(40)
	
	-- is deleted bool,
	-- deleted_at datetime,	
);

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('1', 'Gail', 'Lesch', 'tatum54@example.org', '4824714238', '2016-07-15', 'dolor', 'f', '800561', '1990-09-23 23:45:21', '473530a06c793444d05f970ca907d38bfd5eae01');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('2', 'Erna', 'Bednar', 'pschmeler@example.com', '3956717395', '2008-06-12', 'eos', 'f', '521504', '1987-06-27 22:26:02', '74eabd375db99ea8b8123367e0a70608a9516399');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('3', 'Vern', 'Daugherty', 'ines.farrell@example.com', '4197886178', '1988-11-18', 'illum', 'f', '355574', '2013-10-03 02:01:02', '1993d9a9009b70ec968c76d877f48044c87ac73e');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('4', 'Ora', 'Rutherford', 'abraham.gulgowski@example.org', '6954725215', '1996-07-18', 'eum', 'm', '152738', '2000-01-17 15:28:15', '5807be64e762202b124898b664572367f828bb4a');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('5', 'Jermaine', 'Mertz', 'audreanne.brekke@example.net', '9536714844', '2008-06-01', 'aut', 'm', '621764', '1982-07-22 11:04:09', 'e3ee9bb83d2a5e66aab2af6211ae5d0f5e8be054');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('6', 'Brad', 'Halvorson', 'tomasa.morissette@example.net', '3707894904', '1977-07-26', 'est', 'f', '124559', '1978-11-25 07:33:53', '04a1f507b0f66acb2ea814049ad4348d21efe7ca');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('7', 'Darion', 'Kerluke', 'orville.feil@example.com', '5357088534', '1976-05-02', 'quod', 'f', '383715', '1970-08-09 09:39:32', 'e7fec1eb8f9dec6770493be4e8f9852b8f8b08e1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('8', 'Tressie', 'Zulauf', 'minnie.romaguera@example.org', '3780811670', '2005-12-25', 'deleniti', 'm', '648471', '2017-08-17 05:35:41', '63ae97d70e01bd651758fdebb4736e16ab2a9e1f');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('9', 'Tyrese', 'Raynor', 'belle25@example.com', '3986749419', '2019-06-14', 'ex', 'm', '380221', '1993-05-23 10:26:08', '6fc28681620a476eeb8aafe80cb130ca4024c981');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('10', 'Nels', 'Pacocha', 'ariane.johnston@example.org', '8297900727', '1983-01-28', 'asperiores', 'm', '512510', '1982-09-16 08:55:21', '4e7079cae67c8eff7f6886a70c38e5f9d4fd40e4');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('11', 'Sierra', 'Huels', 'qmurray@example.net', '2874204868', '1979-12-05', 'ipsum', 'f', '727055', '1993-09-21 02:31:28', 'd5d9e00fdafbce71734d7605b0eb180d93dfe59f');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('12', 'Alvera', 'Huels', 'aliya16@example.net', '8840525894', '1978-01-13', 'ex', 'f', '863604', '2001-01-24 21:59:11', '71fd9b43af6633fbd648abcccf567ce1075d0ae8');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('13', 'Taylor', 'Blick', 'qbartell@example.org', '2875630504', '1998-06-20', 'adipisci', 'm', '741688', '2003-09-11 21:51:19', 'f81913b21e9290ae699ee64859fc6b5cba02f224');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('14', 'Rafaela', 'McLaughlin', 'leanna.schoen@example.net', '7354614881', '2002-12-02', 'repellat', 'm', '921225', '2012-03-04 08:05:59', '9b6629db5952903fb584c5cbc75a81726faa7490');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('15', 'Bulah', 'Wilderman', 'yoshiko49@example.net', '8840115583', '1978-09-17', 'consectetur', 'f', '315961', '1973-08-16 05:16:35', 'e9440ec395d78627e77bec7f18c77973b7ab44a4');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('16', 'Precious', 'Bechtelar', 'torrance.schmidt@example.org', '6636180771', '1996-11-28', 'dolore', 'm', '299145', '1992-12-22 08:50:26', '0b2c06b1a74c2dd2f742af4ab07e77b035d0cccd');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('17', 'Ardith', 'Rowe', 'nia54@example.com', '7869708157', '1985-08-27', 'consequatur', 'f', '254587', '1974-02-08 15:23:06', '5ae892130668abaa435e7346ef88448cd64d7122');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('18', 'Cleo', 'Tromp', 'hblanda@example.net', '1822240909', '2005-09-07', 'vitae', 'f', '495941', '2000-12-02 05:05:30', 'f51f6f6008970559d584729e6cb9b149657a97a6');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('19', 'Milo', 'Nienow', 'boyer.donna@example.org', '7564405720', '1988-01-27', 'dolorem', 'f', '124480', '1986-03-12 13:32:57', '15657aab2fa194e8e4976a9ea7dc59703932fe3a');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('20', 'Mazie', 'Berge', 'jacey42@example.net', '1547034705', '1988-07-21', 'est', 'f', '775873', '1988-07-06 01:58:41', 'a18b8d70e4dd50546f4bdee5ae5632db681f3c54');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('21', 'Nicklaus', 'Monahan', 'zella73@example.net', '1647148353', '1970-06-18', 'fugit', 'f', '944286', '1971-08-21 08:19:51', 'ef0db4794613b40f194e5d76040cb902dfc573f5');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('22', 'Cleora', 'Parker', 'casandra87@example.com', '9229161040', '1973-02-02', 'explicabo', 'f', '853822', '1990-01-19 23:51:56', '58faffebd9dbb32a347ceea42496e5db6116850a');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('23', 'Ollie', 'Kohler', 'susanna.tromp@example.org', '3747308318', '2014-01-31', 'aut', 'm', '771721', '1970-02-09 10:19:02', 'aaaff353a4dd7289f328d9bd6789a24435cd9cdc');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('24', 'Gwen', 'Schoen', 'ltrantow@example.com', '5997876821', '2013-11-04', 'facilis', 'm', '973968', '2010-11-20 09:01:08', '22c72dd3751a7bc0a5eadea7bbcb7d9201a1d468');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('25', 'Sierra', 'Block', 'marcelino83@example.net', '9058279616', '2011-04-15', 'aut', 'f', '480410', '1994-10-31 03:19:53', '9854d82214a4e91ad9421798cd4a39df185b38c8');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('26', 'Felicia', 'Pagac', 'dawn81@example.net', '7904098389', '2020-02-02', 'esse', 'm', '664888', '1980-11-14 18:42:06', '889a87888f0134b19939e7b4d5ee6d20ff720ae5');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('27', 'Therese', 'Watsica', 'wilber59@example.net', '6850565270', '1972-03-04', 'architecto', 'm', '384702', '1982-01-22 08:51:43', 'fcc54be6f4875f203a4a66eeb1ea10ae1e47c024');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('28', 'Carlos', 'Nikolaus', 'block.jalen@example.org', '1162392781', '1997-08-18', 'ea', 'f', '260558', '1991-06-08 11:35:22', '74dd9f04f573c12b3e4ae25426b226f6cedfb2ec');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('29', 'Nathen', 'Leffler', 'bcorwin@example.org', '4611120022', '2004-09-13', 'quis', 'f', '141992', '1994-04-14 03:19:11', '937948a5da0c5a05c7395ebd6276e50d17cfe7ea');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('30', 'Bo', 'Lynch', 'cary.auer@example.net', '7051444323', '1987-11-07', 'totam', 'f', '269286', '2009-05-13 20:39:07', '3e51927b11159692c235597d6ce400edc9e20fe9');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('31', 'Darrel', 'Borer', 'vschoen@example.com', '7627629632', '1979-02-19', 'placeat', 'm', '319429', '1973-04-03 23:46:39', '23a2fd499afe2d32c02907b57b9413973f3cc4b1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('32', 'Derrick', 'Jenkins', 'naomie.mante@example.net', '3590500667', '2020-11-07', 'vero', 'f', '635609', '2010-07-31 12:31:15', '6b4f31dd6c79bbede918318d6271729e451a205c');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('33', 'Weston', 'Christiansen', 'jennyfer86@example.com', '9415496678', '2008-09-13', 'repudiandae', 'f', '401196', '2004-01-21 06:07:11', '7dbaafd09b794728f920af555aa382a4d7459a95');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('34', 'Annamae', 'Fadel', 'barrows.narciso@example.com', '3048807225', '2019-01-31', 'quos', 'f', '359486', '1990-08-18 07:08:12', '538ad861aa943acfb042a40fb0ca2d04a5235c88');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('35', 'Henderson', 'Gleason', 'botsford.demetrius@example.net', '4635499219', '1986-06-07', 'officiis', 'f', '358978', '1988-01-29 20:28:03', '22009d6c774cb5822bf4c1d910ba1a34ca61d856');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('36', 'Kennedi', 'Cummerata', 'davonte.connelly@example.com', '8988601568', '2007-12-15', 'vero', 'f', '884322', '1987-08-10 07:18:57', 'f3643bd6a0ecb3ec12b32afc552cdd3625f74fa2');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('37', 'Willie', 'Ruecker', 'jessika79@example.org', '4906836986', '1994-01-21', 'amet', 'f', '903688', '1983-03-27 04:52:32', '4dcec1439f0985cc2cd3aa363e04b54a2da5783d');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('38', 'Cory', 'Beahan', 'cgoldner@example.com', '3445376211', '1974-05-14', 'exercitationem', 'f', '787788', '1991-01-21 14:03:31', '5dd8cbb6aa3a3154bc647a673c59eef3aad64909');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('39', 'Alejandrin', 'Grimes', 'obins@example.net', '3254207723', '2019-04-17', 'modi', 'm', '971431', '2003-07-12 19:45:13', '07d895209410687e286cf5643ac5719f9edd1aa1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('40', 'Waylon', 'Kautzer', 'vtreutel@example.net', '9802040691', '1981-04-25', 'quis', 'm', '875493', '2012-03-15 07:50:31', '54fec48195cec34ee36be658f13a4638b4c3547b');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('41', 'Wilburn', 'Purdy', 'boyer.nettie@example.com', '5651920741', '1985-04-27', 'vero', 'm', '292979', '1987-08-01 17:28:49', 'e2705c86ed81d6965422ea82938c6d5061dcdf5a');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('42', 'London', 'Toy', 'xrau@example.com', '2237473234', '2008-12-04', 'voluptatem', 'm', '276035', '2017-09-21 23:34:54', '75886decdbb19b8ffd52d9fe67f58c4cdc909b27');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('43', 'Ulices', 'Littel', 'moriah41@example.com', '8088473060', '2001-12-27', 'suscipit', 'f', '877742', '1986-07-13 20:41:00', '1bd32ecacd065454208052a32b8e908503252499');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('44', 'Virgil', 'Roob', 'dion35@example.org', '6096747580', '1970-10-23', 'officia', 'm', '702494', '2016-05-08 10:46:34', '8ab7323f4f0be7f4fb67786aa373aabb40d4c991');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('45', 'Libby', 'Leuschke', 'kovacek.louisa@example.net', '3274207368', '1980-04-18', 'quia', 'm', '813781', '1971-09-14 10:46:56', 'bd3524ac617879ce88d683c08d86b956ab18ea6f');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('46', 'Kobe', 'Cronin', 'major.oberbrunner@example.com', '6882807011', '2017-07-09', 'sunt', 'm', '858428', '1993-02-03 13:54:21', 'e2de358b24f3a41ee36c1c75466a8c6241b6970e');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('47', 'Dina', 'Medhurst', 'cummings.weldon@example.org', '9728010322', '2011-12-18', 'impedit', 'f', '304765', '1996-02-08 09:43:27', '341c9b72a597435a045fcab2c9d6685b9f1a0c63');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('48', 'Deshawn', 'Lindgren', 'kurtis.collier@example.org', '3880478257', '1992-08-11', 'nihil', 'm', '383072', '1991-03-24 03:37:50', 'bc55122bf37405431c93ee6c4ff0e196c0c60d1b');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('49', 'Lucas', 'Bartoletti', 'eloise16@example.com', '4943835796', '1985-12-06', 'exercitationem', 'm', '934129', '2013-06-25 11:39:08', '1ca2399dca6df6725511ff18d5256e2390ad0a11');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('50', 'Grace', 'Durgan', 'bhahn@example.org', '1486281053', '1971-05-09', 'ex', 'm', '272313', '2013-03-27 17:01:26', 'ae3e8f8a861002b219564ccae0bcafb93a721403');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('51', 'Willie', 'Lockman', 'maxwell68@example.org', '3843959470', '2011-06-20', 'voluptates', 'm', '205784', '1973-09-05 12:23:40', 'fb2fa053540f248a8b71c2c203167547ce151855');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('52', 'Keanu', 'Yost', 'katarina57@example.net', '1588557446', '2001-01-30', 'illum', 'm', '507972', '2009-05-29 14:31:49', 'dfcbbb22d2b730587c44b7582c2241025a7908a3');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('53', 'Francisco', 'Wiegand', 'dwyman@example.com', '1305752670', '1980-11-28', 'voluptas', 'f', '530258', '2001-01-31 18:00:03', 'ea035408df6f61120dbe140990b048dfb3f92bee');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('54', 'Lavon', 'Wiza', 'kglover@example.com', '3566307389', '1970-04-08', 'soluta', 'f', '937498', '1970-03-28 06:22:59', 'b4f5cddea7a45de5437f032e380bb648158fc673');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('55', 'Mackenzie', 'O\'Connell', 'carmen.boyer@example.org', '5981624592', '1973-08-22', 'debitis', 'm', '642763', '1987-07-31 10:20:36', '6a5a25075a415ffe536eca1077756da0b38c88da');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('56', 'Kaela', 'Ferry', 'ko\'hara@example.net', '3926780259', '1989-01-16', 'nisi', 'm', '388144', '1977-09-04 14:20:28', '5806902775b570405fefda1eec51cc34e697e51e');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('57', 'Liam', 'Flatley', 'drake98@example.net', '8625416465', '2001-04-03', 'ut', 'f', '546820', '1991-04-09 01:59:34', '0e4f15b573e8072a49b9ed704d20c1056eb4d7c8');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('58', 'Cydney', 'Reichert', 'felipa45@example.com', '4228988956', '1970-01-09', 'nam', 'f', '585594', '2007-03-21 02:12:38', 'af987e91981c9f546b6cc7c7938491b9b1ca6cb3');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('59', 'Wilfred', 'Stanton', 'sframi@example.com', '8927031032', '1988-12-09', 'rem', 'm', '339444', '2015-11-22 08:17:08', 'bb7717fce3f6d4f2d6bd8e4f301d2c39c60840e5');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('60', 'Felicia', 'Schamberger', 'arielle.bartell@example.com', '4790786121', '2011-04-17', 'et', 'm', '768001', '2017-04-21 03:39:59', '0cfab25db8d706d277007f73cf8725dd955847d8');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('61', 'Everette', 'Mills', 'ywaelchi@example.net', '6544004776', '2008-08-17', 'est', 'f', '404767', '1996-11-23 00:07:53', '20ef4d10e2bdca5db5ef20410975007a6392439e');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('62', 'Brett', 'Cummings', 'brennan59@example.com', '6110193825', '1991-06-26', 'non', 'm', '391475', '1978-11-10 03:51:02', 'adfd9f7f2ba8b3fd431933e3e9eb2eacb5c06194');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('63', 'Hildegard', 'McCullough', 'veum.mitchell@example.net', '6209179386', '2001-10-13', 'rerum', 'm', '687599', '2003-02-13 07:11:04', '2b0eb3ab2a58c90f41e68d97793d697560d8fb4a');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('64', 'Hyman', 'Smith', 'mframi@example.org', '1122821024', '1987-03-30', 'qui', 'f', '299945', '2009-06-30 23:53:05', '8250404d022bc00e1a339ddcb7b31202962a34b1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('65', 'Ibrahim', 'Heller', 'terry.edna@example.org', '8712754136', '1994-02-04', 'voluptate', 'f', '423678', '1974-10-08 21:00:48', 'ed5729931f80dfadbabf6442609a493fa34088dd');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('66', 'Dangelo', 'Breitenberg', 'lueilwitz.jocelyn@example.com', '4334542284', '1983-01-07', 'eligendi', 'm', '774596', '1981-09-27 20:55:56', '7399b1019400c9362655a9fdb310e4080a799767');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('67', 'Armando', 'Leffler', 'violet.lubowitz@example.org', '3925544825', '1976-08-14', 'sit', 'm', '197182', '1993-01-11 20:22:55', '2a1c9a1684f1d07146ecafa9dfac96b65ff5a45f');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('68', 'Lilly', 'Blick', 'orin15@example.net', '8993791655', '1995-12-09', 'earum', 'm', '718529', '1985-08-10 07:26:22', '572b254ebfd5fe67fd94b3cdf743434a77fc3caf');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('69', 'Madonna', 'Schroeder', 'cornelius96@example.com', '4771922438', '2018-05-24', 'adipisci', 'm', '810004', '2000-08-03 23:25:40', '9c85a36af9200739754647e4ed49e31635cb17c3');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('70', 'Rory', 'Beatty', 'collin.nader@example.org', '4972808662', '1988-04-22', 'quis', 'm', '856978', '2014-01-21 14:11:18', '8a64482c0bce1dfd421f569ea509d6543fca712b');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('71', 'Antonetta', 'Pollich', 'boyer.mason@example.net', '2757349152', '2005-02-27', 'tempore', 'm', '877855', '2008-10-22 05:58:44', '167f9d38d139d6f519435e600c68e01c8a954ef2');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('72', 'Elvis', 'Kiehn', 'kamille63@example.net', '6775223322', '2001-03-25', 'error', 'f', '445609', '2020-09-07 00:04:29', 'd14aaf7c69fba31b9c6111270086f967d3385a4d');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('73', 'Sigurd', 'Ryan', 'kaley.wolf@example.com', '6448236344', '2005-03-23', 'atque', 'm', '703035', '1989-06-02 23:20:16', '015ec49998dc6c3521fdc500570ed8c02f1c9d49');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('74', 'Brent', 'Abbott', 'brionna.o\'kon@example.net', '3308679151', '2014-05-22', 'autem', 'f', '335020', '1992-08-23 09:31:38', '7ce65cca31047834f208999791eb3e7be7ea88df');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('75', 'Titus', 'Turcotte', 'gondricka@example.com', '6338600116', '1980-11-14', 'unde', 'm', '313433', '1986-04-06 13:58:31', '310f11fa8147abed42c784296c3b5b2047922709');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('76', 'Ernest', 'Dare', 'bartoletti.adolph@example.com', '6500003942', '2019-11-28', 'consectetur', 'm', '427471', '1979-04-25 20:06:03', '865b5ea896462d7cfe35df88f94eca047412de61');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('77', 'Estel', 'Farrell', 'tyler.reichert@example.org', '4031587023', '1999-09-10', 'aut', 'm', '464081', '1977-07-01 04:24:56', '9e6266f990dde7a43176835f633dc962aa7f1e7d');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('78', 'Keaton', 'Farrell', 'jluettgen@example.com', '1261072646', '1990-11-24', 'itaque', 'm', '757140', '2004-02-02 17:55:14', '184fda21507afa5440372f9886affd4445cee6e9');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('79', 'Camila', 'Boyer', 'herta39@example.org', '3546654559', '2013-03-08', 'excepturi', 'f', '762462', '2000-02-18 14:06:49', '57d2ba233fa93b8ae5abfa59d3fceb87d9a74d1d');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('80', 'Minnie', 'Rohan', 'briana09@example.com', '6835067756', '2012-10-05', 'quam', 'm', '816155', '2018-10-28 20:13:15', '7b7023c0178daf3ec6e7d9094b8e9cdd0887d2c0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('81', 'Asa', 'Mueller', 'tre95@example.net', '7888638660', '2002-11-26', 'ducimus', 'm', '132839', '2019-06-27 23:57:34', '123f982d26d4e7d4ec13d71f218c2d69bd612db6');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('82', 'Nolan', 'Macejkovic', 'jamaal.terry@example.org', '3710025311', '1973-10-20', 'ut', 'f', '150735', '2016-03-04 17:38:00', 'e6d84905b370456a68958fbe9a251ff7070e9911');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('83', 'Glenna', 'Weber', 'gbaumbach@example.org', '2670160034', '1986-02-01', 'excepturi', 'm', '604770', '2019-03-17 23:10:59', 'fad6c57ebe3a41a282c8b82def096519f1040c03');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('84', 'Ari', 'Feest', 'kuhlman.wilson@example.org', '6341832631', '2002-05-20', 'minima', 'm', '158971', '2012-05-14 22:37:29', 'e077ca6bebed99a6bab0abecaecbb227e7dac936');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('85', 'Eunice', 'Considine', 'ernser.maci@example.net', '1440865236', '1991-09-23', 'modi', 'm', '536769', '1982-12-25 17:27:40', '44457ac2307a200a658c490680a83970fba57fcd');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('86', 'Terry', 'Moore', 'flo68@example.net', '2208560403', '2020-09-20', 'dolor', 'f', '558806', '2005-05-16 08:30:53', 'e8c0a4a502d0a18d2eda3cc9120af11039a6e735');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('87', 'Irma', 'Sauer', 'wharber@example.net', '5692034921', '1973-08-01', 'sed', 'f', '960463', '1980-04-16 05:29:37', 'f6f6aa13fd3185b368a1b06a26ac4df9c1bd0721');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('88', 'Andrew', 'Pfannerstill', 'laney96@example.com', '1034324534', '2002-12-07', 'ipsum', 'm', '142428', '1989-04-05 13:05:30', '0774e0ddfbf0e7d48a566f1be3c943890e2b8042');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('89', 'Paris', 'Orn', 'greenholt.chris@example.com', '8430870929', '1998-01-01', 'nesciunt', 'f', '176081', '2001-08-29 16:26:16', '8a8fd39ccb413e8d78843bfb7779bdf5e85cf174');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('90', 'Eulalia', 'Kerluke', 'vveum@example.com', '4458958079', '2011-03-02', 'quas', 'm', '687996', '2002-01-16 07:31:45', '0697a08c55e681c606cd9fe33c936ac405340be7');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('91', 'Ernest', 'Kris', 'mframi@example.com', '7109502883', '2007-05-22', 'eligendi', 'm', '511573', '2008-04-17 16:29:18', 'c179d8c87ca03c2ff80f6d90429ef070c80fa793');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('92', 'Brendon', 'Hilpert', 'annalise05@example.net', '9598089469', '1988-03-14', 'quas', 'f', '295209', '2008-12-12 19:42:43', 'baa287d3df5b10f43d982cf3c46eff7b85304e46');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('93', 'Ayana', 'Beier', 'cullen.olson@example.org', '1180062612', '1974-11-29', 'ut', 'f', '489411', '2006-02-17 07:43:30', 'debfe5da70d1f1214db8b0ccc3ef42f7befd58ba');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('94', 'Yadira', 'Hermiston', 'annamae72@example.com', '5016815317', '2007-12-29', 'quae', 'f', '634195', '2019-12-04 10:54:51', 'cfb08ebc31c814c619ccaf39d03e1df21dc7c297');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('95', 'Caroline', 'Gulgowski', 'ckeeling@example.net', '7752893357', '1987-10-24', 'quisquam', 'f', '206864', '2008-01-28 08:24:18', 'fc3667f5b24750e5f6d237a4ce2794f74fe64e6a');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('96', 'Brendan', 'O\'Conner', 'ykihn@example.com', '7316702519', '2017-01-13', 'quod', 'm', '582018', '2010-05-15 04:28:27', 'afee97f73bba9f6be34b11edaf4f6f85a48bff19');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('97', 'Tiana', 'Gutmann', 'wlebsack@example.com', '6095942733', '2016-08-14', 'rerum', 'f', '749581', '1975-01-07 13:47:36', 'e86bfd340e8d9676eed3be0459ca8a6560a47cd7');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('98', 'Queen', 'Kris', 'wupton@example.net', '5269248523', '2002-12-07', 'et', 'm', '398553', '2001-01-29 01:21:23', '116563b7412fc1d9083cd617531d0678f5ab29b0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('99', 'Denis', 'Dare', 'kozey.kyle@example.com', '1630179455', '1989-10-17', 'dolor', 'm', '240541', '1976-10-13 14:53:17', '30f7221ba53e245595b7881bdac78ab1863a9a6c');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`, `birthday`, `hometown`, `gender`, `photo_id`, `create_at`, `pass`) VALUES ('100', 'Madalyn', 'Murazik', 'maiya44@example.net', '3690770688', '1997-05-20', 'repellendus', 'm', '396603', '2008-06-24 18:32:41', 'e8a28a5f0cbb274ed36fa32519363df559e286be');


alter table users add index (phone); -- alter - это изменение, в данном случае - таблицы
alter table users add index users_firstname_lastname_idx (firstname, lastname);
alter table users change column firstname firstname varchar(50) not null; -- если были нулевые значения, их нужно заменить на что-то


drop table if exists messages;
create table messages(
	id serial primary key, -- задаётся первичный ключ при создании колонки
	from_user_id bigint unsigned not null, -- требуется наличие такого же id в таблице users с теми же атрибутами, нужен внешний ключ
	to_user_id bigint unsigned not null,
	message text,
	is_read bool default 0, -- по умолчанию - "нет"
	created_at datetime default now(),
	foreign key (from_user_id) references users(id), -- внешний ключ, проверка, что такой id существует среди users, если не присваивать имя, mySQL сделает это сама
	foreign key (to_user_id) references users(id)
);

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('1', '82', '51', 'Ipsum dolorem occaecati aut dignissimos. Et consequatur aliquid et placeat sed hic minus. Odit sit rerum consequuntur qui dolorem. Amet minima possimus maxime numquam inventore esse.', 0, '1973-11-09 17:11:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('2', '41', '77', 'Minima voluptates excepturi aperiam a voluptate tempore non. Ullam nobis et velit odit molestias. Cumque aut repellat quas perspiciatis cum.', 1, '2006-09-23 18:21:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('3', '72', '57', 'Esse ut sit vel dicta et iste. Tempora nobis sapiente ipsa dolor. Fuga doloremque repellat aut soluta inventore sed quo.', 0, '1979-09-15 10:53:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('4', '34', '52', 'Cum quisquam aut laborum est. Officiis odit et deleniti est nobis voluptatum nemo. Reiciendis accusantium facere non reprehenderit voluptatem velit eum.', 0, '1994-02-07 02:43:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('5', '68', '47', 'Inventore molestiae ut sit maiores. Nihil qui perferendis ut consectetur. Quo voluptas natus dolore veniam sequi.', 0, '2000-01-09 06:38:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('6', '27', '22', 'Eligendi dignissimos velit aspernatur. Qui eius quae non ad fugiat. Eum aut est autem commodi.', 0, '1975-05-17 20:25:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('7', '49', '79', 'Totam eligendi qui totam vel. Exercitationem asperiores omnis magni odit. Delectus tempore voluptatem non sunt molestiae aut voluptatem sed.', 1, '1985-11-02 00:21:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('8', '70', '22', 'Asperiores non aut iste quia. Omnis ut placeat maxime molestiae soluta mollitia velit. Delectus eum id soluta et.', 0, '2003-02-01 00:27:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('9', '16', '67', 'Qui vel quo omnis. Nemo est assumenda sed iste nulla explicabo excepturi. Nesciunt nulla qui et id iste. Suscipit aperiam iste ut repellat et. Vitae ut eius distinctio et odit.', 0, '1990-04-30 05:48:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('10', '19', '24', 'Ut accusamus et aliquid sunt aut qui dignissimos. Quod autem explicabo adipisci repellat. Nobis magni tempora ut odio id quo impedit. Totam dolores blanditiis qui fugiat. Autem est mollitia animi et.', 0, '2018-01-14 13:16:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('11', '95', '98', 'Esse blanditiis at quo earum et. Voluptatem consequatur quod sint omnis. Autem ipsam nihil nisi.', 1, '2009-04-10 21:13:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('12', '45', '84', 'Commodi in tempora ratione enim modi ea facere. Porro animi quod dolor eveniet. Qui qui enim et rerum laborum odit.', 1, '2005-11-19 03:58:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('13', '39', '88', 'Corrupti omnis occaecati vitae sapiente dolores a unde. Deserunt a id assumenda temporibus sit. Qui maxime ut voluptas ipsum ut sapiente eum. Sit dolore ipsam quibusdam adipisci.', 1, '2000-12-26 11:01:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('14', '66', '43', 'Itaque natus dolorum sunt exercitationem. Ducimus illum in recusandae accusantium dolor excepturi deserunt. Excepturi quibusdam itaque error quae nulla nulla.', 0, '1971-06-30 23:28:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('15', '100', '48', 'Dolorem officiis ad necessitatibus quia in. Omnis sed sit in.', 1, '2019-12-21 14:05:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('16', '36', '81', 'Sint id laudantium sit ullam eos dolorem eos. Minima explicabo non vel sunt culpa aut. Soluta aut ea est beatae rerum ipsa numquam repudiandae. Fuga ipsum accusamus enim quae.', 0, '2013-01-12 18:19:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('17', '99', '77', 'Deserunt unde ut neque consectetur fuga id ipsa. Atque quam qui eaque ipsum sunt distinctio et ea. Molestias dolores quis consectetur rerum a. Ut cum nemo velit provident qui.', 0, '1976-03-02 14:43:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('18', '57', '70', 'Eveniet fugiat saepe tempora ut nostrum. Porro quia fugiat facilis minima molestiae rerum at.', 1, '2001-01-23 19:56:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('19', '33', '91', 'A ratione sint dolor vel quia. Molestias ipsa accusantium laudantium soluta quae unde vel. Voluptas qui labore ullam distinctio officiis quae. Eius sed illum sint minus odio ratione. Libero similique quasi ut dolores veniam sed odio illo.', 1, '1992-02-06 21:13:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('20', '21', '1', 'Nostrum doloribus doloribus totam officiis esse. Odio magnam qui repellat ut quis eveniet.', 1, '2010-12-14 07:32:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('21', '38', '48', 'Voluptatum reprehenderit quo consequatur reprehenderit maxime qui doloribus. Est laborum deleniti nesciunt consequuntur rerum sunt quae. Eligendi aut magnam provident.', 0, '2000-10-01 13:54:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('22', '22', '86', 'Excepturi quo labore in animi et cum ut. Id vero quia eos ad. Laborum consectetur voluptatum sapiente sit et repellendus optio.', 1, '1995-03-03 19:34:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('23', '27', '92', 'Laborum sit rem consequatur consectetur. Facere beatae voluptas reprehenderit.', 0, '2007-01-04 18:58:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('24', '7', '42', 'Enim vel aspernatur dolore quibusdam temporibus sit consequatur vitae. Itaque non qui sit dolor unde. Earum commodi eveniet molestiae in eveniet in.', 1, '1979-11-19 17:52:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('25', '58', '25', 'Sit enim cumque impedit ullam magni exercitationem. At ea dignissimos vel temporibus ex qui. Optio necessitatibus ex voluptatem corrupti et quam recusandae. Quae consectetur animi qui maiores.', 0, '1971-11-27 04:48:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('26', '65', '52', 'Voluptatem velit omnis et dolor voluptas consequuntur eos. Placeat facilis sunt sed dolores molestias. Ad pariatur non repellendus id suscipit in. Ea veritatis ducimus consequatur voluptas magni excepturi. Voluptatum neque iste numquam eum pariatur.', 0, '2019-10-31 18:50:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('27', '23', '9', 'Qui illum repellat aperiam quia. Unde non explicabo molestias consequatur saepe ipsum autem.', 0, '2014-11-03 18:38:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('28', '35', '62', 'Neque quas corrupti voluptatem est rem eos. Qui iusto fugiat sapiente molestias quia non earum. Rerum ratione sit suscipit minima iusto qui. Esse delectus minus labore.', 1, '2017-10-03 03:03:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('29', '97', '1', 'Deserunt quo deserunt laborum dolor. Omnis accusamus ut id itaque. Consequuntur ea incidunt enim.', 0, '1972-01-03 09:56:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('30', '4', '96', 'Earum sunt sint iusto amet. Dolores et nihil nihil dolores voluptas pariatur consequatur. Tenetur sit omnis doloremque nobis nam ipsa. Ratione facere ea libero quos voluptatem qui dolorum.', 0, '2019-04-16 01:37:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('31', '48', '40', 'Ex ipsa est dolores id tempore. Omnis vel asperiores aut in ut fuga molestias.', 1, '2001-05-30 23:54:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('32', '77', '46', 'Et incidunt animi possimus et voluptatem harum repellat blanditiis. Ab doloremque sed hic reiciendis. Ut aliquam incidunt dolorum fuga corrupti ut voluptatum itaque.', 1, '1995-03-25 10:09:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('33', '16', '34', 'Iusto quidem omnis non numquam nihil nobis. Non dolorum eos illum adipisci dolorum eum et. Hic delectus enim illo officiis ullam sunt similique. Ratione quo ipsa accusantium exercitationem doloribus quo ratione provident.', 1, '2020-07-14 12:40:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('34', '16', '49', 'Et quo molestiae enim eveniet aut maxime. Placeat expedita quia ut et culpa. Ullam fuga error perferendis ipsam.', 0, '1973-10-13 17:37:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('35', '25', '37', 'Molestias velit vero culpa blanditiis sequi. Est et dolorem ut doloremque. Aut et soluta optio dolorem.', 1, '2010-03-11 05:27:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('36', '49', '62', 'Necessitatibus et aspernatur quidem labore et. Voluptatem vitae sint minus sed ut provident. Et commodi ut doloribus omnis dicta. Explicabo delectus quia excepturi cumque voluptas voluptates.', 1, '1986-08-03 23:15:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('37', '85', '71', 'Dicta est cum quia nihil qui autem nobis. Quod id fugit dolore. Consequuntur eum sunt quo.', 1, '2005-08-21 18:59:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('38', '47', '11', 'Consequuntur quisquam accusantium praesentium. Voluptates illo vitae qui fuga et laudantium velit id. Magni et voluptatum quisquam sed.', 1, '2008-06-30 19:44:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('39', '62', '54', 'Error est sapiente laboriosam velit unde. Nobis vitae adipisci quod id nostrum. Explicabo veritatis facilis aut. Et praesentium ut quia necessitatibus vel sit modi voluptatem.', 1, '1995-06-07 19:45:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('40', '52', '19', 'Animi iste asperiores omnis id sed quo omnis id. Quod sed dolorem et.', 0, '1995-08-18 00:30:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('41', '79', '17', 'Quis omnis recusandae voluptatem perspiciatis quia autem. Sint eos ullam ea quidem et laborum esse aspernatur. Minus corporis qui voluptates consequatur officiis eligendi.', 0, '1991-05-15 06:46:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('42', '70', '1', 'Dolores iste sapiente odio impedit atque. Eum et recusandae facere nam molestiae vel.', 0, '1979-08-15 18:10:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('43', '25', '5', 'Sed provident molestias molestias doloribus. Repellat dolorem cum aspernatur et ad facere. Blanditiis consectetur qui ut voluptate beatae repudiandae. Reprehenderit minima dolor praesentium ipsa.', 0, '1977-02-17 03:15:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('44', '62', '22', 'Non magnam fuga voluptate rerum dolor eos. Sint eius omnis ut delectus voluptas eius inventore.', 1, '1987-08-17 11:04:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('45', '5', '66', 'Aspernatur aliquid velit est. Voluptates mollitia in aspernatur ratione qui sed error. Dolorem ex consequatur sit laboriosam qui et explicabo. Eum atque officiis sit exercitationem est perferendis.', 0, '1974-06-17 09:28:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('46', '17', '53', 'Velit unde vitae nobis dolor voluptas ad deserunt. Nemo expedita animi dolores consectetur voluptatem totam quia qui. Est autem cum et odio eos consequatur.', 0, '1983-08-22 22:53:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('47', '6', '94', 'At est beatae maiores voluptatibus. Inventore aliquid quod qui sint facere non est sapiente. Quia eveniet aspernatur distinctio neque sed amet.', 0, '1972-05-12 09:29:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('48', '98', '22', 'Ad tenetur corporis neque cupiditate non. Sequi cumque excepturi saepe et quas rerum. Blanditiis qui quia mollitia repellendus doloribus eos reiciendis. Iste itaque magni quo odio ratione velit cupiditate iure.', 1, '1996-07-31 22:02:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('49', '27', '14', 'Ullam mollitia ratione exercitationem sunt sed voluptas. In quae ut animi dolor. Molestias vero corrupti sit.', 1, '1998-07-29 16:17:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('50', '70', '51', 'Occaecati quaerat fugit expedita ea veniam ut similique ipsam. Sunt nihil eaque magnam. Et ea quidem rerum sit odio. Nesciunt esse ad amet officia consequatur adipisci aut.', 1, '2002-08-06 02:29:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('51', '50', '19', 'Nam suscipit consequatur et doloribus ratione. Exercitationem possimus illo voluptatem facilis reprehenderit ullam et.', 0, '1986-07-04 03:31:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('52', '13', '34', 'Excepturi sapiente aspernatur veritatis porro necessitatibus. Commodi doloribus rerum aut quae. Fugit aliquam est repudiandae. Nulla odit est sunt odit nulla.', 0, '2017-10-31 10:37:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('53', '89', '59', 'Quam aut fugit eligendi excepturi voluptatem aut qui. Tempora amet et quibusdam rerum. Eos fugiat veritatis facilis soluta maxime eum.', 1, '1975-03-06 22:24:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('54', '45', '50', 'Et saepe explicabo dignissimos sint delectus. Cumque repellat debitis voluptatem tempora veniam aliquam at. Nihil provident quis qui suscipit dolor dolorem. Temporibus sunt iste a id labore ut nemo.', 1, '1980-08-04 06:33:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('55', '13', '96', 'Dignissimos consequuntur assumenda sequi. Atque dolorum vel sit id est. Error corporis nemo expedita.', 0, '2004-03-16 11:44:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('56', '69', '91', 'Fugiat qui odio sunt aut et voluptatibus explicabo. Quae adipisci est quia atque sit. Nesciunt voluptatem ut officia voluptatem laudantium recusandae nihil.', 0, '1987-07-11 18:39:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('57', '13', '38', 'Recusandae magni dignissimos quia ex quis qui. Est debitis amet distinctio velit aut est. Mollitia doloremque ea voluptate cupiditate omnis sed. Aliquid corporis omnis enim cum.', 1, '2002-02-23 13:57:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('58', '91', '38', 'Et similique vel nostrum. Consequatur error vitae esse praesentium omnis. Et inventore consectetur at necessitatibus aspernatur. Ea nemo vero corrupti delectus.', 1, '2019-12-06 13:38:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('59', '43', '53', 'Incidunt rerum doloribus cumque repellendus tempora consectetur dolores. Adipisci cumque dolor et voluptatum aut magnam porro omnis. Atque minima qui et ut qui. Expedita nihil ea fugit et voluptatem. Doloribus occaecati deleniti dolor sunt quia libero beatae.', 1, '1987-12-18 13:30:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('60', '59', '47', 'Repudiandae libero omnis nam hic provident soluta. Omnis aspernatur sed iusto deleniti. Magni ut rerum ipsa incidunt.', 0, '2006-10-17 07:37:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('61', '19', '76', 'Commodi laboriosam consequatur ratione cum odit nesciunt quas sit. Ut pariatur dolorem aut ipsam iste ipsam. In velit modi aliquam est.', 1, '2010-09-24 02:57:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('62', '100', '24', 'Nihil in dolorem delectus et corrupti ea at mollitia. Dolorem voluptatibus atque tenetur quasi culpa et officiis. Esse et et fugit aliquid enim est eius. Veritatis in vero occaecati tenetur nam esse omnis. Velit ut aut tempora quis sed.', 0, '1989-06-25 23:50:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('63', '69', '98', 'Soluta voluptate et et qui illo veniam. Esse ut sit et officia perspiciatis voluptatibus dolor. Quia in doloremque necessitatibus accusantium provident qui facere. Ratione fugit unde aut sint quo beatae.', 1, '2004-09-24 08:30:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('64', '45', '96', 'Eum molestiae necessitatibus molestias tempora ipsum dignissimos sapiente. Ex enim eos facere quaerat. Tenetur voluptatem odit ut quidem. Non sunt nemo expedita expedita.', 0, '1973-06-09 14:05:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('65', '11', '15', 'Fugit quasi a optio accusamus dolorum et ut. Voluptatem et ut qui. Quia tenetur at ut quam rem facere.', 0, '2019-01-25 22:09:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('66', '47', '61', 'Illo vel iste quis perspiciatis nam quo officia. In voluptatem occaecati non culpa doloribus. Nihil accusamus et harum expedita dolore necessitatibus.', 0, '1979-01-20 09:52:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('67', '33', '59', 'Hic nobis sed eum omnis et aut cum. Impedit voluptatem sunt ut cupiditate et autem quas. Harum consequatur blanditiis a. Aut cum natus excepturi velit.', 1, '1990-02-10 10:52:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('68', '95', '21', 'Natus nulla aut quos consequuntur deserunt. Tempora et voluptatem ea delectus ipsam iure maiores. Omnis corporis nam corrupti.', 1, '2001-03-17 09:49:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('69', '18', '39', 'Eius reiciendis sint sit nulla laudantium dolor rerum. Quos deserunt ut porro quam excepturi. Porro excepturi blanditiis quibusdam ducimus repellat totam.', 0, '1982-12-12 05:37:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('70', '71', '30', 'Perspiciatis tempora laborum veniam iusto sed. Qui voluptatem animi amet sit eligendi. Pariatur distinctio impedit id et.', 0, '1992-08-04 01:34:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('71', '35', '39', 'Autem porro est aut doloremque occaecati. Perferendis dolorem consectetur quas ad ipsum corporis fugit. At rerum praesentium rerum sed qui.', 0, '1981-09-09 07:45:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('72', '20', '47', 'Repudiandae voluptatibus voluptatem commodi occaecati qui quibusdam. Numquam porro voluptas voluptatem. Est vitae ea rerum molestiae soluta.', 0, '2017-11-21 15:32:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('73', '77', '11', 'Et nobis dolore commodi saepe possimus omnis est. Aut labore tenetur quod hic. Ut ut amet laborum molestias. Tempore quo corrupti culpa magnam officia eligendi voluptatem nemo.', 0, '2010-12-27 16:54:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('74', '84', '19', 'Beatae sunt sunt sapiente aliquam sed. Iure ipsa cumque enim. Mollitia et illo repellat modi rerum. Praesentium vitae maxime facere sint vel totam accusantium sit.', 1, '1991-09-25 03:21:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('75', '64', '43', 'Eveniet molestias modi cum culpa et odit ut iure. Rerum sed doloremque iure quia impedit perferendis.', 1, '1980-06-24 03:15:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('76', '66', '82', 'Harum rerum qui dolorem architecto ducimus corporis. Neque dolorem placeat quod ut. Quasi eos voluptatibus assumenda inventore. Natus aut fugit sed non non vero minima.', 0, '1984-10-12 19:09:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('77', '18', '65', 'Esse est consectetur ut non porro et est. Harum qui illo et et. Consectetur et iste accusantium voluptatem.', 0, '1988-01-07 15:11:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('78', '6', '86', 'Dolorem et aliquam quod ullam optio dicta. Et fugiat et ut voluptate. Vel sint ad esse incidunt velit ex eligendi.', 0, '1994-02-24 20:29:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('79', '62', '50', 'Iste accusamus dolor porro assumenda quae. Cumque consequatur odio sit numquam. Atque id et doloremque ipsa. Aut enim rerum fugiat. Sit voluptate numquam reprehenderit quam molestias.', 0, '1994-12-06 10:02:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('80', '82', '73', 'Illo labore tempore nobis aut ab dolore ipsam. Non quo aut libero neque quo et. At rerum ut alias non.', 0, '1994-07-09 15:14:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('81', '65', '28', 'Voluptatem officiis quia autem qui ut hic. Necessitatibus aut recusandae voluptatum eos ut aut et sed. Quia rerum quas et corporis.', 0, '1993-07-20 18:36:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('82', '33', '97', 'Dignissimos tempore ad exercitationem voluptas non. Aut sed similique mollitia rerum ut. Quas asperiores ab asperiores.', 1, '1995-10-06 16:57:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('83', '86', '28', 'Ab optio dolor nesciunt ratione molestias earum ipsam perspiciatis. Dolorum libero rerum quia ipsum fugit ea. Neque ex quia atque facilis eligendi eius.', 1, '2015-06-06 05:23:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('84', '18', '3', 'Harum voluptates nesciunt numquam vero ea eum. Aut maxime exercitationem nobis modi rerum. Veritatis ullam ut et et aliquam debitis aperiam odit.', 1, '1990-10-12 21:36:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('85', '67', '88', 'Tempore ratione optio repellat ut sit consectetur a. Vero iste autem accusantium distinctio distinctio hic. Officia rem vel quisquam facilis praesentium. Ipsa dicta itaque deleniti itaque praesentium qui voluptates voluptate.', 1, '1980-05-23 04:48:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('86', '33', '1', 'Eum veritatis alias esse debitis. Consequuntur debitis et quia. Sed occaecati ipsa placeat aut ducimus explicabo incidunt non.', 1, '1975-01-24 13:04:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('87', '27', '52', 'Nemo voluptas et sunt alias temporibus esse doloribus. Dolorum eos sit molestias maiores enim. Voluptas rerum et veniam vel et rerum adipisci. Vel eveniet ad quo nihil culpa.', 1, '1995-08-16 20:07:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('88', '48', '3', 'Aut ipsum commodi rem ut sunt est tenetur. Voluptatum consequatur molestiae modi. Dolores perspiciatis eligendi facilis velit ullam. Reiciendis magnam voluptas quis quisquam voluptas.', 0, '2001-06-11 00:49:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('89', '62', '32', 'Dicta eum similique ipsum voluptates nulla consequatur. Quaerat numquam voluptatem voluptatibus dicta occaecati dolores nihil id. Ducimus est in amet placeat.', 0, '1980-05-11 17:17:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('90', '22', '26', 'Ea ex quis sapiente accusamus iusto. Ut quidem adipisci nostrum animi temporibus quod atque inventore. Qui assumenda quaerat eveniet amet id.', 1, '1978-05-26 02:24:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('91', '74', '88', 'Optio ratione ad officiis quae quis consequuntur sunt. Nulla voluptatum cumque dolores ut voluptatem.', 1, '2007-08-27 04:25:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('92', '7', '91', 'Aut aperiam eligendi vitae debitis sit. Magnam quo debitis at. Quae necessitatibus quos beatae laboriosam repudiandae est voluptatem.', 0, '2005-01-05 19:10:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('93', '53', '12', 'Non odio est nesciunt. Non dolores nisi facilis temporibus totam voluptatem impedit. Molestias ea hic quod vero.', 1, '1985-09-08 00:38:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('94', '77', '14', 'Hic consequatur iusto veritatis corporis. Dignissimos et et recusandae iusto sit dolores. Consequuntur aut molestias laboriosam sequi. Velit facere qui blanditiis rem laborum et.', 0, '1976-12-25 11:42:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('95', '62', '58', 'Reiciendis aliquam eaque dolores dolore sit sint et. Porro aliquid vitae officia eligendi dolor vero. Soluta suscipit accusamus expedita voluptatem aliquam qui.', 0, '2019-01-19 19:20:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('96', '87', '27', 'Et iusto totam libero omnis iure enim quia. Quidem reprehenderit eum possimus rerum. Debitis laudantium voluptatibus non aut accusantium sunt libero ea.', 0, '1990-08-14 05:27:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('97', '86', '20', 'Doloremque rem aut corrupti temporibus recusandae est sit. Qui sint blanditiis aliquid. Architecto eveniet deleniti aspernatur vero et deleniti.', 1, '2004-05-23 07:15:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('98', '23', '71', 'Et dolore modi quod odit reprehenderit atque eum. Totam velit incidunt atque itaque. Quam qui laudantium reprehenderit libero rerum sed et.', 0, '1972-09-02 21:27:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('99', '47', '41', 'Quis ut impedit exercitationem eum delectus quia. Et velit delectus nam consequatur. Harum ullam quia suscipit quasi quaerat. Qui iusto nisi dolorem in.', 1, '1997-10-16 17:48:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `message`, `is_read`, `created_at`) VALUES ('100', '74', '13', 'In reprehenderit laborum quisquam est cum eaque impedit enim. Aut est sint atque nisi et eum veniam. Officiis distinctio inventore eos est possimus a nulla cupiditate.', 0, '1995-10-22 23:30:54');


drop table if exists friend_requests;
create table friend_requests(
	initiator_user_id bigint unsigned not null,
	target_user_id bigint unsigned not null,
	status enum('requested', 'approved', 'unfriended', 'declined'), -- enum - это список значений
	requested_at datetime default now(),
	confirmed_at datetime default current_timestamp on update current_timestamp, -- current_timestamp - метка времени, число секунд с 1.1.1900
	primary key (initiator_user_id, target_user_id), -- задаётся первичный ключ после создания колонок
	index (initiator_user_id),
	index (target_user_id),
	foreign key (initiator_user_id) references users(id),
	foreign key (target_user_id) references users(id)
);

INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('1', '66', 'requested', '2005-10-06 01:23:52', '2019-12-14 19:43:21');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('4', '23', 'requested', '1975-12-06 04:00:29', '1970-05-19 17:33:59');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('4', '61', 'declined', '1977-04-22 12:40:14', '1972-12-12 04:56:47');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('5', '16', 'unfriended', '2015-03-27 17:40:46', '1993-02-10 04:38:11');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('5', '42', 'declined', '1997-02-28 19:57:00', '1979-01-15 02:16:27');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('5', '51', 'approved', '2007-08-17 02:19:49', '2000-09-24 20:57:03');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('9', '32', 'declined', '2007-10-25 07:09:25', '2007-01-14 12:09:42');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('11', '9', 'declined', '2004-01-18 03:06:46', '1972-03-14 01:48:19');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('12', '83', 'requested', '2003-05-07 09:09:20', '1972-01-01 04:56:04');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('13', '70', 'declined', '1979-07-15 18:01:23', '2011-03-20 09:38:02');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('15', '71', 'declined', '1988-04-03 04:51:52', '2002-12-05 08:26:55');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('15', '93', 'unfriended', '1971-03-24 13:14:58', '1980-04-18 00:08:50');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('17', '32', 'unfriended', '1983-11-25 23:31:16', '1994-10-22 14:40:36');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('21', '39', 'declined', '1987-03-26 03:23:52', '1971-07-08 02:07:07');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('21', '82', 'approved', '2014-07-11 13:50:01', '1997-03-16 15:51:05');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('22', '18', 'unfriended', '1978-03-24 03:56:29', '2007-02-01 11:11:32');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('22', '21', 'requested', '2013-12-24 00:20:07', '2011-11-24 09:40:08');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('22', '31', 'declined', '2015-03-21 15:01:24', '2002-09-20 02:12:27');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('22', '97', 'declined', '2018-03-08 12:18:31', '2018-09-21 21:08:40');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('24', '21', 'declined', '2013-08-19 11:32:52', '1973-07-06 09:36:49');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('25', '14', 'requested', '1978-12-05 09:45:41', '1991-02-15 05:46:00');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('27', '5', 'unfriended', '1991-10-29 23:40:28', '2012-11-29 08:06:42');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('28', '8', 'requested', '1985-03-19 20:23:13', '1979-01-16 08:32:09');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('28', '71', 'declined', '1976-09-10 11:38:54', '1989-03-14 08:15:51');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('29', '51', 'requested', '2007-09-06 05:07:09', '2006-07-22 07:03:01');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('29', '64', 'declined', '2017-04-10 23:36:28', '1996-09-06 16:28:55');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('30', '31', 'requested', '2007-12-20 21:46:00', '2010-03-28 16:52:49');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('32', '94', 'approved', '2012-10-17 10:41:28', '1990-04-18 06:56:11');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('34', '38', 'unfriended', '1991-01-17 00:44:58', '1985-09-14 18:28:06');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('34', '54', 'unfriended', '2010-10-18 23:06:07', '1971-07-11 04:39:41');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('35', '39', 'unfriended', '2019-04-01 06:28:52', '2004-08-08 11:34:55');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('37', '2', 'approved', '1999-02-23 16:56:19', '2007-03-22 09:55:13');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('37', '68', 'unfriended', '1987-10-19 18:00:09', '1986-09-18 14:24:37');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('38', '22', 'unfriended', '2011-10-15 11:11:08', '2016-08-14 22:07:45');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('38', '97', 'unfriended', '1977-02-02 03:35:21', '1972-06-01 01:32:57');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('40', '82', 'approved', '1971-10-09 03:38:58', '2003-06-05 23:15:09');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('41', '32', 'unfriended', '2008-06-07 04:47:56', '1979-04-27 18:52:56');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('42', '86', 'unfriended', '1981-07-01 02:14:15', '1988-09-05 15:12:44');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('42', '96', 'declined', '1972-09-21 18:31:00', '2004-04-22 03:31:31');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('44', '30', 'unfriended', '2015-11-05 14:27:28', '1982-01-14 11:26:03');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('46', '14', 'unfriended', '2013-10-13 00:51:43', '2007-08-12 12:03:22');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('46', '19', 'declined', '2017-02-23 22:31:15', '2010-03-04 19:21:54');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('46', '92', 'unfriended', '1997-10-14 17:44:12', '2009-10-11 06:23:33');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('47', '20', 'unfriended', '2000-01-12 20:33:40', '2015-07-23 05:21:23');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('48', '32', 'approved', '1988-05-19 06:38:22', '1977-12-16 15:33:05');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('48', '70', 'requested', '1986-03-14 19:12:22', '1989-07-16 10:26:12');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('49', '8', 'requested', '2017-05-03 16:49:09', '2012-04-27 19:11:50');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('49', '52', 'declined', '1976-03-01 18:30:31', '1976-04-20 06:58:32');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('50', '85', 'unfriended', '2002-07-22 21:48:05', '1985-02-26 06:22:43');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('53', '44', 'requested', '2013-05-30 23:06:30', '1975-05-02 03:16:55');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('53', '86', 'requested', '2000-12-09 16:26:25', '1998-04-19 19:25:04');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('54', '91', 'approved', '2020-06-04 16:15:39', '2005-01-08 21:02:09');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('54', '98', 'approved', '1999-12-20 11:33:05', '1997-02-07 00:39:44');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('55', '5', 'unfriended', '1995-09-18 19:00:51', '1977-07-15 09:59:06');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('56', '25', 'approved', '2003-11-16 11:07:27', '2005-02-09 10:59:24');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('56', '45', 'unfriended', '2000-09-15 03:19:34', '1971-10-04 06:45:25');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('56', '77', 'approved', '2011-05-05 13:53:31', '2004-01-16 16:29:51');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('58', '20', 'declined', '2019-08-18 21:03:39', '1989-11-03 19:51:12');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('59', '70', 'unfriended', '1987-08-07 23:20:49', '2003-01-15 17:15:04');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('62', '47', 'unfriended', '1978-08-10 10:31:24', '2016-03-13 06:22:54');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('62', '52', 'approved', '1997-11-22 21:16:29', '1999-02-14 14:22:38');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('64', '41', 'declined', '1994-01-20 20:09:30', '2011-12-05 17:26:44');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('64', '52', 'declined', '2018-02-10 00:12:40', '2004-04-10 02:57:43');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('66', '61', 'requested', '1973-05-02 00:53:53', '1986-07-17 17:05:58');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('67', '8', 'declined', '2003-07-25 01:21:34', '2012-02-04 02:40:58');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('67', '68', 'unfriended', '1985-11-18 03:06:48', '1970-05-31 12:30:46');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('67', '84', 'declined', '2017-01-26 20:13:06', '2002-02-09 06:31:49');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('68', '29', 'unfriended', '1984-01-05 06:39:28', '1991-12-27 22:17:25');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('69', '84', 'declined', '1982-07-01 20:26:05', '1996-12-10 09:01:44');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('69', '92', 'declined', '2000-10-31 19:39:18', '2013-08-02 15:36:45');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('70', '98', 'requested', '2001-03-31 03:21:05', '1977-10-02 20:22:30');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('71', '82', 'approved', '2015-06-24 11:25:06', '2010-05-09 16:23:58');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('72', '62', 'unfriended', '1990-06-02 06:42:06', '1978-07-08 15:24:36');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('72', '84', 'unfriended', '2004-12-12 05:24:48', '2008-10-24 15:38:52');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('73', '33', 'unfriended', '1982-08-15 10:49:17', '2003-03-09 18:35:45');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('74', '28', 'requested', '1995-01-02 00:41:07', '1997-06-09 08:14:58');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('75', '48', 'approved', '1986-02-26 07:56:50', '2011-09-11 20:14:06');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('76', '14', 'approved', '2016-06-09 23:13:12', '2002-07-29 23:05:32');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('77', '19', 'requested', '1970-12-20 15:21:10', '2014-08-27 05:29:02');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('77', '79', 'approved', '2001-07-05 15:47:13', '2014-12-07 06:35:34');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('78', '4', 'declined', '1997-07-15 22:10:00', '2013-10-20 07:36:32');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('80', '8', 'approved', '1985-06-03 01:55:39', '2017-05-12 18:04:02');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('80', '30', 'approved', '2004-06-20 22:10:32', '1970-08-21 21:34:32');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('80', '62', 'requested', '1996-12-14 18:09:41', '1993-09-23 11:31:18');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('81', '83', 'unfriended', '2006-02-14 17:08:43', '1977-03-12 20:58:09');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('82', '48', 'approved', '1990-03-14 15:05:04', '1975-11-22 01:13:52');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('82', '83', 'unfriended', '1989-02-25 02:07:28', '1993-06-05 11:30:36');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('83', '84', 'unfriended', '2020-10-21 08:16:35', '2015-08-20 17:56:00');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('83', '86', 'requested', '2005-11-27 16:23:22', '1980-06-24 03:59:12');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('85', '6', 'declined', '1972-01-13 10:12:27', '1981-03-05 11:58:24');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('85', '49', 'unfriended', '1993-06-16 17:04:50', '2018-11-29 18:56:00');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('85', '78', 'requested', '2006-09-04 05:51:44', '1990-03-01 15:29:13');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('85', '93', 'approved', '2012-07-22 21:06:08', '1990-11-26 02:26:09');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('86', '77', 'unfriended', '1992-06-18 21:15:39', '1973-04-02 15:35:53');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('92', '85', 'approved', '2001-11-29 08:29:52', '2012-10-12 05:25:12');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('94', '45', 'approved', '2000-06-28 21:34:01', '2001-06-11 21:43:52');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('98', '18', 'approved', '1973-05-21 18:10:14', '2014-12-02 13:26:05');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('99', '45', 'approved', '2011-09-09 00:13:20', '1999-05-23 04:37:08');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('100', '2', 'requested', '1971-02-19 19:54:52', '2010-06-29 10:57:16');


drop table if exists communities;
create table communities(
	id serial primary key,
	name varchar (150),
	index(name)
);

INSERT INTO `communities` (`id`, `name`) VALUES ('25', 'aut');
INSERT INTO `communities` (`id`, `name`) VALUES ('30', 'commodi');
INSERT INTO `communities` (`id`, `name`) VALUES ('13', 'dignissimos');
INSERT INTO `communities` (`id`, `name`) VALUES ('8', 'distinctio');
INSERT INTO `communities` (`id`, `name`) VALUES ('6', 'dolor');
INSERT INTO `communities` (`id`, `name`) VALUES ('2', 'dolore');
INSERT INTO `communities` (`id`, `name`) VALUES ('15', 'est');
INSERT INTO `communities` (`id`, `name`) VALUES ('4', 'et');
INSERT INTO `communities` (`id`, `name`) VALUES ('29', 'et');
INSERT INTO `communities` (`id`, `name`) VALUES ('1', 'expedita');
INSERT INTO `communities` (`id`, `name`) VALUES ('14', 'explicabo');
INSERT INTO `communities` (`id`, `name`) VALUES ('27', 'explicabo');
INSERT INTO `communities` (`id`, `name`) VALUES ('5', 'ipsa');
INSERT INTO `communities` (`id`, `name`) VALUES ('21', 'iure');
INSERT INTO `communities` (`id`, `name`) VALUES ('24', 'maiores');
INSERT INTO `communities` (`id`, `name`) VALUES ('26', 'minus');
INSERT INTO `communities` (`id`, `name`) VALUES ('9', 'molestias');
INSERT INTO `communities` (`id`, `name`) VALUES ('7', 'odio');
INSERT INTO `communities` (`id`, `name`) VALUES ('22', 'omnis');
INSERT INTO `communities` (`id`, `name`) VALUES ('12', 'porro');
INSERT INTO `communities` (`id`, `name`) VALUES ('16', 'quo');
INSERT INTO `communities` (`id`, `name`) VALUES ('19', 'quo');
INSERT INTO `communities` (`id`, `name`) VALUES ('20', 'repudiandae');
INSERT INTO `communities` (`id`, `name`) VALUES ('18', 'rerum');
INSERT INTO `communities` (`id`, `name`) VALUES ('3', 'sapiente');
INSERT INTO `communities` (`id`, `name`) VALUES ('17', 'sapiente');
INSERT INTO `communities` (`id`, `name`) VALUES ('10', 'sequi');
INSERT INTO `communities` (`id`, `name`) VALUES ('23', 'soluta');
INSERT INTO `communities` (`id`, `name`) VALUES ('28', 'sunt');
INSERT INTO `communities` (`id`, `name`) VALUES ('11', 'tempore');


drop table if exists users_communities; -- создаём промежуточную таблицу, т.к. юзерс и сообщества относятся др к др как m:m
create table users_communities(
	user_id bigint unsigned not null,
	community_id bigint unsigned not null,
	primary key (user_id, community_id),
	foreign key (user_id) references users(id),
	foreign key (community_id) references communities(id)
);

INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('1', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('2', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('2', '14');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('3', '18');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('7', '25');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('8', '22');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('10', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('10', '26');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('10', '30');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('12', '16');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('13', '30');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('15', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('18', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('18', '11');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('19', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('19', '16');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('19', '20');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('20', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('20', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('20', '21');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('21', '12');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('24', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('25', '30');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('26', '15');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('27', '30');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('28', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('29', '16');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('30', '18');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('31', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('33', '28');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('34', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('34', '18');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('34', '21');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('34', '22');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('36', '27');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('36', '28');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('37', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('37', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('38', '19');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('38', '21');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('38', '30');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('39', '23');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('40', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('40', '19');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('41', '27');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('42', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('45', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('46', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('46', '25');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('49', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('49', '18');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('49', '22');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('52', '22');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('53', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('54', '20');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('54', '26');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('55', '16');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('55', '21');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('56', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('59', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('59', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('60', '12');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('63', '15');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('64', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('68', '30');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('70', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('70', '20');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('73', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('73', '28');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('74', '13');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('75', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('75', '27');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('76', '16');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('77', '14');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('78', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('78', '12');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('79', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('79', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('81', '13');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('82', '22');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('83', '19');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('85', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('85', '29');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('85', '30');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('88', '19');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('90', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('90', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('90', '13');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('90', '29');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('91', '12');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('91', '20');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('92', '11');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('94', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('94', '14');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('96', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('96', '27');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('97', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('98', '22');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('98', '30');


drop table if exists posts;
create table posts(
	id serial primary key,
	user_id bigint unsigned not null,
	post text,
	created_at datetime default current_timestamp,
	updated_at datetime default current_timestamp on update current_timestamp, -- заполняется при изменении
	foreign key (user_id) references users(id)
);


INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('1', '24', 'Doloremque cum est quas eos qui.', '1995-05-16 16:24:15', '1990-01-11 19:08:22');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('2', '41', 'Est fugiat est sed sed deserunt.', '2002-11-02 06:07:10', '1975-03-12 18:55:53');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('3', '45', 'Alias eum dolor laborum in asperiores est.', '1992-07-04 06:57:06', '2005-10-06 17:41:07');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('4', '85', 'Alias et totam est ratione ut dolore consectetur.', '2013-11-18 02:13:22', '1996-12-27 23:09:40');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('5', '47', 'Hic qui ducimus sint quis.', '1994-04-15 18:26:48', '1998-08-09 05:56:46');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('6', '46', 'Eveniet rerum deserunt rerum non fugiat laborum et.', '1979-08-30 11:04:26', '2001-04-04 08:27:13');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('7', '87', 'Tempora quod qui et maxime voluptas itaque.', '2005-10-13 03:22:09', '2018-03-13 16:16:52');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('8', '57', 'Ipsa et reiciendis reiciendis quod.', '2011-06-05 04:11:53', '1988-12-21 15:33:17');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('9', '56', 'Nesciunt ut et numquam doloremque quo iste dolor ad.', '2013-03-11 16:50:27', '1983-04-01 19:49:56');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('10', '55', 'Dolorum non est et aut nihil.', '1992-11-30 22:41:12', '1980-07-01 19:26:05');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('11', '17', 'Id reprehenderit ut praesentium necessitatibus officia maxime.', '1987-12-09 19:23:45', '2017-04-18 13:25:51');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('12', '83', 'Quia voluptates velit debitis non dolorem aut adipisci.', '2011-12-22 09:45:18', '1992-01-02 10:35:07');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('13', '70', 'Dignissimos consequuntur asperiores praesentium fuga sed.', '1988-01-02 07:08:40', '2012-05-01 08:34:35');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('14', '18', 'Ut omnis iusto voluptatem odio optio.', '2014-06-26 00:35:51', '2019-01-18 04:40:45');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('15', '45', 'Necessitatibus error deserunt sint amet repudiandae ipsam.', '2013-03-05 21:48:53', '1980-10-09 05:17:28');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('16', '1', 'Aliquam modi eaque deserunt est voluptate.', '2019-03-09 07:27:25', '1999-03-25 08:10:34');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('17', '87', 'Impedit aut praesentium suscipit illum consectetur quo tempora.', '2014-05-03 06:22:51', '1970-05-20 10:04:28');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('18', '73', 'Doloremque qui harum officia fugiat non corrupti.', '2007-04-11 13:27:09', '1992-12-29 07:00:29');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('19', '96', 'Mollitia esse distinctio est quae.', '2008-09-05 20:13:18', '2001-02-12 00:32:47');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('20', '8', 'Tempora officia neque tempore et et molestiae.', '2011-05-21 22:47:41', '1974-03-22 05:58:22');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('21', '72', 'Hic voluptatibus sint itaque ipsa sunt.', '1982-11-23 17:37:26', '1994-09-25 16:45:31');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('22', '9', 'Aut corrupti eveniet eum a non ut mollitia.', '1981-05-22 15:01:02', '2017-08-28 05:37:14');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('23', '1', 'Doloribus asperiores sapiente eaque aspernatur ad nobis.', '2019-11-23 06:52:52', '1984-06-29 00:34:58');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('24', '56', 'Sed qui et aut impedit veniam non libero.', '2001-08-26 01:06:03', '1984-01-18 13:43:23');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('25', '90', 'Vero quaerat est tenetur suscipit.', '1992-03-11 20:18:05', '2013-09-14 09:09:38');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('26', '76', 'Rerum voluptas deleniti tempore similique nisi.', '2010-12-16 15:47:37', '2008-08-18 01:55:18');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('27', '37', 'Molestiae quia quia doloribus nostrum praesentium cupiditate consequuntur.', '1983-08-16 16:43:01', '2011-06-19 06:23:46');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('28', '5', 'Voluptas dicta corrupti sequi nemo pariatur maiores rerum facere.', '1990-01-05 08:28:30', '2010-04-18 23:59:59');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('29', '54', 'Minus ad quasi labore est minus et iste.', '1981-04-25 03:17:59', '1982-10-25 03:59:53');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('30', '66', 'Sequi voluptatibus quas quia non.', '1974-06-18 08:15:56', '2005-12-12 06:39:15');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('31', '52', 'Rerum inventore dolorum quos ea similique.', '2012-10-16 13:52:30', '1976-06-03 23:15:56');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('32', '78', 'Aut sit facilis voluptatem aspernatur quae qui ut.', '1990-05-18 22:18:43', '2000-06-12 03:22:45');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('33', '6', 'Et ea tempore aut facilis animi.', '1971-02-20 18:52:55', '2010-04-10 12:40:09');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('34', '97', 'Labore enim non id voluptatem.', '2011-02-11 17:37:42', '1995-12-21 19:32:30');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('35', '63', 'Autem delectus et et eaque.', '2006-11-24 18:04:48', '1982-09-28 02:17:12');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('36', '52', 'Veritatis commodi beatae dolore provident laudantium.', '2005-09-13 13:18:12', '2013-09-06 06:29:47');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('37', '42', 'Asperiores ut tenetur sit animi aliquam fugit.', '2019-08-07 03:45:02', '2020-09-20 11:59:53');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('38', '49', 'Id quia doloremque aut error aut.', '2005-03-13 09:51:09', '1994-03-10 02:08:51');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('39', '9', 'Porro ipsum blanditiis et vitae autem corporis alias facere.', '1980-07-14 23:12:42', '1998-12-29 11:36:00');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('40', '98', 'Omnis vel dolorum mollitia ut corporis.', '2004-06-30 14:40:21', '1994-10-25 16:12:20');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('41', '3', 'Aut labore molestias animi quod suscipit velit aliquid.', '2013-05-29 03:37:38', '2019-08-06 18:25:36');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('42', '26', 'Corrupti aut earum similique aliquid.', '2015-05-28 10:45:34', '1978-05-28 18:05:54');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('43', '80', 'Sit rem ab provident.', '2018-12-02 11:31:37', '1972-09-18 21:31:55');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('44', '72', 'Molestiae placeat rerum vitae quia fuga sed autem.', '2005-03-04 15:15:09', '2016-08-18 22:03:20');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('45', '43', 'Aut deserunt dolore assumenda nobis id quis.', '1988-07-24 20:08:43', '2007-01-12 12:22:53');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('46', '25', 'Rerum deleniti mollitia et qui.', '2012-07-26 21:07:17', '2001-11-14 15:05:35');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('47', '73', 'Ut et sed perspiciatis numquam sequi quos aut.', '2015-07-06 09:41:25', '2006-09-07 09:23:00');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('48', '29', 'Qui omnis eos saepe nostrum quidem.', '2007-04-14 16:00:12', '2004-05-07 04:17:13');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('49', '97', 'Dolore et labore et minima.', '2008-03-22 07:02:50', '1974-09-10 21:38:11');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('50', '69', 'Rerum accusamus repellat veritatis in vero.', '2006-08-25 05:09:20', '2020-05-23 14:09:38');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('51', '36', 'Rerum harum facilis libero ut voluptatem.', '1981-03-27 12:14:43', '1985-02-06 21:39:17');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('52', '69', 'Natus facilis tempore occaecati ipsa quo laborum.', '2003-05-16 00:40:38', '2005-01-11 16:10:37');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('53', '77', 'Ab dolorem eos laborum.', '1991-08-09 03:20:28', '1998-10-01 22:41:24');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('54', '37', 'Ipsa animi repellat neque aperiam.', '1985-01-16 07:27:43', '1993-01-23 11:00:49');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('55', '24', 'Et fuga earum in rerum iusto sit.', '1971-10-05 15:52:46', '1973-12-30 06:46:22');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('56', '67', 'Debitis ut sed magnam nesciunt tempora hic omnis.', '1982-10-23 19:13:08', '1991-01-14 20:19:47');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('57', '12', 'Sed non sit et exercitationem repudiandae.', '2004-08-15 16:26:35', '2015-01-13 03:21:19');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('58', '61', 'Omnis mollitia delectus nihil esse dolore.', '1984-12-22 04:53:34', '1983-11-02 22:31:56');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('59', '71', 'Architecto sint aliquam voluptates velit expedita qui.', '1999-03-27 03:49:21', '2014-02-23 20:02:43');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('60', '66', 'Quod dolor itaque eveniet necessitatibus autem eos iusto.', '1973-04-06 16:39:45', '2000-04-06 13:15:43');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('61', '26', 'Fugit officiis mollitia fugit rerum sunt.', '1981-06-21 12:38:10', '1996-03-25 12:03:44');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('62', '23', 'Vel totam et molestiae iure quibusdam.', '1985-02-18 10:21:13', '1987-07-28 05:50:07');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('63', '43', 'Iste ullam aut tempore id.', '1971-12-07 19:05:46', '2010-08-19 21:21:07');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('64', '31', 'Repudiandae ut voluptas explicabo et est rerum natus.', '1980-08-19 01:17:44', '1999-08-21 15:42:37');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('65', '19', 'Soluta sed repudiandae reiciendis non voluptatibus saepe.', '1970-04-07 02:32:53', '1976-08-04 09:39:05');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('66', '5', 'Qui aliquid incidunt ut sapiente et consequatur et ex.', '1985-02-17 06:20:03', '2004-09-12 23:14:54');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('67', '83', 'Culpa dolorem maxime expedita autem architecto ut.', '1974-02-23 14:16:27', '2020-10-13 11:52:30');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('68', '61', 'Cumque ab ab qui aut.', '2001-06-24 17:33:30', '1985-02-26 22:23:17');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('69', '54', 'Ipsa nihil et officia et nam illum facilis rerum.', '1974-09-29 05:36:37', '1976-08-31 20:27:23');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('70', '91', 'Autem porro rerum impedit quia.', '1981-01-03 21:11:34', '1984-05-08 02:33:41');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('71', '58', 'Saepe id labore at iusto voluptas.', '1986-12-24 05:40:14', '2018-03-12 13:44:42');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('72', '56', 'Assumenda provident delectus molestiae illum.', '1978-08-13 06:43:53', '1987-03-06 12:07:10');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('73', '17', 'Debitis sed ab quia perferendis.', '1993-10-28 21:29:52', '2012-04-27 12:35:19');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('74', '37', 'Facilis distinctio eum dolores tempora.', '1971-11-13 02:23:05', '1977-04-29 16:15:45');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('75', '28', 'Quia dolor optio rerum.', '1984-12-21 09:07:04', '1996-08-30 08:42:20');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('76', '59', 'Eligendi ea sunt quia dolores quis.', '1994-02-25 18:16:54', '2008-03-12 11:48:24');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('77', '62', 'Ullam eligendi et quis error placeat.', '2010-02-17 05:33:19', '1999-07-01 07:49:13');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('78', '1', 'At velit assumenda accusamus sed neque at officia est.', '1979-11-28 14:43:48', '2020-05-11 18:27:36');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('79', '88', 'Rem aspernatur ullam voluptate.', '1981-06-23 23:56:16', '1990-08-08 08:37:09');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('80', '58', 'Repellat sed earum et.', '2013-08-13 07:18:38', '2003-01-26 17:39:16');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('81', '70', 'Est ipsam repudiandae ut praesentium sunt ut.', '2019-09-02 05:55:27', '1999-12-18 05:32:00');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('82', '23', 'Placeat earum molestias temporibus esse sunt natus aspernatur.', '1979-06-23 16:36:39', '1971-04-15 15:26:45');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('83', '26', 'Magni et ea fugiat omnis rerum iure sit.', '2012-08-29 19:15:08', '2008-06-27 03:06:00');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('84', '46', 'Maiores consectetur dolore in et.', '2015-09-11 08:15:24', '2005-01-29 05:09:56');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('85', '59', 'Error quia assumenda omnis.', '1985-12-13 22:42:36', '2012-05-10 04:38:06');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('86', '50', 'Ullam officiis eaque corrupti tempore accusantium.', '1986-11-13 20:32:02', '1970-01-17 00:49:59');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('87', '12', 'Earum sint ea architecto veritatis blanditiis explicabo cupiditate.', '2019-06-21 11:20:20', '1973-04-21 15:11:59');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('88', '71', 'Quaerat beatae enim eligendi quia inventore reprehenderit expedita minima.', '1988-10-21 08:09:58', '2001-03-05 02:42:21');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('89', '10', 'Quia beatae quo aut assumenda sequi ipsa sint doloribus.', '1981-06-09 02:25:01', '1982-06-18 13:21:32');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('90', '82', 'Saepe molestias et adipisci beatae.', '2007-11-17 06:49:39', '2006-08-07 17:31:03');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('91', '36', 'Mollitia fuga nesciunt vel et blanditiis dolorum.', '1991-01-31 05:51:11', '1983-06-06 23:22:57');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('92', '35', 'Doloribus quibusdam ut corrupti praesentium doloribus quia quia.', '1972-11-15 01:14:28', '1992-11-07 21:26:16');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('93', '5', 'Nesciunt deserunt et non consequatur.', '1999-08-07 20:26:26', '1976-08-02 02:57:19');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('94', '79', 'Cum architecto animi sint et dolor.', '1998-02-24 03:43:06', '1999-08-30 01:48:17');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('95', '66', 'Iure ex nihil ea eius natus sit.', '2019-11-30 23:46:05', '2007-05-10 12:18:55');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('96', '23', 'Nihil quia tempore debitis ratione aut assumenda at et.', '1992-04-16 02:00:24', '1998-03-11 03:30:05');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('97', '84', 'Consectetur natus est non inventore libero non.', '1977-08-10 16:14:23', '1980-10-22 20:22:22');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('98', '49', 'Corrupti ex nihil non illum nulla similique suscipit.', '1984-11-22 01:04:50', '2014-02-01 05:43:43');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('99', '83', 'Deleniti necessitatibus voluptate ex eligendi.', '2006-04-07 18:40:40', '2009-02-22 12:27:43');
INSERT INTO `posts` (`id`, `user_id`, `post`, `created_at`, `updated_at`) VALUES ('100', '37', 'Libero corrupti repellendus excepturi possimus nemo quas aut deleniti.', '1979-08-28 06:40:55', '1984-07-03 13:41:01');


drop table if exists comments;
create table comments(
	id serial primary key,
	user_id bigint unsigned not null,
	post_id bigint unsigned not null,
	comment text,
	created_at datetime default current_timestamp,
	updated_at datetime default current_timestamp on update current_timestamp,
	foreign key (user_id) references users(id),
	foreign key (post_id) references posts(id)
);

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('1', '18', '62', 'dolore', '1975-05-08 20:09:50', '2013-04-13 19:40:49');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('2', '34', '20', 'doloribus', '2009-12-02 04:28:34', '2013-10-08 09:03:48');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('3', '45', '11', 'ipsum', '2000-07-10 03:37:27', '1998-02-18 00:15:02');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('4', '67', '61', 'tempora', '2015-01-02 15:57:46', '2019-01-13 15:04:10');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('5', '78', '43', 'ut', '1982-04-19 23:39:01', '1977-04-19 06:13:31');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('6', '53', '47', 'quidem', '1981-05-24 23:48:30', '2016-08-18 01:20:57');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('7', '81', '83', 'rerum', '1975-01-17 11:30:34', '2004-06-27 01:26:09');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('8', '45', '56', 'tempore', '1987-09-09 17:02:23', '2001-08-22 22:28:27');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('9', '11', '16', 'quia', '2004-03-04 15:53:51', '2007-07-14 11:55:03');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('10', '72', '37', 'officiis', '2004-06-16 12:36:24', '1988-06-28 10:04:42');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('11', '40', '58', 'est', '1984-02-02 02:36:55', '1993-02-19 09:46:40');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('12', '54', '16', 'dignissimos', '1978-01-08 10:09:56', '1992-10-18 11:39:58');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('13', '14', '86', 'nisi', '1992-05-30 12:37:09', '1992-01-27 08:25:51');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('14', '29', '87', 'assumenda', '1981-01-22 23:50:37', '1996-02-05 18:43:28');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('15', '43', '71', 'et', '1973-12-22 23:52:11', '1983-05-10 21:11:09');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('16', '98', '61', 'aut', '1985-10-15 06:24:26', '1990-03-26 11:30:38');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('17', '33', '32', 'quod', '2013-09-19 08:33:03', '1974-07-22 19:48:35');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('18', '80', '78', 'consequuntur', '1986-12-29 18:30:58', '1992-04-06 17:54:07');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('19', '43', '46', 'magnam', '1996-02-26 02:45:12', '1995-05-24 12:12:18');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('20', '38', '21', 'similique', '1984-01-07 00:58:27', '2014-10-18 05:48:18');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('21', '88', '91', 'vitae', '1984-08-08 03:47:02', '2005-04-20 01:42:47');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('22', '67', '69', 'inventore', '1975-04-16 13:53:06', '1987-01-23 22:01:21');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('23', '74', '11', 'consequatur', '2019-11-13 15:47:09', '2008-05-09 09:14:44');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('24', '24', '85', 'ea', '1978-06-12 17:52:17', '2008-09-27 09:51:30');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('25', '26', '95', 'provident', '1998-02-18 21:10:37', '2009-03-19 07:20:33');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('26', '21', '66', 'id', '1970-09-04 04:24:21', '1976-07-20 19:02:02');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('27', '53', '74', 'cumque', '1980-04-12 19:31:00', '1999-04-09 05:49:37');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('28', '82', '66', 'consequatur', '2004-05-23 10:36:34', '2006-03-12 01:44:57');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('29', '59', '10', 'provident', '1995-11-22 22:51:52', '1977-05-06 00:05:30');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('30', '52', '2', 'eveniet', '2016-05-06 05:58:19', '1998-05-17 00:06:47');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('31', '80', '50', 'facilis', '2000-09-23 21:00:20', '1982-06-30 05:07:20');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('32', '62', '13', 'suscipit', '1982-05-10 08:06:25', '2001-05-10 03:31:07');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('33', '82', '41', 'voluptas', '2016-04-01 06:42:59', '2010-10-12 08:02:25');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('34', '90', '24', 'voluptate', '2019-06-15 12:55:13', '2002-04-07 01:16:04');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('35', '87', '27', 'ab', '1996-10-25 01:38:25', '1971-05-07 17:32:47');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('36', '44', '74', 'enim', '2001-12-03 23:13:43', '2013-07-30 15:06:35');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('37', '18', '11', 'eum', '1992-08-24 14:47:23', '2005-02-16 17:53:33');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('38', '43', '91', 'facilis', '1998-07-14 21:41:10', '2010-02-04 22:18:44');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('39', '22', '66', 'aut', '1988-04-11 16:22:34', '1989-06-27 00:05:28');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('40', '75', '48', 'mollitia', '2008-10-02 13:00:57', '1998-12-10 14:44:18');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('41', '61', '96', 'eos', '2001-06-03 12:51:54', '2002-06-23 00:31:36');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('42', '13', '13', 'ut', '1981-04-21 12:24:32', '2000-04-11 08:56:15');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('43', '70', '94', 'nulla', '2016-06-16 01:10:12', '1982-12-29 01:03:56');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('44', '78', '28', 'neque', '1984-03-07 04:46:36', '2013-04-28 02:23:27');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('45', '3', '29', 'laborum', '2013-06-30 13:45:58', '1993-11-12 08:55:47');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('46', '30', '83', 'omnis', '2008-07-11 13:04:50', '1994-11-30 11:53:17');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('47', '79', '91', 'ullam', '1975-09-26 22:34:36', '1987-06-01 16:15:53');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('48', '95', '60', 'harum', '2008-11-18 02:43:55', '1995-08-04 02:45:26');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('49', '31', '84', 'quas', '1984-05-13 11:40:42', '1989-07-07 01:54:56');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('50', '84', '17', 'nam', '2017-03-30 11:02:15', '1993-04-27 03:55:35');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('51', '11', '28', 'perspiciatis', '1998-11-03 23:42:05', '2001-03-30 10:40:30');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('52', '91', '28', 'aut', '1988-04-23 00:38:06', '1997-12-24 17:09:18');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('53', '39', '33', 'commodi', '1976-08-06 19:26:33', '1996-12-07 13:25:01');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('54', '19', '60', 'sapiente', '1980-08-25 11:25:30', '1972-11-16 04:10:07');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('55', '99', '94', 'rerum', '1993-10-29 14:30:33', '2018-10-03 04:11:03');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('56', '7', '59', 'cum', '1972-09-19 13:07:34', '2004-10-03 20:39:43');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('57', '89', '19', 'velit', '1989-07-13 17:37:48', '1989-11-09 06:40:41');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('58', '71', '58', 'dolores', '2002-11-23 07:13:20', '1988-09-26 00:13:18');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('59', '13', '48', 'ducimus', '1996-10-06 06:23:30', '1971-03-17 08:32:00');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('60', '86', '15', 'porro', '1990-06-02 12:34:13', '2011-07-03 16:32:48');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('61', '77', '15', 'facere', '2004-12-18 14:40:54', '1981-07-31 00:35:05');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('62', '97', '56', 'qui', '2004-09-18 12:45:36', '2015-11-25 10:53:11');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('63', '6', '91', 'at', '1980-04-15 15:28:27', '2014-03-16 13:26:49');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('64', '15', '37', 'quia', '1984-11-26 07:17:05', '2014-10-07 05:49:18');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('65', '75', '99', 'repellendus', '2000-11-10 04:59:09', '1978-05-03 20:25:51');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('66', '54', '86', 'vel', '2001-04-26 04:53:29', '2013-08-22 00:02:36');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('67', '27', '44', 'voluptates', '1972-06-01 16:23:09', '2018-11-21 20:25:56');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('68', '13', '65', 'autem', '1992-01-10 20:40:23', '1983-10-16 01:22:11');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('69', '77', '32', 'consequatur', '2013-09-08 05:00:36', '1979-09-07 10:15:49');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('70', '25', '75', 'voluptatum', '2006-09-17 19:09:48', '2020-08-08 21:45:53');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('71', '25', '31', 'repellat', '2003-06-12 00:07:22', '1970-01-31 04:55:19');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('72', '33', '14', 'suscipit', '1971-01-02 16:56:38', '2018-10-29 19:55:12');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('73', '50', '4', 'laudantium', '1985-08-19 18:57:04', '1987-11-11 04:15:24');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('74', '72', '62', 'dolores', '1987-11-26 08:49:58', '1997-11-06 00:59:57');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('75', '52', '57', 'expedita', '1989-03-03 00:07:15', '1976-04-02 03:00:01');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('76', '76', '28', 'amet', '1988-12-13 21:32:03', '1974-07-14 23:03:47');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('77', '72', '73', 'provident', '1990-12-09 19:30:34', '1995-03-15 16:13:37');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('78', '83', '78', 'necessitatibus', '1972-06-29 07:34:42', '1982-05-30 17:25:17');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('79', '64', '98', 'aut', '2004-11-18 18:51:38', '2005-01-01 23:56:46');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('80', '14', '38', 'amet', '2002-07-17 19:29:45', '1975-10-04 22:17:28');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('81', '97', '67', 'mollitia', '2005-04-13 21:27:56', '2012-08-14 17:01:04');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('82', '24', '23', 'expedita', '1978-06-17 22:27:41', '2018-09-29 16:13:35');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('83', '10', '37', 'dolorem', '1999-01-08 23:54:19', '1996-02-09 14:01:04');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('84', '88', '87', 'blanditiis', '1986-06-24 22:13:45', '1974-01-01 17:27:10');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('85', '68', '12', 'in', '2004-11-24 23:17:14', '1985-05-23 16:34:52');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('86', '61', '93', 'dolor', '2017-10-06 00:02:36', '1973-10-11 21:43:15');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('87', '43', '94', 'veritatis', '2009-08-10 06:16:08', '1995-07-02 10:12:08');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('88', '6', '92', 'molestias', '2013-11-16 10:18:22', '1983-11-17 03:27:02');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('89', '97', '77', 'quia', '2003-04-02 05:20:02', '2020-04-08 20:40:20');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('90', '53', '48', 'minima', '2012-09-13 10:31:53', '1980-03-15 14:25:42');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('91', '34', '29', 'temporibus', '1989-11-23 21:40:11', '1980-08-31 18:11:06');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('92', '76', '5', 'sed', '1982-01-30 21:32:36', '2015-02-11 22:35:07');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('93', '2', '59', 'ad', '1973-06-16 00:17:17', '2020-01-27 16:05:38');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('94', '82', '65', 'aperiam', '2020-03-03 06:29:49', '2000-07-20 11:28:27');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('95', '57', '96', 'nam', '2004-04-25 09:01:21', '1985-06-03 18:59:40');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('96', '3', '53', 'minima', '1983-12-20 10:42:17', '1992-08-08 16:17:44');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('97', '62', '26', 'et', '2007-05-15 22:43:20', '1979-06-13 16:54:48');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('98', '76', '72', 'dolor', '1989-05-01 07:41:04', '2005-11-13 21:07:17');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('99', '62', '64', 'doloremque', '1972-04-20 05:25:07', '2014-11-06 04:13:54');
INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES ('100', '58', '30', 'quam', '1995-11-22 08:23:52', '1989-07-17 10:26:04');


drop table if exists photos;
create table photos(
	id serial primary key,
	filename varchar(200),
	user_id bigint unsigned not null,
	description text,
	created_at datetime default current_timestamp,
	foreign key (user_id) references users(id)
);


INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('1', 'illo', '69', 'Perspiciatis dolor aperiam id blanditiis impedit.', '1981-04-13 05:26:10');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('2', 'ducimus', '12', 'Provident sit velit facere repellendus velit alias.', '1982-02-26 12:08:46');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('3', 'quia', '30', 'Expedita culpa architecto omnis voluptatem deserunt.', '1971-03-31 13:37:12');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('4', 'occaecati', '60', 'Molestias excepturi ut voluptas aut non.', '1976-09-28 08:01:01');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('5', 'est', '17', 'Cupiditate maxime consequatur et.', '2016-01-28 06:40:10');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('6', 'exercitationem', '1', 'Sint quia rem qui.', '2008-10-24 14:45:23');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('7', 'eius', '76', 'Dolor doloribus quae eaque a rerum.', '2005-09-26 00:16:09');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('8', 'est', '32', 'Et repudiandae ut perspiciatis earum dolore ratione.', '2014-05-02 12:31:53');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('9', 'corrupti', '9', 'Repellat aut culpa voluptate eligendi.', '1977-10-22 05:51:36');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('10', 'in', '14', 'Quis laboriosam vel vitae voluptatem.', '1973-07-26 05:11:18');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('11', 'dolor', '31', 'Fugit sed incidunt voluptatem sequi a quo.', '1988-11-09 09:26:11');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('12', 'ab', '80', 'Vel qui eum in et sed.', '1980-05-15 12:52:40');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('13', 'eaque', '26', 'Voluptate est sequi non eius et omnis in.', '1995-09-06 00:41:57');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('14', 'quibusdam', '50', 'Tempora ea sint qui odio.', '2004-04-14 17:22:06');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('15', 'sit', '14', 'Cupiditate et harum est quaerat non ipsam adipisci.', '2002-11-10 02:28:32');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('16', 'suscipit', '99', 'Corporis inventore autem recusandae.', '1983-11-04 00:13:40');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('17', 'vero', '73', 'Nisi aliquid quo sed fuga adipisci et.', '1986-03-19 20:52:38');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('18', 'est', '70', 'Maiores dolorum dolores ut voluptas.', '2018-07-12 15:37:38');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('19', 'laboriosam', '96', 'Veritatis non labore illum nobis ut.', '2006-10-07 02:49:19');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('20', 'impedit', '4', 'Et quas iusto aut voluptates illo.', '2010-10-18 13:25:21');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('21', 'eos', '92', 'Placeat sunt nostrum est.', '2001-05-21 08:17:46');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('22', 'voluptas', '39', 'Et porro eos saepe eos eum distinctio.', '2006-04-06 03:51:48');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('23', 'eos', '74', 'Temporibus recusandae enim voluptas cupiditate aut et.', '1978-07-07 00:13:03');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('24', 'repudiandae', '51', 'Corrupti ea quia enim laudantium commodi rerum sit.', '2003-12-20 04:19:38');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('25', 'assumenda', '21', 'Aliquam nostrum eum corporis similique.', '1984-01-24 13:20:38');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('26', 'est', '41', 'Nam est impedit molestias et et quo.', '2012-07-06 19:48:40');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('27', 'est', '8', 'Autem atque tempora eaque quia magnam vero quia.', '2015-12-11 23:22:18');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('28', 'beatae', '40', 'Ut quidem aperiam vitae aut.', '2005-05-06 14:21:45');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('29', 'unde', '68', 'Illo qui hic facilis quos ea.', '1999-03-24 03:41:40');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('30', 'magni', '39', 'Aut nihil voluptate quis voluptatem sapiente magni mollitia velit.', '2007-02-01 03:47:42');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('31', 'quae', '72', 'Neque adipisci perferendis blanditiis.', '1995-08-19 06:53:47');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('32', 'optio', '36', 'Possimus accusantium temporibus nihil voluptatem est sit fuga quia.', '2019-10-29 01:41:12');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('33', 'porro', '51', 'Quis beatae accusamus quis sapiente reprehenderit unde quidem vero.', '1970-01-01 11:43:00');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('34', 'sed', '2', 'Sint commodi et ut sint sed est eligendi.', '2016-11-11 08:28:28');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('35', 'ex', '95', 'Eos quas sed totam distinctio aspernatur ad in.', '2015-11-14 16:58:24');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('36', 'magni', '67', 'Quia quia architecto ipsa voluptas.', '1987-06-14 11:05:49');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('37', 'in', '3', 'A ut eos voluptatum praesentium voluptatem consequatur accusamus.', '1983-01-17 18:08:01');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('38', 'dignissimos', '71', 'Molestias qui omnis beatae.', '2009-06-07 11:46:54');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('39', 'eos', '99', 'Esse enim et repudiandae asperiores unde modi quasi.', '1993-09-26 20:08:23');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('40', 'omnis', '11', 'Enim est at voluptatibus praesentium et beatae esse est.', '1979-07-23 06:23:08');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('41', 'consectetur', '85', 'Doloremque nobis sed consequatur aliquid.', '2010-06-05 11:00:34');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('42', 'officiis', '29', 'Maiores numquam maiores voluptate tempora labore est.', '2001-01-18 08:08:38');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('43', 'maxime', '91', 'Accusamus exercitationem aut iure sit quasi.', '1996-04-08 08:54:48');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('44', 'neque', '10', 'Repudiandae similique qui at ut.', '2016-01-23 11:01:29');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('45', 'qui', '79', 'Voluptatem non cum quos doloribus molestiae corporis architecto ea.', '2004-11-18 14:49:22');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('46', 'autem', '5', 'Quis voluptate perspiciatis possimus libero.', '2019-11-18 08:06:51');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('47', 'natus', '9', 'Pariatur nesciunt quidem quaerat perferendis aut et sed non.', '1985-05-07 17:52:28');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('48', 'aliquid', '51', 'Temporibus dolor illum ut veritatis accusantium fuga.', '1982-06-20 00:02:46');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('49', 'voluptas', '74', 'Error soluta dolores molestias aut libero.', '1991-10-05 07:52:10');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('50', 'deleniti', '5', 'Aut a impedit rerum mollitia illo.', '1984-12-07 03:46:21');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('51', 'explicabo', '55', 'Velit voluptas itaque voluptatem.', '2019-07-13 00:33:29');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('52', 'ea', '66', 'Eveniet libero sed quidem corrupti odio nihil.', '1971-01-01 10:56:52');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('53', 'qui', '44', 'Porro voluptate est sunt blanditiis alias.', '1989-06-19 07:48:29');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('54', 'eligendi', '28', 'Ut aut blanditiis sint.', '2008-12-04 12:07:52');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('55', 'est', '16', 'Qui reprehenderit asperiores omnis dolorem rerum deleniti quibusdam.', '1998-12-28 13:16:33');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('56', 'voluptates', '64', 'Voluptatibus dolores eum distinctio maxime fugit laudantium tempora.', '2013-02-22 23:45:29');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('57', 'ut', '69', 'Debitis ut non excepturi modi quo.', '2017-07-16 21:31:57');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('58', 'assumenda', '23', 'Qui accusamus a hic fugiat sunt dolores eum.', '1971-04-13 02:20:57');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('59', 'non', '4', 'Doloribus nemo iure vitae similique minima maiores.', '1976-08-22 09:58:53');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('60', 'expedita', '36', 'Blanditiis esse aspernatur molestias vel reiciendis officiis.', '1988-10-09 07:50:33');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('61', 'excepturi', '62', 'Odio voluptatum nemo et placeat omnis incidunt.', '2009-05-20 18:15:25');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('62', 'eos', '76', 'Ab quam aut dolores laboriosam animi.', '1981-06-04 09:09:31');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('63', 'corporis', '71', 'Numquam voluptate eos in.', '1976-02-10 16:14:31');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('64', 'et', '12', 'Consequatur cum dolores recusandae.', '2008-08-23 14:43:57');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('65', 'corrupti', '77', 'Dignissimos quo et voluptates animi aut totam dolore debitis.', '2007-07-29 02:19:15');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('66', 'libero', '66', 'Architecto ducimus nobis iste qui deleniti.', '2016-09-23 22:39:29');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('67', 'voluptatem', '79', 'Omnis incidunt rerum quia suscipit odio impedit.', '1970-07-04 17:00:21');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('68', 'sit', '79', 'Sed error quo adipisci enim et fuga et.', '2016-04-28 03:21:01');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('69', 'ut', '36', 'Eum et maxime neque voluptatem.', '1975-07-03 15:27:29');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('70', 'atque', '77', 'Eos placeat tempora amet at tempore est est.', '2001-10-02 22:19:36');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('71', 'qui', '90', 'Est laboriosam molestiae alias atque ut facere quibusdam.', '1998-09-12 18:29:27');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('72', 'deserunt', '20', 'Ut atque est velit dignissimos.', '1998-05-14 18:16:09');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('73', 'dolores', '6', 'Sit dolorem et consequatur tempore et.', '1980-04-07 17:30:02');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('74', 'dignissimos', '81', 'Non commodi cupiditate nostrum molestias animi dolor.', '1975-11-08 10:54:59');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('75', 'sint', '29', 'Vel a officiis cupiditate officia ex vel.', '2016-02-05 03:44:02');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('76', 'pariatur', '84', 'Deleniti voluptas dolorem aut et commodi vel delectus.', '1981-05-09 15:58:54');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('77', 'excepturi', '85', 'Accusantium neque eos cupiditate eos quibusdam.', '1989-10-28 07:12:26');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('78', 'earum', '38', 'Eos molestiae in vel et blanditiis et.', '2008-08-31 12:13:55');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('79', 'et', '35', 'Molestiae eum et labore earum.', '2013-04-22 01:49:23');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('80', 'quia', '59', 'Esse ut assumenda vitae tenetur quis.', '2001-11-29 09:18:48');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('81', 'ab', '42', 'Aut alias reprehenderit quas delectus.', '1980-02-28 09:54:28');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('82', 'consequatur', '89', 'Facere harum provident iste sit quam voluptate accusantium est.', '1978-01-24 08:18:17');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('83', 'illo', '24', 'Fuga earum modi natus qui ut unde facere quia.', '1972-04-24 13:34:01');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('84', 'quasi', '85', 'Tempore laboriosam dicta cupiditate ut.', '1990-03-14 21:31:47');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('85', 'et', '17', 'Voluptatum laboriosam praesentium numquam eos consequuntur et doloribus.', '2009-07-08 11:57:43');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('86', 'fugiat', '39', 'Sapiente dolorum eaque debitis nam iste quos qui.', '2020-04-03 16:44:29');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('87', 'ut', '49', 'Explicabo aperiam ut nam occaecati nostrum accusantium esse.', '2005-07-16 05:42:00');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('88', 'iusto', '86', 'Assumenda facere et accusamus excepturi omnis.', '2010-05-14 07:52:02');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('89', 'omnis', '62', 'Molestiae fugit voluptatem possimus ab non.', '1982-08-29 02:41:09');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('90', 'maiores', '52', 'Aut voluptates distinctio tempora excepturi autem.', '1972-08-11 23:38:26');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('91', 'ut', '21', 'Accusantium consectetur velit eius ut.', '1984-07-09 12:32:59');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('92', 'quod', '23', 'Qui debitis magni consequatur repellat perspiciatis.', '2011-04-24 09:38:03');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('93', 'aut', '28', 'Minus laboriosam omnis sint accusamus et numquam.', '1974-03-26 22:17:30');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('94', 'dolore', '92', 'Voluptates et et sapiente voluptatem quasi quibusdam.', '1981-05-28 20:21:01');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('95', 'magnam', '35', 'Ipsam porro laudantium ut est dolorem deleniti.', '2019-01-09 21:23:09');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('96', 'quis', '4', 'Id et incidunt maiores nisi quis quidem alias.', '1970-08-12 17:45:48');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('97', 'consequatur', '57', 'Enim dolorem officiis nostrum accusamus reprehenderit reprehenderit omnis.', '2013-07-23 21:13:14');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('98', 'quia', '13', 'Et est deleniti alias repellat pariatur.', '2019-01-19 08:12:11');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('99', 'aut', '83', 'Modi neque velit nam.', '1979-12-12 00:23:08');
INSERT INTO `photos` (`id`, `filename`, `user_id`, `description`, `created_at`) VALUES ('100', 'est', '92', 'Cumque nesciunt quibusdam similique dolorem.', '1974-04-11 08:15:30');


drop table if exists user_likes;
create table user_likes(
	user_id bigint unsigned not null,
	target_user_id bigint unsigned not null,
	created_at datetime default current_timestamp,
	primary key (user_id, target_user_id),
	foreign key (user_id) references users(id),
	foreign key (target_user_id) references users(id)
);

INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('1', '9', '1983-06-25 01:56:17');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('2', '25', '2014-10-21 08:23:32');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('2', '75', '1980-08-11 23:36:42');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('3', '53', '1972-03-25 01:51:42');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('4', '55', '1993-03-13 18:34:01');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('5', '4', '1981-04-27 23:33:28');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('5', '39', '2004-08-04 20:51:26');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('6', '75', '1992-09-26 20:19:58');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('9', '45', '2009-08-02 07:44:00');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('11', '38', '1995-06-07 14:58:32');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('11', '55', '1989-08-19 21:47:48');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('13', '5', '1973-09-28 10:16:46');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('13', '48', '2001-08-02 16:28:37');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('14', '14', '1977-02-01 22:01:06');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('14', '62', '1992-10-12 05:19:03');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('15', '4', '1970-11-02 19:14:15');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('15', '84', '1977-05-08 23:51:47');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('16', '19', '1971-10-22 15:28:12');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('16', '88', '1987-12-21 16:28:38');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('17', '29', '2006-11-28 19:25:04');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('21', '13', '1992-05-22 13:17:01');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('22', '67', '1979-04-20 11:15:08');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('22', '84', '1976-02-20 03:37:12');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('23', '71', '1999-11-29 02:07:13');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('26', '87', '1999-12-29 03:10:05');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('27', '47', '1986-05-31 16:55:09');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('27', '55', '1970-05-06 19:21:20');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('28', '47', '1991-10-29 07:12:00');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('30', '22', '2017-03-31 07:56:28');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('32', '30', '1985-05-07 02:35:42');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('34', '82', '2017-08-31 23:44:42');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('37', '79', '2013-03-26 20:44:32');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('38', '41', '1980-04-06 12:10:17');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('39', '9', '1984-07-11 20:24:02');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('41', '31', '1982-07-27 07:20:04');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('41', '88', '1996-08-02 08:10:46');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('43', '7', '1990-12-06 10:21:08');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('43', '15', '1982-01-19 08:09:46');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('44', '1', '1986-10-15 06:14:38');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('44', '5', '1976-03-10 14:11:39');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('45', '65', '2008-12-12 07:18:37');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('46', '79', '1971-06-26 05:51:32');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('46', '83', '2020-07-29 06:21:28');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('47', '16', '2018-01-26 01:59:56');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('48', '74', '1999-09-14 12:03:58');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('49', '77', '1981-12-09 07:50:01');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('50', '59', '2005-07-02 11:15:03');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('50', '64', '2009-05-01 12:45:17');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('51', '17', '2005-10-01 22:28:58');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('53', '87', '1996-08-06 13:52:46');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('54', '70', '1999-02-12 11:22:55');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('55', '35', '2019-12-20 16:03:34');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('55', '38', '1970-01-03 21:31:06');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('55', '39', '2008-12-19 08:22:13');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('57', '35', '1980-12-11 22:50:50');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('59', '61', '1997-05-31 21:04:47');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('60', '51', '1991-08-20 06:52:09');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('60', '64', '2000-06-30 08:07:44');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('61', '37', '1970-04-27 16:05:44');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('61', '46', '1983-11-12 13:53:23');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('62', '34', '1977-09-28 12:39:06');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('62', '70', '1996-04-15 04:39:11');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('63', '12', '1976-02-27 23:38:00');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('64', '25', '1990-01-11 00:18:52');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('64', '66', '1974-09-09 15:44:46');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('65', '89', '1976-09-03 22:53:27');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('66', '10', '1995-08-21 08:57:09');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('66', '99', '2009-10-28 11:06:15');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('67', '10', '1984-09-24 09:52:50');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('68', '87', '1982-04-26 15:56:07');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('69', '60', '1977-06-18 07:43:17');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('69', '79', '1980-01-31 03:51:14');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('71', '81', '2019-03-29 00:09:55');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('73', '13', '1973-10-05 05:53:26');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('75', '26', '1984-12-26 06:06:15');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('76', '21', '2011-06-18 03:13:01');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('77', '34', '1983-10-18 05:16:26');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('78', '81', '1987-07-17 18:18:18');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('79', '32', '1990-03-09 05:28:09');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('79', '49', '1979-09-19 03:26:56');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('80', '74', '1978-12-16 07:54:58');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('83', '98', '2001-11-23 09:02:46');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('86', '19', '1996-02-19 19:33:19');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('87', '77', '2017-06-13 02:48:45');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('88', '6', '2002-05-01 09:05:12');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('88', '11', '2005-10-20 14:31:36');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('88', '25', '1976-10-08 20:55:24');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('89', '36', '2008-09-23 21:08:32');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('89', '80', '2008-05-17 21:01:30');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('89', '81', '2004-09-12 21:41:54');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('90', '57', '2003-06-29 06:29:58');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('92', '1', '2000-11-25 12:03:56');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('93', '89', '2013-07-03 08:53:36');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('94', '61', '2014-04-26 21:40:47');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('95', '59', '2009-08-10 05:53:21');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('96', '22', '1996-09-15 04:11:12');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('96', '69', '1972-08-20 03:36:25');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('96', '81', '1994-04-17 04:00:23');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('98', '31', '1973-09-04 11:23:45');
INSERT INTO `user_likes` (`user_id`, `target_user_id`, `created_at`) VALUES ('99', '58', '2004-10-27 00:39:18');


drop table if exists post_likes;
create table post_likes(
	user_id bigint unsigned not null,
	post_id bigint unsigned not null,
	created_at datetime default current_timestamp,
	primary key (user_id, post_id),
	foreign key (user_id) references users(id),
	foreign key (post_id) references posts(id)
);

INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('3', '87', '2001-09-18 00:33:54');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('3', '96', '1985-11-01 20:02:35');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('4', '42', '2006-10-24 08:54:26');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('4', '81', '2004-07-25 23:21:14');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('5', '76', '2005-02-13 10:32:53');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('8', '100', '2009-05-24 14:23:17');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('9', '20', '1994-09-19 02:50:27');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('9', '100', '1998-02-06 22:46:36');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('10', '44', '2020-10-25 22:29:38');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('13', '52', '2012-10-11 08:01:09');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('14', '17', '1982-03-31 10:48:20');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('14', '43', '2010-09-07 15:57:33');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('14', '71', '2018-05-25 20:35:50');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('16', '98', '2012-05-05 12:11:03');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('18', '26', '1977-07-17 09:12:38');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('18', '61', '1988-07-13 12:43:20');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('19', '60', '1970-11-22 04:29:58');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('20', '48', '1982-05-27 15:21:38');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('23', '17', '1988-10-11 07:30:55');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('23', '18', '1982-11-06 02:40:02');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('23', '37', '1987-09-17 10:42:23');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('27', '10', '1984-02-12 21:19:18');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('27', '28', '1981-10-17 06:28:26');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('28', '46', '2000-08-29 12:42:34');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('28', '66', '2017-09-17 12:12:12');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('28', '68', '2019-09-07 08:21:35');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('28', '69', '1983-10-15 12:40:53');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('29', '32', '1981-08-29 18:08:51');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('29', '87', '1980-07-26 19:28:59');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('30', '30', '2013-11-27 09:05:20');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('30', '51', '2006-04-30 07:04:31');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('34', '68', '2002-02-08 15:10:20');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('35', '18', '1991-05-05 04:06:32');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('39', '46', '1971-11-19 21:39:34');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('40', '93', '1975-08-29 17:35:09');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('41', '31', '2003-10-01 18:53:16');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('41', '34', '2012-07-02 23:18:29');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('41', '41', '1998-07-09 21:53:48');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('41', '68', '2008-02-28 08:11:47');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('43', '11', '1993-10-31 05:34:48');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('45', '9', '1974-01-30 08:54:22');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('46', '52', '2003-06-06 10:30:06');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('46', '75', '1991-12-31 22:38:14');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('46', '81', '2004-02-09 14:47:41');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('47', '13', '1973-01-27 23:17:24');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('48', '69', '1986-07-25 03:01:18');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('49', '80', '1983-02-05 04:02:17');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('50', '45', '1995-01-30 19:39:06');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('50', '59', '1992-05-31 20:37:42');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('51', '1', '1980-09-10 15:56:19');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('51', '7', '2009-10-27 09:55:01');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('53', '26', '2016-12-07 16:13:41');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('53', '53', '1980-08-25 21:14:57');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('54', '2', '2013-04-18 14:02:43');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('54', '19', '1981-02-22 05:43:38');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('54', '84', '2003-04-04 06:35:04');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('55', '23', '2003-09-13 23:01:06');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('57', '63', '1981-03-13 20:04:53');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('58', '65', '2009-01-29 20:19:14');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('59', '11', '1994-09-18 22:55:23');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('59', '16', '2001-12-18 05:07:04');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('59', '52', '2005-01-15 01:42:57');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('60', '35', '2014-06-18 10:43:24');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('60', '82', '2016-04-30 20:09:47');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('60', '93', '1975-08-21 13:47:27');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('62', '44', '1993-11-01 15:55:25');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('64', '23', '1974-05-06 19:44:34');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('65', '73', '1983-04-02 18:57:14');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('67', '17', '1986-03-10 01:52:19');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('67', '58', '1995-01-21 15:54:30');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('68', '75', '1980-07-29 20:56:05');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('70', '3', '2001-07-23 07:54:39');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('71', '82', '2002-10-12 21:53:25');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('73', '29', '1994-11-01 15:29:02');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('75', '53', '1981-03-17 03:22:52');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('76', '80', '1987-09-21 19:08:03');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('77', '40', '1992-08-21 05:33:56');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('78', '88', '1973-04-25 09:13:31');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('79', '22', '2015-11-07 03:15:22');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('79', '42', '1971-11-10 01:37:33');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('84', '26', '2008-09-09 11:32:07');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('86', '94', '1992-07-09 08:49:18');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('87', '55', '1980-07-03 05:04:38');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('88', '35', '1972-01-16 20:03:12');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('89', '75', '1992-03-09 04:11:54');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('89', '82', '1999-10-12 20:18:40');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('92', '18', '1993-11-23 20:56:15');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('92', '59', '2003-07-27 10:57:02');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('92', '71', '2007-12-01 21:04:24');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('93', '71', '1974-07-27 20:46:03');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('93', '72', '1975-12-15 16:16:16');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('94', '8', '1981-10-18 16:21:06');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('94', '15', '1997-08-19 14:23:44');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('94', '26', '1996-07-02 04:01:28');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('94', '99', '1995-12-01 03:07:35');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('97', '95', '1986-07-13 00:34:22');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('98', '13', '1994-10-05 22:41:01');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('99', '96', '1983-06-13 06:32:35');
INSERT INTO `post_likes` (`user_id`, `post_id`, `created_at`) VALUES ('100', '87', '1986-06-27 20:04:02');


drop table if exists photo_likes;
create table photo_likes(
	user_id bigint unsigned not null,
	photo_id bigint unsigned not null,
	created_at datetime default current_timestamp,
	primary key (user_id, photo_id),
	foreign key (user_id) references users(id),
	foreign key (photo_id) references photos(id)
);


INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('1', '27', '2012-12-03 19:41:13');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('2', '25', '1974-02-15 01:58:44');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('2', '29', '1979-02-23 23:49:22');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('2', '50', '1984-09-15 14:42:04');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('4', '3', '1996-11-04 22:55:49');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('4', '12', '1984-03-02 18:06:14');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('4', '72', '2000-04-05 09:43:42');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('5', '18', '1985-01-09 00:26:53');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('6', '53', '1990-07-14 21:35:07');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('6', '78', '2010-08-31 23:23:07');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('6', '98', '1987-01-24 08:46:19');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('8', '18', '2013-08-05 22:07:36');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('9', '38', '2020-01-10 16:09:12');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('11', '53', '2020-03-13 01:08:19');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('12', '36', '2002-05-21 03:57:12');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('12', '45', '1985-10-12 10:30:05');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('13', '4', '1999-06-18 12:37:31');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('14', '77', '2009-05-12 03:30:27');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('15', '10', '2018-11-17 00:09:53');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('15', '38', '1979-03-11 00:06:12');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('16', '93', '1988-07-04 19:20:28');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('17', '29', '1978-05-05 20:59:16');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('19', '4', '1996-12-02 22:01:25');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('19', '15', '2000-08-28 20:31:18');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('20', '21', '1977-06-28 04:42:02');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('24', '51', '1995-11-28 18:07:10');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('24', '98', '1993-05-02 05:44:45');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('25', '98', '1984-02-06 01:37:21');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('26', '38', '1971-06-02 05:26:53');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('27', '69', '1971-02-21 00:57:17');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('28', '35', '2013-11-24 06:07:06');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('28', '60', '1974-03-27 10:56:54');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('29', '78', '1971-08-12 10:33:44');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('31', '91', '1978-03-23 18:59:34');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('34', '17', '1983-12-08 19:43:20');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('34', '57', '1974-02-02 00:55:45');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('34', '73', '2019-01-29 18:07:50');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('34', '78', '1997-07-12 13:19:03');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('34', '89', '2019-09-13 14:12:19');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('35', '60', '1987-11-04 12:40:29');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('36', '31', '2003-03-18 08:49:22');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('42', '2', '2008-10-12 02:45:02');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('42', '53', '1970-11-21 04:08:34');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('42', '84', '2020-03-19 03:33:03');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('43', '59', '2014-04-22 20:17:45');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('43', '75', '1997-07-29 21:39:56');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('44', '58', '2019-11-03 22:46:08');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('45', '17', '1997-07-28 06:41:45');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('48', '30', '1971-04-14 10:29:27');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('49', '4', '2013-09-09 00:50:05');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('49', '59', '1988-06-15 17:56:41');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('49', '66', '2002-12-11 15:27:54');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('50', '19', '1988-04-24 03:28:17');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('50', '24', '1982-10-21 05:33:28');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('52', '31', '1990-06-30 20:06:03');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('52', '91', '2005-03-05 02:25:34');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('53', '29', '2004-01-30 14:22:52');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('54', '4', '2006-03-28 08:25:45');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('54', '98', '1976-06-04 20:26:21');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('55', '7', '2003-05-05 03:24:59');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('55', '90', '2018-07-14 09:39:17');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('57', '3', '2000-09-06 14:37:38');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('57', '67', '2010-08-18 18:17:51');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('58', '2', '1993-12-24 16:15:08');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('58', '17', '1991-04-22 23:43:56');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('61', '10', '1975-05-14 12:50:59');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('61', '31', '1989-07-30 00:17:27');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('62', '24', '1973-08-19 22:11:06');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('63', '34', '2010-07-23 19:49:46');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('63', '86', '1988-03-31 22:13:40');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('64', '36', '1999-11-17 05:03:59');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('65', '38', '2003-09-04 15:22:14');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('65', '39', '1970-09-05 12:53:31');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('65', '68', '2008-10-16 00:11:19');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('66', '11', '2005-10-26 21:55:14');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('67', '86', '1997-05-21 07:28:48');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('67', '98', '2015-05-31 14:38:01');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('69', '61', '1977-12-20 06:12:12');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('70', '32', '1982-03-16 01:53:37');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('70', '38', '1985-04-02 07:05:48');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('70', '44', '2001-04-14 10:34:06');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('70', '74', '1992-05-29 04:42:38');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('70', '92', '1999-09-24 03:12:35');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('72', '98', '1996-04-15 12:37:53');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('74', '1', '1979-09-17 19:21:24');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('75', '19', '1994-06-05 17:33:02');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('76', '29', '1986-08-11 19:36:44');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('77', '1', '1989-11-30 03:20:41');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('77', '44', '2002-03-10 11:23:15');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('79', '47', '1981-07-24 05:20:55');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('79', '73', '2020-05-27 11:42:45');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('80', '26', '1981-02-08 16:37:42');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('84', '32', '2002-09-26 08:22:03');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('86', '9', '1976-11-06 09:39:00');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('87', '76', '1992-07-21 14:47:37');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('89', '25', '1974-05-07 13:23:19');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('91', '68', '1981-07-04 16:59:56');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('93', '32', '1985-08-07 13:36:44');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('100', '33', '1983-04-22 08:49:09');
INSERT INTO `photo_likes` (`user_id`, `photo_id`, `created_at`) VALUES ('100', '62', '2014-07-12 22:46:18');




