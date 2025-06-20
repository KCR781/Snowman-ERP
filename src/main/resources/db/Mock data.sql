-- ===============================
-- CRIANDO MANAGERS E USERS RELACIONADOS
-- ===============================

-- Ana Silva e seus 10 usuários
SET @manager_uuid = UUID();
INSERT INTO tb_managers (manager_id, email, password, username, version)
VALUES (@manager_uuid, 'ana.silva@empresa.com', 'SenhaForte1!', 'Ana Silva', 0);
INSERT INTO tb_users (user_id, creation_timestamp, email, password, update_timestamp, username, version, manager_id) VALUES
(UUID(), '2024-12-05 03:44:13', 'rschleswigholstein0@dell.com', 'sU2&"\(I', '2025-01-15 08:38:36', 'Rosemonde Schleswig-Holstein', 0, @manager_uuid),
(UUID(), '2025-01-17 05:08:15', 'svan1@nymag.com', 'kO8=TKNCIZGpl', '2024-09-07 10:02:32', 'Sena Van der Krui', 0, @manager_uuid),
(UUID(), '2024-11-30 20:06:33', 'elynnitt2@fotki.com', 'iJ8)jUk''?rf!)', '2024-11-17 19:25:58', 'Elysee Lynnitt', 0, @manager_uuid),
(UUID(), '2024-07-22 16:32:02', 'cantrim3@google.nl', 'mQ3{h%h/>c', '2025-02-13 22:38:25', 'Cristin Antrim', 0, @manager_uuid),
(UUID(), '2025-04-13 08:09:03', 'olamerton4@nih.gov', 'wY3./,=&M$KK/', '2025-02-11 03:49:55', 'Othello Lamerton', 0, @manager_uuid),
(UUID(), '2024-08-18 01:59:17', 'lwestwater5@ovh.net', 'kK7{$}udkMl', '2024-06-19 10:30:08', 'Loydie Westwater', 0, @manager_uuid),
(UUID(), '2024-12-05 15:17:14', 'mrodgman6@apple.com', 'qX2)YWF`c', '2024-08-02 05:49:24', 'Maureen Rodgman', 0, @manager_uuid),
(UUID(), '2024-06-21 14:16:03', 'ndyer7@phpbb.com', 'qN4_?$dA', '2025-02-17 23:11:51', 'Neel Dyer', 0, @manager_uuid),
(UUID(), '2025-01-09 13:57:16', 'dpursey8@netvibes.com', 'eK1!~wEC"=3', '2025-03-25 07:09:27', 'Dael Pursey', 0, @manager_uuid),
(UUID(), '2024-08-20 00:09:05', 'reassom9@bloglovin.com', 'vZ1`a",N>e))', '2024-11-05 21:06:19', 'Ramona Eassom', 0, @manager_uuid);

-- Bruno Souza e seus 10 usuários
SET @manager_uuid = UUID();
INSERT INTO tb_managers (manager_id, email, password, username, version)
VALUES (@manager_uuid, 'bruno.souza@empresa.com', 'SenhaForte2!', 'Bruno Souza', 0);
INSERT INTO tb_users (user_id, creation_timestamp, email, password, update_timestamp, username, version, manager_id) VALUES
(UUID(), '2025-05-02 09:43:34', 'sfalla0@oracle.com', 'nM4@MA8%', '2024-12-02 02:38:20', 'Shea Falla', 0, @manager_uuid),
(UUID(), '2025-04-29 13:46:35', 'gnormaville1@kickstarter.com', 'qV8~H0@8@b$fKQ', '2024-09-24 20:34:36', 'Germana Normaville', 0, @manager_uuid),
(UUID(), '2024-06-14 04:21:14', 'lflute2@nymag.com', 'zJ0{aD8I1SiaQ*', '2025-04-12 21:43:53', 'Lin Flute', 0, @manager_uuid),
(UUID(), '2024-11-16 19:44:04', 'srolstone3@twitter.com', 'gS4<2VXb"`?', '2025-03-31 00:45:54', 'Sig Rolstone', 0, @manager_uuid),
(UUID(), '2025-03-30 10:29:10', 'mshambrooke4@sitemeter.com', 'qV1"Lc(o)x', '2025-04-04 07:35:00', 'Margaretha Shambrooke', 0, @manager_uuid),
(UUID(), '2024-09-20 22:44:42', 'agallen5@purevolume.com', 'nM4~QtjYv~Fwr|', '2025-02-12 12:54:38', 'Ardene Gallen', 0, @manager_uuid),
(UUID(), '2024-06-22 15:36:56', 'jschlagtmans6@usatoday.com', 'dN9{Q7#6$"r*{', '2025-02-23 06:32:49', 'Julissa Schlagtmans', 0, @manager_uuid),
(UUID(), '2024-11-21 11:13:17', 'kdallyn7@jugem.jp', 'nI8~u0,m(k', '2024-08-22 22:49:55', 'Kissie Dallyn', 0, @manager_uuid),
(UUID(), '2024-08-19 13:18:31', 'bgenever8@mayoclinic.com', 'oB5"5B>NYOEJ/', '2025-02-06 05:55:23', 'Berni Genever', 0, @manager_uuid),
(UUID(), '2025-03-18 19:22:15', 'tburnsell9@netscape.com', 'rZ6.Mq*xkOGYPdf)', '2025-03-15 05:21:56', 'Tammy Burnsell', 0, @manager_uuid);

-- Carla Pereira e seus 10 usuários
SET @manager_uuid = UUID();
INSERT INTO tb_managers (manager_id, email, password, username, version)
VALUES (@manager_uuid, 'carla.pereira@empresa.com', 'SenhaForte3!', 'Carla Pereira', 0);
INSERT INTO tb_users (user_id, creation_timestamp, email, password, update_timestamp, username, version, manager_id) VALUES
(UUID(), '2025-03-20 07:51:12', 'rbucksey0@illinois.edu', 'wA0\"_c~b*', '2024-12-02 00:57:41', 'Robena Bucksey', 0, @manager_uuid),
(UUID(), '2024-12-02 17:58:03', 'mmoss1@paypal.com', 'qQ5#yx).', '2025-01-14 19:28:42', 'Melita Moss', 0, @manager_uuid),
(UUID(), '2024-12-04 12:09:52', 'edowse2@japanpost.jp', 'lQ7''Kxw&d|_L', '2025-01-07 18:59:40', 'Egan Dowse', 0, @manager_uuid),
(UUID(), '2025-03-26 07:26:01', 'ccaddick3@sbwire.com', 'gK5|YMQQjl', '2024-12-10 04:14:48', 'Cyrus Caddick', 0, @manager_uuid),
(UUID(), '2025-05-25 19:34:46', 'bdrohun4@google.com.au', 'yU6_Zmd9\=2', '2024-08-20 03:26:35', 'Bond Drohun', 0, @manager_uuid),
(UUID(), '2025-03-28 10:33:39', 'werrichelli5@hud.gov', 'nO9+t(Z)pS*)#', '2024-07-12 22:45:49', 'Walsh Errichelli', 0, @manager_uuid),
(UUID(), '2024-11-05 20:47:09', 'bdicky6@wikispaces.com', 'zK2||6R6nS', '2024-10-14 18:59:46', 'Britta Dicky', 0, @manager_uuid),
(UUID(), '2024-11-08 09:43:39', 'tkeough7@php.net', 'pH3~2\0\Z(sW=', '2025-02-11 06:02:39', 'Troy Keough', 0, @manager_uuid),
(UUID(), '2025-01-05 03:05:28', 'aiannuzzelli8@etsy.com', 'bQ9"XVGEd9~ajJZ.', '2024-11-15 19:08:28', 'Ardelia Iannuzzelli', 0, @manager_uuid),
(UUID(), '2025-01-02 22:16:11', 'bharkness9@shinystat.com', 'iZ8''ZCwPgkR.)(V', '2025-05-24 10:12:48', 'Bel Harkness', 0, @manager_uuid);

-- Daniel Oliveira e seus 10 usuários
SET @manager_uuid = UUID();
INSERT INTO tb_managers (manager_id, email, password, username, version)
VALUES (@manager_uuid, 'daniel.oliveira@empresa.com', 'SenhaForte4!', 'Daniel Oliveira', 0);
INSERT INTO tb_users (user_id, creation_timestamp, email, password, update_timestamp, username, version, manager_id) VALUES
(UUID(), '2024-08-24 00:24:14', 'sdiack0@wunderground.com', 'tR5\FK\*aw%e~cUf', '2024-09-25 04:21:17', 'Siouxie Diack', 0, @manager_uuid),
(UUID(), '2025-02-04 00:49:09', 'crieflin1@ow.ly', 'gU5*!Y60#.cMa', '2025-01-12 04:39:29', 'Cordelie Rieflin', 0, @manager_uuid),
(UUID(), '2024-07-18 02:38:25', 'crudall2@shutterfly.com', 'oL1=sud"3#o', '2025-04-07 09:53:57', 'Corny Rudall', 0, @manager_uuid),
(UUID(), '2024-12-14 10:02:49', 'ipedroni3@cornell.edu', 'iP4!c%bqCde''2}', '2024-06-20 17:10:03', 'Ira Pedroni', 0, @manager_uuid),
(UUID(), '2024-06-13 10:02:46', 'lsalthouse4@time.com', 'wM1+,.gn/', '2025-03-31 09:53:57', 'Lilian Salthouse', 0, @manager_uuid),
(UUID(), '2025-03-18 19:46:38', 'akitteridge5@goodreads.com', 'kC3&I~i\|', '2025-03-24 15:26:22', 'Ailsun Kitteridge', 0, @manager_uuid),
(UUID(), '2025-05-12 13:45:28', 'kgraber6@cmu.edu', 'iC9>2.c8j*~', '2024-08-25 11:00:41', 'Kerr Graber', 0, @manager_uuid),
(UUID(), '2024-11-29 04:04:49', 'rdengate7@reddit.com', 'zH1+(?"iIKs!~Hq', '2024-07-19 23:15:23', 'Romain Dengate', 0, @manager_uuid),
(UUID(), '2025-02-17 01:23:23', 'jheadland8@stumbleupon.com', 'eO1(vx!$5&', '2025-04-27 18:15:56', 'Jenine Headland', 0, @manager_uuid),
(UUID(), '2024-11-07 20:50:07', 'ameade9@blogger.com', 'nC0,z<Cp@$\u', '2024-10-15 20:44:43', 'Aprilette Meade', 0, @manager_uuid);

-- Elaine Santos e seus 10 usuários
SET @manager_uuid = UUID();
INSERT INTO tb_managers (manager_id, email, password, username, version)
VALUES (@manager_uuid, 'elaine.santos@empresa.com', 'SenhaForte5!', 'Elaine Santos', 0);
INSERT INTO tb_users (user_id, creation_timestamp, email, password, update_timestamp, username, version, manager_id) VALUES
(UUID(), '2024-10-20 01:46:00', 'akleewein0@e-recht24.de', 'hV8%h3>T2w_<OX', '2025-06-06 15:12:12', 'Amelia Kleewein', 0, @manager_uuid),
(UUID(), '2024-07-08 21:36:41', 'bbrimicombe1@quantcast.com', 'hU7(#C)a', '2024-06-30 05:14:09', 'Bil Brimicombe', 0, @manager_uuid),
(UUID(), '2025-04-20 18:40:32', 'khuckfield2@bbc.co.uk', 'dU4%b2kumL{K6', '2024-10-25 13:29:05', 'Kelly Huckfield', 0, @manager_uuid),
(UUID(), '2024-11-21 06:06:21', 'cbrummitt3@tiny.cc', 'oZ5)tOBj0GH', '2024-09-14 05:20:35', 'Cyrus Brummitt', 0, @manager_uuid),
(UUID(), '2024-09-26 00:21:02', 'awade4@simplemachines.org', 'zE4+8@%''6=Ex', '2024-07-11 21:09:31', 'Adena Wade', 0, @manager_uuid),
(UUID(), '2025-03-25 09:47:29', 'tgoudge5@craigslist.org', 'gC0?AeorC3tW''', '2025-01-08 18:31:38', 'Tally Goudge', 0, @manager_uuid),
(UUID(), '2024-07-25 23:03:58', 'sattenbrow6@twitpic.com', 'tR8`uZ_*', '2025-04-26 14:22:52', 'Stanley Attenbrow', 0, @manager_uuid),
(UUID(), '2025-05-13 15:07:02', 'tdudill7@google.com.hk', 'sZ6_qI=H71', '2025-05-01 21:50:46', 'Terrance Dudill', 0, @manager_uuid),
(UUID(), '2024-09-07 15:33:21', 'tchesney8@technorati.com', 'hG0\m!@1v!&u{X', '2024-09-01 10:22:10', 'Tonnie Chesney', 0, @manager_uuid),
(UUID(), '2024-06-21 21:08:41', 'sahrend9@cnet.com', 'eX6\x?G(~aN|BLYe', '2025-04-21 07:37:08', 'Samuele Ahrend', 0, @manager_uuid);

-- Felipe Martins e seus 10 usuários
SET @manager_uuid = UUID();
INSERT INTO tb_managers (manager_id, email, password, username, version)
VALUES (@manager_uuid, 'felipe.martins@empresa.com', 'SenhaForte6!', 'Felipe Martins', 0);
INSERT INTO tb_users (user_id, creation_timestamp, email, password, update_timestamp, username, version, manager_id) VALUES
(UUID(), '2025-03-13 21:17:00', 'akaines0@java.com', 'pB7\`''+/u', '2024-12-16 02:00:19', 'Anabelle Kaines', 0, @manager_uuid),
(UUID(), '2024-12-15 11:10:21', 'lapplewhite1@cargocollective.com', 'gQ2*hXv\&rdH*_2g', '2024-08-07 02:38:46', 'Lemmie Applewhite', 0, @manager_uuid),
(UUID(), '2024-06-13 21:21:46', 'freade2@yale.edu', 'bC5#Wto&V~2nl%IY', '2025-02-03 16:54:28', 'Freddie Reade', 0, @manager_uuid),
(UUID(), '2025-01-08 22:06:00', 'skrolle3@edublogs.org', 'nQ1%.1i''\eF', '2025-02-23 08:55:51', 'Sayre Krolle', 0, @manager_uuid),
(UUID(), '2025-02-12 13:34:18', 'gedmeads4@hhs.gov', 'mH7%X+{lN{dO*N"u', '2025-03-07 12:55:11', 'Gaultiero Edmeads', 0, @manager_uuid),
(UUID(), '2024-06-29 21:39:25', 'jpitblado5@admin.ch', 'iH2/TVFr3Wq', '2024-08-14 16:27:15', 'Jude Pitblado', 0, @manager_uuid),
(UUID(), '2025-05-18 15:32:10', 'shoggan6@abc.net.au', 'dS4_7vGa~', '2024-11-21 23:03:14', 'Swen Hoggan', 0, @manager_uuid),
(UUID(), '2024-07-20 19:03:21', 'zcousens7@facebook.com', 'zG3=`f/bwu9_', '2025-06-09 12:38:00', 'Zerk Cousens', 0, @manager_uuid),
(UUID(), '2024-10-26 11:17:18', 'cgeeritz8@weather.com', 'qI8_E@H~', '2025-01-16 06:23:45', 'Crysta Geeritz', 0, @manager_uuid),
(UUID(), '2025-04-22 08:15:13', 'mcollinson9@mtv.com', 'qX1&3F6MXne', '2024-10-11 18:36:33', 'Marielle Collinson', 0, @manager_uuid);

-- Gabriela Rocha e seus 10 usuários
SET @manager_uuid = UUID();
INSERT INTO tb_managers (manager_id, email, password, username, version)
VALUES (@manager_uuid, 'gabriela.rocha@empresa.com', 'SenhaForte7!', 'Gabriela Rocha', 0);
INSERT INTO tb_users (user_id, creation_timestamp, email, password, update_timestamp, username, version, manager_id) VALUES
(UUID(), '2025-03-10 08:12:17', 'ccoytes0@mayoclinic.com', 'iD6~a1S`', '2024-10-07 19:36:34', 'Court Coytes', 0, @manager_uuid),
(UUID(), '2024-08-25 20:49:54', 'jstegel1@woothemes.com', 'dR1|+@~umA=SIQX', '2025-05-05 18:49:55', 'Jolee Stegel', 0, @manager_uuid),
(UUID(), '2025-05-21 23:41:54', 'mpiletic2@umn.edu', 'yY6.,1{QXCP`FG98', '2025-01-25 18:18:14', 'Mignon Piletic', 0, @manager_uuid),
(UUID(), '2024-09-13 06:49:41', 'fgillbey3@1und1.de', 'vT3</>\cQBS1,q*', '2024-12-22 06:57:32', 'Freddi Gillbey', 0, @manager_uuid),
(UUID(), '2024-06-23 23:11:32', 'jrabat4@engadget.com', 'dH1''Jsv%)yV`lq0t', '2024-09-13 19:20:13', 'Joey Rabat', 0, @manager_uuid),
(UUID(), '2025-04-19 02:36:35', 'kfarlow5@desdev.cn', 'kB6*)W?paIV', '2025-06-12 02:19:47', 'Kakalina Farlow', 0, @manager_uuid),
(UUID(), '2024-08-30 13:25:17', 'cwooldridge6@google.es', 'uD1|rt28', '2024-07-28 00:16:59', 'Cristina Wooldridge', 0, @manager_uuid),
(UUID(), '2024-08-27 04:17:15', 'eciubutaro7@sciencedaily.com', 'mK3()0vvv', '2024-07-07 05:16:46', 'Erminia Ciubutaro', 0, @manager_uuid),
(UUID(), '2024-07-21 12:39:46', 'sde8@sogou.com', 'wE6.zbJRG8N)', '2024-11-02 11:39:14', 'Steffane de Guise', 0, @manager_uuid),
(UUID(), '2025-04-23 22:46:30', 'dborthram9@rediff.com', 'jE7<jJBJ2{.', '2025-04-19 05:01:54', 'Dorree Borthram', 0, @manager_uuid);

-- Henrique Lima e seus 10 usuários
SET @manager_uuid = UUID();
INSERT INTO tb_managers (manager_id, email, password, username, version)
VALUES (@manager_uuid, 'henrique.lima@empresa.com', 'SenhaForte8!', 'Henrique Lima', 0);
INSERT INTO tb_users (user_id, creation_timestamp, email, password, update_timestamp, username, version, manager_id) VALUES
(UUID(), '2025-01-22 09:06:57', 'acoxwell0@bigcartel.com', 'dL2.(GmJk', '2024-07-17 12:27:53', 'Abbie Coxwell', 0, @manager_uuid),
(UUID(), '2025-04-15 02:59:06', 'hselway1@tamu.edu', 'wW5!O{0bv', '2024-07-25 23:59:10', 'Hill Selway', 0, @manager_uuid),
(UUID(), '2024-10-16 18:42:38', 'ssteinson2@addtoany.com', 'wB1|tcLG2LZTv2c>', '2024-08-04 20:45:34', 'Stearn Steinson', 0, @manager_uuid),
(UUID(), '2024-08-09 12:24:39', 'rabyss3@intel.com', 'fU6<PK8"sNuyaOi', '2024-10-21 17:13:04', 'Reagen Abyss', 0, @manager_uuid),
(UUID(), '2024-07-24 18:20:23', 'sglacken4@youtu.be', 'bU8&kt"3Cmp$}_7s', '2024-06-29 16:34:32', 'Serge Glacken', 0, @manager_uuid),
(UUID(), '2025-03-29 02:43:46', 'agerretsen5@thetimes.co.uk', 'cL2+f"OjP?''q%Rsw', '2025-06-12 03:47:52', 'Anders Gerretsen', 0, @manager_uuid),
(UUID(), '2024-08-31 00:56:17', 'njurisch6@google.co.jp', 'aD0\w/{B9BC+/f!#', '2025-05-22 15:34:24', 'Nevin Jurisch', 0, @manager_uuid),
(UUID(), '2024-11-01 10:12:46', 'nbownde7@slate.com', 'oQ4\Pap)27w5!', '2025-03-18 05:56:30', 'Nick Bownde', 0, @manager_uuid),
(UUID(), '2024-07-02 05:54:45', 'jiredell8@opera.com', 'uA1${bIqkV/i', '2024-12-24 19:01:00', 'Jeramie Iredell', 0, @manager_uuid),
(UUID(), '2025-03-31 05:13:18', 'mhefner9@netlog.com', 'eA6!\JYB.Y+7oe=', '2024-12-25 09:46:47', 'Melisa Hefner', 0, @manager_uuid);

-- Isabela Costa e seus 10 usuários
SET @manager_uuid = UUID();
INSERT INTO tb_managers (manager_id, email, password, username, version)
VALUES (@manager_uuid, 'isabela.costa@empresa.com', 'SenhaForte9!', 'Isabela Costa', 0);
INSERT INTO tb_users (user_id, creation_timestamp, email, password, update_timestamp, username, version, manager_id) VALUES
(UUID(), '2024-10-20 05:27:14', 'wpeter7@arstechnica.com', 'bC5$hg\N.$4q%', '2025-04-20 06:13:46', 'Wolf Peter', 0, @manager_uuid),
(UUID(), '2025-05-23 08:52:10', 'rle8@gov.uk', 'lS8/l<q12Z', '2024-11-16 09:32:57', 'Ronalda Le Port', 0, @manager_uuid),
(UUID(), '2024-06-19 10:21:01', 'atolworth9@e-recht24.de', 'nV1+b=7id0', '2025-02-23 01:43:45', 'Alessandro Tolworth', 0, @manager_uuid),
(UUID(), '2025-03-13 21:17:00', 'akaines0@java.com', 'pB7\`''+/u', '2024-12-16 02:00:19', 'Anabelle Kaines', 0, @manager_uuid),
(UUID(), '2024-12-15 11:10:21', 'lapplewhite1@cargocollective.com', 'gQ2*hXv\&rdH*_2g', '2024-08-07 02:38:46', 'Lemmie Applewhite', 0, @manager_uuid),
(UUID(), '2024-06-13 21:21:46', 'freade2@yale.edu', 'bC5#Wto&V~2nl%IY', '2025-02-03 16:54:28', 'Freddie Reade', 0, @manager_uuid),
(UUID(), '2025-01-08 22:06:00', 'skrolle3@edublogs.org', 'nQ1%.1i''\eF', '2025-02-23 08:55:51', 'Sayre Krolle', 0, @manager_uuid),
(UUID(), '2025-02-12 13:34:18', 'gedmeads4@hhs.gov', 'mH7%X+{lN{dO*N"u', '2025-03-07 12:55:11', 'Gaultiero Edmeads', 0, @manager_uuid),
(UUID(), '2024-06-29 21:39:25', 'jpitblado5@admin.ch', 'iH2/TVFr3Wq', '2024-08-14 16:27:15', 'Jude Pitblado', 0, @manager_uuid),
(UUID(), '2025-05-18 15:32:10', 'shoggan6@abc.net.au', 'dS4_7vGa~', '2024-11-21 23:03:14', 'Swen Hoggan', 0, @manager_uuid);

-- João Ribeiro e seus 10 usuários
SET @manager_uuid = UUID();
INSERT INTO tb_managers (manager_id, email, password, username, version)
VALUES (@manager_uuid, 'joao.ribeiro@empresa.com', 'SenhaForte10!', 'João Ribeiro', 0);
INSERT INTO tb_users (user_id, creation_timestamp, email, password, update_timestamp, username, version, manager_id) VALUES
(UUID(), '2024-10-20 05:27:14', 'wpeter7@arstechnica.com', 'bC5$hg\N.$4q%', '2025-04-20 06:13:46', 'Wolf Peter', 0, @manager_uuid),
(UUID(), '2025-05-23 08:52:10', 'rle8@gov.uk', 'lS8/l<q12Z', '2024-11-16 09:32:57', 'Ronalda Le Port', 0, @manager_uuid),
(UUID(), '2024-06-19 10:21:01', 'atolworth9@e-recht24.de', 'nV1+b=7id0', '2025-02-23 01:43:45', 'Alessandro Tolworth', 0, @manager_uuid),
(UUID(), '2025-03-13 21:17:00', 'akaines0@java.com', 'pB7\`''+/u', '2024-12-16 02:00:19', 'Anabelle Kaines', 0, @manager_uuid),
(UUID(), '2024-12-15 11:10:21', 'lapplewhite1@cargocollective.com', 'gQ2*hXv\&rdH*_2g', '2024-08-07 02:38:46', 'Lemmie Applewhite', 0, @manager_uuid),
(UUID(), '2024-06-13 21:21:46', 'freade2@yale.edu', 'bC5#Wto&V~2nl%IY', '2025-02-03 16:54:28', 'Freddie Reade', 0, @manager_uuid),
(UUID(), '2025-01-08 22:06:00', 'skrolle3@edublogs.org', 'nQ1%.1i''\eF', '2025-02-23 08:55:51', 'Sayre Krolle', 0, @manager_uuid),
(UUID(), '2025-02-12 13:34:18', 'gedmeads4@hhs.gov', 'mH7%X+{lN{dO*N"u', '2025-03-07 12:55:11', 'Gaultiero Edmeads', 0, @manager_uuid),
(UUID(), '2024-06-29 21:39:25', 'jpitblado5@admin.ch', 'iH2/TVFr3Wq', '2024-08-14 16:27:15', 'Jude Pitblado', 0, @manager_uuid),
(UUID(), '2025-05-18 15:32:10', 'shoggan6@abc.net.au', 'dS4_7vGa~', '2024-11-21 23:03:14', 'Swen Hoggan', 0, @manager_uuid);

-- ===============================
-- CRIPTOGRAFIA BÁSICA DAS SENHAS (usando SHA-256)
-- ===============================
UPDATE tb_managers SET password = SHA2(password, 256);
UPDATE tb_users SET password = SHA2(password, 256);

-- ===============================
-- CRIANDO OS INSERTS EXIGIDOS
-- ===============================


INSERT INTO tb_user_audit (user_email, user_id, action_type)
SELECT email, user_id, 'INSERT' FROM tb_users LIMIT 10;

INSERT INTO tb_user_audit (user_email, user_id, action_type)
SELECT email, user_id, 'UPDATE' FROM tb_users LIMIT 10, 10;

INSERT INTO tb_pessoa_audit (pessoa_id, tipo, acao)
SELECT pessoa_id, tipo, 'INSERT' FROM tb_pessoas LIMIT 10;

INSERT INTO tb_pessoa_audit (pessoa_id, tipo, acao)
SELECT pessoa_id, tipo, 'UPDATE' FROM tb_pessoas LIMIT 10, 10;


