
DROP TABLE IF EXISTS `follows`;
CREATE TABLE `follows` (
                           `id` bigint NOT NULL AUTO_INCREMENT,
                           `follower_id` bigint DEFAULT NULL,
                           `following_id` bigint DEFAULT NULL,
                           PRIMARY KEY (`id`),
                           KEY `FKqnkw0cwwh6572nyhvdjqlr163` (`follower_id`),
                           KEY `FKonkdkae2ngtx70jqhsh7ol6uq` (`following_id`),
                           CONSTRAINT `FKonkdkae2ngtx70jqhsh7ol6uq` FOREIGN KEY (`following_id`) REFERENCES `users` (`id`),
                           CONSTRAINT `FKqnkw0cwwh6572nyhvdjqlr163` FOREIGN KEY (`follower_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `follows` VALUES
                          (6,5,4),(36,6,4),(55,8,4),(68,9,7),(70,9,3),
                          (76,4,3),(78,4,7),(85,3,7),(96,19,14),(97,19,7),(98,23,14);

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
                         `id` bigint NOT NULL AUTO_INCREMENT,
                         `body` varchar(255) DEFAULT NULL,
                         `created_at` datetime(6) DEFAULT NULL,
                         `deleted_at` datetime(6) DEFAULT NULL,
                         `status` varchar(255) DEFAULT NULL,
                         `title` varchar(255) DEFAULT NULL,
                         `updated_at` datetime(6) DEFAULT NULL,
                         `user_id` bigint NOT NULL,
                         PRIMARY KEY (`id`),
                         KEY `FK5lidm6cqbc7u4xhqpxm898qme` (`user_id`),
                         CONSTRAINT `FK5lidm6cqbc7u4xhqpxm898qme` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `posts` VALUES
                        (1,'hhhhhhhhhhhhhhhhhhhh','2025-02-26 22:25:25.205013','2025-02-27 09:30:40.157793','DELETED','hhhhhhhhhhhhhhhhh','2025-02-26 22:25:25.205013',1),
                        (2,'da fix','2025-02-26 22:35:23.121498','2025-02-27 09:30:36.962457','DELETED','da fix','2025-02-26 22:35:23.121498',4),
                        (3,'sua lai loi thanh cong','2025-02-27 10:05:04.958183','2025-02-27 10:33:59.964648','DELETED','da fix','2025-02-27 10:33:59.964648',3),
                        (4,'fix dc chuc nang dang nhap','2025-02-27 10:05:39.168257','2025-02-27 22:13:09.760769','DELETED','can fix','2025-02-27 10:05:39.168348',4),
                        (5,'da xong','2025-02-27 10:06:55.736285','2025-02-27 10:08:02.794805','DELETED','da xong ','2025-02-27 10:08:02.794805',6),
                        (6,'dasdas','2025-02-27 10:33:42.159741','2025-02-27 10:34:01.770829','DELETED','da xong ','2025-02-27 10:34:01.770829',3),
                        (7,'dada','2025-02-27 10:34:12.710531','2025-02-27 22:13:06.655070','DELETED','da fix','2025-02-27 10:34:12.710531',3),
                        (8,'dad','2025-02-27 10:34:38.448945','2025-02-27 10:35:22.355868','DELETED','da','2025-02-27 10:35:22.355868',7),
                        (9,'dasdas','2025-02-27 11:18:25.262401','2025-02-27 22:13:04.265086','DELETED','hhhhhhhhhhhhhhhhh','2025-02-27 11:18:25.262401',8),
                        (10,'sdads','2025-02-27 22:12:39.867258','2025-02-27 22:13:00.932564','DELETED','hhhhhhhhhhhhhhhhh','2025-02-27 22:12:39.867258',7),
                        (11,'xin chao day la tesst','2025-02-28 20:41:17.166991',NULL,'ACTIVE','iu riot','2025-03-09 22:29:38.275403',3),
                        (12,'ddd','2025-02-28 20:42:53.373566',NULL,'ACTIVE','da xong ','2025-02-28 20:42:53.373566',7),
                        (13,'gckcyvyvuvugbibbiuyuiuvuviuvub','2025-03-11 14:32:04.911135',NULL,'ACTIVE','hhhhhhhhhhhhhhhhh','2025-03-11 14:32:12.998142',7),
                        (14,'hhhhhhhhhhhhhhhhh','2025-03-11 14:34:33.587073',NULL,'ACTIVE','hhhhhhhhhhhhhhhhh','2025-03-11 14:34:33.587073',4),
                        (15,'cdcddxcx','2025-03-11 14:35:06.879623',NULL,'ACTIVE','da fix','2025-03-11 14:35:06.879623',3),
                        (16,'dfdvfdcscscscscfsc','2025-03-11 14:35:18.667987',NULL,'ACTIVE','hhhhhhhhhhhhhhhhh','2025-03-11 14:35:18.667987',3),
                        (17,'dadaddas','2025-03-19 22:54:10.401403',NULL,'ACTIVE','da xong ','2025-03-19 22:54:10.401403',7),
                        (19,'da','2025-03-30 11:18:51.957026',NULL,'ACTIVE','xin  chao ngay moi','2025-03-30 11:18:51.957026',3),
                        (20,'da','2025-03-30 17:05:45.891928',NULL,'ACTIVE','da','2025-03-30 17:05:45.891928',7),
                        (21,'123','2025-04-14 23:36:54.003967',NULL,'ACTIVE','de','2025-04-14 23:36:54.003967',14),
                        (22,'da','2025-04-15 20:28:55.201662',NULL,'ACTIVE','de','2025-04-15 20:28:55.201662',23);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
                         `id` bigint NOT NULL AUTO_INCREMENT,
                         `created_at` datetime(6) DEFAULT NULL,
                         `password` varchar(255) DEFAULT NULL,
                         `role` varchar(255) DEFAULT NULL,
                         `username` varchar(255) DEFAULT NULL,
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `users` (`id`, `created_at`, `password`, `role`, `username`) VALUES
                                                                             (1, NOW(6), '0123456789', 'ADMIN', 'admin'),
                                                                             (2, NOW(6), '0123456789', 'USER', 'admin1'),
                                                                             (3, NOW(6), '0123456789', 'USER', 'admin2'),
                                                                             (4, NOW(6), '0123456789', 'USER', 'admin3'),
                                                                             (5, NOW(6), '0123456789', 'USER', 'admin4'),
                                                                             (6, NOW(6), '0123456789', 'USER', 'admin5'),
                                                                             (7, NOW(6), '0123456789', 'USER', 'admin6'),
                                                                             (8, NOW(6), '0123456789', 'USER', 'admin7'),
                                                                             (9, NOW(6), '0123456789', 'USER', 'admin8'),
                                                                             (10, NOW(6), '0123456789', 'USER', 'admin9');
