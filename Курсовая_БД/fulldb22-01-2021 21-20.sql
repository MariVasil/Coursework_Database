#
# TABLE STRUCTURE FOR: accounts
#

DROP TABLE IF EXISTS `accounts`;

CREATE TABLE `accounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `numder` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` int(10) unsigned NOT NULL,
  `countries_id` int(10) unsigned NOT NULL,
  `currencies_id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `balance` decimal(18,4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `numder_UNIQUE` (`numder`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_accounts_users_idx` (`users_id`),
  KEY `fk_accounts_countries1_idx` (`countries_id`),
  KEY `fk_accounts_currencies1_idx` (`currencies_id`),
  KEY `user_currency` (`users_id`,`currencies_id`),
  KEY `currency_user` (`currencies_id`,`users_id`),
  CONSTRAINT `fk_accounts_countries1` FOREIGN KEY (`countries_id`) REFERENCES `countries` (`id`),
  CONSTRAINT `fk_accounts_currencies1` FOREIGN KEY (`currencies_id`) REFERENCES `currencies` (`id`),
  CONSTRAINT `fk_accounts_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('1', '6fdfae0e-977c-3f04-8885-022848b692ac', 1, 1, 1, '2004-12-21 09:20:35', '627797673.5347');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('2', 'df4a64a6-92df-3bdd-9569-168324ed8e0b', 2, 2, 2, '1998-08-19 18:44:26', '714817400.8527');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('3', '9f3b9a8c-5a5e-38be-8416-b412a680011f', 3, 3, 3, '2020-01-11 13:14:26', '686169906.1297');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('4', '15043403-1308-3b0d-ba90-bf344643ea0a', 4, 4, 4, '1998-11-17 11:34:53', '584745434.9012');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('5', '1b1c0ac4-0ef2-3a7b-be5e-d34041b3f799', 5, 5, 1, '1991-03-23 11:25:50', '133632831.2873');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('6', 'b613a922-4068-304b-b2e7-c2bc6d74dedb', 6, 1, 2, '1977-12-12 00:14:05', '283553661.0485');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('7', 'e0863921-8464-364f-a932-5fcfa913db8a', 7, 2, 3, '2005-08-31 23:03:55', '64995597.6588');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('8', '84a822d8-0959-370f-be10-585805c3a5aa', 8, 3, 4, '1982-06-16 11:42:04', '602758660.0258');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('9', 'efe3236d-b011-3ebf-b46e-d7cd8ca4e00f', 9, 4, 1, '2005-03-25 04:34:03', '116089665.3576');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('10', '1cb78cc6-3f90-3f49-9423-3b3139a2260d', 10, 5, 2, '2008-11-28 13:26:19', '480786252.4959');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('11', '2b88ac01-f9ed-3f10-b977-f1a201ba22c1', 11, 1, 3, '2004-05-29 01:53:23', '933598937.1543');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('12', 'cbac29eb-bcd2-31cc-9245-758303e458a1', 12, 2, 4, '1993-04-06 16:54:23', '112226618.2336');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('13', '9dd909a9-8e79-387f-bda1-b761fc9ba01d', 13, 3, 1, '2004-04-22 19:32:02', '409746576.3394');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('14', '1a47631a-1897-3881-ac00-8cde01efbe93', 14, 4, 2, '1984-11-09 19:00:35', '920773758.5642');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('15', '37be19ec-a6e2-3784-8c3d-7c66b5331d69', 15, 5, 3, '1980-05-04 12:10:07', '863337615.1576');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('16', '657e4a9a-aba2-31bc-974a-f462dabb8caa', 16, 1, 4, '2006-11-29 11:40:50', '192061862.8492');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('17', 'a30b74dc-f068-3497-b736-d52d4bb5452a', 17, 2, 1, '1975-09-01 15:08:38', '592043612.9579');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('18', '05df42e6-1461-3bc6-9631-9c81cf15ee89', 18, 3, 2, '1986-04-13 15:48:25', '778985823.2256');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('19', '3971b3ff-a260-30ed-8de0-00f09bae24e6', 19, 4, 3, '2015-08-17 21:27:38', '698808101.1575');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('20', '4dba99c5-dc92-3af1-9650-c0e0b2bccf85', 20, 5, 4, '2009-01-05 23:23:40', '458163145.1256');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('21', '2d713d01-4f25-320c-a49e-41084d2d8751', 21, 1, 1, '1991-08-30 13:45:23', '59539452.6167');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('22', 'c4d0f2b5-2f61-32e8-b833-f87d68791e47', 22, 2, 2, '1971-08-28 19:26:44', '773684402.0319');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('23', '9ee42328-ae63-3ee0-a224-0b6b15c85bc6', 23, 3, 3, '2019-06-19 02:18:18', '730654989.1689');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('24', '6e22b10d-08dd-3108-9fe9-ca61d5315464', 24, 4, 4, '2006-01-21 04:47:27', '911313695.3764');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('25', 'c179b5ca-19b7-3589-82ae-929e90aea491', 25, 5, 1, '1981-08-29 07:26:53', '130229632.8473');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('26', '3187808c-84db-354b-aae2-1e99cf80cb55', 26, 1, 2, '1981-01-07 00:25:37', '464531976.5203');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('27', '3d44aeef-c2d7-3b74-bb2d-b82b6a8918fc', 27, 2, 3, '1994-09-16 06:42:38', '336031783.6452');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('28', '181d1dbc-40e2-32b4-8dab-c9cf32c3001e', 28, 3, 4, '1982-04-30 03:26:11', '25118678.7214');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('29', '7798718a-fbee-34c6-8e14-5f094fca8c1a', 29, 4, 1, '1997-03-29 09:45:53', '973319605.2114');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('30', 'cab5f9a5-f5a1-33b5-916a-9ca9b9b70668', 30, 5, 2, '2018-09-11 12:52:29', '985516392.4695');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('31', 'c613e19c-6f5a-3e43-86eb-f6f13b663cea', 31, 1, 3, '1997-01-03 09:29:48', '267285507.5414');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('32', '50fb6bbd-a397-3f1f-b1be-d65975c680e8', 32, 2, 4, '1976-10-31 09:32:17', '399061097.5684');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('33', 'e52b7dc9-a9ea-335c-a69f-cabd0557a2e7', 33, 3, 1, '2019-05-30 08:24:51', '389758617.9178');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('34', '8b841bf7-7403-36ef-a072-8c8ed617697a', 34, 4, 2, '2008-04-27 16:07:08', '333139520.0044');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('35', '541c4661-7dd3-3847-bd9a-72c0662f82a0', 35, 5, 3, '2003-12-25 18:08:37', '770300270.9809');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('36', '71493d11-45d0-3194-86b9-022175ca411d', 36, 1, 4, '2010-06-03 23:10:09', '579031672.2159');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('37', '5990a7d8-729f-3802-9f1a-ddfd31e9854d', 37, 2, 1, '1978-06-22 11:17:51', '739038307.9635');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('38', 'c4732041-71dc-3b89-8b9d-9ea52c43eddd', 38, 3, 2, '1988-08-17 13:16:33', '598562177.3799');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('39', 'dfcef61d-3ee0-3fb1-9852-652bfb27f7ab', 39, 4, 3, '1985-11-30 13:21:37', '752536682.9400');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('40', '52a2e627-6066-32e9-9318-a902d2e511e1', 40, 5, 4, '1970-09-27 13:21:16', '682596664.1130');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('41', '99d9a014-39a8-32da-8593-f04365068f66', 41, 1, 1, '2011-06-09 10:55:36', '189234088.8039');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('42', '0b0ce75e-2c5a-351d-b1f2-c0d786bd06e2', 42, 2, 2, '1975-04-08 04:42:55', '687394537.2213');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('43', '8820627f-a050-3199-8fb6-a87f7118eaa6', 43, 3, 3, '2011-09-19 11:17:52', '407147272.5530');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('44', 'cb53b396-1254-336b-92f0-99fa5183c153', 44, 4, 4, '1996-02-29 01:14:55', '195269306.6162');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('45', '059fdbc2-ff1a-31ff-af63-16bc333fe934', 45, 5, 1, '2011-10-08 10:19:47', '378894130.0844');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('46', '7f0af715-fbfb-3970-b0d8-5a4f63f312cf', 46, 1, 2, '1999-08-07 03:12:28', '144337581.1448');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('47', '3b3df7c5-89cf-33bf-80f7-c56de7469fd8', 47, 2, 3, '2007-05-04 07:24:11', '378158898.2608');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('48', '1354629b-1d72-3238-bf90-1a808b02a364', 48, 3, 4, '1993-09-11 05:13:27', '493758021.4852');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('49', '5c949e74-e99a-30b1-8003-b381c4860628', 49, 4, 1, '1970-03-09 06:15:36', '799956840.5835');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('50', 'd0462599-5c28-31a2-b294-77d4b849dbfc', 50, 5, 2, '1993-08-29 00:01:45', '-567381.9184');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('51', '1812bd6d-35fb-3de2-a6ea-9535338c7f13', 51, 1, 3, '1999-08-12 15:19:10', '557002558.8056');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('52', 'd7d18deb-c850-3395-9b4d-e1fe9dc9f3da', 52, 2, 4, '2017-12-21 23:57:58', '813266329.7337');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('53', '426d9599-ecca-3f73-bdfc-64a13afa0879', 53, 3, 1, '1987-04-26 00:29:44', '303717202.4994');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('54', '73a5b8e8-682f-38f8-8f14-74740ff9a713', 54, 4, 2, '1986-08-30 03:58:26', '30234655.5040');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('55', '19b3ea87-3947-3c78-b1b6-0f178153972d', 55, 5, 3, '2017-03-04 18:16:16', '287012377.5386');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('56', 'd2648f61-ba12-3dd6-bbf0-1a1145d5cd4e', 56, 1, 4, '1980-09-24 04:24:13', '203961931.4051');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('57', 'b67fe040-21ac-3177-a20f-83e6cb270b59', 57, 2, 1, '2009-05-25 22:31:12', '385948977.7550');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('58', 'ba43ba44-6883-3609-a745-bc7e1fe557fe', 58, 3, 2, '2007-07-19 16:42:13', '966051493.2751');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('59', '7b57d15a-0f0d-3721-91e3-57fe15da6e34', 59, 4, 3, '2000-04-08 02:44:04', '837178389.9853');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('60', '839f7da4-e268-3bfc-b7bb-107d89199a97', 60, 5, 4, '1988-12-16 02:30:58', '273879930.3951');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('61', '78740bd6-706d-3080-b5c8-dede91fe8a52', 61, 1, 1, '1970-11-26 14:23:16', '289060261.0698');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('62', '29820d9e-b160-35a2-b369-895bdaedb604', 62, 2, 2, '1993-05-25 18:13:18', '615088521.4001');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('63', 'aef3b45b-b00e-3bf4-95ec-a378029ada79', 63, 3, 3, '1974-07-08 08:47:10', '439596255.8108');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('64', 'd8ae4d2f-463b-3bfc-9f48-64bbd44e1891', 64, 4, 4, '2018-10-03 06:53:56', '174261154.7889');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('65', '47bb0a69-01db-3410-9997-f03a405f9089', 65, 5, 1, '1979-09-25 14:40:51', '426619524.9000');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('66', 'b6307507-ef78-3543-bb52-948b89686479', 66, 1, 2, '1970-08-24 20:42:32', '593632361.9116');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('67', 'a4915f3f-3741-33b3-aa86-bbeb4fd2f6d2', 67, 2, 3, '2015-12-18 10:40:30', '846347148.0692');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('68', 'c700fb79-0b35-36c3-955d-85683e78d34a', 68, 3, 4, '2009-08-28 14:50:35', '21230161.0225');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('69', '4558d5d9-d45c-38d1-911a-b894cdfc1a2b', 69, 4, 1, '2017-05-23 05:04:20', '278851513.1686');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('70', 'b938b1dc-ca87-3687-9918-d75dbc16e95d', 70, 5, 2, '1989-04-23 04:33:51', '600342711.4695');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('71', '66b1fee5-badf-35cb-b81b-dfeada347ce3', 71, 1, 3, '1985-04-24 14:40:33', '501587246.7866');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('72', '782f5cd7-9f16-3853-9555-2aa909d25ddf', 72, 2, 4, '1978-06-09 18:33:47', '191535102.1080');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('73', 'cbe5e9d9-9d94-3073-b49c-f7c36c1d5389', 73, 3, 1, '1988-09-28 17:29:02', '739301378.8259');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('74', '31f3740e-9ad7-33e1-914f-efb4c6566bf6', 74, 4, 2, '1998-01-02 19:05:31', '354195037.3215');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('75', 'd21f95d0-b248-3f25-aeeb-a5cbc88aae15', 75, 5, 3, '2006-06-09 05:15:31', '459381075.6423');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('76', '734b9ec3-4097-3639-a596-3c0cd4fce562', 76, 1, 4, '1984-07-11 16:38:24', '839747860.7147');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('77', '618b199d-01a0-35d3-8829-f90892e266b7', 77, 2, 1, '2006-02-14 00:10:48', '480336414.3542');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('78', '52ce2a37-0c6a-3eef-b4a5-4d8f7e6a1272', 78, 3, 2, '1987-01-10 08:39:41', '274490229.9419');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('79', '992138f7-f94a-32e5-81e4-4adf261b5a93', 79, 4, 3, '1988-09-21 01:34:32', '969086461.2149');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('80', 'd4619d72-3ddc-3281-924f-e48be04a5d37', 80, 5, 4, '1987-08-13 15:32:11', '648668028.9137');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('81', 'e52a214c-400d-354b-aacc-531e3c0eee7b', 81, 1, 1, '1982-07-31 12:02:53', '785874037.5043');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('82', '2f7fbe64-43ea-3263-a68d-c7ed0df59e99', 82, 2, 2, '1986-08-07 21:33:37', '437573428.9336');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('83', 'd62baf31-ee36-3297-8b10-75c3c52a2814', 83, 3, 3, '1988-10-12 16:44:55', '445189625.8296');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('84', '387de81d-e694-31a4-8790-1452bb89fee9', 84, 4, 4, '2020-08-24 14:34:35', '508261794.0659');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('85', '223042c5-e982-3861-b36e-3e23f363d092', 85, 5, 1, '1970-05-11 15:05:03', '300173046.3381');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('86', 'ab11c783-4c74-3b55-8ce7-ade7e8a31e8a', 86, 1, 2, '1987-03-12 05:27:16', '759932751.8509');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('87', 'b404bf41-8563-3111-b7bd-071df46c5702', 87, 2, 3, '1995-02-14 19:05:25', '344109832.1727');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('88', 'c331c683-2eaf-3b45-9b6a-db948e7fd59d', 88, 3, 4, '1999-12-23 04:37:56', '304151196.5200');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('89', '4f160dde-2ab6-330d-8692-1b5549944316', 89, 4, 1, '1972-01-10 19:55:49', '958342858.7441');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('90', '03760c11-738f-347d-b7a1-b1b5769dfd70', 90, 5, 2, '2000-01-02 04:43:24', '744101048.8535');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('91', 'e7b7032f-4e63-34c1-ae18-91e0d53ea13b', 91, 1, 3, '1972-06-23 22:50:07', '359812920.0242');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('92', '4555e75d-c5af-3cb7-8631-62384069786d', 92, 2, 4, '2011-03-09 15:07:22', '182832363.2966');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('93', '4c020dce-6ab5-3208-aa9b-a3a8c09c0811', 93, 3, 1, '2007-03-18 19:58:22', '223065417.6721');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('94', '0c071574-3207-3329-ada2-3abe2edaef78', 94, 4, 2, '1985-06-13 00:04:54', '207665729.0542');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('95', '0207d780-fef4-3db1-90a1-710ccbd4b721', 95, 5, 3, '2015-04-11 17:18:02', '343625207.4430');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('96', '3dbc55ff-8c69-3a46-a838-a77dd4cb2c6e', 96, 1, 4, '1994-04-04 20:50:14', '331552388.5112');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('97', 'd6b88b31-589c-3e92-a242-4dc3aec895e9', 97, 2, 1, '2019-01-08 19:21:11', '775401322.3786');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('98', '2997ac3d-78f0-3e84-bda4-af6428faefcd', 98, 3, 2, '1977-02-27 17:59:07', '994268789.1831');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('99', '549f9586-28f2-36ab-bca8-29f0ab3824a1', 99, 4, 3, '1979-02-11 08:34:40', '696401098.0435');
INSERT INTO `accounts` (`id`, `numder`, `users_id`, `countries_id`, `currencies_id`, `created_at`, `balance`) VALUES ('100', '23f2e33a-4715-396d-a636-0ed595cc7ac6', 100, 5, 4, '1975-06-21 04:55:14', '292009779.5498');


#
# TABLE STRUCTURE FOR: countries
#

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_code` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `country_code_UNIQUE` (`country_code`),
  UNIQUE KEY `country_name_UNIQUE` (`country_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES (1, ' FR', ' France');
INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES (2, ' IT', 'Russia');
INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES (3, ' US', ' China');
INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES (4, 'RU', ' United States of America');
INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES (5, ' CN', ' Italy');


#
# TABLE STRUCTURE FOR: currencies
#

DROP TABLE IF EXISTS `currencies`;

CREATE TABLE `currencies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `currency_code` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `currency_code_UNIQUE` (`currency_code`),
  UNIQUE KEY `currency_name_UNIQUE` (`currency_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `currencies` (`id`, `currency_code`, `currency_name`) VALUES (1, ' EU', '  Chinese Yuan Renminbi');
INSERT INTO `currencies` (`id`, `currency_code`, `currency_name`) VALUES (2, ' CN', 'United States dollar');
INSERT INTO `currencies` (`id`, `currency_code`, `currency_name`) VALUES (3, ' RU', ' Russian ruble');
INSERT INTO `currencies` (`id`, `currency_code`, `currency_name`) VALUES (4, 'USD', ' European euro');


#
# TABLE STRUCTURE FOR: input_methods
#

DROP TABLE IF EXISTS `input_methods`;

CREATE TABLE `input_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`template`)),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `method_name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `input_methods` (`id`, `name`, `template`) VALUES (1, 'online banking', NULL);
INSERT INTO `input_methods` (`id`, `name`, `template`) VALUES (2, ' qiwi', NULL);
INSERT INTO `input_methods` (`id`, `name`, `template`) VALUES (3, ' yandex money', NULL);
INSERT INTO `input_methods` (`id`, `name`, `template`) VALUES (4, ' credit card', NULL);


#
# TABLE STRUCTURE FOR: input_transactions
#

DROP TABLE IF EXISTS `input_transactions`;

CREATE TABLE `input_transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_account` bigint(20) unsigned NOT NULL,
  `amount` decimal(18,4) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(10) unsigned NOT NULL,
  `method` int(10) unsigned NOT NULL,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`details`)),
  PRIMARY KEY (`id`),
  UNIQUE KEY `number_UNIQUE` (`number`),
  KEY `fk_input_transactions_accounts1_idx` (`to_account`),
  KEY `fk_input_transactions_transaction_statuses1_idx` (`status`),
  KEY `fk_input_transactions_input_methods1_idx` (`method`),
  KEY `created_at` (`created_at`),
  CONSTRAINT `fk_input_transactions_accounts1` FOREIGN KEY (`to_account`) REFERENCES `accounts` (`id`),
  CONSTRAINT `fk_input_transactions_input_methods1` FOREIGN KEY (`method`) REFERENCES `input_methods` (`id`),
  CONSTRAINT `fk_input_transactions_transaction_statuses1` FOREIGN KEY (`status`) REFERENCES `transaction_statuses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (1, 'c0f83bbb-ca0b-36b9-bca7-a366c897f195', '1', '97732.7566', '2017-01-08 02:02:11', 1, 1, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (2, 'fb31e7f6-ae16-36f8-88ba-4de6c17fbe8a', '2', '15732.2493', '2015-05-18 16:10:59', 2, 2, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (3, 'f57e6dd1-8d29-3938-9783-48994d9d61cb', '3', '27079.9771', '2002-01-21 17:42:13', 3, 3, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (4, '8ea27176-7654-37d1-84b7-4c59e6c19b4d', '4', '21825.8070', '2017-04-22 01:27:46', 4, 4, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (5, 'cd2c27b5-8f38-35fc-89d0-79b4e7548c96', '5', '60864.8514', '2003-01-31 04:09:16', 5, 1, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (6, '01fb81a2-fe1b-3c6d-9ecc-55f8be4c876f', '6', '66606.3044', '1987-12-09 01:39:33', 1, 2, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (7, '2a07fcf0-95d1-3d18-93ed-6e4a2edcff27', '7', '41234.9495', '2008-04-25 20:36:29', 2, 3, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (8, '0c5593d5-e06f-3f77-abb0-b6391e54e435', '8', '42456.9313', '1986-02-27 08:22:15', 3, 4, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (9, '059caeb2-831d-3c94-b903-6616b43a5cc7', '9', '49695.7945', '2017-05-15 22:37:08', 4, 1, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (10, '9ffed77e-8f27-3ee7-bf96-68381df7be3c', '10', '98585.2807', '1986-04-12 09:41:22', 5, 2, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (11, 'af75b620-5038-3929-9f1a-7233193c2071', '11', '95095.1648', '1998-05-14 20:19:36', 1, 3, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (12, '19cd99e7-61c7-3cfb-a930-1b8bbe391302', '12', '41064.9294', '1991-06-22 20:31:09', 2, 4, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (13, '98b9826b-eca8-36bb-b429-b51dec56230a', '13', '72739.4488', '2016-09-12 14:27:56', 3, 1, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (14, 'ba734f32-0c4c-3a45-b5ab-ea694b129939', '14', '34816.9506', '1997-03-06 00:00:05', 4, 2, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (15, '8b8229d8-3851-3a66-8d7e-a58637dec9a4', '15', '19742.8840', '2013-10-15 01:01:00', 5, 3, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (16, '9814723b-153f-3d5a-a1e4-cd9620be395d', '16', '67739.4387', '1995-10-13 02:18:33', 1, 4, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (17, 'cdb142e3-fb02-3eae-9088-05dcfb27dfcf', '17', '78810.7119', '2007-06-19 15:04:10', 2, 1, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (18, '3ab7c763-0357-39bc-b706-d023a37973bd', '18', '5047.4876', '2014-01-14 08:36:53', 3, 2, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (19, '96fb2fb4-fea8-38ec-975f-6c8fdb716417', '19', '6811.9636', '2008-05-22 18:56:22', 4, 3, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (20, 'e2c07532-c884-37ec-a542-af713185b016', '20', '37176.0905', '2009-04-28 03:56:53', 5, 4, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (21, '5a75f66a-78d6-36cd-919b-3e8447b221c8', '21', '7505.3877', '1984-03-13 03:48:24', 1, 1, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (22, '9db9a01d-03e8-3b96-9b10-aa892946b57a', '22', '6577.4977', '1976-04-22 04:16:27', 2, 2, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (23, '883dbffd-24a0-3e63-811a-99610def1e45', '23', '48733.5866', '2005-12-14 07:33:38', 3, 3, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (24, 'e9f849ea-5652-3def-b8f2-547c7650947d', '24', '72261.1060', '1983-07-09 06:53:33', 4, 4, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (25, '932376f0-1777-3f9f-b099-7837f753ef80', '25', '77644.0246', '1975-03-21 21:26:19', 5, 1, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (26, '80aa2653-0159-382c-a51b-c46482e0c4ae', '26', '38520.9640', '2010-08-16 12:33:43', 1, 2, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (27, 'fbe76811-bbf0-3e2b-9d07-d457b5635131', '27', '17320.0452', '2007-08-19 07:35:15', 2, 3, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (28, '0c3e18c6-7ddc-336a-8a24-bec04ee6c2ab', '28', '48524.6996', '1976-05-23 21:43:36', 3, 4, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (29, 'b4e56299-934f-3104-a97c-8fc482c62b00', '29', '96450.2691', '2017-10-16 14:56:12', 4, 1, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (30, 'd42a0da6-f4c4-308d-bd4f-19f747757f7a', '30', '4539.4279', '1988-06-21 11:42:31', 5, 2, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (31, '41ba1786-fa3e-35e0-a7a3-39f5e1786fd2', '31', '16809.8549', '2017-09-02 18:09:12', 1, 3, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (32, '856cdb76-9bf4-388a-b806-4a2eece5ebac', '32', '31975.6678', '2018-10-22 14:45:21', 2, 4, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (33, 'f83c1ca7-1e15-330d-b396-caf583956cd0', '33', '56966.4751', '2015-04-10 07:16:03', 3, 1, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (34, 'd1d2fa82-160b-3aba-9fa8-e2d42abfa77d', '34', '39206.1784', '1975-01-17 11:30:37', 4, 2, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (35, 'ac215e94-1180-3cb3-a183-2fad2b8be98f', '35', '27621.5055', '2002-03-29 20:26:38', 5, 3, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (36, '73b3085b-e8fc-3d86-ac77-b3905e45a05d', '36', '76624.1264', '1996-10-15 06:35:39', 1, 4, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (37, '941773e0-4b09-3108-bcb1-27aa312a8b48', '37', '23031.5491', '2001-02-10 03:55:57', 2, 1, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (38, '47f34613-e005-3f37-b914-b6e44b360967', '38', '79153.9039', '2018-09-29 13:27:54', 3, 2, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (39, '483d6cd4-7e43-3158-8d0d-b71a648db67c', '39', '60370.0907', '1986-05-28 17:22:13', 4, 3, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (40, 'd2b1543f-c1a9-374c-b244-a956115352c0', '40', '24940.7962', '1979-01-26 01:31:54', 5, 4, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (41, '9d0ec242-fdeb-3f74-9281-c9eb6de9ba9e', '41', '21249.5301', '1996-03-04 11:45:18', 1, 1, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (42, '0e1eea2b-004f-3f1c-aab9-f491c6ba5192', '42', '60601.0077', '2016-08-31 21:37:30', 2, 2, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (43, 'f04a77cd-a91b-366e-b79e-0eaead28a5a4', '43', '4714.5499', '1970-01-07 20:49:21', 3, 3, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (44, 'c6f52412-1e1c-3d38-93e3-52574104e160', '44', '59512.2083', '1971-01-12 19:39:31', 4, 4, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (45, 'ee008b0f-5f1c-336d-b3b9-9eb5636309a5', '45', '19324.0632', '1993-06-25 09:26:28', 5, 1, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (46, '7a9c451a-3d1b-354c-92c8-87e2fad59fad', '46', '10858.2669', '2004-11-05 22:01:22', 1, 2, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (47, 'd2f07a62-4743-39d1-ae87-d8345e283e71', '47', '78014.6035', '1996-10-03 22:56:12', 2, 3, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (48, 'c35ec60d-8591-3e5b-9e3a-a25ecec80b7e', '48', '79358.8670', '1999-03-04 09:57:39', 3, 4, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (49, '56016fd8-f878-3872-bfab-71baa04b7c78', '49', '75211.2109', '1985-01-14 00:23:47', 4, 1, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (50, 'b1de55cf-b5ac-3808-a0cf-04e1452c43fc', '50', '53412.7361', '1976-06-28 23:30:49', 5, 2, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (51, 'a5a1b9c6-497d-3a94-b9f1-fbcbb71e8f56', '51', '39155.8747', '1972-09-07 04:47:19', 1, 3, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (52, '11577164-8ed2-3bd4-9779-6d10d3c1a068', '52', '42524.9105', '1971-06-25 10:20:18', 2, 4, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (53, 'b2052e75-dc96-341d-b359-49e72c0cfeaa', '53', '73648.5520', '2015-01-08 15:05:57', 3, 1, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (54, '8a8ae03f-c8bd-3d4e-858d-e7cb9b4accd3', '54', '93056.6595', '1976-08-27 14:28:08', 4, 2, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (55, '21dbcfcb-7229-38fd-9333-16b6423a4fef', '55', '78816.6160', '2014-07-22 14:39:14', 5, 3, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (56, '966cee5e-42b8-31fb-84cb-f58d3969a1c9', '56', '9619.1863', '2009-11-16 02:14:38', 1, 4, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (57, '73a0cdc0-253d-3bd9-b219-f3f278e473aa', '57', '56471.8218', '1978-08-07 16:52:57', 2, 1, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (58, '56e06387-9e37-337f-8f02-1791cc41e4bc', '58', '58015.3640', '1992-01-04 22:48:08', 3, 2, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (59, '17642429-d8b4-3d12-9dbd-d51da2a2ca18', '59', '78436.7921', '2010-05-27 23:41:11', 4, 3, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (60, '1812aadc-24a8-30dd-9acf-0ef5fdc11943', '60', '52658.2151', '1972-07-23 18:43:57', 5, 4, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (61, 'da783883-0a71-3671-9eab-ff9c79bc42b7', '61', '29464.4188', '1998-08-10 17:04:29', 1, 1, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (62, '73be695b-6aab-3396-b980-b72f604f3cdd', '62', '75778.3257', '1976-07-09 09:52:00', 2, 2, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (63, 'd84f7633-84e5-3490-b001-cf0306910cc3', '63', '44573.7229', '1995-08-23 15:44:09', 3, 3, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (64, '2e2d89c4-e807-3a38-9327-811ca1d29d05', '64', '3889.1511', '1979-03-25 02:09:46', 4, 4, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (65, 'fabdea63-48d3-39b6-b123-73ad0fb2271e', '65', '10267.7691', '1993-08-09 01:15:27', 5, 1, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (66, 'c91e64de-3942-3e1c-84e2-72fb3159c960', '66', '82537.4291', '1983-11-03 04:31:13', 1, 2, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (67, 'f93c1980-75f1-3bb6-92df-fcae9cc6e95a', '67', '46528.6556', '1981-03-31 10:14:28', 2, 3, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (68, '8e4eb2ef-643d-3c50-a553-57f49c62c213', '68', '58070.0618', '2008-07-29 21:24:29', 3, 4, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (69, '8b2fb0cb-b4b6-3273-ae09-98e02f194257', '69', '93253.3207', '2004-07-16 20:28:34', 4, 1, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (70, 'd7de94b0-1fb8-3963-a350-6f00441d0f42', '70', '21580.0861', '1998-10-12 00:49:25', 5, 2, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (71, '87713512-aa79-3b3b-9ca8-74c210c51ca2', '71', '76677.2947', '2003-11-27 13:00:05', 1, 3, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (72, '36a6d4a1-b48a-3c50-b79e-9539550792fd', '72', '3122.8114', '1970-03-15 01:48:14', 2, 4, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (73, '4e92f5d9-cb9e-3d15-aca8-fa640e7d924d', '73', '43712.4064', '1973-12-31 07:09:57', 3, 1, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (74, '9d316dda-6881-3b1e-bc4b-ffe6f8c7c9fa', '74', '84384.6381', '1970-09-26 23:53:04', 4, 2, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (75, '53b0626d-18ac-322b-8ec1-c5bd35c927ce', '75', '98369.5031', '2010-12-22 14:25:26', 5, 3, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (76, '499ab260-b5bf-3f6a-a6b3-72b91fd63b57', '76', '68795.7230', '1987-01-29 16:17:38', 1, 4, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (77, '55fed739-78c2-36aa-b871-db79941ebb99', '77', '45855.7097', '1974-12-01 18:16:36', 2, 1, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (78, '1300fd29-0976-399a-b3c8-a145595d12a3', '78', '26308.8960', '2006-09-20 15:24:59', 3, 2, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (79, '218140da-87d5-3449-9afc-6afc482b1dcf', '79', '97586.2994', '1989-09-19 14:18:20', 4, 3, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (80, '06ed218f-f1c3-3857-a9fc-90eb2dbeb9ff', '80', '54844.0874', '1977-03-03 13:03:16', 5, 4, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (81, '67205812-646a-374a-bbbc-99d4e51f5a51', '81', '72199.0246', '1973-09-12 05:53:43', 1, 1, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (82, '79146fd4-4f54-39ab-b347-5a469e89f603', '82', '52622.9713', '1972-02-10 11:35:32', 2, 2, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (83, '991c224c-c0dd-33ae-be20-1e74b8af5c02', '83', '55518.0124', '2020-08-30 08:54:33', 3, 3, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (84, '8cd65b99-a396-3cf9-abb5-16e749328e8b', '84', '35197.3064', '1981-01-24 21:33:51', 4, 4, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (85, 'dcb65064-0778-3c3c-8c96-19c5348144d4', '85', '28254.9763', '2015-12-24 08:49:59', 5, 1, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (86, 'eeffc154-c09a-3e26-aee8-6898246c7d11', '86', '77806.0199', '1970-10-21 09:08:02', 1, 2, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (87, '5507b9d7-9acf-32e0-aac8-c358e178be45', '87', '26224.9379', '1972-01-26 00:51:45', 2, 3, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (88, '27f786d7-ccf7-3865-a761-03d1d0f1777f', '88', '68210.3749', '2020-07-14 16:47:08', 3, 4, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (89, 'c6b6086e-2dad-3acf-b843-e3d7575bdda7', '89', '84932.6161', '2019-11-05 04:21:13', 4, 1, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (90, '5a53c107-26b3-3d7e-8921-f7951197cca6', '90', '75383.8538', '1984-02-02 00:08:48', 5, 2, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (91, '54d57271-ee70-3cc3-8ad8-c2afbf5b7e94', '91', '37679.2530', '2015-01-16 13:12:30', 1, 3, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (92, '72c38ae0-97e1-3b26-802f-48ffa096a2b9', '92', '42770.1444', '1997-09-13 14:10:52', 2, 4, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (93, '79428558-4106-3246-8751-0d795db4aafa', '93', '10363.0652', '1999-09-22 02:18:33', 3, 1, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (94, 'ad2abbee-dfc0-32a6-b4ed-3301f29cab28', '94', '59080.3782', '1996-12-14 21:22:02', 4, 2, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (95, '4b37286f-e025-3119-9c56-45ac489c7783', '95', '19337.8663', '1992-12-13 10:33:09', 5, 3, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (96, '1d25c387-00dc-31e2-a188-c79f4e97943e', '96', '6041.9094', '1999-04-10 22:16:32', 1, 4, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (97, 'ed69f9dc-fc8c-3812-9ad3-737afccc07b8', '97', '62229.8141', '1970-07-24 09:08:30', 2, 1, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (98, '181c46aa-b6f4-32df-ac2b-19157dcbe79c', '98', '97409.8072', '1976-10-23 20:48:22', 3, 2, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (99, '1d6063b0-15c7-384c-a7c4-feb37bc5bdf2', '99', '30035.6487', '2000-04-11 09:05:02', 4, 3, NULL);
INSERT INTO `input_transactions` (`id`, `number`, `to_account`, `amount`, `created_at`, `status`, `method`, `details`) VALUES (100, 'bca6bf92-916e-3b74-b502-11a880570d58', '100', '32313.5350', '1978-06-12 01:09:22', 5, 4, NULL);


#
# TABLE STRUCTURE FOR: internal_transfers
#

DROP TABLE IF EXISTS `internal_transfers`;

CREATE TABLE `internal_transfers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(18,4) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `from_account` bigint(20) unsigned NOT NULL,
  `to_account` bigint(20) unsigned NOT NULL,
  `status` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `number_UNIQUE` (`number`),
  KEY `fk_internal_transactions_accounts1_idx` (`from_account`),
  KEY `fk_internal_transactions_accounts2_idx` (`to_account`),
  KEY `fk_internal_transactions_transaction_statuses1_idx` (`status`),
  KEY `created_at` (`created_at`),
  CONSTRAINT `fk_internal_transactions_accounts1` FOREIGN KEY (`from_account`) REFERENCES `accounts` (`id`),
  CONSTRAINT `fk_internal_transactions_accounts2` FOREIGN KEY (`to_account`) REFERENCES `accounts` (`id`),
  CONSTRAINT `fk_internal_transactions_transaction_statuses1` FOREIGN KEY (`status`) REFERENCES `transaction_statuses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('401', 'c112f6d2-a390-3eb9-8f8c-47c1d7681da6', '54397.8986', '1978-08-25 23:35:55', '1', '1', 1);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('402', 'b7129d46-184e-33f5-8e32-024ec920da3a', '51712.0517', '1996-07-10 06:26:12', '2', '2', 2);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('403', 'af47a537-fe41-3afe-8e64-fb3d06ff8a1f', '35090.9245', '1971-11-08 16:11:52', '3', '3', 3);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('404', '52a80fcb-977c-34f1-a071-2da7673b7bf3', '92547.1095', '1987-11-15 10:31:53', '4', '4', 4);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('405', '74a905b4-1b61-3b88-8a94-96a9af056a62', '28371.4939', '1988-08-14 12:18:10', '5', '5', 5);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('406', '3bbe6397-e4b4-32f1-819d-8cf8cd07e33f', '70019.4076', '2002-02-04 10:57:45', '6', '6', 1);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('407', '922d870c-bc13-344f-925b-036c7e8a48fe', '15144.8220', '1981-11-08 11:03:42', '7', '7', 2);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('408', 'eec298d1-f3d2-3702-8b1e-49cb51ef689b', '17061.1448', '2011-03-30 04:19:49', '8', '8', 3);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('409', '5d36528b-bf39-3879-ac11-7b76ae6917bc', '73462.0005', '2008-09-24 01:37:34', '9', '9', 4);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('410', '4e031523-f0fd-38f5-ae0a-37bfade96b45', '34950.3122', '2002-09-29 09:48:10', '10', '10', 5);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('411', '6f2d1cc0-9c2b-3096-8fcb-8858cfcb8106', '70010.9046', '1986-06-13 01:15:02', '11', '11', 1);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('412', '70357ef3-8175-3e05-b5ca-38ec49f80fa4', '8792.0954', '1978-06-27 11:31:57', '12', '12', 2);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('413', 'afc5c026-80aa-35ee-b102-71f0d7bd0dbf', '23541.5858', '1971-11-15 10:51:53', '13', '13', 3);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('414', 'd285cff1-c2d5-3dc8-80c8-8e2d8121d7fb', '84950.7285', '1999-08-24 13:49:05', '14', '14', 4);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('415', 'ce26ce67-f168-367d-90e1-524a5400a2f8', '63350.7706', '2016-12-21 06:00:54', '15', '15', 5);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('416', '93ef82dc-68b3-356a-a5e7-84fd5e4409ca', '3254.1154', '2013-11-24 14:29:44', '16', '16', 1);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('417', '02cd8541-79d0-3433-8ca1-3a0f53826e0f', '24364.1823', '1982-01-03 14:24:17', '17', '17', 2);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('418', '8f3a385a-fd2f-3243-9c7b-16dc6393e78c', '54896.8282', '1994-02-06 13:10:37', '18', '18', 3);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('419', '1e359da4-dfed-3317-98fa-d1a812abe9ac', '44457.3824', '1992-09-07 03:03:08', '19', '19', 4);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('420', '8e84e1cd-6abe-3148-9601-096fa8358e38', '95855.2359', '2010-07-22 20:33:47', '20', '20', 5);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('421', '6cbf3019-0f21-3d2a-8d4e-ae9053529d10', '66369.2905', '2016-06-11 15:30:18', '21', '21', 1);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('422', 'a5b1193d-4674-3dc5-b6ee-9c21b094c670', '47368.2151', '2020-04-30 23:45:29', '22', '22', 2);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('423', 'd5741577-4cb0-376a-b4ae-c2cbb489adcc', '107.7976', '2009-09-12 10:38:20', '23', '23', 3);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('424', '32dfab33-a4d6-31da-98c8-a3506a07db21', '21601.1066', '1999-08-29 09:14:33', '24', '24', 4);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('425', '3a18c574-e8e6-38a6-9e14-73167acf4496', '86723.1941', '1987-03-26 00:14:32', '25', '25', 5);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('426', '1e9d8b30-6fc6-3ec3-bc12-327e7d5e0906', '42059.9654', '2015-07-06 22:59:30', '26', '26', 1);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('427', 'ffb56466-bd40-3d8c-bd0e-140880f60791', '70588.2992', '2010-04-28 10:23:05', '27', '27', 2);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('428', 'd1465a95-b8b2-395a-bf0f-30351ab4d5fa', '10873.8762', '2001-11-07 17:31:03', '28', '28', 3);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('429', '8e9649e6-5230-3fa9-9bd3-dd350016ff92', '74780.7780', '2006-03-13 09:50:13', '29', '29', 4);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('430', 'aef23b85-25a3-3cf2-829d-e2627ad98047', '92310.1010', '1984-07-15 19:26:43', '30', '30', 5);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('431', '4da79ed0-498c-32e2-a16f-5450e38fde2e', '91056.5433', '2001-05-31 01:26:41', '31', '31', 1);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('432', '28cc2310-fc82-3bab-8f46-efcc13faf778', '84946.3181', '1997-02-24 02:15:57', '32', '32', 2);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('433', '280b08c6-9eed-3ca3-94fd-d855390c82fc', '60281.7141', '2000-09-14 06:14:13', '33', '33', 3);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('434', '7d85c52c-a5cd-3c2b-9b33-df6e964925a5', '14326.8956', '1986-04-30 07:22:53', '34', '34', 4);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('435', '52f592f2-6b43-3278-8cb8-a7c7090d86ec', '88077.7442', '2008-05-20 11:08:00', '35', '35', 5);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('436', 'dbe358f7-b568-35e7-b812-f7f33d96bb88', '6599.8169', '2001-05-31 19:19:51', '36', '36', 1);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('437', 'fc113348-7023-3bb4-8838-e299d4f63c6c', '12229.1371', '2016-05-25 16:18:45', '37', '37', 2);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('438', '7895c3f3-49c2-3efa-8786-d1001ec15d83', '8056.9964', '1983-02-19 08:32:04', '38', '38', 3);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('439', '8f568894-1e75-3847-a750-9d22bb602bef', '10642.3419', '2013-09-07 15:24:42', '39', '39', 4);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('440', 'fde101e1-e1de-302b-bd8b-63ff4969e452', '49939.7203', '1988-05-29 09:57:12', '40', '40', 5);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('441', 'f0e17d30-f30a-3d1f-b512-8e00eab25f38', '98663.8969', '1987-08-18 19:24:11', '41', '41', 1);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('442', '73bb2423-6652-389c-9054-68f3ec5760d6', '16973.3282', '2003-03-30 04:58:59', '42', '42', 2);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('443', 'fbbe4757-fa29-3685-a804-5bbf28667829', '63466.3442', '1977-12-01 15:52:59', '43', '43', 3);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('444', '5a315894-979c-3bed-81c1-fff0d29a5981', '1564.6151', '1983-06-05 02:02:13', '44', '44', 4);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('445', '87e25f46-cb3c-300b-b556-6f98526526da', '-202.8019', '2019-01-19 05:03:47', '45', '45', 5);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('446', 'dd5a90f9-1d64-3535-aa93-046820fbdf9e', '70785.3329', '1980-02-10 07:29:27', '46', '46', 1);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('447', '3fdaa690-12bb-343a-b07e-51271636b6b1', '79448.2843', '2008-04-06 01:24:37', '47', '47', 2);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('448', '51c627dc-b41a-3860-84f9-ac058b36ccc2', '38445.4995', '1978-08-04 14:57:57', '48', '48', 3);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('449', 'b651b2de-b8a9-33c4-84aa-4089a1f9d76c', '72260.2928', '1983-03-03 04:11:19', '49', '49', 4);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('450', 'fda33975-50a2-386f-86dd-30c707396f75', '80641.7910', '2013-05-21 11:50:45', '50', '50', 5);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('451', '6c981f91-956c-31b7-b49f-ce750911fe20', '81502.9656', '1999-03-11 18:53:20', '51', '51', 1);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('452', 'c7511f9c-cc2a-3591-a3de-48a7c2dab622', '79302.7013', '1975-07-20 13:13:11', '52', '52', 2);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('453', '06c7e4ab-6a7d-390a-98bc-943651d23e5b', '12029.3722', '1994-11-13 06:07:17', '53', '53', 3);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('454', '67893f5f-aa2e-3b8b-86f4-0f2b672486b8', '25260.1823', '1992-12-24 15:16:21', '54', '54', 4);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('455', '1b82ce64-92fe-345f-b79f-19aacee39c84', '24671.9978', '1994-12-28 18:40:32', '55', '55', 5);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('456', '273adf4d-8557-3e24-ade6-4e35925d43dc', '5838.8213', '1988-06-30 05:51:52', '56', '56', 1);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('457', 'e9eecd24-b325-39a8-8bf1-ee11675e881a', '55644.3440', '1988-09-11 03:36:44', '57', '57', 2);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('458', 'a968025d-a77a-3580-83c9-cfb23aa521f1', '37380.2677', '1983-07-07 18:55:04', '58', '58', 3);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('459', '51c39d8a-0e70-38d7-ad21-303154376009', '96766.6622', '2013-01-16 13:40:50', '59', '59', 4);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('460', '94cb9ed1-0b19-38be-ae8c-6fd4891942c8', '74371.3601', '1991-07-21 06:33:10', '60', '60', 5);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('461', 'a9e1e63c-b90b-375f-b0e6-adbb5eed8050', '66309.8789', '1983-12-14 04:43:09', '61', '61', 1);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('462', '13a0878d-7575-3b03-b68c-d5a838406823', '53385.3479', '1982-12-16 04:43:56', '62', '62', 2);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('463', '506fcfa6-11fb-3fe7-9100-db300ef64666', '15302.3969', '1995-03-29 22:51:17', '63', '63', 3);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('464', '4d73e643-b941-3cfd-b68c-9dd4cc5469bd', '34437.8905', '1986-05-31 10:56:32', '64', '64', 4);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('465', '1419487e-c01c-39fd-91b4-8ce61664643e', '76453.0578', '2001-09-11 23:46:52', '65', '65', 5);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('466', 'fac6c895-9b95-3794-8695-c96ffd9765d2', '70231.0021', '1979-03-14 21:23:54', '66', '66', 1);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('467', '29101341-4cdd-3ee5-91ec-9074656e7dda', '88023.2020', '1992-11-23 15:45:31', '67', '67', 2);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('468', '4a1f76b9-aa1d-3c41-9861-390abaf11030', '30187.4587', '2005-04-13 19:26:25', '68', '68', 3);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('469', '471c07aa-c556-3257-b728-5d43dfd7fc83', '59959.3630', '1975-09-19 13:31:33', '69', '69', 4);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('470', '859cca84-4ee6-319b-b294-eda3ce366af6', '11166.0218', '1984-10-15 21:49:26', '70', '70', 5);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('471', '91a3f8f0-f032-3dc7-9316-7336675002ad', '62135.4189', '2008-06-20 01:35:43', '71', '71', 1);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('472', 'a58612db-bfc0-399e-9233-d863b3e4724e', '55812.9791', '1970-02-03 13:07:37', '72', '72', 2);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('473', 'c554a9a5-12ff-3263-b880-facb85895d79', '18776.4155', '2005-12-26 13:29:38', '73', '73', 3);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('474', 'b17cb657-094b-37fe-be89-eb95297590b7', '85134.9692', '2008-10-26 01:00:27', '74', '74', 4);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('475', '9d5c125c-b73c-3305-a17a-bd998b526f48', '33374.3435', '2003-05-21 17:16:37', '75', '75', 5);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('476', '37ab76d4-defe-30f8-857b-b607933cd869', '92051.4882', '1970-04-23 07:17:20', '76', '76', 1);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('477', '7949347c-d1c1-373c-970c-ccc61a1dbb5f', '74795.9680', '1982-07-09 17:15:38', '77', '77', 2);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('478', '5aaec2f1-b11e-3281-86ce-94867c099798', '96402.2190', '1987-06-09 12:15:36', '78', '78', 3);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('479', '6e5477cb-4fbf-3052-8ac0-10af3d3ccc36', '55973.6277', '1973-04-17 05:16:53', '79', '79', 4);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('480', '893f9faa-b978-3f7e-933b-390a65fe5d08', '86856.8538', '2000-09-21 12:07:09', '80', '80', 5);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('481', '7304706f-2de5-3634-a21c-0360a5d3066f', '61505.6635', '2018-02-12 01:21:53', '81', '81', 1);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('482', '692503ca-526f-3412-bb7a-981b02b2d76d', '37645.0597', '2020-03-04 12:59:41', '82', '82', 2);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('483', 'c773fab6-9c54-334f-a6b0-c0840bc3dee6', '41928.0177', '2011-06-11 12:43:46', '83', '83', 3);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('484', 'e5973816-d5fc-3ae0-9da9-cef4393ccdfe', '54131.1199', '2012-05-05 11:32:19', '84', '84', 4);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('485', 'a3499a87-69bf-38b3-b183-31ae6357a603', '78698.0571', '1995-12-09 20:22:45', '85', '85', 5);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('486', 'ee25bcf4-e7e2-3713-a9af-90437158b2c1', '79152.4178', '1972-01-20 22:09:32', '86', '86', 1);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('487', 'c7644d6c-4a56-347d-bfdb-7c0290af9b45', '52129.9219', '1997-02-18 11:02:22', '87', '87', 2);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('488', 'cab1fc85-bf85-3bb9-8305-45f01d78a3c1', '97889.6496', '2014-10-01 03:48:56', '88', '88', 3);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('489', 'edbbf164-87cd-3614-9812-2115ecc53fc1', '41680.4785', '2019-11-23 13:40:36', '89', '89', 4);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('490', '50cfc11e-a0ff-3bb3-a516-e1fa035060b6', '43699.4028', '1989-02-06 18:02:39', '90', '90', 5);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('491', '6e8bbe33-3ca0-3411-a4fb-2a775add213a', '70726.0227', '1993-05-03 00:51:12', '91', '91', 1);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('492', '80f1e006-5ee9-3784-ad2f-026e6a8764c5', '23502.5921', '1989-01-14 15:20:20', '92', '92', 2);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('493', '1f58b3c9-ef4e-3e4e-89de-46a697436396', '52004.1121', '1993-01-11 22:13:16', '93', '93', 3);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('494', '051cce1a-4d83-36ef-9f36-8f10fc4467cd', '88965.2901', '1993-03-25 16:27:58', '94', '94', 4);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('495', '23de8848-fac8-30bb-876c-3979f272099c', '90085.8702', '2008-01-01 20:19:50', '95', '95', 5);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('496', '3300261f-1bd4-3876-8462-f953853bb6e4', '35626.1263', '2004-10-06 21:23:08', '96', '96', 1);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('497', '83886985-0017-3f97-816f-960cb93c3579', '19716.8959', '2011-06-28 18:51:30', '97', '97', 2);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('498', 'b8db1136-7a70-34c0-a411-9393b8c1aa9e', '99663.6406', '2007-09-07 06:30:46', '98', '98', 3);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('499', '59f427ff-139f-35cc-aed2-a9a6469c6d39', '68794.7014', '2016-06-26 09:37:10', '99', '99', 4);
INSERT INTO `internal_transfers` (`id`, `number`, `amount`, `created_at`, `from_account`, `to_account`, `status`) VALUES ('500', '01a1e5b4-5b88-3940-8a52-5231f5bbd5cd', '9362.0572', '1973-01-31 00:18:57', '100', '100', 5);


#
# TABLE STRUCTURE FOR: output_methods
#

DROP TABLE IF EXISTS `output_methods`;

CREATE TABLE `output_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`template`)),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `output_methods` (`id`, `name`, `template`) VALUES (1, ' \"credit card\"', NULL);
INSERT INTO `output_methods` (`id`, `name`, `template`) VALUES (2, '\"online banking\"', NULL);
INSERT INTO `output_methods` (`id`, `name`, `template`) VALUES (3, ' \"e-wallet\'', NULL);


#
# TABLE STRUCTURE FOR: output_transactions
#

DROP TABLE IF EXISTS `output_transactions`;

CREATE TABLE `output_transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(18,4) NOT NULL,
  `from_account` bigint(20) unsigned NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(10) unsigned NOT NULL,
  `method` int(10) unsigned NOT NULL,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`details`)),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_output_transactions_accounts1_idx` (`from_account`),
  KEY `fk_output_transactions_transaction_statuses1_idx` (`status`),
  KEY `fk_output_transactions_output_methods1_idx` (`method`),
  KEY `created_at` (`created_at`),
  CONSTRAINT `fk_output_transactions_accounts1` FOREIGN KEY (`from_account`) REFERENCES `accounts` (`id`),
  CONSTRAINT `fk_output_transactions_output_methods1` FOREIGN KEY (`method`) REFERENCES `output_methods` (`id`),
  CONSTRAINT `fk_output_transactions_transaction_statuses1` FOREIGN KEY (`status`) REFERENCES `transaction_statuses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('1', '8346b77e-dd96-322a-af73-5f2664fe5b52', '90488.4733', '1', '1987-11-22 08:18:09', 1, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('2', '2eb450d7-bb79-3641-b29d-28644a0be66c', '9005.3277', '2', '2009-08-12 08:16:12', 2, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('3', '9bd1ed31-45cd-3360-a1c8-65ed667fc33d', '41224.1177', '3', '2005-04-11 01:06:18', 3, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('4', '84c74b75-24c9-3bbe-bc47-794d86ff7993', '27919.2125', '4', '1975-01-18 12:47:31', 4, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('5', 'fa6cc152-c168-3b7c-bd1a-1b4e61acd747', '40120.9448', '5', '1997-02-12 07:20:25', 5, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('6', '072d1229-7110-3bd4-8699-b1ec40a4cf54', '72360.5355', '6', '1973-08-18 11:11:56', 1, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('7', 'a1ab525c-710e-38b4-a341-32d7320c1e26', '45673.5118', '7', '1992-12-10 00:08:35', 2, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('8', 'cc489514-e0dd-390a-ac7e-c8a80332e0a6', '8024.8800', '8', '1993-01-10 09:34:36', 3, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('9', 'd45d1eea-dff7-3c12-be03-27ac7b90e5f5', '7591.9228', '9', '1972-01-31 02:34:14', 4, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('10', '76301ed9-864c-3886-826e-0e92ec05d9d3', '98595.5463', '10', '1974-01-03 08:52:04', 5, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('11', '93cb0f3c-04bc-3fa3-ba49-cc288010bee3', '89019.0985', '11', '1983-07-26 03:10:44', 1, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('12', 'ae515e79-85aa-3e0c-afb0-6aed23e5b49d', '35479.4540', '12', '1991-02-03 10:43:03', 2, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('13', '888476f3-3f1f-3095-aaf0-25d8d8272057', '58982.7792', '13', '1992-03-13 06:49:10', 3, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('14', '8818642e-5ae0-3505-8919-28d76702220e', '16075.6314', '14', '2020-02-28 18:06:31', 4, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('15', '7ab9caf5-0077-3143-8d3e-90d209b26659', '34772.9405', '15', '1993-10-19 17:51:29', 5, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('16', 'dad21614-580c-325e-900c-5e87bf06abdf', '45808.0352', '16', '1972-12-06 01:48:49', 1, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('17', '08b83606-b0cd-3f28-91f7-55342cb60573', '89178.5449', '17', '1985-05-13 10:56:04', 2, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('18', 'ecc1c97d-9a18-3c56-afe3-bf53786eb398', '90468.9032', '18', '2004-12-14 20:38:51', 3, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('19', 'f6203c6f-83a5-39bc-b3b9-a47507cfb85f', '78502.4232', '19', '1985-02-12 17:18:25', 4, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('20', '86803e2c-dcaf-3265-bfac-bc3309e56afc', '97941.5616', '20', '1998-03-09 07:05:39', 5, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('21', 'a1970fbd-8612-3d2e-a1a7-b4cc5e2f73e4', '54707.0022', '21', '2010-09-20 21:26:02', 1, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('22', 'af7b2dbf-6f5c-3442-a8ae-7a584a084276', '47369.8693', '22', '1992-01-05 11:24:31', 2, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('23', 'ee39c0b8-80e7-3d10-876d-53afa92f7f2a', '924.2565', '23', '2015-06-16 11:43:21', 3, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('24', 'c482cdfc-aa76-3cd3-9cc8-f4155ae4bbf0', '85146.5899', '24', '2020-11-16 03:42:37', 4, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('25', '76e493dd-584a-3a34-a24a-0acab23e22dc', '50606.7784', '25', '2004-01-21 11:31:19', 5, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('26', '2a8b4dbb-0dc5-374f-b45b-2b21bf3a81a2', '16288.1136', '26', '2017-05-11 05:57:17', 1, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('27', '42358ceb-ad94-319c-9e18-d1902f925edd', '5136.4106', '27', '1985-02-25 17:38:11', 2, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('28', '38860676-bf33-3329-9b2c-2aa1a7f9be6d', '69267.0976', '28', '2000-06-06 02:39:07', 3, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('29', '1433b4b6-bd6a-30c0-862a-323fd9e4b076', '34486.6339', '29', '1998-04-26 20:21:31', 4, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('30', '76727d42-4c56-31bd-8843-70a3d14d8416', '87884.2895', '30', '2014-07-09 00:53:07', 5, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('31', '59a9ed0a-64d7-3aee-af93-0a6bd3692728', '11835.6279', '31', '1980-12-10 05:21:35', 1, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('32', 'e7702377-d36b-3e87-bb61-f3fca701d859', '5592.8018', '32', '1991-07-14 12:55:52', 2, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('33', '116ce57a-4b2a-303e-888e-524a259142eb', '23090.9908', '33', '2015-11-13 22:35:24', 3, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('34', 'e1b6ba24-e058-3da5-a84a-4c30fa4f7747', '47053.4248', '34', '2014-09-14 00:10:22', 4, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('35', 'c6299d79-a665-38bd-aea7-cfc2ada3a64b', '26394.9432', '35', '2002-08-05 14:38:13', 5, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('36', '10d5698f-e96b-3631-89d2-4ea65a416db6', '67704.4279', '36', '1978-06-24 21:36:48', 1, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('37', 'c05b63a6-563e-371a-82ec-43e1abeac3e2', '41278.8974', '37', '2013-08-30 20:50:44', 2, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('38', '88088b57-7bec-3e80-8026-3a5bf8b3ede6', '27739.4626', '38', '1996-09-11 05:20:32', 3, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('39', '9e4a6006-cadc-3135-aab5-e82070d86bd1', '28225.7733', '39', '2013-02-02 13:06:16', 4, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('40', '6a79852a-1646-3008-9b23-ca678444709f', '62901.4994', '40', '1978-12-19 17:12:33', 5, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('41', '6ac407f2-914a-3262-b420-82aa5366f60a', '82563.1326', '41', '2010-07-11 15:05:20', 1, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('42', '8506d364-54df-3946-b001-95905beed7ea', '18516.9612', '42', '2005-03-18 10:15:14', 2, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('43', '92d594e6-2e74-325b-9465-d876bb3714d4', '71013.2732', '43', '2020-11-06 10:12:02', 3, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('44', '1a5ace84-21f7-3dcf-a373-09be72c5afa2', '66458.9330', '44', '1993-07-07 17:39:05', 4, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('45', 'c3c51eff-a09e-353e-9ff8-848f5bceee0b', '3444.0563', '45', '2013-11-08 10:04:38', 5, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('46', '7c891405-2e18-3c55-816f-c4b0a4d75f82', '11557.5762', '46', '2001-01-02 06:47:13', 1, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('47', '46d55e6a-e90b-3d22-b13c-9d474c1c844d', '72542.7896', '47', '1970-03-02 19:39:39', 2, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('48', '4f3b9e32-5b14-3c69-baaa-e811916a16a0', '37008.1350', '48', '2007-01-27 15:01:43', 3, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('49', 'a55efa0b-cbcf-3084-923a-0b709371791f', '45244.3661', '49', '2008-09-19 20:39:11', 4, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('50', 'c2dd99de-0358-3154-8f65-955ae37b9c57', '55626.1610', '50', '1976-07-04 19:35:48', 5, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('51', 'cb6048ed-a15b-392b-be58-183c4c4c4d39', '6026.7515', '51', '1976-10-10 11:47:22', 1, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('52', '5afcac95-3960-3048-ba19-6e6f5d6edb3e', '79411.6104', '52', '2005-03-16 01:53:34', 2, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('53', '9fb3f88e-2de3-3752-b96d-946da1f36b32', '34397.1651', '53', '1974-02-04 00:14:19', 3, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('54', '4d348c4e-18e9-35bb-8102-217d4b742fed', '73991.5625', '54', '2013-02-19 15:11:57', 4, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('55', '7f6cbf0c-2e86-363e-975e-73e8fb22213d', '54881.2579', '55', '1991-08-10 15:40:46', 5, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('56', 'a3731aed-22e3-35f5-a833-8285d8dabe86', '61229.7648', '56', '1983-01-24 22:35:03', 1, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('57', '6e694dc9-d57f-362e-a347-3f7bdfa6eabf', '70078.4106', '57', '1989-08-14 13:45:20', 2, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('58', '11ccd89a-df03-3009-b7ab-fd92d1b65978', '80952.8128', '58', '1976-01-23 21:36:30', 3, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('59', '19abf422-febc-317b-9f27-9ec54a99585b', '2877.3812', '59', '1988-02-06 19:58:32', 4, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('60', 'a07c9c19-fb32-3ed9-a3fb-e40743872b91', '48863.8442', '60', '2018-02-05 07:51:47', 5, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('61', 'c6c6bb68-7298-3584-b74c-e5c7c6b3a234', '75585.4877', '61', '1971-04-24 16:32:29', 1, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('62', '339c1389-e6e5-3365-8143-2420992e3fca', '84617.5312', '62', '1991-11-03 03:12:42', 2, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('63', 'bbb54f62-005c-3457-acbd-f909988e234c', '30989.4066', '63', '2015-05-14 22:37:52', 3, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('64', '00398885-3761-391a-8894-139dbb447acf', '31167.5502', '64', '2005-09-26 16:32:49', 4, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('65', 'ada8afb2-2b9d-3d21-acff-bf4a24918ef5', '31440.1749', '65', '2004-07-13 12:43:21', 5, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('66', '7b6a95f0-5746-3374-8aaa-15590a4682b6', '83724.3973', '66', '2007-02-06 09:43:18', 1, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('67', 'cd721807-7026-369a-8930-2397a9ebd1e9', '8587.5935', '67', '1998-11-03 06:16:13', 2, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('68', 'e1b7bbec-a433-31f2-8b5e-60afdd4aae2e', '77731.9491', '68', '2020-01-05 03:13:11', 3, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('69', '85d8306d-2a1b-3164-a891-4c75b44796ee', '41139.2677', '69', '1986-06-03 17:37:45', 4, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('70', '7677997e-28c2-3366-85ae-9dc68e3918ea', '66714.7633', '70', '1974-09-10 13:58:39', 5, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('71', '6109ac15-3281-3129-859a-336ceae8ac89', '93075.6316', '71', '2005-09-24 22:02:11', 1, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('72', '3c4e1e8b-b70a-300d-b5dd-dae6efc40883', '47145.3598', '72', '2002-07-26 14:23:42', 2, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('73', '29ab9c4e-14a4-31cc-ba0c-a31d556c909a', '47599.5082', '73', '1987-12-25 20:18:33', 3, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('74', '54140448-ac0b-3801-82dc-aff5e3635b4b', '85480.1101', '74', '1981-03-18 07:53:29', 4, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('75', 'e5f1e622-0a1a-379a-a789-fd01b0cda5f7', '37226.0206', '75', '2001-03-09 15:20:59', 5, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('76', '093cc772-4eb8-3b85-98d9-f327b5aa9363', '2168.3357', '76', '1983-02-11 14:08:10', 1, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('77', '9255106e-851b-3efc-ae1c-f4767b14fcbb', '8073.2197', '77', '1999-05-22 23:06:54', 2, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('78', 'd7d42b7d-ccbe-3e89-ad1d-68882d804be5', '81567.1555', '78', '1982-02-05 11:22:35', 3, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('79', 'ce32b0ac-a096-3814-91b3-18c4cf0ff9c5', '62162.2277', '79', '2011-12-12 08:39:23', 4, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('80', '800a2afa-072b-31b9-ae10-49cc777443b5', '11074.7939', '80', '1978-02-21 16:19:57', 5, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('81', '5ae50613-9d4c-3c61-8d78-99d90b39a02f', '35121.7328', '81', '1970-10-10 21:33:29', 1, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('82', '528473f3-7a05-3b1a-90ac-5c6c32fc7fb9', '50609.0502', '82', '2017-01-03 15:33:34', 2, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('83', '77b90b25-98a3-3e60-b69a-ed1a711d65c7', '29027.7700', '83', '2001-08-26 03:55:46', 3, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('84', '8ca1713b-c540-37f1-bc02-c0a5c646eca1', '46958.8269', '84', '1995-01-04 16:04:12', 4, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('85', 'a1d23e08-0861-35c6-b8dd-ca7e988dd5cc', '13018.3209', '85', '1985-11-25 08:04:48', 5, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('86', '48f52a1b-a379-3914-a1c3-7c46ecaffc08', '22225.5316', '86', '1988-10-25 12:42:22', 1, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('87', '3d12f9ce-80a2-3099-b532-65b4a3c4bb33', '64295.9624', '87', '1979-01-28 03:24:19', 2, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('88', '47992dd7-a47f-3f69-a729-158b99c5f88b', '40745.6368', '88', '1986-12-16 08:55:58', 3, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('89', '14e532af-2cf0-3120-8dae-ba09a71b688b', '56655.5453', '89', '2020-10-01 06:39:32', 4, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('90', '208339a5-3673-3ad5-adc3-b6a3fd246514', '91629.6311', '90', '2003-07-09 20:23:07', 5, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('91', '702e06a5-9c82-3d89-bbd1-701ba7a9d2d0', '53802.7083', '91', '1985-05-09 07:30:26', 1, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('92', '186bbe95-db49-3aaa-9f04-7aea22e160b3', '982.9758', '92', '1995-03-29 09:12:12', 2, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('93', '923d2cd1-128f-3504-ab80-a69a92d08474', '41494.2948', '93', '1987-10-31 19:17:37', 3, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('94', '89b426e0-3865-3df0-9d08-2dbb2bf81fe9', '11330.2882', '94', '1971-09-29 22:25:41', 4, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('95', '002f1607-1577-3f2b-a89c-adde79e5b118', '25798.5900', '95', '1999-08-09 05:39:08', 5, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('96', '42a6eff6-45b6-32c6-b145-b79008d8762b', '82406.8271', '96', '2002-08-02 12:44:18', 1, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('97', '9ee8f4cd-5e11-369a-ac1e-fc3e8088e9e4', '90934.4057', '97', '1999-06-25 06:07:31', 2, 1, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('98', 'd8bac20c-7084-3715-ae4a-652cf0a6bd51', '9691.3669', '98', '1987-12-23 23:40:34', 3, 2, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('99', '53083df3-2040-35f7-905f-a7ee6c4b64fa', '12122.2747', '99', '1988-05-04 11:28:22', 4, 3, NULL);
INSERT INTO `output_transactions` (`id`, `number`, `amount`, `from_account`, `created_at`, `status`, `method`, `details`) VALUES ('100', 'f34e74d6-c873-3b2f-b64c-ba5fc033bc37', '7259.0569', '100', '2005-09-22 22:08:27', 5, 1, NULL);


#
# TABLE STRUCTURE FOR: transaction_statuses
#

DROP TABLE IF EXISTS `transaction_statuses`;

CREATE TABLE `transaction_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int(10) unsigned NOT NULL,
  `status_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `status_code_UNIQUE` (`status_code`),
  UNIQUE KEY `status_name_UNIQUE` (`status_name`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `transaction_statuses` (`id`, `status_code`, `status_name`) VALUES (1, 2, 'New');
INSERT INTO `transaction_statuses` (`id`, `status_code`, `status_name`) VALUES (2, 4, ' Failed');
INSERT INTO `transaction_statuses` (`id`, `status_code`, `status_name`) VALUES (3, 3, ' Reconciled');
INSERT INTO `transaction_statuses` (`id`, `status_code`, `status_name`) VALUES (4, 5, ' Processing');
INSERT INTO `transaction_statuses` (`id`, `status_code`, `status_name`) VALUES (5, 1, ' Accepted');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (1, 'Rosendo', 'Homenick', 'waldo.shanahan@example.com', '77883495842');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (2, 'Verner', 'Rohan', 'ramon.wunsch@example.net', '72505391469');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (3, 'Iliana', 'Heller', 'omohr@example.net', '72463301667');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (4, 'Jordy', 'Bogan', 'ularson@example.net', '73359171720');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (5, 'Henriette', 'Pacocha', 'marco95@example.com', '74538895106');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (6, 'Nigel', 'Dooley', 'jerry95@example.com', '78833816992');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (7, 'Blanche', 'Runolfsson', 'alana90@example.net', '70234824927');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (8, 'Katlynn', 'Wiza', 'cayla47@example.net', '71677271631');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (9, 'Alene', 'Adams', 'schultz.alexys@example.net', '78098412268');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (10, 'Ricky', 'Haag', 'helga.reynolds@example.net', '75722580282');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (11, 'Shawn', 'Satterfield', 'greenholt.cynthia@example.org', '78278865758');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (12, 'Angelica', 'Dibbert', 'sauer.haskell@example.com', '71861141115');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (13, 'Calista', 'Ledner', 'uboyer@example.com', '73144579204');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (14, 'Walton', 'Rowe', 'rahsaan35@example.org', '76066541695');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (15, 'Mckenna', 'Considine', 'amalia.gislason@example.net', '78794327085');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (16, 'Fae', 'Romaguera', 'bosco.raul@example.org', '77531780312');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (17, 'Eduardo', 'Feeney', 'tanderson@example.org', '71129259966');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (18, 'Lester', 'Monahan', 'ustracke@example.net', '72216499737');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (19, 'Wilfrid', 'Harber', 'xferry@example.org', '72259124667');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (20, 'Lottie', 'Osinski', 'amelia24@example.org', '77357258945');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (21, 'Garrison', 'Hills', 'joel68@example.net', '75472666570');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (22, 'Arielle', 'Ondricka', 'xsatterfield@example.com', '77268572189');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (23, 'Lelia', 'Murphy', 'dprosacco@example.com', '71893575606');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (24, 'Elliott', 'Goldner', 'fadel.stanton@example.net', '70265197107');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (25, 'Hobart', 'Lynch', 'sharon94@example.org', '77433147258');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (26, 'Dusty', 'Muller', 'yundt.royal@example.org', '77569101685');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (27, 'Blanche', 'Gusikowski', 'joshua.rodriguez@example.net', '76701346650');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (28, 'Evans', 'Abernathy', 'vicky76@example.org', '78357975455');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (29, 'Cleo', 'Heidenreich', 'senger.pink@example.com', '76081270375');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (30, 'Santa', 'Durgan', 'frenner@example.net', '76228606021');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (31, 'Unique', 'Rolfson', 'jpredovic@example.org', '73589210636');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (32, 'Adella', 'Witting', 'burdette43@example.com', '77223045719');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (33, 'Anabelle', 'Larkin', 'lbartell@example.org', '74859306999');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (34, 'Mikayla', 'Jacobs', 'krystel.turcotte@example.org', '79396791858');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (35, 'Dylan', 'Price', 'bo\'conner@example.com', '77753932089');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (36, 'Derek', 'Huels', 'oauer@example.org', '72443918898');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (37, 'Buford', 'Cassin', 'rozella.mayer@example.com', '72535498953');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (38, 'Brody', 'Nienow', 'marian.ryan@example.org', '72443754291');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (39, 'Marcellus', 'Beier', 'ykshlerin@example.net', '70255193161');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (40, 'Cynthia', 'Rolfson', 'qryan@example.net', '74377233563');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (41, 'Rocky', 'Kutch', 'blick.emmalee@example.net', '72166591510');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (42, 'Berneice', 'Cassin', 'orrin.rowe@example.com', '72726935931');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (43, 'Breanne', 'Schaefer', 'vrunte@example.org', '71263197414');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (44, 'Gussie', 'Hickle', 'loy35@example.net', '78621814400');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (45, 'Dolly', 'Marquardt', 'addison.hoeger@example.net', '74401110420');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (46, 'Merle', 'Rohan', 'ohahn@example.org', '73735614526');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (47, 'Zola', 'Becker', 'remington27@example.net', '73621671517');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (48, 'Jordyn', 'Smitham', 'judy.monahan@example.net', '75268063708');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (49, 'Lisa', 'Smitham', 'tristin.gutkowski@example.org', '78240796146');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (50, 'Candace', 'Braun', 'jacobi.kaelyn@example.com', '79849052685');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (51, 'Dixie', 'Weissnat', 'glover.abagail@example.net', '75910603353');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (52, 'Jeffrey', 'Bernier', 'raphael28@example.com', '73273246265');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (53, 'Mireya', 'Reichert', 'olin.haley@example.com', '75530719915');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (54, 'Karelle', 'Hilll', 'zoila.wintheiser@example.org', '78637823909');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (55, 'Adrienne', 'Sauer', 'nabbott@example.com', '71968365135');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (56, 'Elise', 'Hilll', 'qebert@example.com', '75565272975');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (57, 'Greta', 'Schoen', 'schimmel.mariane@example.com', '71650064271');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (58, 'Noble', 'Cronin', 'jenkins.aaliyah@example.com', '70410060329');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (59, 'Jennifer', 'Schiller', 'uriel.muller@example.com', '76333788740');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (60, 'Imogene', 'Abernathy', 'loyal.lemke@example.org', '79402503017');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (61, 'Asa', 'Morissette', 'umaggio@example.org', '77776405592');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (62, 'Quinn', 'West', 'fdaniel@example.net', '78799629798');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (63, 'Eloisa', 'Schmidt', 'poberbrunner@example.com', '76185764004');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (64, 'Josiane', 'Littel', 'maxwell36@example.org', '71300902265');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (65, 'Chaya', 'Sipes', 'lprosacco@example.com', '75941808578');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (66, 'Cayla', 'Gorczany', 'elouise.dare@example.org', '71688273293');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (67, 'Walter', 'Huels', 'yhilpert@example.org', '70812964146');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (68, 'Tianna', 'Metz', 'ihartmann@example.com', '75581925963');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (69, 'Ashlee', 'Batz', 'emmy15@example.org', '77453744150');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (70, 'Astrid', 'Gislason', 'london76@example.com', '75215964764');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (71, 'Joanie', 'Christiansen', 'felicity09@example.com', '72652642662');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (72, 'Christop', 'Douglas', 'reagan12@example.net', '72040511808');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (73, 'Lavina', 'Lockman', 'ashtyn96@example.com', '71108768909');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (74, 'Lelia', 'Gulgowski', 'khilpert@example.org', '70918477183');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (75, 'Zachary', 'Corwin', 'destiny03@example.com', '75765623944');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (76, 'Isabella', 'Wunsch', 'miguel45@example.net', '78396393289');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (77, 'Kane', 'Hansen', 'ewest@example.com', '70085925707');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (78, 'Lucius', 'McLaughlin', 'vreichert@example.org', '71367224972');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (79, 'Jaydon', 'Hamill', 'xwill@example.net', '78461654433');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (80, 'Alfonzo', 'Koelpin', 'iortiz@example.net', '75173797882');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (81, 'Delphia', 'Friesen', 'lincoln.schimmel@example.com', '73675319920');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (82, 'Ervin', 'Schroeder', 'timmothy36@example.net', '77862979704');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (83, 'Zoey', 'Hills', 'kirlin.zita@example.net', '71224846421');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (84, 'Ona', 'Kessler', 'wkoch@example.net', '75601978800');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (85, 'Maximo', 'Connelly', 'johns.bridgette@example.org', '78479429264');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (86, 'Nyasia', 'Bahringer', 'ferry.lora@example.com', '78881789534');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (87, 'Rico', 'Runolfsdottir', 'viva85@example.org', '72441522884');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (88, 'Rodrigo', 'Bashirian', 'keyshawn.turcotte@example.net', '71373436842');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (89, 'Rahsaan', 'Hackett', 'johns.crystel@example.net', '71255825013');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (90, 'Kareem', 'Marquardt', 'ycollier@example.net', '78261558278');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (91, 'Vicky', 'Barton', 'leffler.jordon@example.net', '77031250256');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (92, 'Orin', 'Grant', 'smith.bart@example.org', '71241808837');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (93, 'Myrtle', 'Waelchi', 'harold.senger@example.org', '76024594731');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (94, 'Daisha', 'Koch', 'pkohler@example.net', '70915371762');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (95, 'Scottie', 'Hayes', 'mjones@example.org', '74170276388');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (96, 'Mollie', 'Ferry', 'schinner.kristoffer@example.com', '72536703148');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (97, 'Beth', 'Stehr', 'sipes.lina@example.net', '78674662807');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (98, 'Abraham', 'Conn', 'kmohr@example.net', '76414728812');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (99, 'Baylee', 'DuBuque', 'okuneva.valentine@example.net', '76276337243');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES (100, 'Salvatore', 'Blanda', 'veum.elda@example.com', '76241764133');


