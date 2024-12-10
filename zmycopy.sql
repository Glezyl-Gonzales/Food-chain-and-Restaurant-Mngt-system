

CREATE DATABASE IF NOT EXISTS cafsys;
USE cafsys;

/* 1 category */;
CREATE TABLE `category` (
  `id` BIGINT NOT NULL,
  `category` VARCHAR(255) DEFAULT NULL,
  `deleted` TINYINT(1) DEFAULT '0',
  `description` VARCHAR(255) DEFAULT NULL,
  `photo` MEDIUMBLOB,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `category` (`id`,`category`,`deleted`,`description`,`photo`) VALUES 
 (1,'DESSERT',0,'DESSERT',0x23),
 (2,'DISH',0,'DISH',0x24),
 (3,'DRINKS',0,'DRINKS',0x55356),
 (4,'RICE',0,'RICE',0x653),
 (5,'SOUP',0,'SOUP',0xA23),
 (6,'PIZZA',0,'PIZZA',0X563);

/* 2 menu */;
CREATE TABLE `menu` (
  `id` BIGINT NOT NULL,
  `deleted` TINYINT(1) DEFAULT '0',
  `ingredients` VARCHAR(255) DEFAULT NULL,
  `photo` MEDIUMBLOB,
  `price` FLOAT DEFAULT NULL,
  `recipe` VARCHAR(255) DEFAULT NULL,
  `category_id` BIGINT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnntyhov0t0l9robfq33apt1cd` (`category_id`),
  CONSTRAINT `FKnntyhov0t0l9robfq33apt1cd` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `menu` (`id`,`deleted`,`ingredients`,`photo`,`price`,`recipe`,`category_id`) VALUES 
 (1,0,'BEEF',0x235,135,'BEEF KARE-KARE',2),
 (2,0,'BEEF',0x562,120,'BEEF WONTON',2);
INSERT INTO `menu` (`id`,`deleted`,`ingredients`,`photo`,`price`,`recipe`,`category_id`) VALUES 
 (3,0,'LEMON',0xD,65,'LEMONADE',3),
 (4,0,'GOAT\'S MEAT',0x896,125,'KAMBING KALDERETA',2);
INSERT INTO `menu` (`id`,`deleted`,`ingredients`,`photo`,`price`,`recipe`,`category_id`) VALUES 
 (5,0,'BEEF',0x89,140,'BEEF AFRITADA',2),
 (6,0,'BEEF',0x987,95,'BULALO BEEF',2);
INSERT INTO `menu` (`id`,`deleted`,`ingredients`,`photo`,`price`,`recipe`,`category_id`) VALUES 
 (7,0,'CHICKEN',0x659,90,'CHICKEN CURRY',2),
 (8,0,'BEEF',0x695,90,'EMBUTIDO',2);
INSERT INTO `menu` (`id`,`deleted`,`ingredients`,`photo`,`price`,`recipe`,`category_id`) VALUES 
 (9,0,'PORK',0x658,110,'LECHON KAWALI',2),
 (10,0,'PORK',0x8974,115,'SISIG PORK',2);
INSERT INTO `menu` (`id`,`deleted`,`ingredients`,`photo`,`price`,`recipe`,`category_id`) VALUES 
 (11,0,'BEET',0xf231,75,'BEET JUICE',3),
 (12,0,'BANANA',0x9d5,50,'BANANA CAKE',1);
INSERT INTO `menu` (`id`,`deleted`,`ingredients`,`photo`,`price`,`recipe`,`category_id`) VALUES 
 (13,0,'RICE',x235,45,'BIBINGKA',1),
 (14,0,'SWEET RICE',x659,40,'BIKO SWEET RICE',1);
INSERT INTO `menu` (`id`,`deleted`,`ingredients`,`photo`,`price`,`recipe`,`category_id`) VALUES 
 (15,0,'UBE',0x897,45,'BIKO UBE',1),
 (16,0,'APPLE',0x845,70,'CARAMEL APPLE CAKE',1);
INSERT INTO `menu` (`id`,`deleted`,`ingredients`,`photo`,`price`,`recipe`,`category_id`) VALUES 
 (17,0,'CASSAVA',0x078,40,'CASSAVA CAKE',1),
 (18,0,'LANGKA',0x985,85,'HALO-HALO',1);
INSERT INTO `menu` (`id`,`deleted`,`ingredients`,`photo`,`price`,`recipe`,`category_id`) VALUES 
 (19,0,'RICE',0x659,50,'KUTSINTA',1),
 (20,0,'EGG',0x987521a,70,'LECHE FLAN',1);
INSERT INTO `menu` (`id`,`deleted`,`ingredients`,`photo`,`price`,`recipe`,`category_id`) VALUES 
 (21,0,'PINEAPPLE',0xF659,65,'PINEAPPLE CAKE',1),
 (22,0,'TARO AND SAGO',0xA5D655,50,'TARO-SAGO',1);
INSERT INTO `menu` (`id`,`deleted`,`ingredients`,`photo`,`price`,`recipe`,`category_id`) VALUES 
 (23,0,'CORN, BOK CHOY',0X5622,60,'VIGAN NILAGA',5),
 (24,0,'EGG, CHICKEN',0x2636,60,'ARROZ CALDO',5);
INSERT INTO `menu` (`id`,`deleted`,`ingredients`,`photo`,`price`,`recipe`,`category_id`) VALUES 
 (25,0,'MORINGA, OKRA',.0x565,60,'BULANGLANG',5),
 (26,0,'CHICKEN',0x65224,60,'CHICKEN SOUP',5);
INSERT INTO `menu` (`id`,`deleted`,`ingredients`,`photo`,`price`,`recipe`,`category_id`) VALUES 
 (27,0,'MUSHROOM',0x7765,66,'MUSHROOM CHILI',5),
 (28,0,'BEEF, SAYOTE',0x9985,75,'PICADILLO',5);
INSERT INTO `menu` (`id`,`deleted`,`ingredients`,`photo`,`price`,`recipe`,`category_id`) VALUES 
 (29,0,'TAMARIND, PORK AND SNINACH',0x87,60,'SINIGANG',5),
 (30,0,'CHICKEN AND MACARONI',0x9988,70,'SOPAS',5);
INSERT INTO `menu` (`id`,`deleted`,`ingredients`,`photo`,`price`,`recipe`,`category_id`) VALUES 
 (31,0,'COCONUT JUICE',0x7784,45,'COCONUT',3),
 (32,0,'CRANBERRY',0x8789,60,'CRANBERRY',3);
INSERT INTO `menu` (`id`,`deleted`,`ingredients`,`photo`,`price`,`recipe`,`category_id`) VALUES 
 (33,0,'KOMBUCHA',0x2541,70,'KOMBUCHA',3),
 (34,0,'ORANGE',0x554,40,'ORANGE',3);
INSERT INTO `menu` (`id`,`deleted`,`ingredients`,`photo`,`price`,`recipe`,`category_id`) VALUES 
 (35,0,'PINEAPPLE',0xaa1,40,'PINAPPLE',3),
 (36,0,'POMEGRANATE',0x652,60,'POMEGRANATE',3);


/* 3 todays menu */;
CREATE TABLE `todays_menu` (
  `id` BIGINT NOT NULL,
  `createdAt` DATETIME(6) NOT NULL,
  `deleted` TINYINT(1) DEFAULT '0',
  `price` FLOAT DEFAULT NULL,
  `menu_id` BIGINT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4v5i4k88tki6f90ypw5d35dei` (`menu_id`),
  CONSTRAINT `FK4v5i4k88tki6f90ypw5d35dei` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




/* 4 order option */;
CREATE TABLE `order_option` (
  `id` BIGINT NOT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `order_option` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `order_option` (`id`,`description`,`order_option`) VALUES 
 (1,'DINE-IN','DINE-IN'),
 (2,'TAKE-OUT','TAKE-OUT');


/* 5 user role */;
CREATE TABLE `role` (
  `id` BIGINT NOT NULL,
  `active` TINYINT(1) DEFAULT '1',
  `description` VARCHAR(255) DEFAULT NULL,
  `role` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `role` (`id`,`active`,`description`,`role`) VALUES 
 (1,1,'glezyl;','ADMIN'),
 (2,1,'vincent','USER');

/* 6 user account */;
CREATE TABLE `user_account` (
  `id` BIGINT NOT NULL,
  `active` TINYINT(1) DEFAULT '1',
  `firstname` VARCHAR(255) DEFAULT NULL,
  `password` VARCHAR(255) DEFAULT NULL,
  `photo` MEDIUMBLOB,
  `surname` VARCHAR(255) DEFAULT NULL,
  `username` VARCHAR(255) DEFAULT NULL,
  `role_id` BIGINT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjgd30iy5puethqpw1ddipxrt4` (`role_id`),
  CONSTRAINT `FKjgd30iy5puethqpw1ddipxrt4` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `user_account` (`id`,`active`,`firstname`,`password`,`photo`,`surname`,`username`,`role_id`) VALUES 
 (1,1,'GLEZYL','1234',0x998a,'GONZALES','glezyl',1),
 (2,1,'VINCENT','1234',0xb98,'BON','VINCENT',2);

/* 7 invoice */;
CREATE TABLE `invoice` (
  `id` BIGINT NOT NULL,
  `createdAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `customerCash` FLOAT DEFAULT NULL,
  `noOfOrders` INT DEFAULT NULL,
  `tableNo` INT DEFAULT NULL,
  `total` FLOAT DEFAULT NULL,
  `order_option_id` BIGINT DEFAULT NULL,
  `user_id` BIGINT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8yptotvpr06d1ih4gmg3oqnnc` (`order_option_id`),
  KEY `FKtjrduak4lhwgdn7tw3kqr9hio` (`user_id`),
  CONSTRAINT `FK8yptotvpr06d1ih4gmg3oqnnc` FOREIGN KEY (`order_option_id`) REFERENCES `order_option` (`id`),
  CONSTRAINT `FKtjrduak4lhwgdn7tw3kqr9hio` FOREIGN KEY (`user_id`) REFERENCES `user_account` (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


/* 8 invoice line*/;
CREATE TABLE `invoice_line_menu` (
  `id` BIGINT NOT NULL,
  `qty` INT DEFAULT NULL,
  `invoice_id` BIGINT DEFAULT NULL,
  `todays_menu_id` BIGINT DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKekieuh5nus7aimtg2kb48bpv8` (`invoice_id`),
  KEY `FKh5q5j8p5suo4sykm0mi7ax91i` (`todays_menu_id`),
  CONSTRAINT `FKekieuh5nus7aimtg2kb48bpv8` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`),
  CONSTRAINT `FKh5q5j8p5suo4sykm0mi7ax91i` FOREIGN KEY (`todays_menu_id`) REFERENCES `todays_menu` (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


