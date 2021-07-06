/*
 Navicat Premium Data Transfer

 Source Server         : LOCAL
 Source Server Type    : MySQL
 Source Server Version : 100419
 Source Host           : localhost:3306
 Source Schema         : ruffus

 Target Server Type    : MySQL
 Target Server Version : 100419
 File Encoding         : 65001

 Date: 06/07/2021 08:04:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for adjunto
-- ----------------------------
DROP TABLE IF EXISTS `adjunto`;
CREATE TABLE `adjunto`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `descripcion` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL,
  `adjunto` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `adjunto_dir` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `created` date NULL DEFAULT NULL,
  `modfied` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adjunto
-- ----------------------------

-- ----------------------------
-- Table structure for adjuntos
-- ----------------------------
DROP TABLE IF EXISTS `adjuntos`;
CREATE TABLE `adjuntos`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `documento` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `documento_dir` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `created` date NULL DEFAULT NULL,
  `updated` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adjuntos
-- ----------------------------
INSERT INTO `adjuntos` VALUES (1, '123321', '21332', '2021-07-02', NULL);

-- ----------------------------
-- Table structure for calculadoras
-- ----------------------------
DROP TABLE IF EXISTS `calculadoras`;
CREATE TABLE `calculadoras`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of calculadoras
-- ----------------------------

-- ----------------------------
-- Table structure for componentes
-- ----------------------------
DROP TABLE IF EXISTS `componentes`;
CREATE TABLE `componentes`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `referencia` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `item` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `cantidad` int NULL DEFAULT NULL,
  `descripcion` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL,
  `etiqueta` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `grupo` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `ubicación` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `foto_drive` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `foto_dir` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `adjunto_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `movimiento_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `created` date NULL DEFAULT NULL,
  `modified` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 774 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of componentes
-- ----------------------------
INSERT INTO `componentes` VALUES (1, '4753', 'Motorreductor 50:1', 3, ' 6V-12V 200 rpm, 21 kg/cm, con encoder, engranaje helicoidal', 'potencia, motor, motorreductor, gearmotor, pololu, helical, pinion', 'Actuadores', 'Locker 13', 'https://drive.google.com/file/d/1fa7r9mFb1DBEOnDdX5WNKtxj7V8qXPwh/view?usp=sharing', '', '', '1', '1', '2021-07-02', '2021-07-01 00:00:00');
INSERT INTO `componentes` VALUES (2, '28141', 'Tarjeta RFID 125 KHz', 10, 'Sólo lectura, Fabricante: Parallax', 'RF, RFID, tag, tarjeta, KHz, card', 'IoT', 'Locker 11', 'https://drive.google.com/file/d/1zUnh4Sbsf9BjKIJ_cDUhcqY6LAjAu0j1/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (3, '28340', 'Lector USB de etiquetas RFID', 1, 'Lector de tarjetas de referencia 28141', 'RF, RFID, lector, tarjeta, card, KHz', 'IoT', 'Locker 11', 'https://drive.google.com/file/d/1ZJ6yXkzIdKGFbMb_PzgRd_Qpcwi2XpUF/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (4, '28380', 'Sensor de color', 1, 'Parallax ColorPad Sensor. Sensor para determinar el color de una muestra.', 'sensor, radiación, radiacion, luz, color, colorimetria, colorimetría', 'Sensores', 'Locker 2', 'https://drive.google.com/file/d/18v2Pv-KUYfAxGgyVGpRtRUcdd8NNZCKe/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (5, '70144', 'Ball caster', 1, NULL, 'dron, parte, partes, extras', 'Accesorios para drones', 'Locker 8', 'https://drive.google.com/file/d/1AryUjlcVs0IestPP_3mDFgcE0rvCdu3v/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (6, '105060', 'Batería de litio', 3, '3400 mAh, 3.7 V, recargable', 'Batería, bateria, litio, polímero, polimero, lipo, rc', 'Baterías', 'Locker 3', 'https://drive.google.com/file/d/1b0f58BccOcwqphyi7IiYUUug-4m6K-AK/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (7, '123458', 'Panel solar', 2, 'Dimensiones: 123 mm x 54.8 mm', 'Paneles solares, Panel solar', 'Alimentación', 'Cajones pequeños transparentes', 'https://drive.google.com/file/d/1Cw2WM4IVE4YMj5JYu1K11jBSNEkl3eZG/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (8, '1568R-A', 'Antena GPS', 13, '28 dBi, SWR <= 2', 'gps, antena, rf', 'Herramientas de desarrollo', 'Locker 7', 'https://drive.google.com/file/d/1hIdoIdhbhAXJVwzDV2vf0Nwo2hUy3bnF/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (9, '1602A', 'Pantalla LCD', 20, 'Caracteres: 2x16, 8 líneas de datos', 'Pantalla LCD, LCD, 2x16', 'Displays', 'Cajones pequeños transparentes', 'https://drive.google.com/file/d/1h942RgV3mAdtUtOYxnFV-ZTnYwea-wXX/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (10, '1602A-I2C', 'Pantalla LCD con adaptación I2C', 3, 'Caracteres: 2x16, 8 líneas de datos, Controlador I2C: PCF8574AT', 'Pantalla LCD, LCD, 2x16, I2C', 'Displays', 'Cajones pequeños transparentes', 'https://drive.google.com/file/d/11Ai6aFt31vcgooYUnWW2nGRWa_4RSVvt/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (11, '17PM-K054-G7WS', 'Motor NEMA 17', 2, 'Motor paso a paso, 1.2 A por fase', 'motor, pasos, stepper, nema 17, bipolar', 'Motores', 'Locker 4, caja transparente, abajo', 'https://drive.google.com/file/d/1w7KzBLKWbrXpafA5HjIrgmNWfUTR5DS2/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (12, '2004A', 'Módulo LCD grande', 1, '20 caracteres, 4 líneas', 'lcd, module, 2004', 'Displays', 'Locker 15', 'https://drive.google.com/file/d/1wTAL583aCV6tvvM9urHAmKHzvEizuMa6/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (13, '20MER08', 'Driver de LEDs', 4, 'Para Lámparas LED cuadradas de color blanco, de 48 W', NULL, 'Iluminación', 'Locker 15', 'https://drive.google.com/file/d/1-vhXO1E1C3ecvGRP5IZfTKCahg3lxz7K/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (14, '28BYJ-48', 'Motor paso a paso pequeño', 5, '5V, con driver', 'DC, motor, de pasos, paso a paso, motor paso a paso', 'Actuadores', 'Locker 4', 'https://drive.google.com/file/d/1GIRLqCU6jCe6y6fg8DNzNUsI5nJHVquf/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (15, '30A-BEC', 'Controlador de velocidad para drones 30A-BEC', 6, NULL, 'dron, extra, partes, controlador, velocidad, speed, controller', 'Accesorios para drones', 'Locker 12', 'https://drive.google.com/file/d/1WV9GnPJrjB0oWdWGJvVAJltKxdOA45-a/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (16, '42BYGHW609', 'Motor NEMA 17', 7, 'Bipolar, 3.4 V-18V, 1.7A, NEMA 17', 'motor, pasos, stepper, nema 17, bipolar', 'Actuadores', 'Locker 13', 'https://drive.google.com/file/d/1ylaHab2v1s6dobU2fHo8sUvAYRKg1i4t/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (17, '4988ET', 'Driver de motor paso a paso', 4, NULL, 'a4988, motor, paso a paso, de pasos, driver, controlador', 'Motores', 'Locker 4', 'https://drive.google.com/file/d/1MI4WT0zWByBIuJdnR4G4f84RAAbx6IzX/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (18, 'A4988', 'Driver de motor paso a paso', 16, 'Pololu A4988', 'motor, driver, controlador, pololu, a4988', 'Herramientas de desarrollo', 'Locker 4', 'https://drive.google.com/file/d/1AfguVNysudNBDDTAzir_v0qiIIEKZPcQ/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (19, 'AA-AB32155V500', 'Módulo amplificador de audio', 1, 'Amplificador de audio clase D, 15 W, https://store.sure-electronics.com/product/AA-AB32155', 'audio, amplificador', 'Audio', 'Locker 6', 'https://drive.google.com/file/d/1om56cxrD0Ldva4AYcdL1JWB2QkjHyAQr/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (20, 'ACS711EX-15', 'Sensor de corriente', 4, 'Sensor invasivo que funciona por efecto Hall, de -15A a 15A', 'sensor, corriente, invasivo, efecto Hall, acs711, pololu', 'Sensores', 'Locker 1, caja transparente', 'https://drive.google.com/file/d/11GIQglri4AVTdFcOJz3MIW1fIeDahmMn/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (21, 'ACS711EX-31', 'Sensor de corriente', 4, 'Sensor invasivo que funciona por efecto Hall, de -31A a 31A', 'sensor, corriente, invasivo, efecto Hall, acs711, pololu', 'Sensores', 'Locker 1, caja transparente', 'https://drive.google.com/file/d/1CxGQ4O7-th__ZxMaZshl81zqkzbXXpAW/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (22, 'ACS711T-25', 'Sensor de corriente', 4, 'Sensor invasivo que funciona por efecto Hall, de -25A a 25A', 'sensor, corriente, invasivo, efecto Hall, acs711, pololu', 'Sensores', 'Locker 1, caja transparente', 'https://drive.google.com/file/d/1vN2n8y2lyEqNLwEGCzSgLkZOnF5niPgp/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (23, 'ACS758', 'Sensor de corriente', 7, 'Sensor de medición de corriente y de forma indirecta por efecto Hall', 'sensor, corriente, invasivo, efecto Hall, hall', 'Sensores', 'Locker 1, caja transparente', 'https://drive.google.com/file/d/1QxdsaCN1D7IUBpIHxV-Sg0WzeEMQkmG-/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (24, 'ACTUONIX-L16', 'Actuador lineal', 1, NULL, 'actuador, linea;', 'Actuadores', 'Locker 4', 'https://drive.google.com/file/d/1ucooM7jtoWHq1YeFLOoPHcHNFA8VOyHq/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (25, 'ADAPT-BAT-TER', 'Adaptador voltaje vehículo', 1, 'Adaptador para sacar voltaje del vehículo hasta un par de terminales', 'IO, terminal, adaptador, vehículo', 'IO', 'Locker 3', 'https://drive.google.com/file/d/1FnDsuj-bRElvWw6SJkJnVO6KosN_W1EX/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (26, 'ADS1115', 'ADC ', 5, 'Para Raspi o más tarjetas', 'sensor, ADC', 'Sensores', 'Locker 1, caja transparente pequeña', 'https://drive.google.com/file/d/14gaB438jHapaP3scNWOQwY3N4B56eMKD/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (27, 'AK-R06A', 'Kit trasmisor y receptor RF', 5, '433 MHz, Alcance de 100 m', 'domótica, rf, 433, mhz', 'Herramientas de desarrollo', 'Locker 11', 'https://drive.google.com/file/d/1IHjTQgMl0g2Gmtywz0R35gTH1oSgF6G_/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (28, 'AMG8833', 'Cámara térmica', 4, 'Esta camara termica de Adafruit basada en el sensor de Panasonic AMG8833 es un array de sensores termicos de 8x8 que permite medir temperaturas entre 0ºC y 80ºC y conectado por I2C a un microcontrolador o similar mostrar la huella termica captada mediante', 'sensor, IR, infrarrojo, térmico, cámara, cámara térmica', 'Sensores', 'Locker 2', 'https://drive.google.com/file/d/1AM62Ba6nFokEhRzI9R7GjrWxrtiTRtyP/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (29, 'ANTWIFI', 'Antena Wifi', 6, NULL, 'IoT, internet de las cosas, Wifi, antena', 'Herramientas de desarrollo', 'Locker 7', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (30, 'AP27A-12D', 'Motor DC', 1, 'Alimentación 12 V', 'DC, motor', 'Actuadores', 'Locker 4', 'https://drive.google.com/file/d/1CvhF_2BCQzj6EOclXrrbGdrmM3SAOE3X/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (31, 'ARDUCOPTER', 'Controlador para drones', 4, 'Controlador de drones de código abierto, que ganó en el evento Autonomous Vehicle Competition, en los años 2013 y 2014', 'Arduino, arducopter, drone', 'Accesorios para drones', 'Locker 12', 'https://drive.google.com/file/d/1pRIp9LHZkiYnzu34YOeYL38wZamboM4c/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (32, 'ARDUINO-DUE', 'Tarjeta Arduino Due', 1, 'Rev 3', 'Arduino, Due', 'Herramientas de desarrollo', 'Locker 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (33, 'ARDUINO-LEONARDO', 'Tarjeta Arduino Leonardo', 10, 'Rev 3', 'Arduino, leonardo', 'Herramientas de desarrollo', 'Locker 1', 'https://drive.google.com/file/d/1emXESYEdklTy5OOqyELmm48XUAv8YF5b/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (34, 'ARDUINO-LEONARDO-PLUS', 'Tarjeta Arduino Leonardo++', 1, 'Microcontrolador: Atmel Atmega32U4', 'Arduino, leonardo++', 'Herramientas de desarrollo', 'Locker 1', 'https://drive.google.com/file/d/1mE4bXA01CfHfsAuy4M5Hqc57RW1H1Ear/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (35, 'ARDUINO-MEGA-2560', 'Tarjeta Arduino Mega 2560', 9, 'Rev 3', 'Arduino, mega, 2560', 'Herramientas de desarrollo', 'Locker 1', 'https://drive.google.com/file/d/158AuchwBAYwztByKe0anGa0vjw9WLEcO/view?usp=sharing', '', '', '1', '1', NULL, '2021-07-06 02:44:42');
INSERT INTO `componentes` VALUES (36, 'ARDUINO-MEGA-ADK', 'Tarjeta Arduino Mega ADK para Android', 1, 'Rev 3', 'Arduino, mega, ADK, Android', 'Herramientas de desarrollo', 'Locker 1', 'https://drive.google.com/file/d/1sqfzUkpTYSzn6jlmv84etqgDo4a_MgP0/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (37, 'ARDUINO-MICRO', 'Arduino Micro', 19, 'Versión: 3', 'Microcontroladores, arduino, micro, Arduino micro', 'Herramientas de desarrollo', 'Locker 1, caja pequeña I+D', 'https://drive.google.com/file/d/1I9rVEW8hQHm4r9EvHe2_XNeeWjX-7N-D/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (38, 'ARDUINO-NANO', 'Arduino Nano', 2, NULL, 'Microcontroladores, arduino, nano, arduino nano', 'Herramientas de desarrollo', 'Locker 1, caja pequeña I+D', 'https://drive.google.com/file/d/1Tn4GNkX86n3s9G9zMKY4EUQ_4ZobYogo/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (39, 'ARDUINO-UNO', 'Tarjeta Arduino Uno', 5, 'Rev 3', 'Arduino, uno', 'Herramientas de desarrollo', 'Locker 1', 'https://drive.google.com/file/d/1t3YxXM_wi-7kFSTFEGBijSROQavxFVwE/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (40, 'AT42QT1070', 'Sensor de toque ', 7, 'Sensor de toque capacitivo en electrodos como pads de circuitos impresos', 'sensor, toque, through-hole, header', 'Sensores', 'Locker 2', 'https://drive.google.com/file/d/1IDtubYTKyAbONPIm7RfgIPVHRu9CbYKr/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (41, 'AUTOREFLEX', 'Sensor de presencia', 5, 'Sensor fotoeléctrico de presencia', 'sensor, infrarrojo, radiación, luz, radiacion, through-hole, header, presencia', 'Sensores', 'Locker 2', 'https://drive.google.com/file/d/1UlHI-hk1Ncp1VUOxuZnAbAv34w8SwBB_/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (42, 'AVAN-R', 'Propulsor negro', 14, NULL, 'dron, helice, hélice', 'Accesorios para drones', 'Locker 8', 'https://drive.google.com/file/d/1g-LM3871enN4dtgM7H1mQjjkoq9wnymm/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (43, 'B01BXS0BWO', 'Control remoto para drones', 2, NULL, 'control remoto, RC, dron', 'Accesorios para drones', 'Locker 8', 'https://drive.google.com/file/d/1QToTbrGeckZdWjMMa9dor2SG-xbsXV1l/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (44, 'BAT1000MAH-35C', 'Batería LiPo', 12, '3 celdas, 11. 1 V', 'bateria, batería, lipo, rc', 'Baterías', 'Locker 3', 'https://drive.google.com/file/d/1HKKXbmtayzWAuTp2M1xMxZ84E9aCEdB7/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (45, 'BAT1000MAHRC', 'Batería LiPo', 1, '1000 mAh, 11.1V, recargable', 'Batería, bateria, litio, polímero, polimero, lipo, rc', 'Baterías', 'Locker 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (46, 'BAT1200MAHRC', 'Batería LiPo', 1, '1200 mAh, 7.4 V, recargable', 'Batería, bateria, litio, polímero, polimero, lipo, rc', 'Baterías', 'Locker 3', 'https://drive.google.com/file/d/1ZtmyAGUFrGGhRoGidX1B8Q_3tNAVSbLR/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (47, 'BAT1300MAHRC', 'Batería LiPo', 7, '1300 mAh, 7.4 V, recargable', 'Batería, bateria, litio, polímero, polimero, lipo, rc', 'Baterías', 'Locker 3', 'https://drive.google.com/file/d/15XBmRCJGeIaEIdKdpL3bGd03t09q2FSb/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (48, 'BAT3300MAH274', 'Batería LiPo', 6, '3300 mAh, 2 celdas de 7.4 V, recargable', 'Batería, bateria, litio, polímero, polimero, lipo, rc', 'Baterías', 'Locker 3', 'https://drive.google.com/file/d/12lxVMt403nq2Uss2fqKXM9YAihntrqRs/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (49, 'BATT9V', 'Batería 9 V', 2, 'No recargable', 'batería, batería, pila, pila 9 V', 'Baterías', 'Locker 3', 'https://drive.google.com/file/d/117bU6tbbPl9ZLfm8vpa5nro8r406WpiU/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (50, 'BIGTREE-GPL3', 'Shield para motores en CNC', 1, 'Para máquinas CNC', 'cnc, shield', 'Accesorios para CNC', 'Locker 14', 'https://drive.google.com/file/d/1vdIFmgXJBYhlmEnVMwFgTPatAyTZIOPq/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (51, 'BMP180', 'Sensor barométrico', 7, 'https://www.adafruit.com/product/1603', 'sensor, presión, pressure', 'Sensores', 'Locker 1, caja pequeña transparente', 'https://drive.google.com/file/d/1xsthSBeYQfoDuT7jUiIRgGAmqZg6p26f/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (52, 'BMS410', 'Servomotor', 1, 'Fabricante: Blue Bird', 'Servomotor, motor, servo', 'Actuadores', 'Locker 4', 'https://drive.google.com/file/d/1l0G74lOjHJXL41Jjf-K-UUuo_YLB86Ty/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (53, 'BMSCEO4U-PP', 'Tarjeta shield para CNC', 1, NULL, 'cnc, shield', 'Accesorios para CNC', 'Locker 14', 'https://drive.google.com/file/d/1lgbvuBca7S4S9SY6M3K38JbUnQLA1NLl/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (54, 'BNO055-AT', 'Sensor IMU 3 3 en 1', 1, 'De ATMEL', 'sensor, inercial, IMU, bno055, acelerómetro, acelerometro, magnetometro, giroscopio', 'Sensores', 'Locker 2, Caja Sensores 3', 'https://drive.google.com/file/d/1NDTz-CiaHrthW7sVF_4nNeMufVGRSDSI/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (55, 'BOQUILLAS', 'Boquillas para estación de soldadura', 6, NULL, 'boquillas, estación, estacion, soldadura', 'Fabricación PCB', 'Locker 16', 'https://drive.google.com/file/d/1F0z1KE5QWiY2_Ulr0oxLqdgq0y9IugOQ/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (56, 'BRC18650', 'Batería de litio', 10, '4000 mAh, 3.7 V, ion de litio, recargable', 'Batería, bateria, litio, ion, li-ion', 'Baterías', 'Locker 3', 'https://drive.google.com/file/d/1nSIqZ847iXGNGiKz0wXGLHWz_-Gz9U2y/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (57, 'C-015', 'Toma de incrustar trifilar', 1, '250 V / 50 A', 'potencia, toma, tomacorriente', 'Electrónica de potencia', 'Locker 9', 'https://drive.google.com/file/d/1ydGp24CZgeFm8X5BIW_o-EZc1BIyAAb0/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (58, 'C-2400MF', 'Capacitor 2.4 F', 1, NULL, 'potencia, capacitor', 'Electrónica de potencia', 'Locker 9', 'https://drive.google.com/file/d/1XvI9SEiZ3qW3Fn8mGSl2pO9FRC6Wxaom/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (59, 'C-30MF', 'Capacitor 30 mF', 1, 'Tolerancia: 5%, 370 VAC, 50/60 Hz', 'capacitor, potencia', 'Electrónica de potencia', 'Locker 9', 'https://drive.google.com/file/d/136soxPc0DoqIy8tNjBTVmSqdODh2uaok/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (60, 'CABLE-USB-A-B', 'Cable Arduino USB tipo A a USB tipo B', 12, NULL, 'cable, usb, tipo A, tipo B', 'Cables', 'Locker 5', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (61, 'CABLE-USB-A-MICRO', 'Cable Arduino USB tipo A a USB micro', 20, NULL, 'cable, usb, micro', 'Cables', 'Locker 5', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (62, 'CABLE-USB-A-MINI', 'Cable USB A a usb Mini', 1, NULL, 'cable, usb, mini', 'Cables', 'Locker 5', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (63, 'CAN-BUS-SHIELD', 'Shield de CAN para Arduino', 3, NULL, 'Arduino, shield, can, IoT, internet de las cosas, comunicación', 'Herramientas de desarrollo', 'Locker 1', 'https://drive.google.com/file/d/1uXwsgaOUGHXYMXHWm-V3BfOg-UFEwlkV/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (64, 'CHE12-4NA-A710', 'Sensor capacitivo de proximidad', 4, '3-wire, NPN', 'sensor, capacitancia, proximidad, capacitivo', 'Sensores', 'Locker 2', 'https://drive.google.com/file/d/1X0gOOb6uVqF78wiTraYKrrddh80Qw4nZ/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (65, 'CJMCU-6814', 'Sensor multigas', 5, 'Sensor de: monóxido de carbono - amoniaco - dióxido de nitrógeno', 'sensor, gases, monóxido, monoxido, cabono, amoniaco, amoníaco, CO, NH3, NO2', 'Sensores', 'Locker 1, caja transparente', 'https://drive.google.com/file/d/1jOgdqcvCXRnOxyTKdAbeR2vrPq8W2eH8/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (66, 'CMPS03', 'Brújula electrónica', 4, 'CMPS03', 'sensor, brújula, through-hole', 'Sensores', 'Locker 2', 'https://drive.google.com/file/d/1051-VABTBOs4C7q-_vtu3bjLyQhqEVMI/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (67, 'CNC-A4988', 'Tarjeta shield para CNC', 4, 'Con A4988', 'cnc, shield, a4988', 'Accesorios para CNC', 'Locker 14', 'https://drive.google.com/file/d/1EQ_Y8GZiRPHF89QOQq0KGRWmSSWUrVep/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (68, 'D2028B', 'Bomba de vacío', 3, '12 V', 'potencia, bomba, vacío', 'Actuadores', 'Locker 4', 'https://drive.google.com/file/d/1VzCgHp7B5sWvHN4RRz6D_LFtwN16gOeM/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (69, 'DEV-10182', 'Puente H para motores', 1, 'Con VNH2SP30, URL: https://www.sparkfun.com/products/retired/10182', 'h, puente, bridge, driver, controlador, vnh2sp30', 'Electrónica de potencia', 'Locker 9', 'https://drive.google.com/file/d/1VzjV1jfmsEqrFvKyiiQAV4SzP-2kVwu0/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (70, 'DEV-13907', 'Módulo ESP32 Thing', 2, 'ESP32 Thing, por Sparkfun', 'IoT, internet de las cosas, Wifi, BLE, bluetooth, herramientas de desarrollo, comunicaciones, ESP, ESP32, Sparkfun', 'Herramientas de desarrollo', 'Locker 7', 'https://drive.google.com/file/d/1mM3i2hFvJFFpxps_8Ga71J8bbGBX64VP/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (71, 'DEV-GXXX', 'Tarjeta de desarrollo para A9, GSM, GRPS, GPS', 2, NULL, 'IoT, internet de las cosas, gsm, gprs', 'Herramientas de desarrollo', 'Locker 7', 'https://drive.google.com/file/d/1EFvGAg4YI0nbqNyU75dllfzbnW0HVV7m/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (72, 'DFR-ESPWROOM32', 'Tarjeta ESP WROOM 32', 9, 'Módulo ESP WROOM32 hecho por DFRobot', 'IoT, internet de las cosas, Wifi, BLE, bluetooth, herramientas de desarrollo, comunicaciones, ESP, ESP32, WROOM', 'Herramientas de desarrollo', 'Locker 7', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (73, 'DFR-MQ-9', 'Sensor multigas', 1, 'Sensor de monóxido de carbono y gases de combustión', 'sensor, gases, monóxido, monoxido, cabono, metano, propano, hidrocarburos', 'Sensores', 'Locker 1, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (74, 'DFR-SEN0014', 'Sensor de distancia', 1, 'Sensor base: GP2Y0A21, Distancia: 10cm-80cm, Salida: Cable JST 3-pin, Salida analógica, https://www.dfrobot.com/product-328.html', 'sensor, IR, distancia', 'Sensores', 'Locker 1, caja naranja', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (75, 'DFR-SEN0018', 'Sensor IR de movimiento', 1, 'Type: Digital,Supply Voltage:5V,Current:50μA,Working temperature:0℃～＋70℃,Output level(HIGH):4V,Output level(LOW):0.4V,Detect angle:110 Degree,Detect distance:7 meters,Size:28mm×36mm ( 1.1 in x 1.4 in),Weight:25g, URL: https://www.dfrobot.com/product-119.h', 'sensor, IR, infrarrojo, movimiento', 'Sensores', 'Locker 1, caja naranja', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (76, 'DFR-SEN0114', 'Sensor de humedad del suelo', 1, 'https://www.dfrobot.com/product-599.html', 'sensor, humedad, suelo', 'Sensores', 'Locker 1, caja naranja', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (77, 'DFR-SEN0121', 'Sensor de vapor', 1, 'Vapor de agua', 'sensor, vapor', 'Sensores', 'Locker 1, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (78, 'DFR-SEN0132', 'Sensor de CO', 1, 'Sensor de monóxido de carbono', 'sensor, gases, CO, carbono, monóxido', 'Sensores', 'Locker 1, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (79, 'DFR-SEN0134', 'Sensor de gases', 1, 'DFRobot', 'sensor, gases', 'Sensores', 'Locker 1, caja transparente pequeña', 'https://drive.google.com/file/d/1bGFD_Ze3oLKgsmxcv1UuayQIDlfSIbNg/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (80, 'DFR0009', 'Shield de pantalla LCD y pulsadores', 6, 'Para Arduino Mega', 'display, pantalla, screen, lcd, pulsadores, keypad, shield', 'IO', 'Locker 15', 'https://drive.google.com/file/d/1LSDuL2LMcpaS9b2jjLNEFE7Xcq5-nxN6/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (81, 'DFR0017', 'Módulo de relé', 1, 'Single relay board,Rated through-current: 10A (NO) 5A (NC), Maximum switching voltage: 150VAC 24VDC, Interface: Digital, Control signal: TTL level, Contact Rating (Res. Load): 10A 250VAC / 24VDC, Max. switching voltage 250VAC / 30VDC, Max. switching curre', 'Rele, relé, relay', 'Actuadores', 'Locker 1, caja naranja', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (82, 'DFR0021-B', 'Módulo de LED Azul', 1, '3 pines: alimentación - control - tierra', 'led, módulo, azul', 'Iluminación', 'Locker 1, caja naranja', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (83, 'DFR0021-G', 'Módulo de LED Verde', 1, '3 pines: alimentación - control - tierra', 'led, módulo, verde', 'Iluminación', 'Locker 1, caja naranja', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (84, 'DFR0021-R', 'Módulo de LED Rojo', 1, '3 pines: alimentación - control - tierra', 'led, módulo, rojo', 'Sensores', 'Locker 1, caja naranja', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (85, 'DFR0021-W', 'Módulo de LED Blanco', 1, '3 pines: alimentación - control - tierra', 'led, módulo, blanco', 'Iluminación', 'Locker 1, caja naranja', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (86, 'DFR0022', 'Sensor de escala de grises', 1, 'Wide voltage range from 3.3V to 5V,Standard assembling struct (two 3mm holes with multiple of 5cm as interval),Easily recognitive interfaces of sensors (\"A\" for analog and \"D\" for digital),Icons to simplely illustrate sensor function,High quality connecto', 'sensor, escala de grises, gris, grayscale, iluminación, luz ambiental', 'Sensores', 'Locker 1, caja naranja', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (87, 'DFR0023', 'Sensor de temperatura', 1, 'Módulo basado en el sensor LM35', 'sensor, temperatura', 'Sensores', 'Locker 1, caja naranja', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (88, 'DFR0026', 'Sensor de luz ambiental', 1, 'Supply Voltage: 3.3V to 5V, Illumination range : 1 Lux to 6000 Lux, Responsive time : 15us, Interface: Analog, Size:22x30mm(0.87\"x1.18\"), URL: https://www.dfrobot.com/product-1004.html', 'sensor, iluminación, luz ambiente, lux', 'Sensores', 'Locker 1, caja naranja', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (89, 'DFR0027', 'Sensor de vibración', 1, 'Sensor de vibraciones que se puede usar para un podómetro, URL: https://www.dfrobot.com/product-79.html', 'sensor, vibración, podómetro', 'Sensores', 'Locker 1, caja naranja', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (90, 'DFR0028', 'Sensor de rotación', 1, 'Con una bola interna para la detección de la orientación, URL: https://www.dfrobot.com/product-77.html', 'sensor, rotación, orientación, tilt', 'Sensores', 'Locker 1, caja naranja', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (91, 'DFR0029-R', 'Botón pulsador rojo', 1, 'Con LED indicador, configuración pull-up', 'actuador, pulsador, pullup', 'IO', 'Locker 1, caja naranja', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (92, 'DFR0029-W', 'Botón pulsador blanco', 1, 'Con LED indicador, configuración pull-up', 'actuador, pulsador, pullup', 'IO', 'Locker 1, caja naranja', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (93, 'DFR0029-Y', 'Botón pulsador amarillo', 1, 'Con LED indicador, configuración pull-up', 'actuador, pulsador, pullup', 'IO', 'Locker 1, caja naranja', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (94, 'DFR0030', 'Sensor capacitivo de toque', 1, 'Con detección en los cambios de presión', 'sensor, capacitancia, toque, capacitivo, touch', 'Sensores', 'Locker 1, caja naranja', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (95, 'DFR0033', 'Sensor detector de campos magnéticos', 1, 'Funciona por inducción magnética', 'sensor, magnetismo, campo magnético, inducción', 'Sensores', 'Locker 1, caja naranja', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (96, 'DFR0034', 'Sensor para medir ruido ambiente', 1, 'Micrófono de buzzer para medir ruido en dB', 'sensor, ruido, sonido, dB, decibel', 'Sensores', 'Locker 1, caja naranja', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (97, 'DFR0051', 'Sensor de voltaje analógico', 1, 'Usa divisor de voltaje', 'sensor, voltaje, divisor', 'Sensores', 'Locker 1, caja naranja', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (98, 'DFR0052', 'Sensor de vibración', 1, 'Usa piezoeléctrico', 'sensor, piezo, vibración', 'Sensores', 'Locker 1, caja naranja', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (99, 'DFR0053', 'Sensor de posición', 1, 'Sensor resistivo de posicionamiento de dial, Salida analógica, Una dimensión, Potenciómetro', 'sensor, deslizamiento, slide, resistivo, dial, potenciómetro', 'Sensores', 'Locker 1, caja transparente', 'https://drive.google.com/file/d/1L_01RzGqRtrleacSvxuc4921kKO17Zdy/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (100, 'DFR0058', 'Sensor de rotación', 1, 'Rotary encoder', 'sensor, encoder, rotación, ángulo, angle', 'Sensores', 'Locker 1, caja naranja', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (101, 'DFR0061', 'Módulo Joystick', 1, 'Ejes X e Y y botón', 'sensor, movimiento, joystick', 'Sensores', 'Locker 1, caja naranja', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (102, 'DFR0076', 'Sensor de llama', 1, 'Usa led infrarrojo', 'sensor, IR, llama', 'Sensores', 'Locker 1, caja naranja', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (103, 'DFR0095', 'Módulo de transmisión IR', 4, 'Interfaz digital, alimentación a 5 V, usa LED infrarrojo', 'IoT, internet de las cosas, IR, comunicación, infrarrojo', 'Herramientas de desarrollo', 'Locker 7', 'https://drive.google.com/file/d/1YxvWq3q4CFxp9u-GDHhxesSapVN6qWYV/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (104, 'DFR0129', 'Kit de botones capacitivos para Arduino', 2, NULL, 'capacitive, touch, sensor, pcb', 'IO', 'Locker 15', 'https://drive.google.com/file/d/1qkd-lt3CCauLR2AJI7G6xSVYXHVOs0o3/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (105, 'DFR0143', 'Acelerómetro', 1, 'Acelerador de 3 ejes, sensor base MMA7361', 'sensor, acelerómetro', 'Sensores', 'Locker 1, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (106, 'DFR0198', 'Sensor de temperatura a prueba de agua', 5, 'Sensor base: DS18B20, Voltaje: 3.3-5V', 'sensor, temperatura', 'Sensores', 'Locker 2', 'https://drive.google.com/file/d/1q8T27YQWaXC0w1Il1NNQabs1HYJVjQbt/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (107, 'DFR0257', 'Tarjeta expansora de IO', 2, 'Para tarjeta Texas Instruments MSP430 Launchpad', 'IoT, internet de las cosas, xbee, Texas, launchpad, MSP430', 'Herramientas de desarrollo', 'Locker 7', 'https://drive.google.com/file/d/1myDAaymPnFVbZrzerMpyxXAhVleI7wnb/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (108, 'DHT11', 'Sensor de humedad relativa', 8, 'Referencia: MiniDHT22/AM2302, Voltaje de operación: 3V ~ 5.5V, Pines digitales de salida: 1, Rango medición de humedad: 0% ~ 100% RH, Precisión medición de humedad: ±2% RH, Rango, medición de temperatura: -40~80 °C, Precisión medición de temperatura: ±0.5', 'sensor, humedad, relativa', 'Sensores', 'Locker 1, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (109, 'DIGIMICRO-1600X', 'Microscopio USB', 2, NULL, 'microscopio, microscope, usb', 'Fabricación PCB', 'Locker 16', 'https://drive.google.com/file/d/1DFIx-tcSm6HtPMYgm5vfQMFqjCA0QWzn/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (110, 'DISPC', 'Disipador de calor', 3, NULL, 'disipador, aleta, calor, motor, ventilador, cooler', 'Actuadores', 'Locker 4', 'https://drive.google.com/file/d/16mYrHKcbe-VPioqERkSV3wIjkQfNzQfb/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (111, 'DIY0034', 'Tajeta Lua Wifi', 11, 'Con ESP8266', 'IoT, internet de las cosas, wifi', 'Herramientas de desarrollo', 'Locker 7', 'https://drive.google.com/file/d/1x1I5lcNVoo2VPTHwj5OV7O47pUlZZ9nH/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (112, 'DRF-SEN0257', 'Sensor de presión de agua', 3, 'DFRobot', 'sensor, presión, pressure', 'Sensores', 'Locker 2', 'https://drive.google.com/file/d/1sOXWjR9M623slQqdUEHhUlo5imWXjkaU/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (113, 'DRONE-433', 'Módulo de telemetría para drones', 4, 'FPV Radio Telemetry ground module, 433 MHz', 'dron, drones, drone, telemetría, telemetria, radio, 433', 'Accesorios para drones', 'Locker 12', 'https://drive.google.com/file/d/1dNsVqFAfZ0KiYuzr72sUgPo8lRe7gtdW/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (114, 'DRONE-915', 'Módulo de telemetría para drones', 3, 'FPV Radio Telemetry ground module, 915 MHz', 'dron, drones, drone, telemetría, telemetria, radio, 915', 'Accesorios para drones', 'Locker 12', 'https://drive.google.com/file/d/1AFRQd9bPRR_CJ_5MywVi4tNQEh1SG7Qm/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (115, 'DRONE-BOX-CASE', 'Carcasa para formar racks de tarjetas en drones', 2, NULL, 'rack, box, caja, carcasa, case', 'Accesorios para drones', 'Locker 12', 'https://drive.google.com/file/d/16XZcbRbrzPta2TtM735k-WfjHbHfR4lu/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (116, 'DRONE-EXTRA1', 'Partes extra para drones', 2, NULL, 'dron, extra, partes', 'Accesorios para drones', 'Locker 12', 'https://drive.google.com/file/d/1DlPe6zWxbWzGV9i96WUASdpU-mUnlfRz/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (117, 'DRONE-MINI-OSD', 'Módulo mini OSD para drones', 1, NULL, 'dron, mini, osd', 'Accesorios para drones', 'Locker 12', 'https://drive.google.com/file/d/1SCWbkp-7saGzJNRh4Qipsy8d29QmO4mT/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (118, 'DRONE-MOD-ALIM', 'Módulo de alimentación para drones', 2, NULL, 'dron, alimentacion, alimentación', 'Accesorios para drones', 'Locker 12', 'https://drive.google.com/file/d/1UO9p9pBd2IMH3iILVyMKj-iCLT8tuf2n/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (119, 'DRONE-ROTOR', 'Rotor para drones', 20, NULL, 'dron, rotor', 'Accesorios para drones', 'Locker 12', 'https://drive.google.com/file/d/17pmde_p6IMf7iK5EuvGunYYjq2WgYaub/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (120, 'DRV8825', 'Driver de motor paso a paso', 1, 'Pololu, item 2133', 'motor, driver, controlador, pololu', 'Herramientas de desarrollo', 'Locker 4', 'https://drive.google.com/file/d/15pyBnfqBa9PEy5a002x5_3vvzLVXUsYt/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (121, 'DS18B20', 'Sensor de temperatura listo en PCB y con conector', 5, 'Conector header hembra, 3 posiciones', 'sensor, temperatura, through-hole, header', 'Sensores', 'Locker 2', 'https://drive.google.com/file/d/1_mD6EMlR-vgGloCANKrN2OB0LDVO2F6D/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (122, 'DSN-VC288', 'Voltímetro amperímetro', 3, 'Displays de 7 sementos, 100 V, 10 A', 'sensor, voltaje corriente, display', 'Sensores', 'Locker 1, caja pequeña', 'https://drive.google.com/file/d/1CKcckCNZ0nwTnTTJng2A-eaarmdPKxHW/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (123, 'E2K-X8ME1', 'Sensor capacitivo de proximidad', 4, '3-wire, NPN', 'sensor, capacitancia, proximidad, capacitivo', 'Sensores', 'Locker 2', 'https://drive.google.com/file/d/196b-0HqrrKUNZ1goBVByLO1K1ueYVIYJ/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (124, 'EMAX1661', 'Motor para cuadricóptero', 2, NULL, 'motor, cuadricóptero, dron, quadrucopter, multicopter', 'Accesorios para drones', 'Locker 8', 'https://drive.google.com/file/d/1ASq0XLPVMcbnpgw-oiBRxsYVVoRfK8zG/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (125, 'EMAX28', 'Propulsor verde', 12, NULL, 'dron, helice, hélice', 'Accesorios para drones', 'Locker 8', 'https://drive.google.com/file/d/1Hechp4x9Xk4pWLsIvB8AVdXETPHDmTuc/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (126, 'ENCODER', 'Encoder', 3, 'Sensor fotoeléctrico, encoder', 'sensor, infrarrojo, radiación, luz, radiacion,  through-hole, header, presencia', 'Sensores', 'Locker 2', 'https://drive.google.com/file/d/11Mvrle-Epqscj6Ozwi6awe-PE9GW7O0w/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (127, 'ESC-30A-BEC', 'Controlador de velocidad para drones 30A-BEC', 20, NULL, 'dron, speed, controller, rotor, controlador, velocidad', 'Accesorios para drones', 'Locker 12', 'https://drive.google.com/file/d/1iMC9AoeVI4pgoUyhhdrmJt3RAxjrd-5E/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (128, 'ESP8266-THING', 'Tarjeta Sparkfun SP8266 Thing Dev ', 22, NULL, 'IoT, internet de las cosas, Wifi, BLE, bluetooth, herramientas de desarrollo, comunicaciones, ESP, ESP8266, Sparkfun', 'Herramientas de desarrollo', 'Locker 7', 'https://drive.google.com/file/d/1MKkIl5XBphk28qrb21bb6VuDyvwmghfd/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (129, 'FC-22', 'Sensor multigas', 3, 'Sensor de metano y butano', 'sensor, gases, hidrocarburos, metano, butano', 'Sensores', 'Locker 1, caja transparente', 'https://drive.google.com/file/d/1xLYbf5xVEJy4VFCQzh0F5C93e9BEBSFZ/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (130, 'FF-050SH-11190', 'Motor con engranajes', 2, NULL, 'motor, engranaje, gear', 'Actuadores', 'Locker 4', 'https://drive.google.com/file/d/1bKTlCVvwB0OHV3jkLZwMTTTGrisVd8hL/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (131, 'FIGARO-TGS813', 'Sensor de hidrocarburos', 2, 'Sensor de metano y butano', 'sensor, gases, hidrocarburos, metano, butano', 'Sensores', 'Locker 1, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (132, 'FLIR-LEPTON-BR', 'Cámara termográfica para Raspberry Pi', 1, 'FLIR Lepto Breakout board v1.4, para tarjetas más sofisticadas como Raspberry Pi 3/4', 'Raspberry Pi, raspi, cámara, sensores, sensor, camera, IR, infrarrojo, flir, lepton, spi', 'Sensores', 'Locker 6', 'https://drive.google.com/file/d/13riZNQAEqd8GobUW1Ch9jgtfd731BFee/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (133, 'FTDI232RL', 'Convertidor UART-USB', 13, 'Convertidor USB-UART con chip FTDI', 'convertidor, uart, usb, converter, adapter, ftdi', 'Herramientas de desarrollo', 'Locker 7, caja 1, arriba', 'https://drive.google.com/file/d/1r3bW3aB28ZUmFKh09q3GgQY0F8CUgjk6/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (134, 'FUNDUINO-XBEE', 'Shield de expansión Xbee para Arduino', 2, 'Obsoleto, arduino.cc/en/Main/ArduinoXbeeShield', 'IoT, internet de las cosas, arduino, shield, xbee, funduino, obsoleto', 'Herramientas de desarrollo', 'Locker 11', 'https://drive.google.com/file/d/1wN-KLp3Owixpa5G5CRp2h9sIZy0mCdgs/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (135, 'G3MB-202P', 'Relé de estado sólido', 2, 'Fabricante: Omron, Entrada: 5VDC, Carga: 240VAC 2A', 'Rele, relé, relay, ssr, solid state relay', 'Electrónica de potencia', 'Locker 13', 'https://drive.google.com/file/d/1ICo8kjghzA71nc1NEEtTCGv2xGZpokQU/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (136, 'GB37-530', 'Bomba peristáltica', 3, '12 V, 400 ml/min', 'bomba, peristaltica, peristáltica', 'Actuadores', 'Locker 4', 'https://drive.google.com/file/d/1Yz06WKtg_pXQ_4A83RcRqMxy622BJTG-/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (137, 'GEAUX-ROBOT-CASE', 'Carcasa para formar racks de Raspberry Pi 3', 8, NULL, 'Raspberry Pi, raspi, rack, box, case, carcasa, caja', 'Herramientas de desarrollo', 'Locker 6', 'https://drive.google.com/file/d/1MyJisNcu61u4_n5BIykxIuzeQHVH4bUs/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (138, 'GEMFAN5045', 'Propulsor negro', 6, NULL, 'dron, helice, hélice', 'Accesorios para drones', 'Locker 8', 'https://drive.google.com/file/d/1SZzgmVHJnBx2UbV2wfQGUvLhofCBG5zP/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (139, 'GT-511C1R', 'Sensor de huellas dactilares', 5, 'Salida UART', 'sensor, huellas dactilares, huella, fingerprint', 'Sensores', 'Locker 2', 'https://drive.google.com/file/d/1TbY4EdW0KQYDB0ORiXQG94t40XsbDyW_/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (140, 'GTD-W-5A', 'Tarjeta relé de estado sólido', 1, NULL, 'potencia, relé, relay, ssr, solid, state, estado, sólido, actuador', 'Electrónica de potencia', 'Locker 13, caja transparente', 'https://drive.google.com/file/d/1JlxUAwEHHt15f9YWjFEhoUlZpsvyDLtm/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (141, 'GYML8511', 'Sensor UV', 2, 'Sensor UV implementado en PCB para usarlo con conectores header', 'sensor, UV, radiación, radiacion, luz, I2C, header', 'Sensores', 'Locker 2', 'https://drive.google.com/file/d/1qvC-UJsnfDbHgbL-v988dObGXz18cEQt/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (142, 'HC-SR04', 'Sensor de distancia', 11, 'Por ultrasonido', 'sensor, distancia, ultrasonido', 'Sensores', 'Locker 1, caja transparente', 'https://drive.google.com/file/d/1OZKoEyOSFNJMagJeIROGSftQUcNrHMqy/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (143, 'HEIMAN', 'Detector infrarrojo de movimiento', 2, NULL, 'sensor, IR, infrarrojo, movimiento', 'Sensores', 'Locker 2', 'https://drive.google.com/file/d/1DzR79jwCG-L7X7A0DryLTrDuVkL8wAuJ/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (144, 'HELICE1', 'Hélice negra', 6, 'Por pares', 'dron, helice, hélice', 'Accesorios para drones', 'Locker 8', 'https://drive.google.com/file/d/1TW4OGXXP5TvX1cru1q3t-hytkntVVu4b/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (145, 'HELICE177', 'Hélice roja', 8, 'Por pares', 'dron, helice, hélice', 'Accesorios para drones', 'Locker 8', 'https://drive.google.com/file/d/1IUGy8WmyUmmIurEvCjEuXRqdYZa3h42B/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (146, 'HELICE177N', 'Hélice naranja', 9, 'Por pares', 'dron, helice, hélice', 'Accesorios para drones', 'Locker 8', 'https://drive.google.com/file/d/1tBaQtKDA0yPuHk3OzmG7xwhcExO6mBWQ/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (147, 'HR911105A', 'Shield de Ethernet para Arduino', 2, NULL, 'Arduino, shield, ethernet, hanrun, IoT, internet de las cosas, comunicación', 'Herramientas de desarrollo', 'Locker 1', 'https://drive.google.com/file/d/12YyarKKowLTe8EKBBkzW-76rkxRbv2mH/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (148, 'HS-422', 'Servomotor para drones', 3, NULL, 'servo, motor, actuador', 'Actuadores', 'Locker 8', 'https://drive.google.com/file/d/15ydeCgf5Tz4wWgb0n4DZtezhP5dGusb7/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (149, 'HSM-20G', 'Sensor de humedad relativa', 4, 'HSM-20G', 'sensor, humedad, humedad relativa, cables sueltos', 'Sensores', 'Locker 1', 'https://drive.google.com/file/d/1VvhOKWyKzHV-BWJiwPAateyWSXEwPt2A/view?usp=sharing', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (150, 'HVCA480X320', 'Shield de pantalla LCD táctil', 2, '3.2\", Para Arduino Mega 2560', 'display, pantalla, lcd, screen, touch, táctil, tactil', 'IO', 'Locker 15', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (151, 'HX5010', 'Servomotor ', 6, 'Fabricante: Hextronik', 'Servomotor, motor, servo', 'Actuadores', 'Locker 4', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (152, 'HX711', 'ADC 24 bits', 1, NULL, 'Sensores, sensor, ADC', 'Sensores', 'Locker 1, caja transparente pequeña', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (153, 'HY-7301', 'Prensa de mesa', 2, NULL, 'prensa, mesa, cnc', 'Accesorios para CNC', 'Locker 14', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (154, 'IMAX-B6AC-V2', 'Unidad reguladora de panel solar y batería', 2, NULL, 'potencia, regulador, celda, panel, solar, bateria', 'Electrónica de potencia', 'Locker 9', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (155, 'KAIFENG-KF124B', 'Bornera x3', 1, 'Bornera con ensamble y conector JST', 'IO, terminal, bornera', 'Sensores', 'Locker 1, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (156, 'KEYES', 'Tarjeta shield de entrenamiento', 13, 'Keyes Easy module shield V1, sensor de humedad, potenciómetro, buzzer, switches, leds, led rgb, fotorresistencia, Receptor IR', 'Arduino, shield, training, sensor, rgb, IR', 'Herramientas de desarrollo', 'Locker 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (157, 'KPM08C-3A', 'Motor DC', 1, 'Alimentación 3V', 'DC, motor', 'Actuadores', 'Locker 4', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (158, 'KS123-35Y500K', 'Sensor de ozono', 2, 'Sensor de ozono', 'sensor, gases, ozono', 'Sensores', 'Locker 1, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (159, 'KVP8-KK', 'Bomba de vacío', 2, '12 V, 8 W', 'potencia, bomba, vacío', 'Actuadores', 'Locker 13', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (160, 'L298N', 'Tarjeta puente H basada en el IC L298N', 12, NULL, 'potencia, puente H, h bridge', 'Electrónica de potencia', 'Locker 9', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (161, 'LCD2560', 'Shield de pantalla LCD táctil', 2, '2.4\", Para Arduino Mega 2560', 'display, pantalla, lcd, screen, touch, táctil, tactil', 'IO', 'Locker 15', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (162, 'LIBELIUM-XBEE', 'Shield de expansión Xbee para Arduino', 3, 'Obsoleto, www.shieldlist.org/libelium/xbee', 'IoT, internet de las cosas, arduino, shield, xbee, libelium, obsoleto', 'Herramientas de desarrollo', 'Locker 11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (163, 'LM35DZ', 'Sensor de temperatura', 10, 'LM35', 'sensor, temperatura, through-hole', 'Sensores', 'Locker 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (164, 'LOG-636294', 'Parlante', 2, NULL, 'audio, parlante', 'Audio', 'Locker 6', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (165, 'LOPY4', 'Tarjeta 4 redes', 10, 'Lora, Sigfox, Wifi y BLE', 'IoT, internet de las cosas, lora, shield, herramientas de desarrollo, sigfox, wifi, BLE, bluetooth, comunicación', 'Herramientas de desarrollo', 'Locker 7', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (166, 'LORA-GPS-HAT', 'Tarjeta Lora GPS Hat', 8, 'Módulo Lora-GPS para usar con tarjeta Raspberry Pi 4', 'IoT, internet de las cosas, lora, shield, herramientas de desarrollo, comunicación, GPS, Raspberry Pi, raspi', 'Herramientas de desarrollo', 'Locker 7', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (167, 'LORA-SHELD-V14', 'Tarjeta Lora shield v1.4', 3, 'Unas vienen en caja y otras no. Red LoRa 915 MHz. Uso como shield para tarjetas Arduino', 'IoT, internet de las cosas, lora, shield, herramientas de desarrollo, comunicación', 'Herramientas de desarrollo', 'Locker 7', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (168, 'LORA-SHIELD-915', 'Shield Lora 915 MHz', 1, NULL, 'IoT, internet de las cosas, lora', 'Herramientas de desarrollo', 'Locker 7', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (169, 'LSM303C', 'Acelerómetro y brújula', 1, NULL, 'sensor, inercial, IMU, acelerómetro, acelerometro, brujula', 'Sensores', 'Locker 1, caja transparente pequeña', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (170, 'LSM30DLHC', 'Acelerómetro y brújula', 4, 'Sensor acelerómetro y brújula listo en PCB', 'sensor, acelerómetro, brújula,  through-hole, header', 'Sensores', 'Locker 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (171, 'M-503', 'Transformador de voltaje secundario', 4, '9VAC-0-9VAC, 300 mA', 'transformador, fuente, alimentación', 'Electrónica de potencia', 'Locker 9', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (172, 'M102', 'Piezoeléctrico', 1, NULL, 'sensor, piezo, vibración', 'Sensores', 'Locker 1, caja transparente pequeña', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (173, 'MAX6675', 'Termopar', 3, 'Termopar tipo K, Resolución: 0.25 °C, 3.3V a 5V, 0 °C a 1024 °C, Interfaz: SPI', 'sensor, temperatura, termopar, tipo K, termopar K, termocupla', 'Sensores', 'Locker 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (174, 'MB7072-100', 'Sonar', 1, 'Rango: 20 cm - 765 cm, Tasa de lectura: 10 Hz, Lectura analógica, Salida serial, RS232', 'sensor, sonar, serial, RS232', 'Sensores', 'Locker 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (175, 'MCP9700', 'Sensor de temperatura', 32, 'MCP9700', 'sensor, temperatura, through-hole, header', 'Sensores', 'Locker 2, Caja Sensores 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (176, 'MELEXIS1', 'Sensor infrarrojo', 3, 'Sensor infrarrojo Melexis', 'sensor, IR, infrarrojo, melexis', 'Sensores', 'Locker 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (177, 'MF-4K', 'Tarjeta RFID 13.56 MHz', 4, 'Fabricante: StrongLink, Ref: MIFARE Classic 4K', 'RF, RFID, tag, tarjeta, MHz, card', 'IoT', 'Locker 11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (178, 'MFRC522', 'Kit lector/escritor RFID', 10, NULL, 'RF, RFID, lector, escritor, llavero', 'IoT', 'Locker 11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (179, 'MG-811', 'Sensor de gases', 1, 'Sensor de dióxido de carbono, en menor medida alcohol y monóxido de carbono', 'sensor, gases, dióxido carbono, CO2', 'Sensores', 'Locker 1, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (180, 'MG995', 'Servomotor ', 5, 'Fabricante: Tower Pro, Rotación continua, 4.8V-7.2V, 13 kg/cm', 'Servomotor, motor, servo', 'Actuadores', 'Locker 4', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (181, 'MH-FLYING-FISH', 'Sensor de humedad de suelo', 10, 'Sensor de humedad de suelo con IC LM393, Salida analógica', 'sensor, humedad, suelo, flying, fish, fc-28', 'Sensores', 'Locker 1, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (182, 'MIKROE-1475', 'Llavero RFID 13.56 MHz', 40, 'Color azul, Estándar IESO14443-A, MIKROE-1475', 'RF, RFID, tag, llavero, MHz', 'IoT', 'Locker 11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (183, 'MKRFOX1200', 'Módulo Arduino Sigfox', 1, NULL, 'IoT, internet de las cosas, modulo, módulo, IoT, sigfox, mkr', 'Herramientas de desarrollo', 'Locker 7, caja 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (184, 'MMA7260Q', 'Acelerómetro', 5, 'MMA7260Q', 'sensor, acelerómetro', 'Sensores', 'Locker 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (185, 'MMA7455', 'Acelerómetro', 2, 'MMA7455', 'sensor, acelerómetro, header', 'Sensores', 'Locker 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (186, 'MOD-GPS', 'Módulo GPS sin catalogar', 1, 'Tomar foto', 'gps, sensor, dron, drones', 'Accesorios para drones', 'Locker 12', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (187, 'MOD-WIFI-ESP8266', 'Tarjeta Wifi', 7, 'Olimex, Rev A', 'IoT, internet de las cosas, wifi', 'Herramientas de desarrollo', 'Locker 7', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (188, 'MOT-56120', 'Motor de alto torque', 2, '115 VAC 5/6 RPM', 'potencia, motor, alto, torque', 'Actuadores', 'Locker 13', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (189, 'MOTOR-DC', 'Motor DC pequeño', 67, NULL, 'DC, motor', 'Actuadores', 'Locker 4', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (190, 'MOTOR-DC-PLASTICO', 'Motor DC sellado con plástico', 2, NULL, 'DC, motor', 'Actuadores', 'Locker 4', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (191, 'MOTOR-EXTRA1', 'Soporte en L para NEMA-17', 4, NULL, 'motor, soporte, support', 'Actuadores', 'Locker 4', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (192, 'MOTOR-PASOS', 'Motor paso a paso pequeño', 16, NULL, 'DC, motor, de pasos, paso a paso, motor paso a paso', 'Actuadores', 'Locker 4', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (193, 'MP-0224', 'Hélice negra', 7, 'Por pares', 'dron, helice, hélice', 'Accesorios para drones', 'Locker 8', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (194, 'MPU6050', 'Acelerómetro y giroscopio', 5, 'MPU6050', 'sensor, acelerómetro, giroscopio, header', 'Sensores', 'Locker 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (195, 'MPX5010GP', 'Sensor de presión', 1, '1.45 PSI, 6 conectores SIP', 'sensor, presión,  through-hole, header', 'Sensores', 'Locker 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (196, 'MPXM2102AS', 'Sensor de presión', 11, '14.5 PSI, montaje SMD', 'sensor, presión, smd, custom footprint', 'Sensores', 'Locker 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (197, 'MPXV5050V', 'Sensor de presión', 4, NULL, 'sensor, presión, pressure', 'Sensores', 'Locker 1, caja transparente pequeña', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (198, 'MPXV5100G', 'Sensor de presión', 4, NULL, 'sensor, presión, pressure', 'Sensores', 'Locker 1, caja transparente pequeña', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (199, 'MPXV7007', 'Sensor de presión', 8, NULL, 'sensor, presión, pressure', 'Sensores', 'Locker 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (200, 'MQ-135', 'Sensor de gases', 4, 'Sensor de amoniaco, sulfuro, benceno, humo', 'sensor, gases, amoniaco, sulfuro, benceno, humo', 'Sensores', 'Locker 1, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (201, 'MQ-2', 'Sensor de gases', 2, 'El MQ-2 es sensible a LPG, i-butano, propano, metano, alcohol, hidrogeno y humo.', 'sensor, gases, hidrocarburos, metano, butano, alcohol', 'Sensores', 'Locker 1, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (202, 'MQ-4', 'Sensor de gases', 1, 'Sensor de metano, Sensibilidad: 300 ppm - 10000 ppm', 'sensor, gases, metano', 'Sensores', 'Locker 1, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (203, 'MQ-7', 'Sensor de gases', 3, 'Sensor de monóxido de carbono', 'sensor, gases, monóxido, monoxido, carbono, co2', 'Sensores', 'Locker 1, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (204, 'MQ-FLYING-FISH', 'Sensor de alcohol etílico', 5, 'Sensor de alcohol etílico', 'sensor, gases, alcohol, etílico', 'Sensores', 'Locker 4', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (205, 'MUSCLE-SENSOR-V3', 'Sensor mioeléctrico', 1, 'Sensor que mide la actividad eléctrica de un músculo', 'sensor, myo, myoelectric, muscle, muscle sensor', 'Sensores', 'Locker 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (206, 'NEO-6M-0-001', 'Módulo GPS Ublox en tarjeta', 1, NULL, 'modulo, módulo, IoT, gps, ublox, neo', 'IoT', 'Locker 11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (207, 'NODEMCUV3', 'Tarjeta Node MCU V3', 5, 'Módulo ES2866MOD', 'IoT, internet de las cosas, Wifi, BLE, bluetooth, herramientas de desarrollo, comunicaciones, ESP, ESP8266', 'Herramientas de desarrollo', 'Locker 7', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (208, 'OB20', 'Soporte plano para motor NEMA 17', 3, NULL, 'motor, soporte, support', 'Actuadores', 'Locker 4', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (209, 'OV7670', 'Cámara', 1, 'Cámara de 330 kpx', 'sensor, cámara, camara, camera, radiación, radiacion, luz, header', 'Sensores', 'Locker 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (210, 'PAM8403', 'Módulo amplificador de audio', 2, 'Amplificador de audio clase D, 3 W', 'audio, amplificador', 'Audio', 'Locker 6', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (211, 'PCB-PROTO-1', 'Tarjeta PCB de proototipado', 52, NULL, 'pcb, universal, prototipado', 'Fabricación PCB', 'Locker 16', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (212, 'PCB-PROTO-2', 'Tarjeta PCB de proototipado', 1, NULL, 'pcb, universal, prototipado', 'Fabricación PCB', 'Locker 16', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (213, 'PI-ADS1115', 'Shield ADC para Raspberry Pi', NULL, NULL, 'ads1115, shield, raspberry, raspi, adc', 'Sensores', 'Locker 6', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (214, 'PICKIT3', 'Programador PICKit 3', 2, 'Programador para PICs antiguos de hasta 24 bits', 'programador, pic, pickit, pickit 3', 'Herramientas de desarrollo', 'Locker 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (215, 'PNX', 'Propulsor negro suelto', 2, NULL, 'dron, helice, hélice', 'Accesorios para drones', 'Locker 8', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (216, 'PROTO-SHIELD', 'Tarjeta shield de prototipado para Arduino', 3, NULL, 'Arduino, shield, breakout, board', 'Herramientas de desarrollo', 'Locker 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (217, 'PUENTE-H-ARDUINO', 'Tarjeta puente H para Arduino', 1, 'Con BTS7960B y 74HC244D', 'potencia, puente H, h bridge', 'Electrónica de potencia', 'Locker 13, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (218, 'PWM-DC6V', 'Controlador de velocidad', 3, 'PWM, 6 VDC-28VDC, 3A', 'control, motor, pwm', 'Electrónica de potencia', 'Locker 9', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (219, 'PZEM-004T', 'Sensor de corriente con interfaz Modbus', 5, 'Sensor de medición de consumo eléctrico', 'sensor, potencia, voltaje, corriente, pzem', 'Sensores', 'Locker 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (220, 'QDM280DBXTP9341RB', 'Shield de pantalla LCD táctil', 2, '2.8\", Para Arduino Uno', 'display, pantalla, lcd, screen, touch, táctil, tactil', 'IO', 'Locker 15', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (221, 'RC-IR', 'Control remoto', 3, NULL, 'control, remoto', 'IO', 'Locker 15', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (222, 'RELE-BT-2', 'Módulo de 2 relés manejados por bluetooth', 1, NULL, 'potencia, IoT, relé, relay, bluetooth, bt', 'Electrónica de potencia', 'Locker 13', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (223, 'RELE-EM', 'Relés electromecánicos pequeños', 6, 'Especificaciones variadas', 'potencia, relé, relay, actuador', 'Electrónica de potencia', 'Locker 13, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (224, 'RELE4-ESP32', 'Tarjeta con 4 relés y un ESP32', 4, NULL, 'potencia, relé, relay, actuador, iot, esp32', 'Electrónica de potencia', 'Locker 13, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (225, 'RF-433M-TX-RX', 'Pareja transmisor y receptor RF', 1, '433 MHz', 'rf, 433, mhz', 'Herramientas de desarrollo', 'Locker 11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (226, 'RPI-CAM-13', 'Cámara para Raspberry Pi', 4, '5 Mpx, Rev 1.3', 'Raspberry Pi, raspi, cámara, sensores, sensor, camera', 'Sensores', 'Locker 6', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (227, 'RPI-CAM-21', 'Cámara para Raspberry Pi', 4, '8 Mpx, Rev 1.3', 'Raspberry Pi, raspi, cámara, sensores, sensor, camera', 'Sensores', 'Locker 6', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (228, 'RPI-CASE', 'Carcasa Raspberry Pi 3 Modelo B', 3, '|', 'Raspberry Pi, carcasa, case, raspi', 'Herramientas de desarrollo', 'Locker 6', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (229, 'RPI-REF-GPIO', 'Tarjeta IO de referencia', 1, 'Para Raspberry Pi 3 Model B+, Tomar foto', 'Raspberry Pi, raspi', 'Herramientas de desarrollo', 'Locker 6', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (230, 'RPI-ZERO-W', 'Tarjeta Raspberry Pi Zero W 1.1', 7, NULL, 'Raspberry Pi, raspi, zero', 'Herramientas de desarrollo', 'Locker 6', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (231, 'RTC-DS130X', 'Módulo RTC', 10, 'Con RTC DS1302/DS1307, Con receptáculo para poner pila de 3 V', 'RTC, DS1307, bateria, pila', 'Sensores', 'Locker 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (232, 'S-812', 'Probador de servos', 2, NULL, 'Servomotor, motor, servo, probador', 'Actuadores', 'Locker 13', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (233, 'S-IND-1', 'Sensor inductivo', 5, 'Sensor para medir corriente por inducción magnética?', 'sensor, inductivo, corriente, no invasivo', 'Sensores', 'Locker 1, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (234, 'SARA-R410M', 'Módulo de comunicaciones IoT y GPS', 1, 'Con puerto para GPS Ublox, capacidad para SIM Hologram', 'módulo, modulo, IoT, SIM, hologram, ublox, gps, lte', 'IoT', 'Locker 11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (235, 'SCT013-100A-1V', 'Sensor de corriente 100A', 1, 'Sensor de corriente por efecto Hall, Salida analógica hasta 1 V', 'sensor, corriente, no invasivo, efecto Hall, hall', 'Sensores', 'Locker 1, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (236, 'SCT013-100A-50MA', 'Sensor de corriente 100A', 7, 'Sensor de corriente por efecto Hall, Salida analógica hasta 50 mA', 'sensor, corriente, no invasivo, efecto Hall, hall', 'Sensores', 'Locker 1, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (237, 'SCT013-10A', 'Sensor de corriente 10A', 2, 'Sensor de corriente por efecto Hall, Salida analógica hasta 1 V', 'sensor, corriente, no invasivo, efecto Hall, hall', 'Sensores', 'Locker 1, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (238, 'SCT013-20A', 'Sensor de corriente 20A', 2, 'Sensor de corriente por efecto Hall, Salida analógica hasta 1 V', 'sensor, corriente, no invasivo, efecto Hall, hall', 'Sensores', 'Locker 1, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (239, 'SCT013-30A', 'Sensor de corriente 30A', 1, 'Sensor de corriente por efecto Hall, Salida analógica hasta 1 V', 'sensor, corriente, no invasivo, efecto Hall, hall', 'Sensores', 'Locker 1, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (240, 'SCT013-50A', 'Sensor de corriente 50A', 2, 'Sensor de corriente por efecto Hall, Salida analógica hasta 1 V', 'sensor, corriente, no invasivo, efecto Hall, hall', 'Sensores', 'Locker 1, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (241, 'SEN-09416', 'Cápsula RFID', 10, 'This is a glass, cylindrical RFID tag; it\'s very similar to those implanted into pets for identification purposes. But really guys, it\'s not for use inside your body. Please don\'t implant this thing into yourselves. Each tag comes with a unique 32-bit ID ', 'RF, RFID, tag, capsule, cápsula, KHz', 'IoT', 'Locker 11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (242, 'SEN-09963', 'Lector USB de etiquetas RFID', 1, 'Lector de tags de 125 KHz', 'RF, RFID, lector, khz', 'IoT', 'Locker 11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (243, 'SEN-11828', 'Lector RFID de cápsulas', 1, 'ID-20LA', 'RF, RFID, lector, capsule, cápsula, KHz', 'IoT', 'Locker 11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (244, 'SEN-12650', 'Sensor electrodo ECG', 3, 'Monitor de ritmo cardíaco, IC Base: AD8232', 'sensor, corazón, ECG, heart rate', 'Sensores', 'Locker 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (245, 'SEN-12780', 'Sensor estéreo de distancia por infrarrojos', 1, 'Sensor para el reconocimiento 3D de gestos simples con la mano, sin contacto', 'sensor, gestos,  through-hole, header', 'Sensores', 'Locker 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (246, 'SEN-HZ21A', 'Bomba de agua', 5, '1-30 L/min, Presión: 1.75 Mpa', 'bomba, agua, pump, bomba de agua, actuador', 'Sensores', 'Locker 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (247, 'SEN0220', 'Sensor de CO2', 1, 'Sensor infrarrojo de CO2, 0-50000 ppm', 'sensor, gases, CO2', 'Sensores', 'Locker 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (248, 'SENSOR-FLAMA', 'Sensor de llama', 1, NULL, 'sensor, llama, header', 'Sensores', 'Locker 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (249, 'SENSOR-FUERZA', 'Sensor de fuerza', 2, 'Sensor resistivo de fuerza, Dimensiones: 4 cm x 4 cm', 'sensor, resistivo, fuerza,  through-hole, header', 'Sensores', 'Locker 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (250, 'SENSOR-PUERTA', 'Sensor de apertura de puerta', 7, NULL, 'sensor, puerta', 'Sensores', 'Locker 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (251, 'SERVO-PARTES', 'Bolsas de partes para instalación de servomotores pequeños', 11, NULL, 'Servomotor, motor, servo, partes', 'Actuadores', 'Locker 4', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (252, 'SFBP1-G350-01', 'Bomba de agua', 1, 'Fabricante: Seaflo, 350 GPH/1325 LPH, Bilge pump', 'bomba, agua, pump, bomba de agua, actuador', 'Actuadores', 'Locker 4', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (253, 'SHARP-2D120X-F', 'Sensor de distancia', 16, 'De 4 cm a 30 cm, Infrarrojo', 'sensor, IR, infrarrojo, distancia', 'Sensores', 'Locker 1, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (254, 'SHARP-2Y0A02', 'Sensor de distancia', 2, 'De 20 cm a 150 cm', 'sensor, IR, infrarrojo, distancia', 'Sensores', 'Locker 1, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (255, 'SIM8000C-RASP-DEV1', 'Módulo GSM y GPRS para Raspberry Pi', 10, NULL, 'IoT, internet de las cosas, GSM, GPRS, Raspberry Pi, raspi, shield', 'Herramientas de desarrollo', 'Locker 7', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (256, 'SIM808', 'Módulo GSM/GPRS', 14, NULL, 'IoT, internet de las cosas, gsm, gprs', 'Herramientas de desarrollo', 'Locker 7', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (257, 'SIM900', 'Módulo GSM/GPRS', 1, NULL, 'IoT, internet de las cosas, gsm, gprs', 'Herramientas de desarrollo', 'Locker 7', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (258, 'SN05N', 'Sensor capacitivo de proximidad', 2, '3-wire, Fabicante: Sabby, NPN', 'sensor, capacitancia, proximidad, capacitivo', 'Sensores', 'Locker 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (259, 'SOLENOIDE-C', 'Solenoide para cerradura eléctrica', 2, 'Cerradura solenoide con pestillo y soporte', 'solenoide, actuador', 'Actuadores', 'Locker 4', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (260, 'SONOFF-S20', 'Tomacorriente activado por Wifi', 1, 'Poner foto', 'wifi, tomacorriente, IoT, internet de las cosas, herramientas de desarrollo', 'Herramientas de desarrollo', 'Locker 11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (261, 'SONOFF-S26', 'Tomacorriente activado por Wifi', 1, 'Modelo S26TPB-US, Poner foto', 'wifi, tomacorriente, IoT, internet de las cosas, herramientas de desarrollo', 'Herramientas de desarrollo', 'Locker 11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (262, 'SRF08', 'Sensor de distancia', 1, 'Devantech, 3 cm - 600 cm, I2C, fotocelda adicional, https://www.robot-electronics.co.uk/htm/srf08tech.html', 'sensor, ultrasonido, srf, fotocelda', 'Sensores', 'Locker 1, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (263, 'SS-425AA', 'Relé de estado sólido', 4, 'Fabricante: Sabby, Carga: 25A/75-480VAC, Entrada: 80-250VAC', 'Rele, relé, relay, ssr, solid state relay', 'Electrónica de potencia', 'Locker 13', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (264, 'SS-450DA', 'Relé de estado sólido', 1, 'Fabricante: Sabby, Carga: 50A/75-480VAC, Entrada: 3-32VDC', 'Rele, relé, relay, ssr, solid state relay', 'Electrónica de potencia', 'Locker 13', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (265, 'SS-475DA', 'Relé de estado sólido', 1, 'Fabricante: Sabby, Carga: 75A/75-480VAC, Entrada: 3-32VAC', 'Rele, relé, relay, ssr, solid state relay', 'Electrónica de potencia', 'Locker 13', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (266, 'SS3803', 'Relé de estado sólido', 6, 'Fabricante: Sabby, Carga: 3A/24-380VAC, Entrada: 3-32VDC', 'Rele, relé, relay, ssr, solid state relay', 'Electrónica de potencia', 'Locker 13', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (267, 'SSC2D16DLYY', 'Pantalla LCD', 3, 'Caracteres: 2x16, 8 líneas de datos', 'Pantalla LCD, LCD, 2x16', 'Displays', 'Cajones pequeños transparentes', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (268, 'SSD1306', 'Display de OLEDs', 2, NULL, 'display, oled, pantalla, i2c', 'IO', 'Locker 15', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (269, 'SSR-25DA', 'Relé de estado sólido', 1, 'Fabricante: Fotek, 24-380VAC 3-32VDC', 'Rele, relé, relay, ssr, solid state relay', 'Electrónica de potencia', 'Locker 13', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (270, 'SW-R-X', 'Switch pulsador redondo', 8, 'Para panel', 'switch, pulsador, potencia, panel', 'IO', 'Locker 15', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (271, 'TARJETA-RELE-4', 'Tarjeta con 4 relés', 6, 'Relé de potencia, Ref SRD-05DC-SL-C, 10 A 250 VAC / 125 VAC / 30 VDC / 28 VDC', 'relay, relé, actuador', 'Electrónica de potencia', 'Locker 13, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (272, 'TARJETA-RELE-4', 'Tarjeta con 2 relés', 5, 'Relé de potencia, Ref SRD-05DC-SL-C, 10 A 250 VAC / 125 VAC / 30 VDC / 28 VDC', 'relay, relé, actuador', 'Electrónica de potencia', 'Locker 13, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (273, 'TD48A25', 'Relé de estado sólido', 3, 'Fabricante: Optec, Entrada: 4-32VDC, Carga: 25A/24-575VAC', 'Rele, relé, relay, ssr, solid state relay', 'Electrónica de potencia', 'Locker 13', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (274, 'TE-PIEZO-DT', 'Sensor de vibración', 1, 'Fabricante: TE Connectivity, serie DT, piezo film sensor', 'sensor, vibraciones, piezo, piezoeléctrico, piezoelectrico', 'Sensores', 'Locker 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (275, 'TE-PIEZO-MINISENSE-100NM', 'Sensor de vibración', 1, 'Fabricante: TE Connectivity, serie minisense 100NM, piezo film sensor', 'sensor, vibraciones, piezo, piezoeléctrico, piezoelectrico, cantilever', 'Sensores', 'Locker 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (276, 'TEC1-12703', 'Celda termoeléctrica', 2, '40 mm x 40 mm, 12 V, 3 A', 'peltier, TEC', 'Actuadores', 'Locker 4', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (277, 'TFMINI', 'Sensor Lidar Mini', 5, 'Rango de operación: 0.3m-12m, Consumo: 0.12W, Salida: UART', 'sensor, lidar, IR', 'Sensores', 'Locker 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (278, 'TMATRICIAL', 'Teclado matricial de membrana', 4, NULL, 'io, teclado, matricial', 'IO', 'Locker 15', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (279, 'TOWER-PRO-SG90', 'Servomotor pequeño', 2, '9 g', 'Servomotor, motor, servo, micro, servo', 'Actuadores', 'Locker 4', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (280, 'TR-1', 'Transformador de voltaje con secundario', 2, '12VAC-0-12VAC, 1A', 'transformador, fuente, alimentación', 'Electrónica de potencia', 'Locker 9', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (281, 'TRF-M3', 'Transformador de voltaje con secundario', 4, '12VAC-0-12VAC, 2A', 'transformador, fuente, alimentación', 'Electrónica de potencia', 'Locker 9', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (282, 'TUBO-PLEGADO', 'Tubo de escape de vapores', 1, NULL, 'tubo, escape, vapor', 'Misc', 'Locker 16', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (283, 'UBLOXS-NEO-6M', 'Módulo GPS U-blox Neo-6', 8, NULL, 'gps, sensor, dron, drones', 'Accesorios para drones', 'Locker 12', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (284, 'ULCD-32PTU-PI', 'Pantalla LCD para Raspberry Pi', 1, NULL, 'Raspberry Pi, shield, raspi, LCD', 'Herramientas de desarrollo', 'Locker 6', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (285, 'USB-RS232', 'Adaptador USB-RS232', 1, NULL, 'adaptador, usb, convertidor, serial, uart, rs232', 'Herramientas de desarrollo', 'Locker 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (286, 'USB-RS232-ANOTHER', 'Adaptador USB-RS232', 12, 'En la caja hay adaptaciones adicionales de RS232 a SI y a Ethernet', 'adaptador, usb, convertidor, serial, uart, rs232', 'Herramientas de desarrollo', 'Locker 6', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (287, 'V21-9341', 'Shield de pantalla LCD táctil', 1, '2.4\", Para Arduino Mega/Due/Uno', 'display, pantalla, lcd, screen, touch, táctil, tactil', 'IO', 'Locker 15', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (288, 'VEX-YAW', 'Giroscopio', 1, 'https://www.vexrobotics.com/276-2333.html', 'sensor, giroscopio, vex, robotica, robótica, robot', 'Sensores', 'Locker 1, caja transparente pequeña', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (289, 'VOLT-F-BLUE', 'Minivoltímetro digital 0 V a 99 V de DC', 3, NULL, 'sensor, voltaje, display', 'Sensores', 'Locker 1, caja pequeña', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (290, 'VSOLENOIDE', 'Válvula solenoide grande', 2, 'Presión: 0.02-0.8 mPa, Voltaje: 12VDC, Potencia: 4.8W', 'Válvula, valvula, solenoide', 'Actuadores', 'Locker 4', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (291, 'WIZ108SR', 'Módulo Ethernet', 1, 'Usa W7100A WIZnet iMCU, URL: https://www.wiznet.io/product-item/wiz108sr/', 'IoT, internet de las cosas, ethernet', 'Herramientas de desarrollo', 'Locker 7', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (292, 'WRL-12577', 'Tarjeta Bluetooth', 1, 'Con RN42', 'IoT, internet de las cosas, bluetooth, rn42, obsoleto', 'Herramientas de desarrollo', 'Locker 7', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (293, 'WRL-14151', 'Tag adhesivo UHF para RFID', 20, NULL, 'RF, RFID, tag, uhf', 'IoT', 'Locker 11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (294, 'WRL11777', 'Módulo Bluetooth', 2, 'CON RN52-I/RM. Comunicación con SPI', 'IoT, internet de las cosas, bluetooth, rn52, obsoleto, SPI', 'Herramientas de desarrollo', 'Locker 7', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (295, 'XBEE-ADAPT-USBA', 'Adaptador USB y header para tarjetas Xbee', 2, 'Conexión USB tipo A', 'IoT, internet de las cosas, xbee, herramientas de desarrollo', 'Herramientas de desarrollo', 'Locker 11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (296, 'XBEE-ADAPT-USBMICRO', 'Adaptador USB y header para tarjetas Xbee', 5, 'Conexión USB micro A', 'IoT, internet de las cosas, xbee, herramientas de desarrollo', 'Herramientas de desarrollo', 'Locker 11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (297, 'XBEE-PRO-ZB-SC2', 'Módulo Xbee Pro ZB S2C', 2, 'Con antena', 'IoT, internet de las cosas, xbee, herramientas de desarrollo', 'Herramientas de desarrollo', 'Locker 11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (298, 'XBEE-WIFI', 'Módulo Xbee Wifi', 1, NULL, 'IoT, internet de las cosas, xbee, herramientas de desarrollo, wifi', 'Herramientas de desarrollo', 'Locker 11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (299, 'XBEE12', 'Módulo Xbee serie 1 y 2', 8, NULL, 'IoT, internet de las cosas, xbee, herramientas de desarrollo', 'Herramientas de desarrollo', 'Locker 11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (300, 'XBEE3-PRO', 'Módulo XBEE 3 Pro', 2, NULL, 'IoT, internet de las cosas, xbee, herramientas de desarrollo', 'Herramientas de desarrollo', 'Locker 11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (301, 'XBEE6', 'Módulo Xbee S6', 3, NULL, 'IoT, internet de las cosas, xbee, herramientas de desarrollo', 'Herramientas de desarrollo', 'Locker 11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (302, 'XBEE6-ANT', 'Módulo Xbee S6 con antena', 1, NULL, 'IoT, internet de las cosas, xbee, herramientas de desarrollo', 'Herramientas de desarrollo', 'Locker 11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (303, 'XBEE68', 'Módulo Xbee S8', 2, NULL, 'IoT, internet de las cosas, xbee, herramientas de desarrollo', 'Herramientas de desarrollo', 'Locker 11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (304, 'XBIB-U-CAP', 'Programador de módulos Xbee', 4, NULL, 'IoT, internet de las cosas, herramientas de desarrollo, Xbee', 'Herramientas de desarrollo', 'Locker 11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (305, 'XH-M510', 'Módulo amplificador de audio', 1, '2 amplificadores, 100 W cada uno', 'audio, amplificador', 'Audio', 'Locker 6', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (306, 'YF-S201', 'Bomba de agua', 7, '1-30 L/min, Presión: 1.75 Mpa', 'bomba, agua, pump, bomba de agua, actuador', 'Sensores', 'Locker 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (307, 'ZD-10A', 'Soporte para cautín', 1, NULL, 'soporte, cautín', 'Fabricación PCB', 'Locker 16', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (308, 'ZHV-0519', 'Válvula solenoide DC', 5, 'Dimensiones: (20*14*12) mm, Voltaje: 3-48Vdc 24-220Vac, Presión: 280mmHg-750mmHg, Aplicación: Masajeador de ojos', 'Válvula, valvula, solenoide', 'Actuadores', 'Locker 4', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (309, 'ZMPT101B', 'Transformador de voltaje alterno', 10, 'Permite medir voltajes de corriente alterna, Voltaje de alimentación: 3.3V - 5VDC, Voltaje alterno de entrada: 250VAC máx, Voltaje alterno de salida: Onda senoidal 5VAC máx, Señal de salida: analógica senoidal, Dimensiones: 5 cm x 2 cm x 2.4 cm, Corriente', 'transformador, sensor, voltaje, corriente, alterna', 'Sensores', 'Locker 1, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (310, 'ZW70X578', 'Panel solar', 11, 'Dimensiones: 70 mm x 58 mm', 'Paneles solares, Panel solar', 'Alimentación', 'Cajones pequeños transparentes', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (311, 'LM339N', 'Comparador de Voltaje cuadruple', 13, 'encapsulado DIP14  ', 'amplificador operaciones, comparador.', 'Integrados', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (312, 'HIN232CPZ', 'Interfaz RS232', 10, 'encapsulado DIP16  ', 'comunicaciones, RS232', 'Integrados', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (313, 'BDX33C', 'Transistor darlington NPN 10A 100V', 20, 'encapsulado TO220', NULL, 'Integrados', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (314, 'SN74LS07N', 'Buffer colector Abierto x6', 10, 'encapsulado DIP14  ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (315, 'PC817', 'Optoacoplador', 13, 'encapsulado DIP4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (316, 'MMBT2N2222A', 'tansistor NPN 1A 40V', 130, 'encapsulado SOT23  etiqueta 1P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (317, 'MMBT3904LT1', 'transistor NPN 200mA 40V', 100, 'encapsulado SOT23 etiqueta 1AM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (318, 'LD1117', 'Regulador de voltaje ajustable 800mA', 20, 'encapsulado SOT223', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (319, 'AMS302', 'Sensores de luz ambiental', 10, 'encapsulado SMD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (320, 'LED0805RED', 'Led rojo SMD', 22, 'encapsulado SMD 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (321, '1n4148', 'Diodo 1N4148 SMD', 52, 'encapsulado SOD80', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (322, 'LF353SMD', 'Amplificador operaciones LF353', 21, 'encapsulado SOIC8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (323, 'LDR5MM', 'Fotoresistencia ', 30, 'dimensiones: Diametro 5mm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (324, 'R100K', 'Resistencia SMD 100k', 100, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (325, 'R39K', 'Resistencia SMD 39k', 100, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (326, 'R1K', 'Resistencia SMD 1k', 190, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (327, 'R330K', 'Resistencia SMD 330k', 200, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (328, 'R56K', 'Resistencia SMD 56k', 100, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (329, 'R330', 'Resistencia SMD 330', 82, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (330, 'R1K8', 'Resistencia SMD 1.8K', 100, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (331, 'R6K2', 'Resistencia SMD 6.2k', 100, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (332, 'R2K', 'Resistencia SMD 2k', 100, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (333, 'R2K2', 'Resistencia SMD 2.2k', 200, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (334, 'R680', 'Resistencia SMD 680', 98, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (335, 'R10M', 'Resistencia SMD 10M', 250, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (336, 'R3K3', 'Resistencia SMD 3.3k', 198, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (337, 'R100', 'Resistencia SMD 100', 100, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (338, 'R10K', 'Resistencia SMD 10k', 196, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (339, 'R470', 'Resistencia SMD 470', 97, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (340, 'R12K', 'Resistencia SMD 12k', 100, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (341, 'R220', 'Resistencia SMD 220', 150, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (342, 'R1M', 'Resistencia SMD 1M', 180, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (343, 'R56', 'Resistencia SMD 56', 50, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (344, 'R1K5', 'Resistencia SMD 1.5k', 200, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (345, 'R30K', 'Resistencia SMD 30k', 50, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (346, 'R6K8', 'Resistencia SMD 6.8k', 150, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (347, 'R220K', 'Resistencia SMD 220k', 199, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (348, 'R470K', 'Resistencia SMD 470k', 100, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (349, 'R4K7', 'Resistencia SMD 4.7k', 200, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (350, 'R47K', 'Resistencia SMD 47k', 150, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (351, 'R22K', 'Resistencia SMD 22k', 150, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (352, 'R0', 'Resistencia SMD 0', 246, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (353, 'R110-S', 'Resistencia SMD 110', 99, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (354, 'R47', 'Resistencia SMD 47', 100, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (355, 'R68K', 'Resistencia SMD 68k', 100, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (356, 'R4M7', 'Resistencia SMD 47M', 100, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (357, '1R0', 'Resistencia SMD 1', 50, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (358, 'R820', 'Resistencia SMD 820', 100, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (359, 'R33K', 'Resistencia SMD 33k', 50, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (360, 'R820K', 'Resistencia SMD 820k', 100, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (361, 'R22', 'Resistencia SMD 22', 150, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (362, 'R10', 'Resistencia SMD 10', 96, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (363, 'R8K2', 'Resistencia SMD 8.2K', 100, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (364, 'R68', 'Resistencia SMD 68', 49, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (365, 'R15', 'Resistencia SMD 15', 100, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (366, 'R82K', 'Resistencia SMD 82k', 100, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (367, 'R680K', 'Resistencia SMD 680k', 50, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (368, 'R15K', 'Resistencia SMD 15k', 50, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (369, 'R33', 'Resistencia SMD 33', 110, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (370, 'R150', 'Resistencia SMD 150', 100, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (371, 'R82', 'Resistencia SMD 82', 50, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (372, 'R150K', 'Resistencia SMD 150k', 48, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (373, 'R5K6', 'Resistencia SMD 5.6K', 50, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (374, 'R560K', 'Resistencia SMD 560k', 50, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (375, 'R3K9', 'Resistencia SMD 3.9k', 50, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (376, 'R180K', 'Resistencia SMD 180k', 50, 'Encapsulado 1026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (377, 'R100K-S', 'Resistencia SMD 100k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (378, 'R1K8-S', 'Resistencia SMD 1.8k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (379, 'R1K-S', 'Resistencia SMD 1k', 200, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (380, 'R220K-S', 'Resistencia SMD 220k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (381, 'R22K-S', 'Resistencia SMD 22k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (382, 'R9K1-S', 'Resistencia SMD 9.1k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (383, 'R2K2-S', 'Resistencia SMD 2.2k', 100, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (384, 'R330K-S', 'Resistencia SMD 330k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (385, 'R270K-S', 'Resistencia SMD 270k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (386, 'R820K-S', 'Resistencia SMD 820k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (387, 'R510K-S', 'Resistencia SMD 510k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (388, 'R200K-S', 'Resistencia SMD 200k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (389, 'R47K-S', 'Resistencia SMD 47k', 100, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (390, 'R120K-S', 'Resistencia SMD 120k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (391, 'R130-S', 'Resistencia SMD 130', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (392, 'R33K-S', 'Resistencia SMD 33k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (393, 'R5K1-S', 'Resistencia SMD 5.1k', 200, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (394, 'R47-S', 'Resistencia SMD 47', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (395, 'R10K-S', 'Resistencia SMD 10k', 150, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (396, 'R18K-S', 'Resistencia SMD 18k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (397, 'R15K-S', 'Resistencia SMD 15k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (398, 'R2K-S', 'Resistencia SMD 2k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (399, 'R2K4-S', 'Resistencia SMD 2.4k', 150, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (400, 'R8K2-S', 'Resistencia SMD8.2k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (401, 'R470K-S', 'Resistencia SMD 470k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (402, 'R27K-S', 'Resistencia SMD 27k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (403, 'R4.7K-S', 'Resistencia SMD 4.7k', 150, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (404, 'R20K-S', 'Resistencia SMD 20k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (405, 'R130K-S', 'Resistencia SMD 130k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (406, 'R11K-S', 'Resistencia SMD 11k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (407, 'R5.6K-S', 'Resistencia SMD 5.6k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (408, 'R62K-S', 'Resistencia SMD 62k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (409, 'R680K-S', 'Resistencia SMD 680k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (410, 'R1.2K-S', 'Resistencia SMD 1.2k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (411, 'R1.6K-S', 'Resistencia SMD 1.6k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (412, 'R82K-S', 'Resistencia SMD 82k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (413, 'R8.2K-S', 'Resistencia SMD 8.2k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (414, 'R27K-S', 'Resistencia SMD 27k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (415, 'R4.7K-S', 'Resistencia SMD 4.7k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (416, 'R56K-S', 'Resistencia SMD 56K', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (417, 'R9K-S', 'Resistencia SMD 9k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (418, 'R3.3K-S', 'Resistencia SMD 3.3k', 50, 'Encapsulado 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (419, 'C0.001UF-T', 'Capacitor 0.001 uF SMD de tantalio', 32, 'Encapsulado 1206', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (420, 'C0.01UF-T', 'Capacitor 0.01 uF SMD de tantalio', 48, 'Encapsulado 1206', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (421, 'C0.0225UF-T', 'Capacitor 0.0225 uF SMD de tantalio', 32, 'Encapsulado 1206', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (422, 'C0.00226UF-T', 'Capacitor 0.00226 uF SMD de tantalio', 16, 'Encapsulado 1206', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (423, 'C0.1UF-T', 'Capacitor 0.1uF SMD de tantalio', 32, 'Encapsulado 1206', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (424, 'LED0805GREEN', 'Led verde SMD', 15, 'encapsulado SMD 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (425, 'LED0805BLUE', 'Led azul SMD', 20, 'encapsulado SMD 0805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (426, 'SMC 8090410075', 'Cable punta de prueba Osciloscopio', 1, 'Juego de cables punta de prueba Osciloscopio', 'SMC 8090410075', 'Cables ', 'caja de cables', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (427, 'Fuente de alto voltaje', 'fuente alto voltaje dc', 1, 'Fuente de alto voltaje no especificaciones', NULL, 'Fuente', 'Caja fuentes casillero 13', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (428, 'USB-E 1.5M', 'Extension USB 1.5 m', 2, 'Extension USB 1.5 m', 'Extension USB 1.5 m', 'Cables ', 'caja de cables', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (429, 'VE DIrect Cable 1.8m', 'Cable inversor controlador ', 1, 'Cable inversor controlador ', 'Cable inversor controlador ', 'Cables ', 'caja cables', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (430, 'Conector rapido para cables WAGO', 'Conector rapido para cables WAGO', 1, 'Conector rapido para cables WAGO', 'Conector rapido para cables WAGO', 'Cables ', 'caja de cables', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (431, 'DFR0123', 'Convertidor DC-DC Boost', 1, 'De DFRobot', NULL, 'Herramientas de desarrollo', 'Locker 1, caja naranja', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (432, 'BM-6810', 'Probador de baterías', 1, 'Con buzzer para detección de nivel bajo de carga', NULL, 'Sensores', 'Locker 1, caja 1 transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (433, 'GY-30', 'Sensor de intensidad lumínica', 1, 'Chip: BH1750FVI, Interfaz: I2C', NULL, 'Sensores', 'Locker 1, caja 1 transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (434, '2PH64011A', 'Driver de motor paso a paso', 1, 'Para motor 28BYJ-48', NULL, 'Actuadores', 'Locker 4', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (435, 'ALSPT19', 'Sensor de luz ambiental', 1, NULL, NULL, 'Sensores', 'Locker 1, caja transparente', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (436, '1004VAAB', 'Capacitor 100 uF 4V SMD', 2, 'De aluminio', NULL, 'Componentes SMD', 'Caja componentes SMT', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `componentes` VALUES (437, 'Prueba componente', 'asdfdafs', 43, 'asdfadsf', 'asdf', 'asdf', NULL, NULL, '', '', NULL, NULL, '2021-06-30', '2021-06-30 00:00:00');
INSERT INTO `componentes` VALUES (770, '', '', NULL, '', '', '', NULL, NULL, '', '', NULL, NULL, '2021-07-01', '2021-07-01 00:00:00');
INSERT INTO `componentes` VALUES (772, '12222222222222222', '2111111111111', NULL, '', '', '', NULL, NULL, '', '', NULL, NULL, '2021-07-01', '2021-07-01 00:00:00');
INSERT INTO `componentes` VALUES (773, '', 'gfgfgf45', NULL, 'lalal alalala fgggggggggggggggggggggggggggh  ghsfdg dfdfg', 'asdf', 'asdf', NULL, NULL, 'base-para-fotos-celular.png', '', NULL, NULL, '2021-07-01', '2021-07-01 00:00:00');

-- ----------------------------
-- Table structure for movimientos
-- ----------------------------
DROP TABLE IF EXISTS `movimientos`;
CREATE TABLE `movimientos`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `created` date NULL DEFAULT NULL,
  `modified` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movimientos
-- ----------------------------
INSERT INTO `movimientos` VALUES (1, 'asdfadf', '2021-07-02', '2021-07-02');

-- ----------------------------
-- Table structure for phinxlog
-- ----------------------------
DROP TABLE IF EXISTS `phinxlog`;
CREATE TABLE `phinxlog`  (
  `version` bigint NOT NULL,
  `migration_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_time` timestamp(0) NULL DEFAULT NULL,
  `end_time` timestamp(0) NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`version`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of phinxlog
-- ----------------------------
INSERT INTO `phinxlog` VALUES (20210608161358, 'CreateProductsTable', '2021-06-08 16:22:11', '2021-06-08 16:22:11', 0);
INSERT INTO `phinxlog` VALUES (20210608203350, 'CreateProductsTable', '2021-06-08 20:35:58', '2021-06-08 20:35:58', 0);

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL,
  `quantity` int NULL DEFAULT NULL,
  `price` decimal(5, 2) NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `photo_dir` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `modified` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'Componentes', '234dfasf', 23, 500.00, 'saf', 'saf', '2021-06-08 20:44:25.681814', '2021-06-08 20:44:25.682814');
INSERT INTO `products` VALUES (2, '', '', NULL, NULL, '', '', '2021-06-09 21:38:07.186412', '2021-06-09 21:38:07.189412');
INSERT INTO `products` VALUES (3, '', '', NULL, NULL, '', '', '2021-06-09 21:46:57.376737', '2021-06-09 21:46:57.377737');
INSERT INTO `products` VALUES (4, '35r4432', '', NULL, NULL, '', '', '2021-06-09 22:12:07.759126', '2021-06-09 22:12:07.760126');
INSERT INTO `products` VALUES (5, '', '', NULL, NULL, '', '', '2021-06-09 22:12:17.836702', '2021-06-09 22:12:17.838702');
INSERT INTO `products` VALUES (6, '', '', NULL, NULL, '', '', '2021-06-09 22:12:53.156722', '2021-06-09 22:12:53.157722');
INSERT INTO `products` VALUES (7, '', '', NULL, NULL, '', '', '2021-06-11 20:52:35.015788', '2021-06-11 20:52:35.016788');
INSERT INTO `products` VALUES (8, '', '', NULL, NULL, '', '', '2021-06-11 21:01:01.783774', '2021-06-11 21:01:01.784774');
INSERT INTO `products` VALUES (9, 'asdf', '', NULL, NULL, '', '', '2021-06-11 21:01:59.738089', '2021-06-11 21:01:59.740089');
INSERT INTO `products` VALUES (10, 'mn', 'gjghhhhhhhhhhhhhhh', 23, 344.00, '', '', '2021-06-11 21:38:01.233719', '2021-06-11 21:38:01.236719');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `linea` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `created` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `modified` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
