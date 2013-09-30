
--
-- Table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;


INSERT INTO `departments` (`id`, `title`) VALUES
(1, 'Smartphones'),
(2, 'Sellphones'),
(3, 'Ebooks'),
(4, 'Navigators');


--
-- Table `companies`
--

CREATE TABLE IF NOT EXISTS `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_dept` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;


INSERT INTO `companies` (`id`, `title`, `id_dept`) VALUES
(1, 'Samsung', 1),
(2, 'HTC', 1),
(3, 'Apple', 1),
(4, 'Texet', 1),
(5, 'Sony', 1),
(6, 'Huawei', 1),
(7, 'Nokia', 1),
(8, 'Acer', 1),
(9, 'Onext', 2),
(10, 'BlackBerry', 2),
(11, 'Keneksi', 2),
(12, 'IconBIT', 2),
(13, 'Effire', 3),
(14, 'Digma', 3),
(15, 'PocketBook', 3),
(16, 'Gmini', 3),
(17, 'Wexler', 3),
(18, 'Ritmix', 3),
(19, 'Garmin', 4),
(20, 'Explay', 4),
(21, 'Shturmann', 4),
(22, 'Lexand', 4);

--
-- Table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_company` int(11) NOT NULL,
  `price` double(9,2) NOT NULL,
  `features` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=59 ;


INSERT INTO `products` (`id`, `title`, `id_company`, `price`, `features`) VALUES
(1, 'Samsung Galaxy Ace S5830 Black', 1, 5990.00, 'Версия ОС: Android 2.2; Диагональ экрана: 3.5"; Разрешение экрана: 320 x 480 точек; Сенсорный экран: Да; Поддержка карт памяти: microSD Card; Тип SIM-карты: Обычная; Кол-во поддерживаемых SIM-карт: 1; Беспроводная связь: 3G, Bluetooth, Wi-Fi; GPS-модуль: Да; Разрешение камеры: 5 Мпикс; Время разговора: 10 ч; Время ожидания: 640 ч; Вес: 113 г.'),
(2, 'Samsung GT-S5360 Galaxy Y Coral Pink', 1, 3990.00, 'Версия ОС: Android 2.3; Диагональ экрана: 3"; Разрешение экрана: 320 x 240 точек; Сенсорный экран: Да; Поддержка карт памяти: microSD Card; Тип SIM-карты: Обычная; Кол-во поддерживаемых SIM-карт: 1; Беспроводная связь: Bluetooth, Wi-Fi; GPS-модуль: Да; Разрешение камеры: 2 Мпикс; Время разговора: 6 ч; Время ожидания: 120 ч; Вес: 97.5 г.'),
(3, 'Samsung GT-S7562 Galaxy S Duos White', 1, 7990.00, 'Версия ОС: Android 4.0; Диагональ экрана: 4"; Разрешение экрана: 480 x 800 точек; Сенсорный экран: Да; Поддержка карт памяти: microSD Card, microSDHC Card, microSDXC Card; Тип SIM-карты: Обычная; Кол-во поддерживаемых SIM-карт: 2; Беспроводная связь: 3G, Bluetooth, GPRS, Wi-Fi; GPS-модуль: Да; Разрешение камеры: 5 Мпикс; Время разговора: 13 ч; Время ожидания: 445 ч; Вес: 120 г.'),
(4, 'Samsung Galaxy S III 16Gb White (i9300)', 1, 16990.00, 'Версия ОС: Android 4.0; Диагональ экрана: 4.8"; Разрешение экрана: 720 x 1280 точек; Сенсорный экран: Да; Поддержка карт памяти: microSD Card, microSDHC Card; Тип SIM-карты: Micro-SIM; Кол-во поддерживаемых SIM-карт: 1; Беспроводная связь: Bluetooth, Wi-Fi; GPS-модуль: Да; Разрешение камеры: 8 Мпикс; Время разговора: 21 ч; Время ожидания: 900 ч; Вес: 133 г.'),
(5, 'HTC A510e Wildfire S Black', 2, 4990.00, 'Версия ОС: Android 2.3; Диагональ экрана: 3.2"; Разрешение экрана: 320 x 480 точек; Сенсорный экран: Да; Поддержка карт памяти: microSD Card; Тип SIM-карты: Обычная; Кол-во поддерживаемых SIM-карт: 1; Беспроводная связь: 3G, Bluetooth, Wi-Fi; GPS-модуль: Да; Разрешение камеры: 5 Мпикс; Время разговора: 5.8 ч; Время ожидания: 570 ч; Вес: 105 г.'),
(6, 'HTC One X 32Gb Grey', 2, 15490.00, 'Версия ОС: Android 4.0; Диагональ экрана: 4.7"; Разрешение экрана: 720 x 1280 точек; Сенсорный экран: Да; Тип SIM-карты: Micro-SIM; Кол-во поддерживаемых SIM-карт: 1; Беспроводная связь: 3G, Bluetooth, Wi-Fi; GPS-модуль: Да; Разрешение камеры: 8 Мпикс; Время разговора: 10 ч; Время ожидания: 480 ч; Вес: 130 г.'),
(7, 'HTC One S Gray', 2, 11590.00, 'Версия ОС: Android 4.0; Диагональ экрана: 4.3"; Разрешение экрана: 540 x 960 точек; Сенсорный экран: Да; Тип SIM-карты: Micro-SIM; Кол-во поддерживаемых SIM-карт: 1; Беспроводная связь: 3G, Bluetooth, Wi-Fi; GPS-модуль: Да; Разрешение камеры: 8 Мпикс; Время разговора: 10 ч; Время ожидания: 360 ч; Вес: 119.5 г.'),
(8, 'HTC Desire C Black', 2, 5590.00, 'Версия ОС: Android 4.0; Диагональ экрана: 3.5"; Разрешение экрана: 320 x 480 точек; Сенсорный экран: Да; Поддержка карт памяти: microSD Card, microSDHC Card; Тип SIM-карты: Обычная; Кол-во поддерживаемых SIM-карт: 1; Беспроводная связь: 3G, Bluetooth, Wi-Fi; GPS-модуль: Да; Разрешение камеры: 5 Мпикс; Время разговора: 7 ч; Вес: 100 г.'),
(9, 'Apple iPhone 4S 16Gb White', 3, 20990.00, 'Версия ОС: iOS 5; Диагональ экрана: 3.5"; Разрешение экрана: 640 x 960 точек; Сенсорный экран: Да; Тип SIM-карты: Micro-SIM; Кол-во поддерживаемых SIM-карт: 1; Беспроводная связь: 3G, Bluetooth, Wi-Fi; GPS-модуль: Да; Разрешение камеры: 8 Мпикс; Время разговора: 14 ч; Время ожидания: 200 ч; Вес: 140 г.'),
(10, 'Apple iPhone 4S 64Gb White', 3, 28990.00, 'Версия ОС: iOS 5; Диагональ экрана: 3.5"; Разрешение экрана: 640 x 960 точек; Сенсорный экран: Да; Тип SIM-карты: Micro-SIM; Кол-во поддерживаемых SIM-карт: 1; Беспроводная связь: 3G, Bluetooth, Wi-Fi; GPS-модуль: Да; Разрешение камеры: 8 Мпикс; Время разговора: 14 ч; Время ожидания: 200 ч; Вес: 140 г.'),
(11, 'Texet TM-5200 Black', 4, 5350.00, 'Версия ОС: Android 2.3; Диагональ экрана: 5.25"; Разрешение экрана: 480 x 800 точек; Сенсорный экран: Да; Поддержка карт памяти: microSD Card, microSDHC Card; Тип SIM-карты: Обычная; Кол-во поддерживаемых SIM-карт: 2; Беспроводная связь: Bluetooth, Wi-Fi; GPS-модуль: Нет; Разрешение камеры: 5 Мпикс; Время разговора: 8 ч; Время ожидания: 700 ч; Вес: 213 г.'),
(12, 'Texet TM-3204R', 4, 9490.00, 'Версия ОС: Android 4.0.4; Диагональ экрана: 3.2"; Разрешение экрана: 320 x 480 точек; Сенсорный экран: Да; Поддержка карт памяти: microSD Card, microSDHC Card; Тип SIM-карты: Обычная; Кол-во поддерживаемых SIM-карт: 2; Беспроводная связь: 3G, Bluetooth, GPRS, Wi-Fi; GPS-модуль: Да; Разрешение камеры: 5 Мпикс; Время разговора: 5 ч; Время ожидания: 360 ч; Вес: 210 г.'),
(13, 'Sony Xperia U ST25i Black', 5, 7490.00, 'Версия ОС: Android 2.3; Диагональ экрана: 3.5"; Разрешение экрана: 480 x 854 точек; Сенсорный экран: Да; Тип SIM-карты: Обычная; Кол-во поддерживаемых SIM-карт: 1; Беспроводная связь: 3G, Bluetooth, Wi-Fi; GPS-модуль: Да; Разрешение камеры: 5 Мпикс; Время разговора: 6.6 ч; Время ожидания: 472 ч; Вес: 110 г.'),
(14, 'Sony Xperia P LT22i Silver', 5, 13990.00, 'Версия ОС: Android 2.3; Диагональ экрана: 4"; Разрешение экрана: 540 x 960 точек; Сенсорный экран: Да; Тип SIM-карты: Micro-SIM; Кол-во поддерживаемых SIM-карт: 1; Беспроводная связь: 3G, Bluetooth, Wi-Fi; GPS-модуль: Да; Разрешение камеры: 8 Мпикс; Время разговора: 6 ч; Время ожидания: 475 ч; Вес: 120 г.'),
(15, 'Sony Xperia Sola MT27i White', 5, 6990.00, 'Версия ОС: Android 2.3; Диагональ экрана: 3.7"; Разрешение экрана: 854 x 480 точек; Сенсорный экран: Да; Поддержка карт памяти: microSD Card, microSDHC Card; Тип SIM-карты: Обычная; Кол-во поддерживаемых SIM-карт: 1; Беспроводная связь: 3G, Bluetooth, Wi-Fi; GPS-модуль: Да; Разрешение камеры: 5 Мпикс; Время разговора: 6 ч; Время ожидания: 475 ч; Вес: 107 г.'),
(16, 'Sony Xperia Sola MT27i Red', 5, 6990.00, 'Версия ОС: Android 2.3; Диагональ экрана: 3.7"; Разрешение экрана: 854 x 480 точек; Сенсорный экран: Да; Поддержка карт памяти: microSD Card, microSDHC Card; Тип SIM-карты: Обычная; Кол-во поддерживаемых SIM-карт: 1; Беспроводная связь: 3G, Bluetooth, Wi-Fi; GPS-модуль: Да; Разрешение камеры: 5 Мпикс; Время разговора: 6 ч; Время ожидания: 475 ч; Вес: 107 г.'),
(17, 'Huawei Ascend P1 U9200', 6, 10590.00, 'Версия ОС: Android 4.0; Диагональ экрана: 4.3"; Разрешение экрана: 540 x 960 точек; Сенсорный экран: Да; Поддержка карт памяти: microSD Card; Тип SIM-карты: Обычная; Кол-во поддерживаемых SIM-карт: 1; Беспроводная связь: Bluetooth, Wi-Fi; GPS-модуль: Да; Разрешение камеры: 8 Мпикс; Время разговора: 6 ч; Время ожидания: 375 ч; Вес: 111 г.'),
(18, 'Huawei Ascend G300 U8815 Chrome', 6, 4990.00, 'Версия ОС: Android 2.3; Диагональ экрана: 4"; Сенсорный экран: Да; Поддержка карт памяти: microSD Card; Тип SIM-карты: Обычная; Кол-во поддерживаемых SIM-карт: 1; Беспроводная связь: Bluetooth, Wi-Fi; GPS-модуль: Да; Разрешение камеры: 5 Мпикс; Вес: 138 г.'),
(19, 'Nokia Lumia 820 Black', 7, 15990.00, 'Версия ОС: Windows Phone 8; Диагональ экрана: 4.3"; Разрешение экрана: 480 x 800 точек; Сенсорный экран: Да; Поддержка карт памяти: microSD Card, microSDHC Card, microSDXC Card; Тип SIM-карты: Micro-SIM; Кол-во поддерживаемых SIM-карт: 1; Беспроводная связь: 3G, 4G LTE, Bluetooth, GPRS, Wi-Fi; GPS-модуль: Да; Разрешение камеры: 8 Мпикс; Время разговора: 15.4 ч; Время ожидания: 360 ч; Вес: 160 г.'),
(20, 'Nokia Lumia 920 White', 7, 19990.00, 'Версия ОС: Windows Phone 8; Диагональ экрана: 4.5"; Разрешение экрана: 720 x 1280 точек; Сенсорный экран: Да; Тип SIM-карты: Micro-SIM; Кол-во поддерживаемых SIM-карт: 1; Беспроводная связь: 3G, 4G LTE, Bluetooth, GPRS, Wi-Fi; GPS-модуль: Да; Разрешение камеры: 8.7 Мпикс; Время разговора: 17 ч; Время ожидания: 400 ч; Вес: 185 г.'),
(21, 'Nokia Lumia 510 Black', 7, 6990.00, 'Версия ОС: Windows Phone 7.8 ; Диагональ экрана: 4"; Разрешение экрана: 480 x 800 точек; Сенсорный экран: Да; Поддержка карт памяти: нет; Тип SIM-карты: Обычная; Кол-во поддерживаемых SIM-карт: 1; Беспроводная связь: Bluetooth, Wi-Fi; GPS-модуль: Да; Разрешение камеры: 5 Мпикс; Время разговора: 6 ч; Время ожидания: 738 ч; Вес: 129 г.'),
(22, 'Nokia Lumia 620 Black', 7, 9990.00, 'Версия ОС: Windows Phone 8; Диагональ экрана: 3.8"; Разрешение экрана: 480 x 800 точек; Сенсорный экран: Да; Поддержка карт памяти: microSD Card, microSDHC Card, microSDXC Card; Тип SIM-карты: Обычная; Кол-во поддерживаемых SIM-карт: 1; Беспроводная связь: 3G, Bluetooth, GPRS, Wi-Fi; GPS-модуль: Да; Разрешение камеры: 5 Мпикс; Время разговора: 14.6 ч; Время ожидания: 320 ч; Вес: 127 г.'),
(23, 'Acer Cloud Mobile S500 White', 8, 10695.00, 'Версия ОС: Android 4.1; Диагональ экрана: 4.3"; Разрешение экрана: 720 x 1280 точек; Сенсорный экран: Да; Поддержка карт памяти: microSD Card, microSDHC Card; Тип SIM-карты: Micro-SIM; Кол-во поддерживаемых SIM-карт: 1; Беспроводная связь: 3G, Bluetooth, Wi-Fi; GPS-модуль: Да; Разрешение камеры: 8 Мпикс; Время разговора: 6.5 ч; Время ожидания: 355 ч; Вес: 125 г.'),
(25, 'Onext Care-Phone 4 Grey', 9, 1150.00, 'Диагональ экрана: 2"; Разрешение экрана: 128 х 160 точек; Сенсорный экран: Нет; Тип SIM-карты: Обычная; Кол-во поддерживаемых SIM-карт: 1; Беспроводная связь: Нет; GPS-модуль: Нет; Время разговора: 4 ч; Время ожидания: 300 ч; Вес: 83 г.'),
(26, 'Onext Care-Phone 4 White', 9, 1150.00, 'Диагональ экрана: 2"; Разрешение экрана: 128 х 160 точек; Сенсорный экран: Нет; Тип SIM-карты: Обычная; Кол-во поддерживаемых SIM-карт: 1; Беспроводная связь: Нет; GPS-модуль: Нет; Время разговора: 4 ч; Время ожидания: 300 ч; Вес: 83 г.'),
(27, 'BlackBerry Curve 9320 Black', 10, 8490.00, 'Диагональ экрана: 2.44"; Разрешение экрана: 320 x 240 точек; Сенсорный экран: Нет; Поддержка карт памяти: microSD Card; Тип SIM-карты: Обычная; Кол-во поддерживаемых SIM-карт: 1; Беспроводная связь: 3G, Bluetooth, GPRS, Wi-Fi; GPS-модуль: Да; Разрешение камеры: 3.2 Мпикс; Время разговора: 7 ч; Время ожидания: 432 ч; Вес: 103 г.'),
(28, 'BlackBerry Bold 9790 White', 10, 14990.00, 'Диагональ экрана: 2.4"; Разрешение экрана: 480 x 360 точек; Сенсорный экран: Да; Поддержка карт памяти: microSD Card; Тип SIM-карты: Обычная; Кол-во поддерживаемых SIM-карт: 1; Беспроводная связь: 3G, Bluetooth, Wi-Fi; GPS-модуль: Да; Разрешение камеры: 5 Мпикс; Время разговора: 5 ч; Время ожидания: 432 ч; Вес: 107 г.'),
(29, 'BlackBerry Bold 9900 Black', 10, 19990.00, 'Диагональ экрана: 2.8"; Разрешение экрана: 480 x 640 точек; Сенсорный экран: Да; Поддержка карт памяти: microSDHC Card; Тип SIM-карты: Обычная; Кол-во поддерживаемых SIM-карт: 1; Беспроводная связь: 3G, Bluetooth, Wi-Fi; GPS-модуль: Да; Разрешение камеры: 5 Мпикс; Время разговора: 6.3 ч; Время ожидания: 300 ч; Вес: 130 г.'),
(30, 'BlackBerry Curve 9360 Black', 10, 10990.00, 'Диагональ экрана: 2.44"; Разрешение экрана: 480 x 360 точек; Сенсорный экран: Нет; Поддержка карт памяти: microSD Card; Тип SIM-карты: Обычная; Кол-во поддерживаемых SIM-карт: 1; Беспроводная связь: 3G, Bluetooth, Wi-Fi; GPS-модуль: Да; Разрешение камеры: 5 Мпикс; Время разговора: 5 ч; Время ожидания: 336 ч; Вес: 99 г.'),
(31, 'KENEKSI S9 Black', 11, 1390.00, 'Диагональ экрана: 2.4"; Разрешение экрана: 240 x 320 точек; Сенсорный экран: Нет; Поддержка карт памяти: microSD Card; Тип SIM-карты: Обычная; Кол-во поддерживаемых SIM-карт: 2; Беспроводная связь: Bluetooth; GPS-модуль: Нет; Разрешение камеры: 1.3 Мпикс; Время разговора: 8 ч; Время ожидания: 260 ч; Вес: 106 г.'),
(32, 'KENEKSI K1 Gold', 11, 1590.00, 'Диагональ экрана: 2.2"; Разрешение экрана: 176 х 220 точек; Сенсорный экран: Нет; Поддержка карт памяти: T-flash; Тип SIM-карты: Обычная; Кол-во поддерживаемых SIM-карт: 2; Беспроводная связь: Bluetooth, GPRS; GPS-модуль: Да; Разрешение камеры: 1.3 Мпикс; Время разговора: 8 ч; Время ожидания: 260 ч; Вес: 84 г.'),
(33, 'KENEKSI C2 Black', 11, 690.00, 'Диагональ экрана: 1.77"; Разрешение экрана: 128 х 160 точек; Сенсорный экран: Нет; Поддержка карт памяти: microSD Card; Тип SIM-карты: Обычная; Кол-во поддерживаемых SIM-карт: 2; Беспроводная связь: Bluetooth; GPS-модуль: Нет; Разрешение камеры: 1.3 Мпикс; Время разговора: 5 ч; Время ожидания: 166 ч; Вес: 68 г.'),
(34, 'KENEKSI K4 Gold', 11, 1250.00, 'Диагональ экрана: 2.2"; Разрешение экрана: 176 х 220 точек; Сенсорный экран: Нет; Поддержка карт памяти: microSD Card; Тип SIM-карты: Обычная; Кол-во поддерживаемых SIM-карт: 2; Беспроводная связь: Bluetooth, GPRS; GPS-модуль: Нет; Разрешение камеры: 1.3 Мпикс; Время разговора: 8 ч; Время ожидания: 260 ч; Вес: 62.6 г.'),
(35, 'IconBit NETTAB MERCURY QUAD', 12, 10470.00, 'Диагональ экрана: 3"; Разрешение экрана: 240 х 400 точек; Сенсорный экран: Да; Поддержка карт памяти: microSD Card; Тип SIM-карты: Обычная; Кол-во поддерживаемых SIM-карт: 1; Беспроводная связь: Bluetooth; GPS-модуль: Нет; Разрешение камеры: 3 Мпикс; Время разговора: 4 ч; Время ожидания: 250 ч; Вес: 92 г.'),
(37, 'Effire ColorBook TR801 Black', 13, 1790.00, 'Тип экрана: LCD (цветной); Сенсорный экран: Да; Диагональ экрана: 8"; Разрешение экрана: 600 x 800 точек; Объём встроенной памяти (ROM): 4 Гб; Поддержка карт памяти: microSD Card; Поддерживаемые форматы аудио: MP3, WMA, WAV, OGG, AAC, FLAC, APE; Вес: 450 г.'),
(39, 'Digma E605 Black', 14, 3290.00, 'Тип экрана: E-Ink; Сенсорный экран: Нет; Диагональ экрана: 6"; Разрешение экрана: 600 x 800 точек; Объём встроенной памяти (ROM): 4 Гб; Поддержка карт памяти: microSD Card, microSDHC Card; Поддерживаемые форматы аудио: WMA, MP3, WAV, OGG; FM-тюнер: Нет; Беспроводная связь: Нет; Вес: 140 г.'),
(40, 'Digma e5 Black', 14, 2590.00, 'Тип экрана: E-Ink; Сенсорный экран: Нет; Диагональ экрана: 5"; Разрешение экрана: 600 x 800 точек; Объём встроенной памяти (ROM): 4 Гб; Поддержка карт памяти: microSD Card, microSDHC Card; Поддерживаемые форматы аудио: MP3, WMA; FM-тюнер: Нет; Беспроводная связь: Нет; Вес: 118 г.'),
(41, 'Digma r60G White', 14, 4690.00, 'Тип экрана: E-Ink; Сенсорный экран: Нет; Диагональ экрана: 6"; Разрешение экрана: 1024 x 768 точек; Объём встроенной памяти (ROM): 4 Гб; Поддержка карт памяти: microSD Card, microSDHC Card; Поддерживаемые форматы аудио: WMA, MP3, WAV, OGG; FM-тюнер: Нет; Беспроводная связь: Нет; Вес: 150 г.'),
(42, 'Digma e5 White', 14, 2790.00, 'Тип экрана: E-Ink; Сенсорный экран: Нет; Диагональ экрана: 5"; Разрешение экрана: 600 x 800 точек; Объём встроенной памяти (ROM): 4 Гб; Поддержка карт памяти: microSD Card, microSDHC Card; Поддерживаемые форматы аудио: MP3, WMA; FM-тюнер: Нет; Беспроводная связь: Нет; Вес: 118 г.'),
(43, 'PocketBook Touch 622 White', 15, 5990.00, 'Тип экрана: E-Ink; Сенсорный экран: Да; Диагональ экрана: 6"; Разрешение экрана: 600 x 800 точек; Объём встроенной памяти (ROM): 2 Гб; Поддержка карт памяти: microSD Card; Поддерживаемые форматы аудио: MP3; FM-тюнер: Нет; Беспроводная связь: Wi-Fi; Продолжительность автономной работы: 8000 страниц; Вес: 195 г.'),
(44, 'PocketBook 360° Plus Dark Gray', 15, 4490.00, 'Тип экрана: E-Ink; Сенсорный экран: Нет; Диагональ экрана: 5"; Разрешение экрана: 600 x 800 точек; Объём встроенной памяти (ROM): 2 Гб; Поддержка карт памяти: microSD Card; Беспроводная связь: Wi-Fi; Продолжительность автономной работы: 8000 страниц; Вес: 180 г.'),
(45, 'Gmini MagicBook R6HD Black', 16, 3890.00, 'Тип экрана: E-Ink; Сенсорный экран: Нет; Диагональ экрана: 6"; Разрешение экрана: 1024 x 768 точек; Объём встроенной памяти (ROM): 4 Гб; Поддержка карт памяти: microSD Card; FM-тюнер: Да; Беспроводная связь: Нет.'),
(46, 'Gmini MagicBook M6FHD Black', 16, 4590.00, 'Тип экрана: E-Ink; Сенсорный экран: Нет; Диагональ экрана: 6"; Разрешение экрана: 1024 x 768 точек; Объём встроенной памяти (ROM): 4 Гб; Поддержка карт памяти: microSD Card, microSDHC Card; Поддерживаемые форматы аудио: MP3; FM-тюнер: Да; Вес: 239 г.'),
(47, 'Wexler T7007S Silver', 17, 3690.00, 'Тип экрана: LCD (цветной); Сенсорный экран: Да; Диагональ экрана: 7"; Разрешение экрана: 480 x 800 точек; Объём встроенной памяти (ROM): 8 Гб; Поддержка карт памяти: microSD Card; Поддерживаемые форматы аудио: AAC,MP3,WMA,OGG,WAV,FLAC ; Беспроводная связь: Wi-Fi; Вес: 345 г.'),
(48, 'Wexler T7004B Black', 17, 1390.00, 'Тип экрана: LCD (цветной); Сенсорный экран: Нет; Диагональ экрана: 7"; Разрешение экрана: 480 x 800 точек; Объём встроенной памяти (ROM): 4 Гб; Поддержка карт памяти: microSD Card, microSDHC Card; Поддерживаемые форматы аудио: MP3, AAC; FM-тюнер: Да; Беспроводная связь: Нет; Вес: 270 г.'),
(49, 'Ritmix RBK-600 Black_6", e-ink', 18, 2790.00, 'Тип экрана: E-Ink; Сенсорный экран: Нет; Диагональ экрана: 6"; Разрешение экрана: 600 x 800 точек; Объём встроенной памяти (ROM): 4 Гб; Поддержка карт памяти: microSD Card; Поддерживаемые форматы аудио: MP3, WMA; FM-тюнер: Да; Беспроводная связь: Нет; Вес: 165 г.'),
(50, 'Ritmix RBK-421 Black', 18, 1490.00, 'Тип экрана: LCD (цветной); Сенсорный экран: Нет; Диагональ экрана: 7"; Разрешение экрана: 480 x 800 точек; Объём встроенной памяти (ROM): 4 Гб; Поддержка карт памяти: SD Card, SDHC Card; Поддерживаемые форматы аудио: MP3, WMA, FLAC, AAC, WAV, OGG; FM-тюнер: Да; Беспроводная связь: Нет; Вес: 290 г.'),
(51, 'Garmin Nuvi 1410', 19, 5699.00, 'Диагональ экрана: 5"; Разрешение экрана: 480 x 272 точек; Загрузка пробок: Нет; Чипсет: SiRF Star III; Беспроводная связь: Bluetooth; Навигационная программа: Garmin; Кол-во путевых точек: 1000; Макс. время автономной работы до: 4 ч.'),
(52, 'Garmin Nuvi 2585LTR', 19, 11999.00, 'Диагональ экрана: 5"; Разрешение экрана: 480 x 272 точек; Загрузка пробок: Да; Навигационная программа: Garmin; Кол-во путевых точек: 1000; Макс. время автономной работы до: 2.5 ч.'),
(53, 'Explay PN-955', 20, 3590.00, 'Диагональ экрана: 5"; Разрешение экрана: 800 x 480 точек; Загрузка пробок: Нет; Чипсет: SiRF Atlas V; Беспроводная связь: Bluetooth; Навигационная программа: Навител; Встроенная память: 4096 Мб; Макс. время автономной работы до: 2 ч.'),
(54, 'Explay SLS5 (BT, DUN) +', 20, 2899.00, 'Диагональ экрана: 5"; Разрешение экрана: 480 x 272 точек; Загрузка пробок: Да; Чипсет: SiRF Atlas V; Беспроводная связь: Bluetooth; Навигационная программа: Навител; Встроенная память: 4096 Мб; Материал корпуса: пластик; Макс. время автономной работы до: 2.5 ч.'),
(55, 'Shturmann Link 300 (GPRS)', 21, 3599.00, 'Диагональ экрана: 4.3"; Разрешение экрана: 480 x 272 точек; Загрузка пробок: Да; Чипсет: SiRF Atlas V; Беспроводная связь: GPRS; Навигационная программа: SHTURMANN; Встроенная память: 2048 Мб; Макс. время автономной работы до: 3 ч.'),
(56, 'Shturmann Link 500SL (GPRS)', 21, 4299.00, 'Диагональ экрана: 5"; Разрешение экрана: 480 x 272 точек; Загрузка пробок: Да; Чипсет: SiRF 3i+; Навигационная программа: SHTURMANN; Встроенная память: 2048 Мб; Макс. время автономной работы до: 1.5 ч.'),
(57, 'Lexand SG-615 Pro HD (GPRS)', 22, 4999.00, 'Диагональ экрана: 5"; Разрешение экрана: 800 x 480 точек; Загрузка пробок: Да; Чипсет: MStar 2521; Беспроводная связь: GPRS; Навигационная программа: СитиГИД; Встроенная память: 4096 Мб; Материал корпуса: пластик; Макс. время автономной работы до: 2 ч.'),
(58, 'Lexand STR-6100 Pro HD (GPRS) Atlas V', 22, 4990.00, 'Диагональ экрана: 6"; Разрешение экрана: 800 x 480 точек; Загрузка пробок: Да; Чипсет: SiRF Atlas V; Беспроводная связь: GPRS; Навигационная программа: СитиГИД; Встроенная память: 4096 Мб; Материал корпуса: пластик; Водонепроницаемость (IPX7): Нет; Макс. время автономной работы до: 2 ч.');