-- Создаём БД
DROP DATABASE IF EXISTS vk;
CREATE DATABASE vk;

-- Делаем её текущей
USE vk;

DESC users ;
SELECT * FROM users LIMIT 10;
UPDATE users SET updated_at = NOW() WHERE updated_at < created_at;


-- Создаём таблицу пользователей
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY COMMENT "Идентификатор строки", 
  first_name VARCHAR(100) NOT NULL COMMENT "Имя пользователя",
  last_name VARCHAR(100) NOT NULL COMMENT "Фамилия пользователя",
  email VARCHAR(100) NOT NULL UNIQUE COMMENT "Почта",
  phone VARCHAR(100) NOT NULL UNIQUE COMMENT "Телефон",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
  )COMMENT "пользователи";
 
 INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('1', 'Missouri', 'Strosin', 'morar.filiberto@example.net', '337-777-4177x6736', '2018-08-27 19:08:26', '2012-09-30 04:32:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('2', 'Felicity', 'Kunze', 'jacobs.raven@example.net', '599.347.7176x117', '2010-12-11 15:51:04', '2018-05-03 08:13:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('3', 'Michel', 'Schoen', 'arlie85@example.com', '(384)982-1738x9053', '2015-01-08 14:09:46', '2014-07-03 17:04:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('4', 'Myron', 'McDermott', 'gkutch@example.org', '(644)297-4328x13685', '2019-06-03 19:14:34', '2014-07-06 13:36:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('5', 'Earline', 'Gutkowski', 'ieichmann@example.net', '1-011-816-3626x49272', '2017-05-28 12:23:51', '2010-12-22 13:10:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('6', 'Willie', 'Wilderman', 'robert32@example.com', '(700)649-0921', '2014-02-16 23:30:34', '2013-11-17 15:35:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('7', 'Lemuel', 'Spinka', 'xmcdermott@example.org', '282.258.8513', '2014-11-08 16:53:32', '2016-09-21 20:21:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('8', 'Kaley', 'Schuster', 'romaguera.jessica@example.org', '444-940-6324x590', '2019-09-02 22:54:59', '2018-03-03 08:45:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('9', 'Lily', 'Murazik', 'morar.joey@example.net', '593.607.7109', '2016-08-17 19:09:02', '2018-01-18 11:19:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('10', 'Eulah', 'Stracke', 'gregg21@example.org', '+19(0)5621198211', '2018-11-18 03:29:55', '2016-12-14 04:57:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('11', 'Maximo', 'Gottlieb', 'theo32@example.net', '703.057.2886x842', '2012-06-02 19:25:07', '2015-05-24 20:51:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('12', 'Rowland', 'Johnson', 'price.danial@example.com', '(694)382-2443', '2019-09-23 10:09:08', '2014-11-26 05:28:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('13', 'Vaughn', 'Rice', 'morton19@example.org', '752.146.1911x1219', '2014-02-06 14:35:51', '2012-07-16 08:53:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('14', 'Greg', 'Wolff', 'glennie.o\'conner@example.org', '1-718-327-7564x8481', '2012-04-04 19:18:00', '2014-08-21 15:19:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('15', 'Kailey', 'Terry', 'vbraun@example.net', '(959)956-7161', '2016-03-27 23:10:02', '2017-09-23 11:51:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('16', 'Alene', 'Herman', 'afisher@example.com', '1-975-738-3955', '2014-11-05 02:45:00', '2013-03-11 10:44:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('17', 'Stuart', 'Mayert', 'flavie73@example.net', '597.068.4355x1803', '2018-01-11 22:56:06', '2018-01-13 08:38:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('18', 'Lura', 'Sauer', 'grodriguez@example.net', '041-499-5459x6194', '2016-07-26 18:57:20', '2019-05-11 19:01:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('19', 'Tomas', 'Grady', 'berta.ryan@example.org', '(795)837-7886', '2015-11-19 08:40:06', '2013-08-13 07:39:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('20', 'Freda', 'Balistreri', 'kohler.reyes@example.org', '784.218.3278', '2011-03-11 09:06:06', '2016-02-27 18:18:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('21', 'Loma', 'Pollich', 'keanu.farrell@example.org', '1-518-148-7928x609', '2018-07-14 06:44:39', '2015-02-22 11:09:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('22', 'Chasity', 'Beer', 'reilly.regan@example.net', '201.410.7273x769', '2012-10-18 23:38:07', '2012-06-30 07:18:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('23', 'Destinee', 'Quitzon', 'nkessler@example.com', '01020511546', '2016-02-18 09:53:09', '2018-08-17 13:34:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('24', 'Lorna', 'Rippin', 'langosh.danny@example.org', '1-495-787-6437x467', '2014-12-09 23:04:42', '2011-06-07 09:47:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('25', 'Demetris', 'Rogahn', 'gino.rosenbaum@example.org', '04885211233', '2013-10-04 18:15:29', '2011-05-28 23:36:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('26', 'Rowland', 'Hartmann', 'leora80@example.net', '1-761-713-4050x709', '2013-12-16 16:01:19', '2017-07-06 22:31:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('27', 'Leola', 'Dietrich', 'o\'connell.zena@example.net', '1-634-837-1762x24299', '2012-06-22 02:46:46', '2016-09-10 11:09:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('28', 'Esmeralda', 'Herman', 'ilene.bernier@example.org', '1-763-036-9437', '2014-03-05 04:59:56', '2014-03-27 21:21:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('29', 'Zelda', 'Zieme', 'nader.warren@example.net', '1-948-216-0424', '2019-09-02 23:42:49', '2016-03-20 01:16:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('30', 'Nya', 'Bayer', 'brakus.margarita@example.com', '560.968.1060x9300', '2013-07-12 02:27:38', '2016-02-14 07:38:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('31', 'Billie', 'Streich', 'vgutmann@example.com', '1-015-785-6310x1414', '2016-11-23 16:18:19', '2016-08-22 11:22:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('32', 'Emmie', 'Rosenbaum', 'kole33@example.org', '09746604905', '2011-01-31 16:55:49', '2013-01-01 04:49:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('33', 'Aidan', 'Nitzsche', 'mitchell.america@example.org', '722.206.3073x2736', '2014-09-14 23:10:44', '2019-08-19 06:41:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('34', 'Heaven', 'Hettinger', 'umcclure@example.org', '1-109-992-1725', '2011-10-16 16:46:12', '2019-03-13 13:22:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('35', 'Austin', 'Nikolaus', 'arvilla43@example.org', '(533)973-9080', '2016-04-06 13:05:55', '2014-08-16 08:49:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('36', 'Olaf', 'Marvin', 'kieran.donnelly@example.net', '109.910.4559', '2013-08-31 02:07:50', '2012-05-19 04:04:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('37', 'Vito', 'Gaylord', 'lorenz.gislason@example.org', '270.946.2172', '2012-01-19 10:26:13', '2019-04-01 05:02:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('38', 'Blanca', 'Beatty', 'ralph33@example.org', '005-187-2778', '2018-09-09 19:41:51', '2019-11-23 11:00:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('39', 'Amiya', 'Larson', 'bwuckert@example.org', '1-828-415-4059', '2012-05-06 11:10:32', '2012-05-05 16:59:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('40', 'Kendra', 'McClure', 'zlind@example.org', '(087)991-0992', '2018-09-27 22:48:19', '2015-07-20 07:06:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('41', 'Leland', 'Schmidt', 'terrill.koepp@example.com', '+34(0)2817313791', '2012-05-28 01:19:01', '2018-09-14 16:54:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('42', 'Roger', 'Bartoletti', 'britney.gleichner@example.org', '+22(4)5394192218', '2010-12-15 04:13:54', '2015-02-28 06:28:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('43', 'Vidal', 'Runolfsdottir', 'clementine.casper@example.com', '1-915-815-9860x926', '2015-02-08 18:02:21', '2014-09-07 08:12:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('44', 'Hugh', 'Glover', 'qbednar@example.net', '(910)799-3502x5259', '2015-06-17 02:21:16', '2014-07-09 04:24:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('45', 'Austyn', 'Altenwerth', 'mckenzie.barton@example.org', '1-086-279-2870x452', '2015-12-26 22:44:50', '2017-04-05 04:30:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('46', 'Leila', 'Hackett', 'mcdermott.alanis@example.org', '05032800575', '2015-10-03 01:04:00', '2016-06-15 03:29:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('47', 'Linnea', 'Towne', 'zulauf.frederique@example.com', '02369172110', '2016-12-15 18:33:49', '2019-12-25 03:57:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('48', 'Pete', 'Hettinger', 'keenan46@example.net', '1-562-608-3062', '2019-10-24 17:33:32', '2018-01-01 06:00:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('49', 'Keagan', 'Bins', 'mattie93@example.com', '010.333.7268x5806', '2016-05-15 03:06:50', '2016-12-27 09:37:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('50', 'Marquis', 'Bashirian', 'hazel.miller@example.net', '183-276-5239x168', '2014-07-31 01:37:49', '2012-11-13 07:50:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('51', 'Caterina', 'Keeling', 'aylin.schuster@example.com', '605-150-8320x43579', '2016-04-28 00:39:31', '2019-04-02 01:55:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('52', 'Maggie', 'Parker', 'pstanton@example.org', '1-849-876-9462x089', '2018-06-26 20:42:00', '2018-09-28 12:19:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('53', 'Maurine', 'Schulist', 'troy.bashirian@example.net', '+47(3)8810813719', '2015-05-05 09:45:49', '2020-03-13 23:28:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('54', 'Ryann', 'Maggio', 'astrid.schmidt@example.org', '351.940.7031x596', '2019-12-23 21:45:22', '2017-03-23 06:16:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('55', 'Jacinto', 'Collins', 'cole.leopold@example.com', '+03(4)2810488573', '2016-07-13 00:39:33', '2019-07-15 23:20:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('56', 'Beaulah', 'Dickinson', 'hilpert.daren@example.net', '(987)083-5486', '2015-03-21 21:46:48', '2016-12-18 19:30:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('57', 'Rafael', 'Lesch', 'laury.wehner@example.org', '916.650.2569', '2011-07-29 13:11:18', '2016-10-20 10:44:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('58', 'Jalon', 'Larson', 'fay.eveline@example.net', '1-761-601-5235x504', '2017-04-16 02:29:12', '2014-02-27 16:25:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('59', 'Garett', 'Hahn', 'casimir59@example.net', '(263)478-7358x9727', '2015-03-29 07:58:14', '2016-06-19 02:44:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('60', 'Hermina', 'Mills', 'ledner.aylin@example.org', '(705)281-3282', '2017-08-10 20:35:28', '2020-06-13 21:55:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('61', 'Keith', 'Wilkinson', 'bo38@example.com', '683-718-0094', '2020-09-14 08:39:28', '2013-06-24 05:41:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('62', 'Blaze', 'Klein', 'mathias.strosin@example.com', '1-712-974-8882', '2013-07-28 14:21:29', '2011-09-29 20:27:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('63', 'Beulah', 'Wolf', 'ilegros@example.net', '954-982-0037', '2015-12-29 02:00:49', '2016-01-14 19:05:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('64', 'Marc', 'Simonis', 'daniel.brent@example.com', '821.833.9906x33532', '2011-12-15 09:20:57', '2011-09-01 20:53:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('65', 'Genoveva', 'Luettgen', 'stephanie65@example.com', '032.200.3553', '2011-01-27 17:53:24', '2018-02-20 09:10:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('66', 'Isom', 'Osinski', 'hjenkins@example.net', '078.086.7509', '2014-08-24 21:49:32', '2012-04-27 12:02:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('67', 'Petra', 'Walter', 'sabryna.mueller@example.org', '(130)323-2981', '2014-12-03 12:51:36', '2018-09-06 16:21:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('68', 'Donnell', 'Cartwright', 'grimes.kayleigh@example.com', '03761111601', '2016-09-18 14:12:54', '2016-07-10 18:10:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('69', 'Wellington', 'Welch', 'psatterfield@example.net', '(258)533-0106', '2012-08-22 08:26:16', '2020-04-17 11:17:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('70', 'Giovanni', 'Krajcik', 'oberbrunner.jermey@example.net', '+49(8)7632558641', '2017-03-12 03:52:23', '2017-02-12 08:25:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('71', 'Dallas', 'Howe', 'kschoen@example.org', '(543)877-5015x6646', '2011-07-10 10:24:28', '2011-05-05 04:40:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('72', 'Leonie', 'Emard', 'roxane26@example.net', '1-799-184-5062', '2020-03-06 02:16:04', '2017-05-14 00:27:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('73', 'Niko', 'DuBuque', 'imani.glover@example.org', '676-941-6655x22191', '2013-02-07 16:45:12', '2017-01-04 01:58:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('74', 'Giovani', 'Reilly', 'monique.hickle@example.net', '(384)074-8284x620', '2014-05-08 20:16:16', '2018-03-30 10:50:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('75', 'Golda', 'Considine', 'zcole@example.org', '06437576565', '2016-11-06 19:01:31', '2020-10-08 16:47:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('76', 'Alexander', 'Little', 'leonie17@example.org', '163-125-8473x2744', '2017-06-21 01:08:09', '2020-02-14 08:43:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('77', 'Dawson', 'Williamson', 'jaquan19@example.org', '1-011-431-3039', '2014-05-01 13:11:18', '2016-12-18 00:31:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('78', 'Odie', 'Padberg', 'umarvin@example.org', '08431555934', '2018-03-13 19:49:51', '2016-03-25 13:33:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('79', 'Pinkie', 'Cartwright', 'kunde.ariel@example.com', '358.447.6891x74907', '2018-01-16 17:37:47', '2012-07-17 05:09:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('80', 'Nasir', 'Corwin', 'xschinner@example.com', '648-747-8601', '2014-08-02 01:44:45', '2020-11-03 16:55:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('81', 'Patsy', 'Kuhlman', 'ovonrueden@example.org', '1-274-854-0004x346', '2019-01-14 15:27:54', '2015-06-01 05:38:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('82', 'Presley', 'Schuster', 'jake.gorczany@example.com', '437-053-2179', '2013-02-14 09:58:05', '2015-08-03 07:05:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('83', 'Linnie', 'Bauch', 'audra52@example.org', '+75(7)5543465934', '2016-08-27 21:02:03', '2011-11-09 04:15:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('84', 'Cyril', 'Hane', 'terry.carli@example.com', '(869)282-8626', '2016-08-25 13:16:50', '2014-07-19 02:50:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('85', 'Jailyn', 'Pfannerstill', 'dooley.theron@example.net', '1-752-144-0075', '2013-08-02 11:34:26', '2012-08-22 18:53:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('86', 'Wilfrid', 'Kozey', 'hayes.jaqueline@example.org', '285.425.6556x2788', '2018-11-14 20:26:19', '2014-12-15 22:52:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('87', 'Benjamin', 'Powlowski', 'meta.huel@example.org', '(380)362-1844x12213', '2018-03-16 05:55:41', '2015-07-06 15:14:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('88', 'Wyman', 'O\'Hara', 'mariano.klein@example.net', '1-111-303-8168x04467', '2020-03-07 04:26:07', '2016-04-18 17:24:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('89', 'Wayne', 'Runolfsdottir', 'jeanne37@example.org', '830.620.0886', '2010-11-25 22:16:37', '2015-03-03 19:44:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('90', 'Brody', 'Turner', 'kmclaughlin@example.com', '004-246-8531x82461', '2016-06-13 13:30:08', '2011-09-09 11:26:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('91', 'Emmy', 'Gislason', 'kulas.sincere@example.com', '787-886-5742x301', '2020-09-01 19:11:50', '2019-09-04 23:53:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('92', 'Obie', 'Schuppe', 'lizeth.yundt@example.com', '1-985-099-3593x99660', '2013-12-03 03:10:32', '2012-03-04 16:21:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('93', 'Aurelie', 'Hyatt', 'novella.shanahan@example.com', '(040)716-0861x6987', '2020-01-03 01:44:51', '2020-02-10 07:08:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('94', 'Petra', 'Yost', 'baumbach.evan@example.net', '994-426-1495', '2015-06-19 16:54:21', '2015-03-10 23:54:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('95', 'Keenan', 'O\'Kon', 'freida.hettinger@example.org', '1-562-578-5156x251', '2017-06-04 16:06:22', '2011-02-15 05:51:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('96', 'Tyshawn', 'Cormier', 'qweissnat@example.net', '1-282-672-7757', '2013-07-28 07:49:44', '2014-12-07 01:22:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('97', 'Israel', 'Schowalter', 'altenwerth.carissa@example.org', '477.240.9401x74666', '2013-03-21 17:10:08', '2012-06-04 10:33:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('98', 'Arielle', 'Mosciski', 'zachariah82@example.net', '196-461-1971', '2020-01-29 04:36:01', '2018-09-20 14:02:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('99', 'Chris', 'Kertzmann', 'fpollich@example.org', '989.188.6010x469', '2013-11-05 06:52:00', '2010-12-22 16:39:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('100', 'Sheridan', 'Bechtelar', 'vinnie41@example.com', '631-743-9869', '2014-11-11 23:43:16', '2020-09-21 04:34:55');



-- Таблица status
DROP TABLE IF EXISTS user_status;
CREATE TABLE user_status (
  id SERIAL PRIMARY KEY COMMENT "Ссылка на пользователя", 
  name VARCHAR(50) NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Status"; 

SELECT * FROM user_status LIMIT 10;
INSERT INTO user_status(name) VALUES ('single');
INSERT INTO user_status(name) VALUES ('married');
INSERT INTO user_status(name) VALUES ('too dificult');
INSERT INTO user_status(name) VALUES ('active search');

DESC profiles;
SELECT * FROM profiles LIMIT 10;
UPDATE profiles SET updated_at = NOW() WHERE updated_at < created_at;  #  корректируем даты 

UPDATE profiles SET photo_id = (SELECT FLOOR(1+RAND()*100)); #делаем id на фото до 100, floor= round down

CREATE TEMPORARY TABLE genders (name CHAR(1)); # эта таблица будет видна только в текущей сессии
INSERT INTO genders VALUES ('М'),('Ж');
UPDATE profiles SET gender = (SELECT name FROM genders ORDER BY RAND() LIMIT 1);# лимит- по одному значению выводить


DESC profiles ;
UPDATE profiles SET status = NULL; #сначала обнулим все значения в этом столбе таблицы
ALTER TABLE profiles RENAME COLUMN status TO status_id; # alter - changes structure of table
ALTER TABLE profiles MODIFY COLUMN status_id INT UNSIGNED; # we have changed type of variable

UPDATE profiles SET status_id = 1+FLOOR(RAND()*4); 

-- Таблица профилей
DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles (
  user_id SERIAL PRIMARY KEY COMMENT "Ссылка на пользователя", 
  gender CHAR(1) NOT NULL COMMENT "Пол",
  birthday DATE COMMENT "Дата рождения",
  photo_id INT UNSIGNED COMMENT "Ссылка на основную фотографию пользователя",
  status VARCHAR(30) COMMENT "Текущий статус",
  city VARCHAR(100) COMMENT "Город проживания",
  country VARCHAR(100) COMMENT "Страна проживания",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Профили"; 
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('1', 'm', '1970-10-15', 16037925, 'doloremque', 'Lake Mikelstad', 'Burkina Faso', '2012-12-26 02:41:11', '2014-11-01 17:03:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('2', 'm', '2003-02-28', 6434658, 'qui', 'Leschshire', 'Denmark', '2013-02-24 05:54:30', '2017-05-03 20:50:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('3', 'f', '1981-09-27', 6, 'id', 'West Eleazar', 'Israel', '2015-06-13 08:45:41', '2016-12-12 02:21:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('4', 'f', '1978-12-09', 203018867, 'est', 'Hoytport', 'Uganda', '2020-02-08 16:40:13', '2011-04-05 13:02:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('5', 'f', '1976-05-30', 784569483, 'ad', 'Wendyfort', 'Uzbekistan', '2014-03-08 06:38:59', '2015-09-23 05:22:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('6', 'm', '1993-03-16', 80, 'nostrum', 'New Idellaburgh', 'Grenada', '2014-07-25 13:06:42', '2017-06-17 22:23:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('7', 'f', '1970-01-05', 53837, 'nam', 'Marleyshire', 'Cote d\'Ivoire', '2011-04-10 09:02:29', '2014-06-03 21:53:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('8', 'm', '1992-10-17', 3, 'et', 'Port Florence', 'Vietnam', '2011-07-24 18:21:27', '2014-11-27 17:27:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('9', 'm', '2011-06-19', 7351, 'itaque', 'Lake Bernieborough', 'India', '2015-02-23 03:27:12', '2016-06-29 10:33:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('10', 'f', '2019-09-13', 849, 'deserunt', 'Port Cordieville', 'Turks and Caicos Islands', '2013-03-08 21:09:20', '2017-01-04 21:23:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('11', 'm', '1985-12-09', 62817415, 'rerum', 'North Heloise', 'Suriname', '2016-09-07 20:24:11', '2019-06-17 02:22:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('12', 'm', '2013-09-29', 71288, 'itaque', 'Lake Daija', 'Panama', '2018-11-21 23:09:47', '2014-03-07 16:19:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('13', 'f', '1971-08-06', 9436430, 'tenetur', 'Macieville', 'Bahrain', '2016-11-01 17:42:39', '2019-07-01 11:25:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('14', 'f', '2019-10-18', 6076182, 'voluptatem', 'New Octaviahaven', 'Hungary', '2013-01-15 03:01:07', '2012-05-08 22:59:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('15', 'm', '1988-09-08', 736644603, 'eaque', 'Karinaville', 'Saudi Arabia', '2013-12-12 12:05:38', '2017-12-29 13:24:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('16', 'm', '1996-03-16', 746205456, 'quisquam', 'Langworthville', 'Palau', '2018-05-08 11:41:05', '2017-06-22 20:18:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('17', 'm', '1992-11-19', 813337, 'consequatur', 'Connershire', 'Iceland', '2019-05-04 21:46:26', '2014-12-15 04:56:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('18', 'm', '1974-01-20', 6403402, 'non', 'Josiannestad', 'Costa Rica', '2019-09-16 01:31:15', '2018-08-21 11:58:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('19', 'm', '2011-08-10', 551711265, 'quae', 'Bahringerville', 'Cambodia', '2013-10-30 20:17:02', '2016-06-23 04:28:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('20', 'f', '1973-06-05', 144426, 'dolorem', 'East Averyfurt', 'Algeria', '2015-09-01 18:53:27', '2012-08-11 19:57:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('21', 'f', '1977-09-30', 187, 'et', 'Uptonview', 'Guinea', '2013-03-03 02:38:56', '2010-11-22 19:14:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('22', 'm', '1989-02-13', 829053601, 'in', 'Octaviaport', 'Venezuela', '2016-09-24 09:13:57', '2016-08-01 03:33:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('23', 'f', '1994-06-10', 820423, 'laboriosam', 'West Darien', 'Greece', '2019-01-14 08:41:22', '2012-01-18 17:27:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('24', 'f', '1974-10-11', 541081442, 'aut', 'East Nilsshire', 'Turkey', '2011-11-29 00:55:19', '2017-01-08 08:51:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('25', 'f', '1977-07-25', 34707, 'occaecati', 'Lake Wainomouth', 'Greece', '2020-05-16 17:08:23', '2013-12-20 01:56:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('26', 'f', '1970-12-25', 95208, 'alias', 'Swaniawskiland', 'Montenegro', '2015-08-27 18:02:11', '2017-01-17 16:23:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('27', 'm', '1997-06-20', 263795, 'id', 'Lake Hazlestad', 'Tanzania', '2016-06-13 22:56:49', '2020-08-28 23:32:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('28', 'm', '2009-11-05', 91, 'ut', 'Russelport', 'Maldives', '2011-11-27 02:01:26', '2018-06-16 14:20:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('29', 'm', '2016-06-26', 127731559, 'maxime', 'Baumbachmouth', 'Netherlands', '2011-04-06 16:52:56', '2018-07-06 02:08:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('30', 'm', '1998-06-25', 3669110, 'eaque', 'Port Cicero', 'Svalbard & Jan Mayen Islands', '2017-05-09 12:33:21', '2012-02-19 17:42:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('31', 'm', '1970-03-02', 887566244, 'dolore', 'North Garfield', 'India', '2012-11-27 09:22:13', '2015-05-28 18:40:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('32', 'm', '1974-07-30', 6889084, 'ipsam', 'Port Eveberg', 'Seychelles', '2013-08-25 21:24:21', '2018-06-10 01:12:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('33', 'f', '2004-02-13', 0, 'fugiat', 'West Lillianabury', 'Finland', '2010-12-15 10:18:12', '2018-01-28 00:50:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('34', 'f', '1993-06-06', 26319702, 'voluptas', 'Hesselland', 'Georgia', '2013-08-02 05:43:35', '2014-08-29 03:48:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('35', 'f', '1992-07-02', 13, 'voluptate', 'New Maxine', 'Slovenia', '2017-06-13 06:18:22', '2013-05-30 21:16:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('36', 'm', '2008-05-09', 66599016, 'soluta', 'North Brown', 'Micronesia', '2013-06-21 13:05:37', '2011-11-27 02:11:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('37', 'm', '1998-04-10', 377774, 'vero', 'Turcotteland', 'Albania', '2019-03-07 04:41:43', '2013-05-02 02:08:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('38', 'f', '2016-07-06', 8, 'fugit', 'Roobfort', 'Israel', '2011-02-07 18:25:09', '2013-11-04 21:52:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('39', 'f', '2004-04-11', 929587461, 'molestias', 'Moorechester', 'Bahamas', '2010-12-25 09:40:35', '2011-10-26 13:59:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('40', 'm', '2009-03-24', 484, 'impedit', 'Port Chynamouth', 'Jamaica', '2020-09-02 21:55:20', '2020-03-18 17:11:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('41', 'f', '2002-08-02', 75360, 'ut', 'Port May', 'Belarus', '2014-07-17 07:16:19', '2015-10-03 14:34:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('42', 'f', '1991-07-21', 739, 'optio', 'DuBuquetown', 'Kenya', '2016-03-18 22:42:58', '2015-11-08 06:14:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('43', 'm', '1972-06-21', 1132501, 'veniam', 'North Vidaville', 'Romania', '2018-10-20 17:36:59', '2014-11-15 07:18:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('44', 'f', '2005-02-05', 47, 'sint', 'Lake Ariannaborough', 'Seychelles', '2013-06-16 06:13:11', '2018-03-19 13:33:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('45', 'f', '2013-09-22', 3083, 'ea', 'Brianaville', 'Netherlands Antilles', '2015-05-27 18:39:28', '2016-04-09 04:01:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('46', 'm', '2015-04-03', 4874, 'consectetur', 'Port Judgeview', 'Brunei Darussalam', '2018-02-16 00:13:57', '2016-02-26 23:22:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('47', 'm', '1971-06-29', 5, 'rerum', 'Port Harrison', 'Timor-Leste', '2016-12-15 08:07:50', '2019-01-31 18:00:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('48', 'f', '1980-06-30', 273225, 'accusamus', 'North Rosalind', 'Cambodia', '2017-09-11 18:19:27', '2012-10-17 21:29:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('49', 'f', '2006-02-17', 618796045, 'repellat', 'Port Nataliachester', 'United Arab Emirates', '2010-12-04 17:18:01', '2020-04-21 18:06:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('50', 'm', '1978-09-10', 42590, 'pariatur', 'Estelleview', 'Timor-Leste', '2018-09-29 15:58:53', '2011-08-20 20:10:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('51', 'm', '1993-08-09', 1782265, 'in', 'Kreigerton', 'Cameroon', '2013-03-01 12:39:28', '2012-09-16 16:01:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('52', 'f', '1985-01-23', 31840, 'fugit', 'New Stephaniefurt', 'Brazil', '2014-11-16 06:36:18', '2015-01-16 09:52:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('53', 'm', '2004-09-12', 40694311, 'impedit', 'West Josh', 'Slovakia (Slovak Republic)', '2017-11-09 05:47:16', '2011-03-18 07:26:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('54', 'f', '1991-08-17', 1988237, 'mollitia', 'Shaunport', 'Nicaragua', '2018-05-14 22:00:40', '2018-11-30 15:09:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('55', 'm', '2016-02-10', 20863160, 'labore', 'New Novella', 'Burundi', '2013-06-19 19:01:18', '2020-10-04 17:27:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('56', 'f', '1973-02-07', 62, 'consequatur', 'Port Lawrencefurt', 'Brazil', '2013-01-06 15:30:29', '2018-02-06 17:25:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('57', 'f', '2006-10-18', 5395550, 'quia', 'Port Jakayla', 'Turkey', '2015-10-15 19:22:00', '2012-04-01 16:16:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('58', 'f', '2015-07-14', 940, 'sit', 'Lake Jazmyneberg', 'San Marino', '2020-01-13 17:31:56', '2012-08-30 16:54:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('59', 'm', '1990-11-16', 30289561, 'optio', 'Beierton', 'Lebanon', '2014-02-16 02:33:37', '2020-08-19 06:00:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('60', 'f', '2007-10-23', 5816, 'est', 'Ratkestad', 'Botswana', '2015-09-07 06:24:14', '2011-08-20 00:00:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('61', 'f', '2003-03-26', 86135, 'iste', 'Lake Rosemary', 'Vanuatu', '2012-03-19 09:19:47', '2013-07-02 15:03:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('62', 'f', '1992-05-12', 3086276, 'architecto', 'Olliemouth', 'Haiti', '2017-04-07 05:34:09', '2012-10-06 16:02:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('63', 'm', '1970-09-25', 74769, 'enim', 'West Wava', 'Trinidad and Tobago', '2015-02-01 12:57:05', '2015-08-17 16:34:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('64', 'm', '1970-10-23', 53327, 'temporibus', 'Ibrahimmouth', 'Lebanon', '2019-09-25 13:03:48', '2016-07-01 19:14:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('65', 'f', '1991-10-19', 528078155, 'commodi', 'New Shaunton', 'South Africa', '2018-10-15 16:02:39', '2012-02-28 06:22:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('66', 'f', '1994-11-20', 32, 'aut', 'North Isabell', 'Indonesia', '2012-07-07 10:06:49', '2015-08-24 07:06:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('67', 'f', '1975-06-04', 4476446, 'est', 'Bettyeside', 'Kiribati', '2012-03-20 00:09:18', '2013-06-16 22:39:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('68', 'm', '2001-09-22', 34, 'omnis', 'South Altown', 'Lao People\'s Democratic Republic', '2017-08-11 10:52:07', '2012-11-05 23:31:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('69', 'f', '1989-12-22', 74822, 'porro', 'Haleyport', 'Fiji', '2019-10-14 17:11:17', '2016-09-24 07:50:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('70', 'f', '1973-08-21', 64109, 'laboriosam', 'Schadentown', 'Palestinian Territory', '2012-12-17 06:26:45', '2015-09-07 13:29:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('71', 'f', '1972-06-03', 116714118, 'aut', 'East Ashleeton', 'British Virgin Islands', '2016-09-12 19:30:38', '2016-11-22 00:51:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('72', 'f', '1999-08-25', 592084, 'eveniet', 'Mullerborough', 'Saudi Arabia', '2020-08-22 02:54:38', '2016-01-28 19:48:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('73', 'f', '2013-07-01', 474903, 'in', 'Curtisville', 'Palestinian Territory', '2015-10-27 00:43:15', '2012-06-16 11:02:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('74', 'f', '2016-01-17', 548046, 'sit', 'East Rowan', 'Guinea-Bissau', '2014-08-07 16:29:14', '2017-09-18 12:15:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('75', 'f', '2006-09-08', 83844853, 'aut', 'East Jordon', 'Mauritania', '2012-04-17 01:24:35', '2019-02-21 12:31:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('76', 'f', '1996-04-22', 31, 'cumque', 'Port Sashaborough', 'New Caledonia', '2020-04-27 18:13:54', '2017-12-08 23:51:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('77', 'm', '2012-02-29', 357268122, 'non', 'New Gloria', 'Togo', '2018-12-29 19:55:13', '2010-12-09 23:15:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('78', 'm', '1976-04-03', 8800956, 'sed', 'Arjunside', 'Anguilla', '2011-07-12 05:24:45', '2013-08-29 06:02:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('79', 'f', '1982-11-30', 11, 'et', 'New Cathryn', 'Fiji', '2018-03-07 03:00:19', '2014-12-04 01:53:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('80', 'f', '2016-05-29', 2, 'officiis', 'New Mitchelshire', 'Togo', '2012-01-27 14:41:18', '2014-02-22 05:18:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('81', 'f', '1984-04-09', 9, 'magni', 'Aricfurt', 'Lesotho', '2019-01-19 16:56:49', '2012-01-11 11:39:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('82', 'm', '1994-04-07', 35, 'illo', 'New Leon', 'Falkland Islands (Malvinas)', '2013-10-09 08:34:34', '2016-03-27 16:59:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('83', 'f', '1971-09-07', 50155160, 'molestiae', 'Hillsshire', 'Pakistan', '2020-07-29 01:47:51', '2014-05-29 09:12:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('84', 'm', '2018-05-31', 68, 'incidunt', 'Lake Kurtbury', 'Mongolia', '2020-09-03 22:08:15', '2016-03-18 03:12:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('85', 'm', '2008-04-05', 8048, 'est', 'East Erling', 'Tunisia', '2020-07-21 07:52:25', '2013-07-31 19:27:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('86', 'f', '2020-08-26', 960218, 'aut', 'Rogahnchester', 'Malaysia', '2016-12-29 19:27:43', '2013-07-03 05:08:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('87', 'f', '2015-05-03', 64, 'laudantium', 'Keltonton', 'Lesotho', '2012-11-08 11:04:03', '2011-10-29 18:44:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('88', 'f', '2002-03-04', 320268, 'saepe', 'North Joannie', 'Korea', '2012-05-09 16:55:12', '2018-06-14 22:40:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('89', 'f', '1980-01-19', 189121, 'illo', 'West Lupemouth', 'Kazakhstan', '2015-07-01 18:32:20', '2017-09-14 01:25:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('90', 'f', '1996-09-23', 965, 'quia', 'Mertzchester', 'Ireland', '2018-10-23 01:48:26', '2020-07-05 13:08:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('91', 'm', '1980-10-20', 99344506, 'praesentium', 'South Cynthiamouth', 'Namibia', '2012-06-24 08:33:16', '2016-05-17 19:46:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('92', 'm', '1971-12-10', 3723, 'facere', 'East Deshaun', 'Guinea', '2011-10-07 19:26:15', '2018-04-11 07:58:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('93', 'f', '1984-10-16', 8305026, 'nulla', 'Kevinton', 'Cameroon', '2014-04-07 17:57:11', '2019-04-23 15:46:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('94', 'f', '2001-01-29', 99051741, 'exercitationem', 'North Heberberg', 'Cuba', '2013-02-15 06:21:37', '2017-09-18 03:47:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('95', 'm', '2012-04-02', 68161115, 'sed', 'North Durwardville', 'Malaysia', '2020-02-07 19:57:09', '2018-06-26 00:22:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('96', 'm', '2004-05-16', 578513, 'quos', 'East Feltonland', 'Guinea-Bissau', '2019-09-21 11:11:05', '2018-06-25 07:34:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('97', 'm', '1972-06-22', 117532827, 'et', 'Port Mylestown', 'Spain', '2015-01-01 05:51:43', '2020-02-17 00:10:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('98', 'm', '2017-01-30', 3818739, 'voluptas', 'Feestberg', 'Colombia', '2012-07-29 04:09:45', '2020-10-15 15:00:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('99', 'f', '2000-11-29', 641934, 'dolorem', 'New Scottie', 'Angola', '2019-08-29 09:00:03', '2014-04-07 08:54:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES ('100', 'f', '1979-04-19', 476596939, 'dolores', 'New Hailie', 'Macao', '2018-01-20 15:57:41', '2015-01-28 23:51:57');


-- Таблица сообщений
DROP TABLE IF EXISTS messages;
CREATE TABLE messages (
  id SERIAL PRIMARY KEY COMMENT "Идентификатор строки", 
  from_user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на отправителя сообщения",
  to_user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на получателя сообщения",
  body TEXT NOT NULL COMMENT "Текст сообщения",
  is_important BOOLEAN COMMENT "Признак важности",
  is_delivered BOOLEAN COMMENT "Признак доставки",
  created_at DATETIME DEFAULT NOW() COMMENT "Время создания строки",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Сообщения";
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('1', 67, 77, 'Aut vero est id quaerat dolores incidunt voluptas. Non ut sunt quia laudantium animi non aut. Nihil quas vel voluptatem harum saepe.', 1, 1, '1941-03-28 22:31:55', '1985-08-24 08:51:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('2', 51, 4, 'Officia amet optio iusto odio. Blanditiis accusamus aut et asperiores eligendi. Cupiditate reiciendis praesentium iste ipsam corporis amet.', 1, 1, '2007-05-07 19:02:33', '1988-01-29 12:05:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('3', 80, 88, 'Sit cum maiores expedita est impedit. Commodi nemo ipsam neque ab repudiandae. Quos doloribus dolores dolor necessitatibus voluptatem a labore quo. Iusto fugiat aperiam voluptatibus voluptatibus.', 0, 0, '1922-01-13 09:21:46', '1968-11-01 11:02:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('4', 26, 81, 'Quaerat sed voluptatem alias incidunt autem. Fugiat voluptatum praesentium fugiat est nam iste dolores. Maiores cupiditate possimus natus repudiandae assumenda dolores.', 0, 1, '1927-04-10 20:36:17', '1933-06-10 02:11:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('5', 36, 4, 'Sint commodi minima impedit beatae nostrum voluptatem. Sint sunt eos nihil et mollitia et consequatur. Maxime aspernatur omnis voluptates non rerum et ut repellat. Aspernatur harum sed fugit corrupti.', 1, 1, '2017-10-14 19:22:48', '2005-03-28 10:43:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('6', 23, 78, 'Perferendis quia et amet ab ut ut. Eveniet quidem porro qui voluptatem deleniti. In provident ut rerum libero nobis. Ea in animi vel ut.', 1, 0, '1997-04-02 04:19:07', '1982-03-22 15:45:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('7', 69, 92, 'Qui ex vel dolorem explicabo enim expedita sapiente. Vel dolore rem commodi. Et pariatur voluptatibus eligendi eos culpa non enim. Quod ex id voluptate non nulla et voluptatem. Eius est fugiat dolorem maxime quo blanditiis occaecati.', 0, 1, '1983-09-20 15:31:14', '1976-04-23 11:42:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('8', 43, 36, 'Voluptas praesentium officia sed beatae sint voluptatem. Maiores animi delectus quia ducimus qui magnam. Sed ex at nihil iusto quasi sunt sit. Quia nam et a officiis id delectus.', 1, 0, '1929-07-08 03:14:14', '2009-12-29 03:54:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('9', 94, 67, 'Incidunt quaerat doloremque dolore. Qui aut in quod voluptatum. Iure sed voluptatum quibusdam recusandae deleniti.', 0, 1, '1947-10-07 05:14:34', '1945-08-26 22:57:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('10', 65, 8, 'Fuga consequatur distinctio sed omnis. Necessitatibus et enim corrupti non exercitationem quam nam. Eum explicabo velit et molestiae omnis et labore.', 1, 1, '1997-10-23 01:04:58', '1937-12-01 12:40:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('11', 58, 99, 'Aliquid eius et exercitationem perspiciatis veritatis tenetur saepe. Voluptate consequatur qui illo eum consequatur. Iste illum unde perspiciatis et. Eum deserunt omnis voluptatem minima laborum praesentium rerum.', 1, 1, '2005-01-01 11:35:00', '1931-07-05 03:43:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('12', 58, 7, 'Enim consequatur eveniet est itaque vitae vero eum. Labore ex voluptate in temporibus rem. Ut vel voluptatem non voluptates magnam aut. Aut quasi et veritatis vel sit.', 0, 1, '2007-05-01 07:34:36', '1993-07-23 21:57:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('13', 91, 63, 'Dolores et quia aut odit similique amet nostrum. Aut aut ut illum. Officiis itaque a et exercitationem.', 0, 0, '1998-10-20 13:28:26', '2007-05-15 04:59:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('14', 54, 69, 'Exercitationem similique autem voluptatem corporis et quam odit aut. Explicabo sint quidem dicta unde voluptatem. Saepe architecto ut voluptatem vitae dicta et quidem.', 1, 1, '1947-11-14 23:06:45', '2005-10-15 18:18:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('15', 79, 89, 'Velit minima molestias alias natus nesciunt molestias debitis. Cum nostrum et aspernatur est doloremque sunt.', 1, 1, '1945-04-15 02:34:54', '2008-07-16 21:25:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('16', 95, 45, 'Maxime eaque aut unde modi. Repudiandae sequi maxime saepe excepturi. Quia sunt odit maiores natus quod qui et. Illo cum enim vel sit dolores pariatur est.', 1, 1, '1934-09-14 07:13:13', '1943-08-01 07:35:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('17', 7, 3, 'Rerum sunt sit totam doloribus expedita. Autem harum ad culpa suscipit et. Illum corrupti reiciendis et fuga.', 1, 1, '1978-12-29 14:16:54', '2012-04-03 19:12:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('18', 78, 37, 'Iusto nobis provident numquam nisi veniam. Quia quos qui maxime earum laudantium. Quisquam tempora saepe est est.', 0, 0, '1997-05-29 20:30:32', '1934-11-04 08:26:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('19', 60, 23, 'Qui tenetur corrupti vitae et assumenda vero facilis. Dolorem mollitia accusamus sit enim. Rerum atque rerum praesentium rerum saepe soluta est. Et tenetur quis et nobis autem.', 0, 1, '1970-07-15 22:27:34', '2019-04-04 14:12:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('20', 22, 47, 'Placeat reprehenderit eaque molestiae eum est. Et voluptatem qui quos vero ad ut. Consequatur alias qui voluptatum aut magni.', 0, 1, '1969-03-16 23:36:12', '1933-10-25 16:01:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('21', 92, 45, 'Omnis veritatis sit quas iusto. Laborum praesentium explicabo sed et qui corrupti. Odio itaque sed voluptas id. Molestias cumque voluptatibus ad provident ratione.', 0, 1, '1983-04-29 09:05:38', '2004-11-25 00:11:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('22', 38, 11, 'Sit cum est ut eaque iusto enim enim. Ipsam iste deleniti iste repudiandae ratione.', 1, 1, '1968-07-18 03:46:00', '1947-02-06 11:53:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('23', 92, 62, 'Porro ducimus est sed vero. Corrupti totam hic cum optio eveniet. Temporibus tempore ut libero sapiente vero quae.', 1, 0, '1930-01-24 22:45:55', '1946-10-29 19:14:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('24', 26, 93, 'Porro eum non reiciendis. Pariatur culpa nihil autem ab qui tempora facilis. Nihil eum ex sit ut.', 0, 1, '1961-06-07 06:58:02', '1945-10-24 20:55:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('25', 91, 92, 'Voluptas fugiat aut vel sit veniam facilis. Eaque ut alias eum similique quisquam beatae. Accusamus sequi labore eveniet cupiditate facilis voluptate ducimus.', 0, 1, '1973-05-06 08:14:14', '1938-01-12 14:36:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('26', 48, 18, 'Dolor ipsa minus error quia. Odio repellat et temporibus eos praesentium a officia. Quia ea vel sed tempora rerum ab sed expedita.', 1, 1, '1932-03-29 18:49:58', '2008-12-28 06:01:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('27', 98, 98, 'Unde vel voluptatem aliquam ut dolor. Fuga ut officiis ipsum et molestias corporis et. Architecto repellat dolorum praesentium dolor veniam magni.', 1, 1, '1979-10-13 13:34:35', '2015-12-19 07:59:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('28', 65, 4, 'Nulla tempora qui velit autem nisi. Neque quisquam sit accusamus tempora repudiandae ut qui. Non consequatur vero architecto consequuntur facilis non necessitatibus. Omnis accusantium fuga expedita sed eum sit fugiat. Et consequuntur est aut quam.', 0, 0, '1982-07-22 17:48:29', '1959-10-17 08:31:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('29', 92, 99, 'Ad ut sint quisquam architecto modi necessitatibus voluptas. Autem est odio incidunt molestiae deserunt. Totam iusto non animi fugit. Nobis qui ut aliquid quas magnam corporis.', 0, 1, '1954-09-25 06:11:48', '1979-05-31 02:43:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('30', 53, 63, 'Dolorum enim est alias nemo voluptatem est quia. Est numquam rerum accusantium minima aperiam. Et pariatur cumque exercitationem.', 0, 1, '2000-08-29 01:57:35', '1922-03-12 10:08:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('31', 52, 77, 'Temporibus quibusdam quia accusantium eaque mollitia voluptatum. Enim error iusto quis eos nostrum magnam qui. Quia perspiciatis consectetur quaerat non omnis modi et. Harum in occaecati velit quia et eos.', 0, 1, '1928-02-11 16:31:19', '1922-06-12 09:18:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('32', 75, 83, 'Ipsam tempora quisquam a quas sit perferendis qui. Consectetur iste natus eius doloremque et. Soluta quod in earum cum odit.', 0, 0, '2013-02-09 21:15:55', '1980-06-20 15:18:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('33', 61, 84, 'Reiciendis voluptatem veritatis eos labore et. Veritatis ut nostrum facere nostrum debitis. Minus ipsum est eligendi vel nihil architecto aut. Ipsam ex et deleniti et facere dolorum et dolorum.', 1, 0, '1972-11-25 02:57:28', '1979-07-13 14:07:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('34', 92, 94, 'Cumque nihil excepturi soluta. Ducimus dolorem distinctio nam dolorem. Saepe quaerat non distinctio ex amet quia esse.', 0, 1, '1986-03-21 04:23:57', '2019-04-30 23:05:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('35', 63, 95, 'Assumenda odio corrupti libero qui. Omnis ipsam natus voluptatibus illo voluptatem reiciendis. A sed voluptas nam fugiat fugit odit earum.', 0, 0, '1950-10-19 12:28:41', '1968-03-03 15:47:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('36', 26, 61, 'Eveniet blanditiis et nihil aut quis at. Rerum aut voluptatem sapiente rerum qui voluptatibus. Aliquam et earum quasi velit dolorum. Itaque eum dolore et culpa atque rerum alias.', 0, 0, '1978-11-22 10:34:31', '1993-10-16 01:20:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('37', 66, 51, 'Ea sint tempore sapiente dolorem necessitatibus delectus consectetur. Culpa amet dolores saepe. Et qui tempora quibusdam quaerat praesentium voluptas harum. Soluta at reprehenderit autem eos doloremque.', 0, 0, '1986-07-03 21:21:09', '2004-05-14 03:57:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('38', 75, 71, 'Inventore porro qui facilis et aut. Quas minus voluptas quia iste. Sit quod porro ea ex sed deleniti consequatur ratione.', 0, 1, '1999-06-25 22:49:27', '1921-01-03 06:14:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('39', 9, 55, 'Temporibus deserunt quia exercitationem perspiciatis veritatis ipsa illum. Eaque at aperiam placeat aperiam dolor sed. Aut rerum velit ea unde inventore quas hic eos.', 1, 0, '2018-11-03 13:45:20', '1976-05-30 10:31:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('40', 32, 32, 'Laudantium nulla maxime beatae necessitatibus beatae cumque ipsum nam. Libero error distinctio totam vel qui consequuntur. Facere quos aut tenetur placeat. Et pariatur eum iure nam quos.', 1, 1, '1967-01-19 14:24:54', '1929-01-15 12:23:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('41', 4, 41, 'Et eum exercitationem et alias tempora aut est. Et ut est optio illo non et.', 1, 1, '1961-06-17 19:02:20', '2009-06-30 08:00:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('42', 68, 57, 'Quaerat quo aut nisi in sint. Alias est sit corporis qui excepturi aut est. Suscipit voluptate ratione quos vel culpa dolor et.', 1, 1, '1999-11-13 18:19:21', '1936-02-25 03:13:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('43', 90, 41, 'Illo dolores nostrum atque vel. Repudiandae et sit repellat nihil dolor sed nihil. Fugit aut dolorum dolores minus autem minima.', 1, 0, '1981-03-16 14:34:25', '1967-04-11 23:04:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('44', 23, 7, 'Delectus qui mollitia hic. Atque id possimus ipsum dolore. Ut qui libero debitis aut. Voluptas suscipit rerum sint animi earum iusto corporis. Aut et aliquam consequuntur velit iure quaerat.', 0, 0, '1971-07-01 07:21:20', '1968-08-20 06:28:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('45', 39, 53, 'Natus facilis velit sunt aut in et at iste. Quos aliquid natus perferendis ut quo explicabo. Neque ipsum ipsa nihil iusto rerum. Vero fugit eum dolores accusamus in.', 0, 1, '1987-11-12 05:39:12', '1929-05-26 16:18:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('46', 76, 14, 'Nam rem officia quia eum. Iure expedita tenetur aut doloremque ut similique autem. Consectetur quod reprehenderit laudantium non rerum quis. Iure labore quia iusto architecto qui et eum.', 1, 0, '1949-12-17 18:23:51', '1999-10-04 19:13:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('47', 91, 83, 'Illo repudiandae quos sequi id fugiat. Laudantium recusandae quasi et pariatur velit quidem. Asperiores eum possimus dolorem enim sed iusto.', 0, 0, '1981-08-03 01:13:49', '2013-05-09 19:49:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('48', 94, 98, 'Dolor id eum animi nisi cupiditate soluta voluptatibus. Voluptatibus dolorem minima molestias iste deserunt blanditiis. Nam et blanditiis est et alias quas. Recusandae qui aut qui nulla.', 0, 1, '1962-07-25 09:55:33', '1961-02-11 03:03:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('49', 89, 69, 'Quisquam natus fugit dolorem delectus beatae. Rerum voluptate est magni repellat voluptatum et distinctio ut. Voluptatem nulla autem nihil quas placeat eos corporis.', 1, 1, '1963-04-14 18:34:22', '1983-06-03 22:59:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('50', 23, 39, 'Quia odio maiores neque ut. Possimus vero necessitatibus qui eligendi maiores nobis et. Dolorum sequi at numquam quidem. Quia odit et officia vitae.', 1, 1, '2001-08-21 02:46:50', '2004-07-11 06:11:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('51', 76, 21, 'Et ex nesciunt dolore quia rerum quia omnis. Fugiat quis libero laudantium maiores. In odit delectus assumenda aut eaque rem expedita. Quia veritatis voluptas dicta autem.', 1, 0, '2019-05-02 19:24:08', '1970-12-15 09:47:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('52', 84, 39, 'Architecto quod consequatur ut eaque. Qui culpa architecto nihil earum animi neque. Explicabo mollitia earum deleniti id voluptatem nisi repellendus. Modi beatae dolor et et ea cumque id sed.', 1, 0, '1945-10-06 02:57:00', '1925-02-24 23:13:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('53', 69, 71, 'Beatae earum quasi ullam aut facere esse sit. Ut ratione rerum aliquam illum nobis numquam. Quae cupiditate porro et nesciunt. Fugit nemo voluptas eius in repellendus unde.', 0, 0, '1926-11-03 23:27:33', '1956-11-23 03:44:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('54', 29, 40, 'Libero et ut dolorum culpa animi incidunt similique. Dolorem omnis ab odio fuga aspernatur a facere.', 1, 1, '1965-06-10 02:11:40', '1923-03-03 16:24:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('55', 15, 12, 'Et quo aliquid quo nulla ut nobis ab dicta. Sed impedit blanditiis placeat vel quos possimus. Sed reiciendis deleniti temporibus doloremque qui ipsa.', 1, 1, '2001-05-29 11:24:14', '1983-01-22 02:02:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('56', 81, 34, 'Cupiditate et ea omnis quia ex ullam quo. Totam consequatur repellendus cumque sint laudantium.', 1, 1, '1929-04-29 01:09:52', '1955-11-09 04:09:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('57', 68, 61, 'Et aliquam molestiae velit voluptates velit dignissimos temporibus perspiciatis. Voluptatem ab harum et dicta et. Velit neque provident voluptatem non deleniti a ut. Asperiores nihil dolor mollitia praesentium cum neque facilis.', 0, 1, '1931-01-14 02:48:14', '1965-11-26 07:21:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('58', 70, 95, 'Explicabo aperiam eos delectus numquam ab libero. Ratione tempore quia enim quibusdam iure in. Ut voluptas temporibus tempore porro occaecati explicabo voluptate.', 0, 1, '1939-07-05 13:37:19', '1928-07-28 18:45:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('59', 37, 1, 'Qui aut alias sed numquam at impedit. Ducimus consequatur quia officia nihil possimus libero. Ratione tempora fugit nesciunt iste.', 1, 1, '1977-07-04 21:57:48', '2004-06-20 08:15:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('60', 31, 65, 'At aut et voluptatem velit qui. Suscipit unde distinctio a quae voluptas ut.', 1, 0, '2001-10-09 04:59:57', '1997-09-16 06:20:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('61', 62, 82, 'Debitis possimus ut dolores voluptatem veritatis blanditiis recusandae. Itaque occaecati voluptate distinctio placeat. Quisquam quibusdam quibusdam eum est aliquam repellat.', 1, 1, '1921-09-13 23:11:29', '1956-02-10 05:10:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('62', 36, 27, 'Esse atque quos sit vitae. Et est sed et quaerat saepe. Illum reiciendis molestiae tenetur esse molestiae fuga enim cumque. Doloribus quis adipisci atque magni quisquam cupiditate.', 1, 1, '1952-01-09 05:39:02', '1938-01-16 01:04:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('63', 60, 71, 'Rem quis porro in impedit quia. Consequatur quia minus accusantium. Ipsum est et qui natus fugiat.', 0, 1, '1935-05-24 22:16:12', '1985-03-29 18:59:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('64', 45, 45, 'Soluta eum fuga quidem. Autem consequatur praesentium dolor libero sit et. Dolores officiis consequuntur qui officia. Officiis ad ullam quia.', 0, 0, '1921-09-27 03:06:56', '2016-11-09 18:07:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('65', 11, 60, 'Repudiandae reprehenderit temporibus hic autem doloribus. Voluptatum fuga incidunt porro qui et. Dignissimos nisi et voluptas impedit dolorem veritatis dolorem.', 0, 0, '1946-11-27 03:13:17', '1966-07-14 12:24:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('66', 9, 44, 'Repellat quo odio consectetur dolorum. Magni laudantium doloremque consequatur. Est iure enim quasi.', 1, 0, '2004-10-13 18:29:02', '1946-06-18 14:06:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('67', 93, 96, 'Dolor incidunt non placeat. Exercitationem qui et et et dolorem beatae rerum itaque. Rem est dolor et et suscipit voluptatem.', 1, 0, '2007-11-02 22:28:43', '1961-11-02 07:28:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('68', 26, 44, 'Aut consequatur nihil est. Cumque autem quia deserunt laboriosam suscipit aut alias. Odit et natus ipsa necessitatibus repudiandae qui.', 1, 0, '1934-04-18 00:53:38', '1997-06-08 12:02:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('69', 99, 13, 'Velit et cumque perferendis at. Quod et tenetur temporibus neque. Voluptatibus officia soluta temporibus est laboriosam aut consequatur. Et consequatur et et nihil quisquam ad non.', 1, 0, '2016-11-03 22:55:42', '1921-05-31 07:02:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('70', 9, 75, 'Numquam ab consequatur minima nesciunt. Qui voluptatem autem nihil quod aut dolor exercitationem. Deleniti autem at harum molestiae consequuntur voluptate pariatur voluptates.', 0, 0, '1948-07-25 04:11:30', '2011-01-28 23:08:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('71', 33, 48, 'Laborum consectetur rerum laboriosam minima soluta consequatur. Consequatur ducimus laudantium quasi omnis et consectetur reprehenderit. Sed beatae qui eligendi nulla qui ut. Dolores nostrum maxime repellendus voluptas exercitationem officia ab.', 1, 0, '2006-05-21 11:26:44', '1957-01-19 19:41:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('72', 24, 37, 'Eaque voluptates dicta autem ab accusamus. Non consequuntur labore alias non itaque aut sapiente est. Ducimus eveniet sapiente sunt. Dolore molestias incidunt eos molestiae.', 1, 1, '2013-03-05 03:39:12', '1987-03-24 14:18:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('73', 49, 64, 'Ipsa beatae est sunt molestiae expedita. Porro vitae optio eius ipsa eum quis minima. Alias esse inventore sed ab molestiae consequatur.', 1, 1, '1990-05-26 16:09:16', '2005-03-30 15:56:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('74', 58, 96, 'Cupiditate blanditiis facilis error est laudantium delectus sunt nulla. Voluptatem amet omnis enim aut assumenda. Commodi dolores similique cum neque. Aut necessitatibus recusandae eaque vero.', 0, 0, '1977-01-30 17:16:32', '1952-01-04 15:11:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('75', 67, 59, 'Vel sapiente velit culpa rerum. Quos aut dolores soluta rerum similique unde eos provident. Sit aliquam ipsam nemo placeat qui nesciunt dolorum fugit. At maiores quibusdam odit itaque non cupiditate ut rerum.', 0, 1, '1944-02-11 14:13:44', '1952-08-02 16:08:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('76', 96, 85, 'Id qui quis optio qui quo aspernatur. Saepe voluptatem delectus labore qui beatae rerum tenetur molestiae. Dolor quisquam earum voluptatem voluptate nostrum impedit dignissimos. Reiciendis ducimus qui error beatae vero.', 1, 1, '1946-03-08 08:35:15', '1995-02-02 16:16:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('77', 1, 14, 'Omnis quia nostrum atque quas voluptas consequatur ut. Accusamus qui ullam nesciunt autem aut ea. Iste ipsam consequuntur doloribus sed laudantium sapiente. Saepe velit beatae quisquam et nam cum.', 1, 1, '1997-08-30 02:50:20', '2013-04-08 16:04:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('78', 4, 88, 'Aperiam quisquam dolore pariatur aut odit sint. Atque quis id aperiam veritatis. Harum consequuntur eos accusantium explicabo.', 1, 1, '1980-12-30 23:44:57', '1937-10-28 06:04:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('79', 48, 83, 'Sit dolores deleniti amet doloremque neque sed. Natus ut ipsam consectetur ab facilis facilis itaque. Esse dolorem distinctio saepe voluptas voluptas expedita ut aut.', 1, 1, '1998-06-16 20:29:41', '1986-03-23 04:08:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('80', 8, 39, 'Explicabo occaecati soluta labore. Dolorum quia repellat molestiae a rerum. Excepturi veritatis nesciunt est accusantium est necessitatibus laudantium.', 0, 0, '1970-04-14 12:10:48', '1963-07-22 01:37:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('81', 57, 54, 'Molestiae sint labore dolores et quaerat eum dolorem. Est voluptatem iure saepe magnam possimus enim est aliquam. Atque eos id recusandae. Est enim quis quam optio exercitationem aut.', 0, 1, '1925-03-09 09:49:02', '1991-11-15 05:37:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('82', 82, 23, 'Molestias aut omnis laborum est deserunt autem possimus aut. Aut sit aspernatur optio consectetur cumque ut. Molestias nulla et repellat exercitationem rerum enim. Non voluptatem temporibus id rem sint.', 0, 1, '1922-05-26 06:21:30', '1931-12-26 02:43:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('83', 27, 49, 'Amet sequi odit natus voluptatibus qui voluptatem. Laboriosam adipisci corporis ex veniam nemo eos. Aliquid voluptas aut tenetur tempora quo nihil ab soluta. Repellat nisi porro id fugiat.', 0, 0, '1996-01-20 01:04:57', '1965-11-30 02:11:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('84', 7, 16, 'Pariatur aliquam aut dolorum quidem itaque. Amet consequatur quibusdam corporis qui vel consequatur. Similique inventore est veniam vero ab quas. Voluptas qui harum consequuntur dolore mollitia modi.', 1, 0, '2004-11-18 09:22:07', '1949-04-10 22:42:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('85', 50, 15, 'Harum blanditiis vero id sint. Esse qui sunt consequatur beatae veniam illum quasi. Consequatur quo quia enim quos laudantium libero ut. Nihil voluptatem voluptatibus ipsum rerum quibusdam. Dolor nihil et aut hic doloribus voluptatem.', 1, 0, '1984-04-07 01:13:59', '1968-10-14 12:51:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('86', 39, 90, 'Tempora omnis mollitia repellat. Saepe ullam voluptatum consectetur harum dolor tempora sit. Soluta animi voluptas consequatur autem excepturi praesentium. Maiores commodi rerum quia necessitatibus illo consequatur.', 1, 0, '1930-04-26 18:42:11', '1934-10-15 03:29:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('87', 60, 17, 'Voluptatibus ab tenetur expedita. Molestias voluptate sit veniam nobis corporis aut. Quidem repudiandae doloremque sit non. Et eligendi maxime inventore quia. Et voluptatem deserunt distinctio voluptatum molestias.', 1, 1, '1950-01-27 18:40:20', '2013-04-09 10:36:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('88', 65, 61, 'Aperiam cumque dolor ab minima dolore fugit. Fuga aut eveniet recusandae aut aut tempore. Eligendi numquam est eum perspiciatis voluptatem rerum est. Ad qui voluptas nihil debitis qui.', 0, 0, '1925-12-15 05:15:52', '1992-09-09 22:41:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('89', 35, 56, 'Qui veritatis odit aliquid voluptates fugit accusamus. Nesciunt qui aut sequi cum praesentium sapiente odio voluptas. Unde necessitatibus sed ut enim quaerat deleniti omnis blanditiis. Dolorem dolore animi sit provident dignissimos et a.', 0, 1, '1991-10-11 04:03:07', '1940-02-28 15:02:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('90', 88, 4, 'Autem illo quae et doloribus. Dicta recusandae velit ut consectetur eum. Voluptas neque cupiditate corporis unde.', 1, 0, '2017-01-22 09:13:18', '1938-11-30 04:39:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('91', 35, 31, 'Voluptatibus sunt ex rerum numquam. Autem atque quaerat adipisci recusandae enim voluptatem. Commodi tempore itaque dolor molestiae dolores.', 0, 0, '1925-05-11 06:01:40', '1934-05-05 15:55:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('92', 55, 95, 'Non id neque labore impedit. Sapiente iste libero harum.', 1, 0, '2010-05-07 09:28:20', '1973-02-25 03:35:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('93', 82, 38, 'Et id labore sed. Ut vel et earum maxime.', 1, 0, '1953-02-17 15:09:51', '1926-06-22 21:43:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('94', 10, 48, 'Nam neque modi ea dolorem sunt. Asperiores expedita incidunt dolorem est. Necessitatibus totam fuga inventore porro minima deserunt animi enim.', 1, 0, '1973-04-29 11:27:24', '1952-11-03 03:35:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('95', 91, 61, 'Rerum placeat ad est quia ea et quia. Voluptatibus culpa quisquam sunt et perspiciatis dolorem sed. Cum saepe eius in ut. Quidem maxime amet iusto accusantium sit.', 1, 0, '1987-10-11 21:40:02', '1951-07-16 15:01:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('96', 55, 27, 'Quasi velit numquam ut ipsum et. Molestias nulla minima minus et et. Quod omnis praesentium dolor qui consequatur quia. Dolor ipsa ducimus provident sequi beatae exercitationem suscipit.', 1, 1, '1944-06-07 18:14:38', '1966-03-01 05:40:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('97', 32, 83, 'Qui repudiandae perferendis velit quia eum ab doloribus. Consectetur quia facilis ipsum non. Sint voluptatem harum eveniet commodi at voluptas.', 1, 0, '1983-02-19 00:54:37', '1997-05-04 13:34:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('98', 47, 40, 'Recusandae natus deserunt modi aliquam. Corporis autem vel pariatur quidem iste.', 0, 0, '2015-06-01 00:08:31', '2003-02-27 07:12:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('99', 83, 59, 'Quas id numquam necessitatibus ratione at aut. Omnis sed praesentium repellendus illo praesentium. Id quidem omnis aut perspiciatis doloribus.', 1, 0, '1941-05-02 13:28:16', '1975-11-03 07:25:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES ('100', 57, 63, 'Labore porro quia et amet ut tempora. Temporibus quisquam aut deleniti quod tempore aliquid cumque. Aut laboriosam unde corporis. Aut magni exercitationem totam repellendus quia maxime.', 1, 1, '1977-11-18 22:19:18', '1934-02-10 05:53:54');


-- Таблица дружбы
DROP TABLE IF EXISTS friendship;
CREATE TABLE friendship (
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на инициатора дружеских отношений",
  friend_id INT UNSIGNED NOT NULL COMMENT "Ссылка на получателя приглашения дружить",
  status_id INT UNSIGNED NOT NULL COMMENT "Ссылка на статус (текущее состояние) отношений",
  requested_at DATETIME DEFAULT NOW() COMMENT "Время отправления приглашения дружить",
  confirmed_at DATETIME COMMENT "Время подтверждения приглашения",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки",  
  PRIMARY KEY (user_id, friend_id) COMMENT "Составной первичный ключ"
) COMMENT "Таблица дружбы";

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 18, 2, '2015-12-13 22:01:53', '2014-05-11 00:58:50', '2019-04-02 01:22:35', '2018-01-20 20:37:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 45, 1, '2020-06-16 04:05:48', '2011-09-21 01:54:08', '2011-10-21 00:08:15', '2015-01-31 17:33:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 26, 2, '2017-09-25 08:19:55', '2016-08-30 14:34:54', '2013-09-30 22:24:48', '2018-07-17 23:35:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 32, 5, '2019-02-01 10:51:09', '2019-06-09 06:24:14', '2017-10-03 20:17:58', '2012-06-12 08:11:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 87, 4, '2011-06-08 05:57:26', '2019-02-19 01:04:57', '2015-11-25 05:21:57', '2020-01-20 07:13:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 79, 5, '2016-06-03 07:12:13', '2012-04-25 23:28:25', '2019-06-04 04:46:26', '2015-09-12 23:39:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 18, 3, '2016-11-13 12:51:00', '2020-01-31 03:56:17', '2019-01-27 17:12:49', '2016-07-29 23:14:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 58, 5, '2015-12-12 23:17:30', '2019-11-10 02:34:52', '2018-09-24 20:38:07', '2018-08-08 10:45:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 68, 3, '2017-07-08 03:36:26', '2018-05-08 05:35:40', '2011-03-21 23:16:49', '2013-01-04 00:38:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 82, 5, '2014-06-21 03:08:32', '2013-07-07 03:20:21', '2012-08-29 18:13:34', '2012-06-03 07:07:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 5, 3, '2018-02-11 10:41:32', '2016-03-17 18:00:01', '2016-12-19 02:18:00', '2014-09-10 21:13:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 59, 3, '2019-06-10 01:38:17', '2012-02-02 18:29:47', '2012-07-28 00:45:03', '2018-03-03 17:41:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 10, 1, '2020-09-11 15:06:23', '2020-03-28 05:46:41', '2020-10-17 19:29:21', '2020-05-21 15:57:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 59, 2, '2017-03-30 10:13:49', '2019-10-02 19:44:06', '2018-05-23 17:01:17', '2012-03-18 12:28:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 7, 5, '2016-05-03 05:45:29', '2011-04-04 05:14:12', '2013-08-05 05:44:59', '2012-05-05 13:18:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 11, 4, '2015-09-30 03:09:38', '2018-11-02 23:08:58', '2012-03-05 21:44:13', '2017-05-16 21:20:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 4, 2, '2019-01-23 04:18:30', '2013-11-03 20:18:20', '2012-01-10 21:43:36', '2018-04-13 22:23:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 88, 1, '2016-09-24 07:04:26', '2017-05-06 06:22:15', '2017-09-19 02:57:35', '2012-01-09 20:53:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 5, 4, '2011-10-29 09:53:12', '2020-10-07 07:02:37', '2017-06-26 03:14:07', '2015-03-10 14:46:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 56, 4, '2015-06-27 02:06:01', '2020-06-25 04:12:29', '2015-06-12 08:17:19', '2020-11-15 23:57:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 80, 1, '2018-03-07 08:48:08', '2015-04-07 14:18:01', '2013-11-19 08:09:24', '2018-11-18 05:02:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 90, 3, '2018-12-08 16:35:17', '2011-05-21 11:55:48', '2011-03-01 01:37:14', '2014-08-05 00:14:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 91, 2, '2014-07-08 07:56:00', '2016-12-06 10:57:47', '2010-11-29 14:54:38', '2015-11-06 08:02:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 30, 1, '2013-01-23 11:43:09', '2013-05-31 16:36:32', '2019-02-28 04:09:15', '2018-07-14 13:13:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 68, 2, '2015-06-27 00:08:48', '2013-08-11 11:37:05', '2012-08-09 20:33:51', '2017-03-02 20:51:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 53, 1, '2019-11-20 03:42:13', '2016-11-25 05:15:25', '2018-03-19 05:04:25', '2012-10-14 16:03:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 42, 3, '2015-10-31 15:12:03', '2013-08-10 17:55:02', '2011-10-10 11:03:36', '2020-10-24 01:26:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 73, 3, '2014-08-18 17:16:25', '2017-09-13 19:24:56', '2011-10-13 05:29:33', '2019-03-02 11:09:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 69, 3, '2018-03-07 19:22:18', '2016-03-19 18:43:15', '2017-03-06 19:39:23', '2013-05-01 20:18:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 98, 3, '2013-08-10 12:06:23', '2013-02-14 05:35:46', '2018-09-15 20:16:02', '2010-12-05 00:00:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 37, 5, '2016-07-05 04:57:56', '2016-06-20 07:33:25', '2018-05-02 08:55:07', '2020-04-27 06:46:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 16, 3, '2012-12-19 03:10:52', '2014-09-25 06:47:28', '2018-08-21 11:43:49', '2018-08-03 11:38:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 15, 3, '2012-10-02 15:43:23', '2011-07-15 13:57:30', '2013-01-22 17:14:44', '2011-12-08 13:18:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 48, 3, '2016-12-26 00:04:17', '2015-02-16 18:28:32', '2013-05-09 21:32:26', '2020-10-12 23:48:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 82, 5, '2011-11-21 09:26:01', '2018-02-20 12:45:00', '2016-03-20 03:18:59', '2018-06-04 22:05:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 24, 3, '2019-07-30 13:56:19', '2013-07-01 18:22:52', '2016-03-12 17:41:50', '2013-12-19 12:05:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 5, 1, '2016-10-17 20:12:59', '2018-04-14 13:24:06', '2015-11-12 13:06:41', '2012-02-04 15:36:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 70, 1, '2011-11-15 09:33:33', '2010-11-23 02:12:12', '2020-10-05 06:51:49', '2015-07-22 09:16:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 78, 1, '2019-06-24 13:52:05', '2015-11-11 14:19:11', '2014-12-05 22:45:47', '2020-04-01 21:41:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 20, 4, '2011-03-10 12:11:02', '2015-02-22 19:01:34', '2011-02-26 10:23:50', '2015-08-27 21:43:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 58, 5, '2012-02-23 22:23:52', '2011-10-11 02:07:57', '2012-08-17 18:52:59', '2019-03-17 15:42:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 13, 4, '2020-09-27 19:27:44', '2017-10-05 12:38:47', '2018-12-06 01:47:34', '2018-09-03 19:18:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 13, 1, '2019-05-08 08:48:34', '2018-09-03 23:47:33', '2011-11-30 03:14:34', '2015-06-22 18:08:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 1, 4, '2013-11-05 08:20:39', '2017-10-17 09:46:43', '2013-07-12 14:50:52', '2019-10-26 13:29:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 46, 3, '2013-12-07 04:44:27', '2015-01-27 03:38:56', '2015-12-07 22:08:26', '2016-12-06 08:47:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 61, 5, '2012-03-29 06:38:25', '2011-09-16 18:30:30', '2019-01-27 12:11:52', '2017-01-11 01:56:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 2, 1, '2019-02-18 22:06:32', '2012-04-17 03:43:23', '2013-07-02 04:04:38', '2011-11-08 11:02:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 85, 5, '2019-03-10 05:36:39', '2014-03-28 18:04:38', '2018-05-15 07:17:07', '2014-04-07 14:33:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 10, 4, '2017-06-08 03:14:04', '2015-05-15 07:14:54', '2013-11-28 19:31:34', '2014-04-16 21:30:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 22, 2, '2016-01-22 18:48:47', '2011-11-16 16:26:39', '2019-01-05 20:52:18', '2013-03-25 01:48:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 39, 1, '2015-06-21 08:14:45', '2016-07-31 15:33:12', '2010-12-12 20:39:38', '2015-06-15 12:10:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 13, 3, '2016-02-23 08:28:01', '2017-09-27 08:44:43', '2012-06-25 01:37:46', '2019-06-19 16:07:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 25, 1, '2018-12-02 06:34:30', '2020-05-22 08:41:35', '2018-12-21 00:50:14', '2014-08-03 18:22:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 34, 4, '2018-07-13 06:07:37', '2011-03-13 02:37:55', '2014-09-21 15:48:25', '2011-11-29 13:40:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 77, 4, '2020-09-02 13:01:56', '2013-03-16 00:34:00', '2017-01-29 01:01:40', '2020-06-24 10:26:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 96, 2, '2011-08-15 07:34:28', '2019-08-28 23:45:03', '2012-06-09 18:42:15', '2012-04-17 19:02:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 100, 4, '2020-04-18 22:34:19', '2018-09-12 02:03:34', '2014-02-23 11:16:05', '2020-07-26 05:20:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 19, 4, '2019-02-07 07:16:37', '2019-02-07 04:00:06', '2013-01-05 07:56:38', '2012-11-15 17:02:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 38, 4, '2014-09-21 18:17:25', '2017-06-22 05:25:20', '2017-07-21 14:11:28', '2019-07-29 04:24:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 92, 2, '2015-06-02 08:40:20', '2018-05-11 10:14:57', '2015-07-06 21:18:20', '2013-04-05 03:12:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 2, 5, '2018-12-08 02:11:28', '2015-05-03 15:04:57', '2017-02-15 03:23:21', '2016-07-26 07:02:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 4, 1, '2011-01-15 09:21:17', '2013-05-30 12:23:20', '2017-06-07 14:32:39', '2011-01-29 10:50:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 36, 2, '2018-06-30 22:29:59', '2017-06-26 09:19:36', '2020-11-19 16:01:04', '2015-11-09 13:54:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 82, 5, '2015-03-24 06:10:32', '2011-01-15 00:54:23', '2018-10-30 11:14:06', '2014-05-21 03:03:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 40, 5, '2011-02-25 14:59:41', '2017-03-18 10:56:23', '2014-12-10 22:21:27', '2019-03-31 15:37:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 61, 3, '2019-02-04 06:05:01', '2012-04-29 16:13:25', '2014-06-07 21:32:28', '2017-12-02 11:22:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 76, 5, '2020-07-27 00:51:16', '2019-01-22 11:35:13', '2017-04-02 09:39:13', '2011-05-16 10:28:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 82, 1, '2015-03-07 04:10:12', '2014-05-25 02:36:44', '2015-02-05 22:52:33', '2011-10-12 14:15:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 84, 1, '2014-05-28 11:11:41', '2014-09-28 02:39:21', '2014-02-05 09:33:30', '2011-03-07 11:35:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 23, 4, '2017-01-20 07:50:43', '2016-02-07 22:41:13', '2019-07-30 05:39:46', '2011-07-17 04:57:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 35, 2, '2012-03-08 15:11:48', '2012-09-09 20:59:20', '2014-07-30 13:06:14', '2015-01-03 10:57:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 20, 2, '2013-07-12 00:10:31', '2019-04-07 10:31:30', '2015-09-03 05:19:14', '2014-08-05 18:26:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 25, 2, '2012-06-27 18:30:54', '2020-03-28 23:44:31', '2016-11-26 16:31:41', '2014-12-07 19:49:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 68, 2, '2018-01-22 10:13:09', '2018-09-27 19:04:55', '2018-12-19 16:40:43', '2014-04-16 08:35:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 90, 5, '2017-11-07 09:20:23', '2013-12-05 11:21:24', '2019-03-23 20:44:47', '2018-01-18 09:57:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 9, 2, '2011-06-28 15:45:48', '2020-10-28 04:03:01', '2013-02-12 13:36:23', '2019-05-19 06:49:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 54, 2, '2013-01-13 14:56:03', '2018-01-15 02:46:02', '2014-04-11 02:31:08', '2014-04-06 07:47:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 62, 4, '2012-09-03 06:08:24', '2014-01-04 08:44:09', '2011-12-09 22:13:08', '2018-11-28 01:48:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 46, 2, '2011-02-25 22:26:43', '2020-09-03 01:16:21', '2015-03-24 10:50:57', '2016-06-17 02:01:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 96, 4, '2018-02-07 22:39:57', '2013-11-11 17:15:35', '2019-01-14 02:19:21', '2014-11-10 04:18:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 10, 3, '2013-08-10 11:23:48', '2012-10-02 09:58:14', '2017-12-11 09:23:47', '2015-02-01 09:27:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 100, 1, '2017-06-07 01:04:05', '2017-02-14 05:45:35', '2016-05-25 08:43:54', '2015-01-24 11:00:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 30, 4, '2016-01-09 01:36:16', '2013-07-06 17:16:59', '2018-03-01 12:10:48', '2016-03-03 02:52:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 81, 4, '2011-11-23 15:17:03', '2015-03-22 00:05:58', '2016-08-06 14:11:05', '2013-06-04 06:43:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 94, 1, '2013-11-26 12:33:54', '2017-12-28 03:22:40', '2017-02-10 13:17:35', '2020-08-17 19:34:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 17, 5, '2012-03-13 11:05:25', '2018-06-30 13:15:59', '2013-11-18 03:07:45', '2018-12-03 19:32:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 22, 5, '2011-12-19 07:04:58', '2017-09-30 01:14:39', '2017-05-31 14:42:56', '2013-08-22 17:03:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 45, 4, '2015-04-28 00:09:34', '2016-07-11 08:51:49', '2013-04-21 07:37:22', '2020-01-24 10:03:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 47, 2, '2020-09-24 14:35:12', '2020-03-24 08:16:55', '2013-01-28 01:23:09', '2011-05-16 18:08:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 61, 5, '2020-06-16 17:36:28', '2013-05-20 20:10:27', '2018-11-19 03:34:58', '2020-06-03 01:43:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 34, 5, '2013-07-17 05:15:17', '2015-07-08 13:54:07', '2017-10-09 13:12:33', '2013-09-07 13:26:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 54, 1, '2013-04-20 16:01:07', '2011-07-16 18:55:59', '2019-09-22 23:03:08', '2018-01-12 01:03:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 26, 3, '2014-05-29 16:35:33', '2020-11-02 02:00:34', '2012-11-21 09:26:10', '2018-02-13 09:33:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 79, 2, '2016-01-30 00:45:52', '2011-01-01 11:54:04', '2014-02-27 17:42:44', '2017-08-14 05:54:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 80, 4, '2016-01-03 15:17:06', '2017-11-19 04:19:43', '2019-07-16 14:26:51', '2011-01-12 03:45:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 94, 5, '2011-09-23 00:00:48', '2017-01-06 13:36:16', '2011-12-21 08:47:52', '2018-10-15 15:07:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 57, 3, '2016-06-15 10:17:57', '2015-07-04 14:16:58', '2014-06-17 01:38:54', '2015-09-29 07:49:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 47, 3, '2014-03-16 22:04:19', '2016-01-21 22:47:37', '2017-10-09 09:04:31', '2016-07-28 11:45:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 77, 1, '2013-03-22 10:50:05', '2016-11-22 21:02:10', '2017-09-10 05:00:23', '2018-04-29 23:29:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 41, 2, '2018-08-08 20:49:53', '2013-11-16 20:27:15', '2019-05-16 17:06:28', '2017-03-02 16:30:50');

SELECT * FROM friendship_statuses;
TRUNCATE friendship_statuses; 
INSERT INTO friendship_statuses(name) VALUES ('confirmed'),('reject'),('doubt');

SELECT * FROM friendship LIMIT 10;
UPDATE friendship SET status_id = (SELECT id FROM friendship_statuses ORDER BY RAND() LIMIT 1);


-- Таблица статусов дружеских отношений
DROP TABLE IF EXISTS friendship_statuses;
CREATE TABLE friendship_statuses (
  id SERIAL PRIMARY KEY COMMENT "Идентификатор строки",
  name VARCHAR(50) NOT NULL COMMENT "Название статуса",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Статусы дружбы";

-- INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'molestiae', '2017-03-16 05:16:25', '2020-04-25 21:00:54');
-- INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'rem', '2017-08-18 00:55:30', '2019-09-03 06:28:43');
-- INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'et', '2018-03-21 10:41:33', '2020-08-11 08:19:26');
-- INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'cumque', '2015-07-26 04:01:55', '2015-12-30 19:08:27');
-- INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'ipsa', '2017-06-11 11:58:58', '2018-10-28 07:14:00');

SELECT * FROM communities;
DELETE FROM communities WHERE id > 20; # deleted lines from 20 to 100

-- Таблица групп
DROP TABLE IF EXISTS communities;
CREATE TABLE communities (
  id SERIAL PRIMARY KEY COMMENT "Идентификатор сроки",
  name VARCHAR(100) NOT NULL COMMENT "Название группы",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Группы";


INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'Ut sequi ullam repudiandae dolor adipisci.', '2018-12-31 06:59:11', '2019-10-11 13:24:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'Autem eaque itaque laudantium delectus deserunt et.', '2017-10-23 04:07:57', '2011-04-09 14:19:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'Magnam modi quisquam maxime adipisci.', '2011-07-04 01:31:02', '2014-12-15 13:53:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'Voluptatem eos id corrupti quas aliquam.', '2019-02-21 15:00:29', '2012-03-15 09:33:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'Inventore et adipisci est est nisi et.', '2012-03-17 03:05:42', '2016-12-18 02:59:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'Eos labore veniam reprehenderit ipsum inventore.', '2010-12-31 08:45:27', '2017-12-27 03:28:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'Numquam sit incidunt voluptas qui.', '2019-07-23 01:58:12', '2017-04-22 18:37:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'Architecto similique vero nemo veniam totam mollitia explicabo.', '2016-02-03 09:48:39', '2015-06-27 12:05:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'Atque dolore rerum soluta pariatur.', '2014-02-01 23:16:21', '2013-06-14 20:17:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'Aut est dolores quia.', '2020-10-26 04:04:18', '2012-07-22 05:54:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('11', 'Tempora porro et repellat molestiae nesciunt magni quia.', '2019-06-28 10:04:03', '2016-10-05 13:18:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('12', 'Qui enim quo ipsum.', '2013-09-17 04:55:22', '2016-06-13 08:28:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('13', 'Natus vel reiciendis eaque beatae tenetur.', '2017-01-18 13:47:17', '2013-10-12 10:24:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('14', 'Velit blanditiis suscipit commodi quos accusamus consequatur velit.', '2014-09-28 01:10:19', '2018-06-15 10:56:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('15', 'Aspernatur tempore id voluptatem voluptatum atque doloremque.', '2015-10-25 08:06:28', '2012-12-07 22:30:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('16', 'Officia praesentium excepturi quas expedita tempore cumque.', '2020-08-26 12:34:52', '2018-05-22 18:15:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('17', 'Eveniet unde in odio doloribus.', '2011-06-03 16:00:55', '2019-12-26 13:18:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('18', 'Rem debitis pariatur et.', '2015-06-06 02:19:33', '2020-04-10 23:55:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('19', 'Et doloremque ratione dolorum commodi.', '2015-10-13 00:57:22', '2012-06-25 00:00:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('20', 'Tempore est laborum voluptate tempore ducimus.', '2018-02-15 13:23:45', '2016-05-10 09:21:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('21', 'Nam est commodi aliquid sit enim dignissimos.', '2020-09-05 01:34:38', '2015-12-23 10:41:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('22', 'Dolor saepe eum fugit omnis qui excepturi itaque nemo.', '2016-05-14 10:37:01', '2019-09-30 09:06:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('23', 'Animi modi officia aut ex nemo earum inventore.', '2015-09-13 14:38:17', '2014-08-07 02:46:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('24', 'Vel aspernatur laboriosam dolorem nisi totam.', '2017-12-07 12:34:06', '2018-07-04 21:47:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('25', 'Eius beatae molestias accusantium est.', '2015-11-17 16:44:47', '2020-08-21 10:34:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('26', 'Eius ratione qui quia dolor.', '2017-03-23 02:16:06', '2015-02-24 21:58:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('27', 'Ut id porro molestiae id repudiandae quia recusandae.', '2011-04-30 03:57:48', '2011-12-23 03:38:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('28', 'Quo inventore delectus facilis ut at veniam.', '2016-11-19 23:50:45', '2013-03-05 14:09:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('29', 'Cupiditate et et est vel architecto.', '2014-08-30 15:51:03', '2013-03-23 19:20:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('30', 'Dolores placeat corrupti est reprehenderit natus iste fuga.', '2019-12-01 01:15:39', '2016-07-29 02:13:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('31', 'Architecto porro est quisquam et occaecati molestiae occaecati voluptate.', '2019-06-16 00:37:09', '2011-12-07 12:46:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('32', 'Enim totam veniam blanditiis qui quisquam.', '2015-01-08 04:47:31', '2020-11-05 08:33:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('33', 'Totam accusantium fugiat sunt consequatur aspernatur.', '2014-09-30 04:47:42', '2014-09-22 01:26:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('34', 'Quam sint natus animi ipsum vel distinctio vel.', '2014-06-30 00:54:35', '2018-01-03 05:51:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('35', 'Iste ut rerum sed.', '2017-11-16 05:13:17', '2012-12-20 22:53:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('36', 'Consectetur possimus dolores velit a.', '2018-02-09 17:58:30', '2011-07-01 17:42:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('37', 'Aut expedita quos ab vel mollitia perferendis.', '2012-07-14 03:19:22', '2016-02-01 00:34:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('38', 'Iusto expedita illum cumque error eos cum in.', '2020-07-26 17:16:54', '2015-08-25 01:48:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('39', 'Officiis dolorum odio suscipit aut et repudiandae.', '2020-01-10 15:11:16', '2020-06-18 17:13:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('40', 'Omnis est laboriosam sunt sapiente maxime.', '2016-03-31 14:51:26', '2011-07-23 16:36:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('41', 'Corporis sequi maxime iusto facilis et debitis atque.', '2015-08-17 07:47:27', '2018-03-13 21:55:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('42', 'Magnam qui nulla possimus id vitae.', '2016-11-05 13:31:50', '2015-11-22 21:59:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('43', 'Fugiat est ut assumenda voluptatem qui.', '2011-07-10 19:56:13', '2019-06-02 19:06:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('44', 'Accusamus voluptatem sint laudantium et sint.', '2012-07-21 01:41:29', '2017-03-23 16:42:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('45', 'Dolores quis voluptatem voluptate esse eveniet rerum.', '2020-06-04 12:37:22', '2020-04-06 11:49:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('46', 'Sint provident est odio.', '2011-05-21 01:46:37', '2017-01-05 14:15:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('47', 'Ipsum molestias consequatur deserunt.', '2018-10-26 21:47:16', '2015-05-27 08:37:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('48', 'Aspernatur odio porro porro consectetur doloremque.', '2018-11-22 04:36:54', '2015-11-11 14:10:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('49', 'Ullam id aut et doloremque sapiente qui.', '2016-12-27 14:37:06', '2014-02-04 04:32:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('50', 'Fugit incidunt harum molestiae fugit nemo.', '2012-05-30 23:13:15', '2013-05-02 18:28:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('51', 'Hic soluta nobis tempore.', '2013-08-27 23:03:25', '2012-04-14 11:58:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('52', 'Rerum quod et ex accusantium eveniet vitae aut.', '2019-08-08 03:49:01', '2013-05-04 12:56:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('53', 'Molestias et temporibus cupiditate amet odio.', '2020-04-19 14:54:52', '2018-11-12 09:28:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('54', 'Excepturi accusamus et doloribus amet molestiae nihil non.', '2016-12-17 13:13:54', '2015-12-25 01:45:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('55', 'Corrupti rerum et ab fugiat perspiciatis.', '2014-12-10 02:21:50', '2018-11-24 09:15:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('56', 'Repudiandae quos ut id quasi.', '2015-06-29 04:05:45', '2020-04-17 19:25:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('57', 'Ex et perferendis sit aliquam minus saepe exercitationem.', '2011-02-04 09:53:06', '2019-11-13 04:31:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('58', 'Nemo consequatur consequatur debitis voluptatem recusandae aliquam.', '2011-02-21 07:26:41', '2019-06-13 10:33:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('59', 'Libero voluptatem voluptatibus voluptas nisi et quis recusandae molestiae.', '2015-01-06 18:09:25', '2015-02-02 05:23:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('60', 'Qui suscipit ratione dolor quidem quae et.', '2012-04-15 17:00:15', '2011-09-29 14:42:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('61', 'Facilis eveniet aut ut voluptatem odit aut quia est.', '2018-06-05 15:35:38', '2015-02-13 00:23:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('62', 'Placeat inventore dolores omnis maiores explicabo qui maiores.', '2018-11-18 06:28:22', '2012-12-26 13:25:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('63', 'Itaque corrupti eveniet sunt fugit quibusdam.', '2012-03-04 10:10:12', '2016-07-21 18:52:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('64', 'Facere neque consectetur harum voluptatem nemo laborum.', '2017-06-05 19:05:34', '2020-03-16 12:10:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('65', 'Fugit nostrum deserunt facilis a aut.', '2017-12-18 11:52:35', '2016-11-15 21:51:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('66', 'Soluta officiis sequi sit aliquid.', '2017-08-19 06:37:26', '2012-02-05 06:42:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('67', 'Dolores ut aspernatur veniam ut quia.', '2013-10-07 21:51:55', '2014-10-07 16:26:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('68', 'Doloribus fugiat aliquid ut saepe ut dolores.', '2012-01-10 07:44:31', '2013-10-20 11:21:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('69', 'Dolorem et soluta natus autem.', '2017-04-03 10:05:05', '2012-04-06 10:16:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('70', 'Cupiditate pariatur sed vel ut.', '2015-03-18 15:00:54', '2019-09-06 18:06:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('71', 'Repellat dolorum labore rerum provident rerum velit eos.', '2014-06-10 04:27:10', '2014-10-18 21:30:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('72', 'Dicta repellat sapiente fuga.', '2017-01-20 11:58:17', '2016-01-29 21:21:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('73', 'Magnam eos aliquid nihil minus.', '2012-06-15 20:07:12', '2011-07-28 09:33:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('74', 'Id voluptas enim cumque cum.', '2017-01-10 04:47:57', '2018-11-11 03:19:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('75', 'Quo numquam nihil aut iusto sit.', '2014-01-12 07:20:22', '2020-07-13 11:44:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('76', 'Vero et odit vero placeat aut.', '2013-06-14 19:37:51', '2015-08-17 22:09:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('77', 'Quia blanditiis qui est sed eum.', '2016-03-15 00:45:58', '2020-01-27 06:25:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('78', 'Et consequatur est vel commodi veritatis deleniti voluptatibus.', '2018-12-09 18:26:04', '2015-01-16 19:13:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('79', 'Aspernatur quas natus minima ut sit aspernatur.', '2015-06-05 03:02:02', '2012-11-27 23:44:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('80', 'Et sunt corporis qui.', '2017-11-08 13:21:29', '2013-09-27 08:41:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('81', 'Sunt iure suscipit pariatur ad.', '2010-11-26 07:35:20', '2017-04-04 23:52:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('82', 'Commodi repudiandae hic ad voluptas asperiores.', '2018-01-04 07:54:19', '2019-12-05 18:02:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('83', 'Ad nobis eligendi odio eos libero.', '2011-05-11 13:46:36', '2020-05-10 22:27:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('84', 'Illo aut aut odit ipsam et qui.', '2013-07-13 02:25:14', '2015-09-27 10:19:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('85', 'Perspiciatis deserunt aut dolorem enim et.', '2019-03-12 02:44:32', '2014-03-28 22:19:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('86', 'Alias autem et velit consequatur illum aut quo quam.', '2020-03-10 23:04:38', '2020-06-02 21:04:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('87', 'Error ut sed reiciendis labore non qui.', '2016-01-15 03:59:32', '2018-05-25 13:10:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('88', 'Et rerum consequatur quidem dolor.', '2014-09-24 23:39:53', '2015-07-10 07:33:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('89', 'Adipisci in et delectus laborum expedita suscipit.', '2017-07-21 19:16:12', '2015-10-16 06:33:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('90', 'Excepturi accusantium nemo dicta reiciendis voluptatem velit vel est.', '2011-04-23 09:25:40', '2013-08-09 07:39:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('91', 'Perspiciatis in modi deserunt pariatur et est consequatur totam.', '2015-04-14 15:12:55', '2017-08-28 09:10:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('92', 'Assumenda quis velit occaecati culpa et corporis qui.', '2018-01-25 08:39:21', '2011-09-19 22:42:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('93', 'Suscipit sit enim voluptas occaecati ut qui officiis.', '2019-11-27 04:59:54', '2013-12-21 21:29:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('94', 'Exercitationem temporibus minus odio sunt facere necessitatibus.', '2019-09-08 01:17:19', '2018-07-04 15:00:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('95', 'Cum qui quos id quae et.', '2018-04-21 06:09:08', '2014-06-12 10:54:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('96', 'Reiciendis aut id rerum inventore delectus.', '2013-06-03 00:26:16', '2014-10-25 22:52:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('97', 'Officia optio sint recusandae excepturi praesentium.', '2014-09-19 15:11:27', '2020-06-02 00:38:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('98', 'Voluptas similique hic modi exercitationem magnam rerum distinctio.', '2012-08-18 13:05:51', '2013-12-26 23:09:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('99', 'Laudantium qui voluptate nihil consectetur debitis quod.', '2019-05-08 14:13:44', '2014-05-31 15:55:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('100', 'Molestias eveniet error expedita inventore ut sit dolorem.', '2017-11-10 23:42:36', '2020-06-01 05:58:45');


SELECT * FROM communities_users;
UPDATE communities_users SET community_id = 1 + FLOOR(RAND()*20) WHERE user_id < 50; #where снижали вероятность одинаковых ключей


-- Таблица связи пользователей и групп
DROP TABLE IF EXISTS communities_users;
CREATE TABLE communities_users (
  community_id INT UNSIGNED NOT NULL COMMENT "Ссылка на группу",
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки", 
  PRIMARY KEY (community_id, user_id) COMMENT "Составной первичный ключ"
) COMMENT "Участники групп, связь между пользователями и группами";

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 26, '1946-06-29 12:28:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 94, '1987-03-22 12:39:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 47, '1952-11-22 00:47:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 58, '1943-08-02 05:47:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 80, '1939-02-05 11:36:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 99, '2005-07-10 02:20:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 27, '1982-06-17 22:49:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 93, '2019-09-30 05:19:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 7, '1967-07-15 08:40:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 16, '1937-10-17 07:12:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 95, '1939-07-18 09:41:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 45, '2012-12-09 05:16:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 65, '1926-06-23 07:10:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 99, '2013-03-28 10:16:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 41, '1970-08-04 16:45:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 52, '1984-07-01 20:50:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 92, '2004-09-14 16:17:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 34, '1977-09-22 16:54:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 59, '2014-10-11 05:44:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 50, '1978-12-10 14:10:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 86, '2017-08-14 22:43:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 3, '1966-07-26 03:22:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 72, '1996-09-16 13:18:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 76, '1975-10-19 06:55:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 36, '1993-11-22 21:53:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 97, '2007-08-22 16:00:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 89, '2005-06-18 10:43:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 20, '1957-02-08 22:51:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 88, '2002-09-15 18:53:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 19, '1999-06-27 01:28:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 35, '1937-05-27 15:26:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 57, '2005-07-20 17:27:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (33, 88, '2000-02-27 14:22:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 28, '1940-01-10 13:14:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 40, '1956-11-03 15:46:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 63, '1997-03-01 14:12:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 66, '1965-09-28 06:00:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 22, '1995-01-21 17:34:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 42, '1993-01-18 09:12:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 68, '1935-03-09 20:46:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (41, 15, '1939-07-09 05:43:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (41, 35, '1988-06-15 18:31:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (44, 22, '1997-06-04 23:44:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (45, 76, '2004-10-02 11:15:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (47, 64, '2008-03-31 05:55:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (48, 53, '1998-02-14 18:58:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (50, 58, '1958-10-12 11:51:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (52, 2, '1977-07-13 23:09:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (53, 78, '1928-03-28 15:16:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (54, 23, '1927-08-26 03:37:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (54, 33, '1961-09-04 01:09:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (56, 88, '1975-11-08 19:19:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (58, 3, '2007-02-12 13:35:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (58, 70, '1990-03-03 04:53:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (59, 15, '1921-02-23 03:43:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (60, 60, '1937-06-06 14:04:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (60, 61, '1951-09-11 21:00:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (62, 6, '1988-07-29 22:50:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (63, 52, '1941-07-15 20:14:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (64, 16, '1986-06-11 10:34:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (64, 18, '1956-02-25 07:07:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (64, 55, '1967-02-08 23:23:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (65, 56, '1988-07-11 08:40:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (65, 76, '1930-12-28 16:18:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (67, 51, '1957-11-12 11:25:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (67, 65, '1934-01-30 12:12:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (67, 96, '1948-08-14 20:20:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (71, 68, '1955-04-22 03:59:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (73, 76, '1988-12-06 12:01:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (74, 58, '1935-04-07 03:22:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (74, 59, '1980-02-18 11:03:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (75, 40, '1964-08-01 10:10:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (75, 86, '1924-10-09 03:56:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (76, 12, '2010-02-10 02:23:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (76, 86, '1960-07-11 11:09:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (77, 16, '2008-05-28 07:28:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (77, 74, '1979-07-10 20:05:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (77, 83, '2018-07-26 20:58:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (78, 73, '1962-01-07 00:15:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (79, 2, '1998-08-18 11:27:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (79, 35, '2004-09-26 17:28:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (80, 21, '1994-07-16 09:01:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (81, 16, '1944-05-18 07:51:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (84, 71, '1950-12-14 19:50:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (85, 11, '2007-04-15 10:43:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (85, 14, '2007-02-19 22:20:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (86, 18, '1993-06-28 21:14:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (87, 9, '2014-04-04 20:38:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (87, 77, '1958-09-14 16:22:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (90, 3, '2011-07-30 06:33:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (90, 10, '1966-02-10 13:46:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (91, 39, '2020-02-11 09:02:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (92, 30, '1951-01-17 01:24:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (93, 6, '1932-08-26 10:09:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (93, 8, '2010-03-28 15:52:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (93, 63, '1988-02-18 18:22:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (100, 31, '1923-09-14 08:42:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (100, 38, '2014-05-05 20:20:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (100, 40, '1946-10-12 02:54:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (100, 55, '1969-01-07 23:41:57');

SELECT * FROM media LIMIT 10;
UPDATE media SET media_type_id = (SELECT id FROM media_types ORDER BY RAND() LIMIT 1); # update of table with new media types 
UPDATE media SET updated_at = NOW() WHERE updated_at < created_at;

SELECT CONCAT('a','b'); #concatenate strings
UPDATE media SET filename = CONCAT('http://dropbox.net/',metada,'.',(SELECT name FROM filetype ORDER BY RAND() LIMIT 1)); # joined in one str different dsata

CREATE TEMPORARY TABLE filetype (name VARCHAR(10));
INSERT INTO filetype(name) VALUES ('jpg'),('png'),('avi'),('mpeg');
SELECT * FROM filetype;

ALTER TABLE media DROP INDEX filename; # drop UNIQUE constrains
DESC media;

UPDATE media SET size = 10000+FLOOR(RAND()*100000) WHERE size <10000;
UPDATE media SET metada = CONCAT('{"owner":"',(SELECT CONCAT (first_name,' ',last_name) FROM users WHERE id = user_id),'"}');

ALTER TABLE media MODIFY COLUMN metada JSON;
DESC media;

-- Таблица медиафайлов
DROP TABLE IF EXISTS media;
CREATE TABLE media (
  id SERIAL PRIMARY KEY COMMENT "Идентификатор строки",
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя, который загрузил файл",
  filename VARCHAR(100) NOT NULL UNIQUE COMMENT "Путь к файлу",
  size INT NOT NULL COMMENT "Размер файла",
  metada VARCHAR(100) COMMENT "Метаданные файла",
  media_type_id INT UNSIGNED NOT NULL COMMENT "Ссылка на тип контента",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Медиафайлы";

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('1', 23, 'http://www.koch.info/', 4214, 'nostrum', 1, '1967-12-19 23:41:54', '2020-10-01 08:28:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('2', 48, 'http://hauck.com/', 3399, 'reiciendis', 2, '2012-05-27 13:06:25', '1971-09-02 01:11:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('3', 23, 'http://zulauf.net/', 6702, 'eligendi', 3, '1940-10-19 13:30:14', '1937-12-17 03:42:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('4', 79, 'http://west.com/', 1061, 'est', 1, '1941-01-04 04:00:07', '1924-04-20 13:19:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('5', 13, 'http://www.graham.com/', 6590, 'blanditiis', 2, '2011-07-23 10:50:32', '1989-01-14 19:57:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('6', 16, 'http://dicki.com/', 1376, 'voluptatem', 3, '1927-06-14 11:38:07', '1938-05-09 08:14:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('7', 75, 'http://www.feest.com/', 7062, 'ex', 1, '1946-03-06 00:15:06', '1962-12-31 08:07:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('8', 39, 'http://stiedemann.com/', 2829, 'rerum', 2, '1974-05-30 15:43:50', '1975-11-28 20:00:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('9', 31, 'http://www.bruen.com/', 4168, 'et', 3, '1946-07-06 08:00:50', '2007-03-31 02:26:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('10', 23, 'http://kunde.com/', 7925, 'voluptas', 1, '2005-02-04 20:26:01', '1933-04-11 23:31:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('11', 82, 'http://www.mclaughlin.com/', 6868, 'animi', 2, '1968-01-18 21:16:15', '1973-07-12 14:25:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('12', 98, 'http://reichel.org/', 1480, 'assumenda', 3, '1924-01-29 19:54:37', '1941-10-26 02:14:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('13', 95, 'http://haag.com/', 4819, 'laborum', 1, '2013-10-04 06:40:00', '2018-07-23 02:27:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('14', 77, 'http://huelschristiansen.com/', 7646, 'velit', 2, '1927-02-28 07:52:05', '1997-09-15 11:06:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('15', 29, 'http://morissettelynch.net/', 766, 'facere', 3, '1925-01-24 14:46:11', '1956-05-25 12:44:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('16', 42, 'http://turnerohara.com/', 9154, 'quasi', 1, '1933-11-21 01:55:50', '1980-04-27 05:05:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('17', 42, 'http://www.hand.net/', 2177, 'provident', 2, '2014-04-30 22:21:07', '1928-10-13 19:34:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('18', 100, 'http://www.willms.com/', 6117, 'molestiae', 3, '1947-07-11 15:08:24', '1964-10-17 18:04:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('19', 2, 'http://www.white.org/', 8527, 'quisquam', 1, '1929-02-28 01:38:44', '1946-08-05 14:55:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('20', 3, 'http://grahamsimonis.com/', 5294, 'id', 2, '1950-10-24 11:20:52', '1959-08-14 12:34:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('21', 10, 'http://morar.com/', 6363, 'sint', 3, '2009-05-15 09:34:08', '2014-01-30 16:02:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('22', 65, 'http://hyatt.org/', 3251, 'et', 1, '1984-05-18 15:45:08', '1953-03-25 06:11:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('23', 19, 'http://www.bayervon.com/', 3633, 'ut', 2, '1953-03-21 22:10:24', '1989-09-14 00:05:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('24', 38, 'http://www.roob.com/', 7813, 'qui', 3, '2000-01-04 10:20:56', '1934-10-11 21:17:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('25', 70, 'http://carroll.net/', 5972, 'quam', 1, '1951-02-11 11:07:15', '1942-02-25 15:30:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('26', 77, 'http://www.sauer.com/', 975, 'impedit', 2, '2010-04-05 11:21:12', '1934-04-22 12:23:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('27', 28, 'http://kris.com/', 8480, 'est', 3, '2001-02-01 15:04:45', '1928-08-27 22:22:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('28', 66, 'http://www.abbottabernathy.com/', 6374, 'iusto', 1, '1978-12-24 21:56:58', '2011-02-05 07:20:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('29', 63, 'http://www.stanton.com/', 6611, 'omnis', 2, '1926-11-21 22:04:31', '2018-01-30 11:00:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('30', 17, 'http://kling.com/', 3889, 'facilis', 3, '2013-03-10 03:42:58', '1930-04-28 07:38:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('31', 22, 'http://www.balistreribogan.biz/', 1223, 'tenetur', 1, '1982-06-04 07:44:38', '2019-10-18 02:41:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('32', 9, 'http://mayer.org/', 2207, 'fugit', 2, '1942-09-11 20:39:37', '1974-04-06 04:20:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('33', 63, 'http://schaden.com/', 7630, 'placeat', 3, '1949-05-01 23:38:55', '1978-12-05 08:23:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('34', 9, 'http://www.nikolaus.com/', 737, 'rerum', 1, '1973-04-11 09:30:34', '2011-09-27 17:09:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('35', 5, 'http://www.gorczany.com/', 2793, 'modi', 2, '2002-10-15 07:33:58', '1951-12-03 19:15:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('36', 62, 'http://www.hagenesmiller.com/', 2995, 'sequi', 3, '1939-02-02 00:20:09', '1959-04-25 17:31:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('37', 40, 'http://www.hirthebailey.org/', 3580, 'voluptatibus', 1, '1973-04-16 23:41:05', '2010-05-19 22:38:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('38', 82, 'http://wyman.com/', 11, 'aperiam', 2, '1994-12-28 12:10:48', '2009-12-11 14:20:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('39', 87, 'http://www.windler.com/', 2160, 'nihil', 3, '1960-03-15 00:46:32', '2016-02-11 21:07:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('40', 72, 'http://swift.com/', 4711, 'natus', 1, '1964-02-27 13:50:05', '1984-02-11 11:13:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('41', 21, 'http://gloverrice.biz/', 7644, 'libero', 2, '1998-05-13 05:57:10', '1967-11-10 02:38:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('42', 99, 'http://king.com/', 3934, 'voluptas', 3, '1965-09-08 23:40:47', '2017-04-25 11:23:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('43', 1, 'http://dickinson.biz/', 450, 'et', 1, '1975-02-21 10:51:00', '1940-03-07 17:05:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('44', 35, 'http://www.langworth.com/', 189, 'occaecati', 2, '1970-08-29 00:01:05', '1954-06-14 16:19:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('45', 75, 'http://casper.org/', 4208, 'rem', 3, '1939-07-19 08:28:05', '2017-12-03 02:44:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('46', 74, 'http://balistreri.com/', 9490, 'excepturi', 1, '2011-03-18 10:55:32', '1979-11-29 09:05:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('47', 89, 'http://wildermanfay.net/', 5679, 'praesentium', 2, '1986-06-23 14:04:33', '1953-03-21 13:17:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('48', 25, 'http://kshlerinbrakus.com/', 7359, 'voluptatem', 3, '1999-01-12 02:06:36', '1927-08-15 06:08:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('49', 14, 'http://www.howe.info/', 9527, 'est', 1, '1995-09-19 02:11:42', '1992-08-25 11:45:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('50', 54, 'http://www.kunde.com/', 462, 'occaecati', 2, '1966-05-11 16:09:09', '1978-07-24 16:15:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('51', 60, 'http://jacobson.org/', 4440, 'rem', 3, '1952-08-16 10:11:56', '1945-10-04 20:57:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('52', 53, 'http://www.volkman.com/', 5714, 'minus', 1, '1996-02-16 18:21:34', '2010-04-11 17:21:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('53', 27, 'http://kautzer.info/', 1544, 'porro', 2, '1943-01-01 01:12:55', '1976-03-24 07:59:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('54', 24, 'http://www.douglas.com/', 4616, 'nihil', 3, '1975-03-27 04:14:15', '1984-08-14 04:22:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('55', 71, 'http://www.schroeder.org/', 8195, 'commodi', 1, '1928-12-01 13:32:01', '1998-08-10 23:17:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('56', 89, 'http://www.weimann.org/', 988, 'a', 2, '1964-04-12 21:25:34', '2001-04-11 14:34:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('57', 79, 'http://braunkirlin.com/', 3082, 'atque', 3, '1965-12-01 19:55:35', '1923-11-24 12:10:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('58', 25, 'http://gleichnersawayn.com/', 578, 'tenetur', 1, '1981-10-09 18:34:36', '1957-02-08 04:47:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('59', 87, 'http://jerdetorphy.biz/', 5167, 'qui', 2, '1967-08-11 07:33:07', '1971-01-27 02:33:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('60', 53, 'http://runolfssonhand.com/', 6398, 'non', 3, '2015-07-28 03:09:14', '1971-10-15 02:33:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('61', 47, 'http://www.monahan.com/', 9072, 'quibusdam', 1, '1991-04-15 21:59:25', '1993-06-15 23:15:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('62', 48, 'http://nolan.net/', 2182, 'ut', 2, '1934-03-30 16:54:35', '1927-04-09 12:19:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('63', 49, 'http://www.fay.net/', 1906, 'quia', 3, '1982-06-05 04:03:51', '1936-06-14 16:38:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('64', 31, 'http://www.hahn.com/', 2316, 'aut', 1, '1978-11-05 18:01:07', '1950-01-24 08:40:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('65', 57, 'http://www.kuhlman.com/', 4070, 'nam', 2, '1962-04-12 15:54:05', '1976-11-22 09:09:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('66', 44, 'http://www.vandervort.info/', 9271, 'perferendis', 3, '1970-03-12 19:43:52', '1923-12-31 14:08:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('67', 80, 'http://greenholt.com/', 3209, 'minima', 1, '2004-10-25 17:48:32', '1925-01-06 16:26:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('68', 76, 'http://ryanauer.com/', 7754, 'sequi', 2, '1988-11-23 08:11:31', '1996-08-29 07:13:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('69', 85, 'http://ziemann.info/', 8981, 'vitae', 3, '1927-02-08 06:09:38', '1974-03-22 10:15:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('70', 59, 'http://hirthe.net/', 3926, 'aliquid', 1, '1942-07-28 14:04:49', '1941-01-03 09:19:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('71', 73, 'http://toy.com/', 675, 'excepturi', 2, '2014-09-18 03:22:22', '1940-02-10 08:35:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('72', 18, 'http://kautzer.net/', 9143, 'similique', 3, '1946-05-28 00:29:27', '1949-03-12 05:15:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('73', 10, 'http://www.beatty.com/', 7626, 'quo', 1, '1928-07-21 23:53:13', '2001-03-02 15:34:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('74', 30, 'http://www.balistreri.com/', 2866, 'rem', 2, '1991-05-14 04:43:05', '1986-09-20 08:09:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('75', 76, 'http://litteldaniel.com/', 595, 'doloremque', 3, '1976-06-07 09:13:17', '1951-07-03 10:52:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('76', 3, 'http://www.wittinghilpert.info/', 3398, 'voluptate', 1, '2015-08-31 18:32:30', '1994-09-26 02:08:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('77', 48, 'http://www.mosciskiwest.info/', 8236, 'rerum', 2, '2014-05-29 18:13:39', '1955-10-10 23:52:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('78', 44, 'http://mcglynn.com/', 3647, 'iste', 3, '2016-09-19 18:40:54', '1980-10-24 12:54:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('79', 37, 'http://schmidt.com/', 6649, 'voluptatem', 1, '1960-02-01 09:12:59', '2013-06-27 20:37:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('80', 15, 'http://hammeshermann.com/', 7533, 'molestiae', 2, '2000-08-08 07:24:25', '1923-12-13 17:07:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('81', 58, 'http://bartongrant.com/', 7059, 'facilis', 3, '1981-07-10 03:29:04', '1979-06-14 04:16:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('82', 92, 'http://mraz.net/', 5935, 'nobis', 1, '2020-02-06 17:10:19', '1950-11-16 23:39:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('83', 34, 'http://www.weissnat.org/', 1470, 'nostrum', 2, '1959-10-01 21:54:23', '1924-11-29 13:26:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('84', 22, 'http://shieldskrajcik.com/', 7646, 'et', 3, '1996-03-11 14:07:34', '1958-09-21 04:04:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('85', 62, 'http://www.mccullough.com/', 7813, 'incidunt', 1, '1971-01-13 11:47:28', '2016-06-29 00:13:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('86', 67, 'http://www.thompsonbalistreri.com/', 7778, 'in', 2, '1942-10-21 10:27:39', '1924-01-20 17:41:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('87', 100, 'http://www.kemmer.org/', 7690, 'nam', 3, '1974-01-19 08:21:40', '1945-08-13 12:52:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('88', 31, 'http://kundeframi.info/', 8098, 'animi', 1, '1962-02-21 17:43:26', '1978-02-18 19:45:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('89', 19, 'http://jacobson.biz/', 1815, 'voluptatum', 2, '1968-03-12 20:21:26', '1972-04-12 19:21:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('90', 75, 'http://bode.biz/', 1427, 'consectetur', 3, '1978-05-02 14:17:48', '1923-11-28 03:58:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('91', 53, 'http://www.bartell.biz/', 7390, 'nihil', 1, '1921-12-19 14:02:10', '1969-11-26 09:36:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('92', 37, 'http://schaefer.com/', 2425, 'voluptas', 2, '1936-10-22 22:11:37', '1982-11-25 19:59:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('93', 71, 'http://www.abbott.com/', 4714, 'eligendi', 3, '1947-07-18 01:28:26', '1976-10-21 01:37:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('94', 92, 'http://www.parisianhuel.com/', 576, 'aspernatur', 1, '1966-08-08 05:28:57', '1984-12-17 06:36:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('95', 82, 'http://www.cartwrightoconner.com/', 6079, 'repellendus', 2, '1956-08-27 23:10:43', '1921-11-17 06:39:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('96', 46, 'http://www.macejkovichauck.org/', 1733, 'aut', 3, '1974-11-04 12:50:58', '1983-09-18 14:29:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('97', 46, 'http://www.bashirianconsidine.biz/', 3959, 'amet', 1, '1978-06-07 02:43:50', '2000-03-17 19:54:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('98', 62, 'http://www.binsbayer.info/', 4688, 'doloribus', 2, '1924-02-12 05:09:16', '2008-08-17 17:41:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('99', 64, 'http://www.boyer.com/', 6092, 'et', 3, '1942-04-30 12:05:42', '1959-12-26 20:21:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metada`, `media_type_id`, `created_at`, `updated_at`) VALUES ('100', 24, 'http://www.collier.com/', 3022, 'consequatur', 1, '2016-07-30 15:23:52', '1920-12-09 04:59:29');

SELECT * FROM media_types;
DELETE FROM media_types; # delete all data from table, but not clean up the counter
TRUNCATE media_types; # delete all data from table, AND clean up the counter
INSERT INTO media_types(name) VALUES ('audio'),('video'),('photo');

-- Таблица типов медиафайлов
DROP TABLE IF EXISTS media_types;
CREATE TABLE media_types (
  id SERIAL PRIMARY KEY COMMENT "Идентификатор строки",
  name VARCHAR(100) NOT NULL COMMENT "Название типа",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Типы медиафайлов";

-- INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', ' c', '2017-01-02 14:33:34', '2012-10-05 08:53:44');
-- INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'a', '1998-04-16 22:06:48', '1977-08-24 13:10:32');
-- INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', ' b', '1936-07-24 08:11:20', '1937-04-29 19:19:52');

-- Таблица лайков
DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  target_id INT UNSIGNED NOT NULL,
  target_type_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Таблица типов лайков
DROP TABLE IF EXISTS target_types;
CREATE TABLE target_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO target_types (name) VALUES 
  ('messages'),
  ('users'),
  ('media'),
  ('posts');

-- Заполняем лайки
INSERT INTO likes 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    FLOOR(1 + (RAND() * 4)),
    CURRENT_TIMESTAMP 
  FROM messages;

SELECT * FROM posts ;
desc likes;

-- Создадим таблицу постов
DROP table if exists posts;
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  community_id INT UNSIGNED,
  head VARCHAR(255),
  body TEXT NOT NULL,
  media_id INT UNSIGNED,
  is_public BOOLEAN DEFAULT TRUE,
  is_archived BOOLEAN DEFAULT FALSE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);




desc users;
desc media ;
desc user_status ;


-- Добавляем внешние ключи
ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE;
     
ALTER TABLE media MODIFY COLUMN id INT(10) UNSIGNED; 

ALTER TABLE profiles
  ADD CONSTRAINT profiles_photo_id_fk
    FOREIGN KEY (photo_id) REFERENCES media(id)
      ON DELETE SET NULL;
     
ALTER TABLE user_status MODIFY COLUMN id INT(10) UNSIGNED;  

ALTER TABLE profiles
  ADD CONSTRAINT profiles_status_id_fk
    FOREIGN KEY (status_id) REFERENCES user_status(id)
      ON DELETE SET NULL;

DESC communities ;
DESC communities_users ;
desc users;
desc profiles;
ALTER TABLE users ;
ALTER TABLE communities MODIFY COLUMN id INT(10) UNSIGNED;
ALTER TABLE communities_users MODIFY COLUMN user_id INT(10) UNSIGNED;
ALTER TABLE users MODIFY COLUMN id INT(10) UNSIGNED;
ALTER TABLE profiles MODIFY COLUMN user_id INT(10) UNSIGNED;

ALTER TABLE communities_users 
  ADD CONSTRAINT communities_users_users_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE ;
     
ALTER TABLE communities_users      
ADD CONSTRAINT communities_users_community_id_fk
    FOREIGN KEY (community_id) REFERENCES communities(id)
      ON DELETE CASCADE;

DESC friendship ;
DESC friendship_statuses ;

ALTER TABLE friendship_statuses MODIFY COLUMN id INT(10) UNSIGNED;
ALTER TABLE friendship    
ADD CONSTRAINT friendship_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
ADD CONSTRAINT friendship_friend_id_fk
    FOREIGN KEY (friend_id) REFERENCES users(id)
      ON DELETE CASCADE,
ADD CONSTRAINT friendship_status_id_fk
    FOREIGN KEY (status_id) REFERENCES friendship_statuses(id)
      ON DELETE CASCADE;

desc likes;
desc target_types ;

ALTER TABLE likes   
ADD CONSTRAINT likes_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE RESTRICT,
ADD CONSTRAINT target_type_id_fk
    FOREIGN KEY (target_type_id) REFERENCES target_types(id)
      ON DELETE RESTRICT;
     
     desc posts ;
   
  ALTER TABLE messages MODIFY COLUMN id INT(10) UNSIGNED; 
 SELECT *FROM posts;

     ALTER TABLE posts   
ADD CONSTRAINT post_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE RESTRICT,
ADD CONSTRAINT post_media_id_fk
    FOREIGN KEY (media_id) REFERENCES media(id)
      ON DELETE SET DEFAULT ;
    ALTER TABLE posts   
ADD CONSTRAINT post_community_id_fk
    FOREIGN KEY (community_id) REFERENCES communities(id)
      ON DELETE SET DEFAULT;  
     
     
ALTER TABLE messages DROP FOREIGN KEY target_type_id_fk;

desc messages ;

     ALTER TABLE messages  
ADD CONSTRAINT message_fromuser_id_fk
    FOREIGN KEY (from_user_id) REFERENCES users(id)
      ON DELETE RESTRICT,
ADD CONSTRAINT message_touser_id_fk
    FOREIGN KEY (to_user_id) REFERENCES users(id)
      ON DELETE RESTRICT ;
     
     desc media ;
    ALTER TABLE media  
ADD CONSTRAINT media_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE RESTRICT;
     
     
     
     
     
-- Рекомендуемый стиль написания кода SQL
-- https://www.sqlstyle.guide/ru/

-- Заполняем таблицы с учётом отношений 
-- на http://filldb.info

-- Документация
-- https://dev.mysql.com/doc/refman/8.0/en/
-- http://www.rldp.ru/mysql/mysql80/index.htm


 