-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Лис 10 2022 р., 19:21
-- Версія сервера: 10.4.24-MariaDB
-- Версія PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `game_2`
--

-- --------------------------------------------------------

--
-- Структура таблиці `character`
--

CREATE TABLE `character` (
  `ID_character` int(3) NOT NULL,
  `id_name` int(3) NOT NULL,
  `id_characteristics` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `character`
--

INSERT INTO `character` (`ID_character`, `id_name`, `id_characteristics`) VALUES
(1, 2, 2);

-- --------------------------------------------------------

--
-- Структура таблиці `characteristic_character`
--

CREATE TABLE `characteristic_character` (
  `ID_characteristic` int(3) NOT NULL,
  `id_name_character_one` int(3) NOT NULL,
  `id_name` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `characteristic_character`
--

INSERT INTO `characteristic_character` (`ID_characteristic`, `id_name_character_one`, `id_name`) VALUES
(2, 2, 2),
(3, 2, 3);

-- --------------------------------------------------------

--
-- Структура таблиці `characteristic_mob`
--

CREATE TABLE `characteristic_mob` (
  `ID_characteristic` int(3) NOT NULL,
  `id_name_mob_one` int(3) NOT NULL,
  `id_name` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `characteristic_mob`
--

INSERT INTO `characteristic_mob` (`ID_characteristic`, `id_name_mob_one`, `id_name`) VALUES
(4, 3, 3),
(5, 3, 4);

-- --------------------------------------------------------

--
-- Структура таблиці `characteristic_object`
--

CREATE TABLE `characteristic_object` (
  `ID_characteristic` int(3) NOT NULL,
  `id_name_object_one` int(3) NOT NULL,
  `id_name` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `characteristic_object`
--

INSERT INTO `characteristic_object` (`ID_characteristic`, `id_name_object_one`, `id_name`) VALUES
(1, 2, 3);

-- --------------------------------------------------------

--
-- Структура таблиці `characteristic_skil`
--

CREATE TABLE `characteristic_skil` (
  `ID_characteristic` int(3) NOT NULL,
  `id_name_skill_one` int(3) NOT NULL,
  `id_name` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `characteristic_skil`
--

INSERT INTO `characteristic_skil` (`ID_characteristic`, `id_name_skill_one`, `id_name`) VALUES
(9, 2, 3);

-- --------------------------------------------------------

--
-- Структура таблиці `killed_mobs`
--

CREATE TABLE `killed_mobs` (
  `ID_killed_mobs` int(11) NOT NULL,
  `id_name_mobs` int(3) NOT NULL,
  `id_value` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `killed_mobs`
--

INSERT INTO `killed_mobs` (`ID_killed_mobs`, `id_name_mobs`, `id_value`) VALUES
(1, 3, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `killed_mobs_value`
--

CREATE TABLE `killed_mobs_value` (
  `ID_killed_mobs_value` int(3) NOT NULL,
  `value` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `killed_mobs_value`
--

INSERT INTO `killed_mobs_value` (`ID_killed_mobs_value`, `value`) VALUES
(1, 23);

-- --------------------------------------------------------

--
-- Структура таблиці `level`
--

CREATE TABLE `level` (
  `ID_level` int(3) NOT NULL,
  `value` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `level`
--

INSERT INTO `level` (`ID_level`, `value`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Структура таблиці `mobi`
--

CREATE TABLE `mobi` (
  `ID_mobi` int(3) NOT NULL,
  `id_name` int(3) NOT NULL,
  `id_characteristics` int(3) NOT NULL,
  `id_placing` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `mobi`
--

INSERT INTO `mobi` (`ID_mobi`, `id_name`, `id_characteristics`, `id_placing`) VALUES
(3, 3, 3, 3);

-- --------------------------------------------------------

--
-- Структура таблиці `namecharacteristic_character`
--

CREATE TABLE `namecharacteristic_character` (
  `ID_name` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `id_value_character` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `namecharacteristic_character`
--

INSERT INTO `namecharacteristic_character` (`ID_name`, `name`, `id_value_character`) VALUES
(2, 'heels', 7),
(3, 'intelect', 7);

-- --------------------------------------------------------

--
-- Структура таблиці `name_character`
--

CREATE TABLE `name_character` (
  `ID_name` int(3) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `name_character`
--

INSERT INTO `name_character` (`ID_name`, `name`) VALUES
(2, 'Alex');

-- --------------------------------------------------------

--
-- Структура таблиці `name_characteristic_mob`
--

CREATE TABLE `name_characteristic_mob` (
  `ID_name` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `id_value_characteristic` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `name_characteristic_mob`
--

INSERT INTO `name_characteristic_mob` (`ID_name`, `name`, `id_value_characteristic`) VALUES
(3, 'heels', 1),
(4, 'attach', 1);

-- --------------------------------------------------------

--
-- Структура таблиці `name_characteristic_object`
--

CREATE TABLE `name_characteristic_object` (
  `ID_name` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `id_value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `name_characteristic_object`
--

INSERT INTO `name_characteristic_object` (`ID_name`, `name`, `id_value`) VALUES
(3, 'ataka', 8);

-- --------------------------------------------------------

--
-- Структура таблиці `name_characteristic_skil`
--

CREATE TABLE `name_characteristic_skil` (
  `ID_name` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `id_value` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `name_characteristic_skil`
--

INSERT INTO `name_characteristic_skil` (`ID_name`, `name`, `id_value`) VALUES
(3, 'ataca', 8);

-- --------------------------------------------------------

--
-- Структура таблиці `name_mob`
--

CREATE TABLE `name_mob` (
  `ID_name` int(3) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `name_mob`
--

INSERT INTO `name_mob` (`ID_name`, `name`) VALUES
(3, 'zombi');

-- --------------------------------------------------------

--
-- Структура таблиці `name_object`
--

CREATE TABLE `name_object` (
  `ID_name` int(3) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `name_object`
--

INSERT INTO `name_object` (`ID_name`, `name`) VALUES
(2, 'sword');

-- --------------------------------------------------------

--
-- Структура таблиці `name_skill`
--

CREATE TABLE `name_skill` (
  `ID_name` int(3) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `name_skill`
--

INSERT INTO `name_skill` (`ID_name`, `name`) VALUES
(2, 'fireboll');

-- --------------------------------------------------------

--
-- Структура таблиці `object`
--

CREATE TABLE `object` (
  `ID_object` int(3) NOT NULL,
  `id_name` int(3) NOT NULL,
  `id_characteristics` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `object`
--

INSERT INTO `object` (`ID_object`, `id_name`, `id_characteristics`) VALUES
(4, 2, 2);

-- --------------------------------------------------------

--
-- Структура таблиці `placing`
--

CREATE TABLE `placing` (
  `ID_placing` int(3) NOT NULL,
  `id_name_plasing_mob_one` int(3) NOT NULL,
  `coordinates` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `placing`
--

INSERT INTO `placing` (`ID_placing`, `id_name_plasing_mob_one`, `coordinates`) VALUES
(1, 3, 'L,12,3,6');

-- --------------------------------------------------------

--
-- Структура таблиці `progress`
--

CREATE TABLE `progress` (
  `ID_progress` int(3) NOT NULL,
  `value` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `progress`
--

INSERT INTO `progress` (`ID_progress`, `value`) VALUES
(1, 23);

-- --------------------------------------------------------

--
-- Структура таблиці `skill`
--

CREATE TABLE `skill` (
  `ID_skill` int(3) NOT NULL,
  `id_name` int(3) NOT NULL,
  `id_characteristics` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `skill`
--

INSERT INTO `skill` (`ID_skill`, `id_name`, `id_characteristics`) VALUES
(8, 2, 2);

-- --------------------------------------------------------

--
-- Структура таблиці `statistics`
--

CREATE TABLE `statistics` (
  `ID_statistics` int(3) NOT NULL,
  `id_object` int(3) NOT NULL,
  `id_skill` int(3) NOT NULL,
  `id_users` int(3) NOT NULL,
  `id_character` int(3) NOT NULL,
  `id_mobi` int(3) NOT NULL,
  `id_level` int(3) NOT NULL,
  `id_progress` int(3) NOT NULL,
  `id_killed_mobs` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `statistics`
--

INSERT INTO `statistics` (`ID_statistics`, `id_object`, `id_skill`, `id_users`, `id_character`, `id_mobi`, `id_level`, `id_progress`, `id_killed_mobs`) VALUES
(7, 2, 2, 1, 1, 3, 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE `users` (
  `ID_users` int(11) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `character_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`ID_users`, `mail`, `character_name`) VALUES
(1, 'user.mail.uncl', 'delbercs');

-- --------------------------------------------------------

--
-- Структура таблиці `value_character`
--

CREATE TABLE `value_character` (
  `ID_value` int(11) NOT NULL,
  `value` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `value_character`
--

INSERT INTO `value_character` (`ID_value`, `value`) VALUES
(7, 2);

-- --------------------------------------------------------

--
-- Структура таблиці `value_mob`
--

CREATE TABLE `value_mob` (
  `ID_value` int(11) NOT NULL,
  `value` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `value_mob`
--

INSERT INTO `value_mob` (`ID_value`, `value`) VALUES
(1, 23);

-- --------------------------------------------------------

--
-- Структура таблиці `value_object`
--

CREATE TABLE `value_object` (
  `ID_value` int(11) NOT NULL,
  `value` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `value_object`
--

INSERT INTO `value_object` (`ID_value`, `value`) VALUES
(8, 12);

-- --------------------------------------------------------

--
-- Структура таблиці `value_skill`
--

CREATE TABLE `value_skill` (
  `ID_value` int(11) NOT NULL,
  `value` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `value_skill`
--

INSERT INTO `value_skill` (`ID_value`, `value`) VALUES
(8, 200);

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `character`
--
ALTER TABLE `character`
  ADD PRIMARY KEY (`ID_character`),
  ADD KEY `id_characteristics` (`id_characteristics`),
  ADD KEY `id_name` (`id_name`);

--
-- Індекси таблиці `characteristic_character`
--
ALTER TABLE `characteristic_character`
  ADD PRIMARY KEY (`ID_characteristic`),
  ADD KEY `id_name` (`id_name`),
  ADD KEY `id_name_character_one` (`id_name_character_one`);

--
-- Індекси таблиці `characteristic_mob`
--
ALTER TABLE `characteristic_mob`
  ADD PRIMARY KEY (`ID_characteristic`),
  ADD KEY `id_name` (`id_name`),
  ADD KEY `id_characteristic_mob_one` (`id_name_mob_one`),
  ADD KEY `id_name_mob_one` (`id_name_mob_one`);

--
-- Індекси таблиці `characteristic_object`
--
ALTER TABLE `characteristic_object`
  ADD PRIMARY KEY (`ID_characteristic`),
  ADD KEY `id_name` (`id_name`),
  ADD KEY `id_name_object_one` (`id_name_object_one`);

--
-- Індекси таблиці `characteristic_skil`
--
ALTER TABLE `characteristic_skil`
  ADD PRIMARY KEY (`ID_characteristic`),
  ADD KEY `id_name` (`id_name`),
  ADD KEY `id_name_skill_one` (`id_name_skill_one`);

--
-- Індекси таблиці `killed_mobs`
--
ALTER TABLE `killed_mobs`
  ADD PRIMARY KEY (`ID_killed_mobs`),
  ADD KEY `id_value` (`id_value`),
  ADD KEY `id_name_mobs` (`id_name_mobs`);

--
-- Індекси таблиці `killed_mobs_value`
--
ALTER TABLE `killed_mobs_value`
  ADD PRIMARY KEY (`ID_killed_mobs_value`);

--
-- Індекси таблиці `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`ID_level`);

--
-- Індекси таблиці `mobi`
--
ALTER TABLE `mobi`
  ADD PRIMARY KEY (`ID_mobi`),
  ADD KEY `id_characteristics` (`id_characteristics`),
  ADD KEY `id_name` (`id_name`),
  ADD KEY `id_placing` (`id_placing`);

--
-- Індекси таблиці `namecharacteristic_character`
--
ALTER TABLE `namecharacteristic_character`
  ADD PRIMARY KEY (`ID_name`),
  ADD KEY `id_value_character` (`id_value_character`);

--
-- Індекси таблиці `name_character`
--
ALTER TABLE `name_character`
  ADD PRIMARY KEY (`ID_name`);

--
-- Індекси таблиці `name_characteristic_mob`
--
ALTER TABLE `name_characteristic_mob`
  ADD PRIMARY KEY (`ID_name`),
  ADD KEY `id_value_characteristic` (`id_value_characteristic`);

--
-- Індекси таблиці `name_characteristic_object`
--
ALTER TABLE `name_characteristic_object`
  ADD PRIMARY KEY (`ID_name`),
  ADD KEY `id_value` (`id_value`);

--
-- Індекси таблиці `name_characteristic_skil`
--
ALTER TABLE `name_characteristic_skil`
  ADD PRIMARY KEY (`ID_name`),
  ADD KEY `id_value` (`id_value`);

--
-- Індекси таблиці `name_mob`
--
ALTER TABLE `name_mob`
  ADD PRIMARY KEY (`ID_name`);

--
-- Індекси таблиці `name_object`
--
ALTER TABLE `name_object`
  ADD PRIMARY KEY (`ID_name`);

--
-- Індекси таблиці `name_skill`
--
ALTER TABLE `name_skill`
  ADD PRIMARY KEY (`ID_name`);

--
-- Індекси таблиці `object`
--
ALTER TABLE `object`
  ADD PRIMARY KEY (`ID_object`),
  ADD KEY `id_name` (`id_name`),
  ADD KEY `id_characteristics` (`id_characteristics`);

--
-- Індекси таблиці `placing`
--
ALTER TABLE `placing`
  ADD PRIMARY KEY (`ID_placing`),
  ADD KEY `id_name_plasing_mob_one` (`id_name_plasing_mob_one`);

--
-- Індекси таблиці `progress`
--
ALTER TABLE `progress`
  ADD PRIMARY KEY (`ID_progress`);

--
-- Індекси таблиці `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`ID_skill`),
  ADD KEY `skill_ibfk_1` (`id_characteristics`),
  ADD KEY `id_name` (`id_name`),
  ADD KEY `id_name_2` (`id_name`);

--
-- Індекси таблиці `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`ID_statistics`),
  ADD KEY `id_character` (`id_character`),
  ADD KEY `id_killed_mobs` (`id_killed_mobs`),
  ADD KEY `id_level` (`id_level`),
  ADD KEY `id_progress` (`id_progress`),
  ADD KEY `id_users` (`id_users`),
  ADD KEY `id_mobi` (`id_mobi`),
  ADD KEY `id_object` (`id_object`),
  ADD KEY `id_skill` (`id_skill`);

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID_users`);

--
-- Індекси таблиці `value_character`
--
ALTER TABLE `value_character`
  ADD PRIMARY KEY (`ID_value`);

--
-- Індекси таблиці `value_mob`
--
ALTER TABLE `value_mob`
  ADD PRIMARY KEY (`ID_value`);

--
-- Індекси таблиці `value_object`
--
ALTER TABLE `value_object`
  ADD PRIMARY KEY (`ID_value`);

--
-- Індекси таблиці `value_skill`
--
ALTER TABLE `value_skill`
  ADD PRIMARY KEY (`ID_value`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `character`
--
ALTER TABLE `character`
  MODIFY `ID_character` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `characteristic_character`
--
ALTER TABLE `characteristic_character`
  MODIFY `ID_characteristic` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `characteristic_mob`
--
ALTER TABLE `characteristic_mob`
  MODIFY `ID_characteristic` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблиці `characteristic_object`
--
ALTER TABLE `characteristic_object`
  MODIFY `ID_characteristic` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `characteristic_skil`
--
ALTER TABLE `characteristic_skil`
  MODIFY `ID_characteristic` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблиці `killed_mobs`
--
ALTER TABLE `killed_mobs`
  MODIFY `ID_killed_mobs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `killed_mobs_value`
--
ALTER TABLE `killed_mobs_value`
  MODIFY `ID_killed_mobs_value` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `level`
--
ALTER TABLE `level`
  MODIFY `ID_level` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `mobi`
--
ALTER TABLE `mobi`
  MODIFY `ID_mobi` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблиці `namecharacteristic_character`
--
ALTER TABLE `namecharacteristic_character`
  MODIFY `ID_name` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `name_character`
--
ALTER TABLE `name_character`
  MODIFY `ID_name` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `name_characteristic_mob`
--
ALTER TABLE `name_characteristic_mob`
  MODIFY `ID_name` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблиці `name_characteristic_object`
--
ALTER TABLE `name_characteristic_object`
  MODIFY `ID_name` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `name_characteristic_skil`
--
ALTER TABLE `name_characteristic_skil`
  MODIFY `ID_name` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `name_mob`
--
ALTER TABLE `name_mob`
  MODIFY `ID_name` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `name_object`
--
ALTER TABLE `name_object`
  MODIFY `ID_name` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `name_skill`
--
ALTER TABLE `name_skill`
  MODIFY `ID_name` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `object`
--
ALTER TABLE `object`
  MODIFY `ID_object` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблиці `placing`
--
ALTER TABLE `placing`
  MODIFY `ID_placing` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `progress`
--
ALTER TABLE `progress`
  MODIFY `ID_progress` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблиці `skill`
--
ALTER TABLE `skill`
  MODIFY `ID_skill` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблиці `statistics`
--
ALTER TABLE `statistics`
  MODIFY `ID_statistics` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `ID_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `value_character`
--
ALTER TABLE `value_character`
  MODIFY `ID_value` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблиці `value_mob`
--
ALTER TABLE `value_mob`
  MODIFY `ID_value` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблиці `value_object`
--
ALTER TABLE `value_object`
  MODIFY `ID_value` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблиці `value_skill`
--
ALTER TABLE `value_skill`
  MODIFY `ID_value` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `character`
--
ALTER TABLE `character`
  ADD CONSTRAINT `character_ibfk_1` FOREIGN KEY (`id_characteristics`) REFERENCES `characteristic_character` (`id_name_character_one`),
  ADD CONSTRAINT `character_ibfk_2` FOREIGN KEY (`id_name`) REFERENCES `name_character` (`ID_name`);

--
-- Обмеження зовнішнього ключа таблиці `characteristic_character`
--
ALTER TABLE `characteristic_character`
  ADD CONSTRAINT `characteristic_character_ibfk_1` FOREIGN KEY (`id_name`) REFERENCES `namecharacteristic_character` (`ID_name`),
  ADD CONSTRAINT `characteristic_character_ibfk_2` FOREIGN KEY (`id_name_character_one`) REFERENCES `name_character` (`ID_name`);

--
-- Обмеження зовнішнього ключа таблиці `characteristic_mob`
--
ALTER TABLE `characteristic_mob`
  ADD CONSTRAINT `characteristic_mob_ibfk_1` FOREIGN KEY (`id_name`) REFERENCES `name_characteristic_mob` (`ID_name`),
  ADD CONSTRAINT `characteristic_mob_ibfk_3` FOREIGN KEY (`id_name_mob_one`) REFERENCES `name_mob` (`ID_name`);

--
-- Обмеження зовнішнього ключа таблиці `characteristic_object`
--
ALTER TABLE `characteristic_object`
  ADD CONSTRAINT `characteristic_object_ibfk_1` FOREIGN KEY (`id_name`) REFERENCES `name_characteristic_object` (`ID_name`),
  ADD CONSTRAINT `characteristic_object_ibfk_2` FOREIGN KEY (`id_name_object_one`) REFERENCES `name_object` (`ID_name`);

--
-- Обмеження зовнішнього ключа таблиці `characteristic_skil`
--
ALTER TABLE `characteristic_skil`
  ADD CONSTRAINT `characteristic_skil_ibfk_1` FOREIGN KEY (`id_name`) REFERENCES `name_characteristic_skil` (`ID_name`),
  ADD CONSTRAINT `characteristic_skil_ibfk_2` FOREIGN KEY (`id_name_skill_one`) REFERENCES `name_skill` (`ID_name`);

--
-- Обмеження зовнішнього ключа таблиці `killed_mobs`
--
ALTER TABLE `killed_mobs`
  ADD CONSTRAINT `killed_mobs_ibfk_1` FOREIGN KEY (`id_value`) REFERENCES `killed_mobs_value` (`ID_killed_mobs_value`),
  ADD CONSTRAINT `killed_mobs_ibfk_2` FOREIGN KEY (`id_name_mobs`) REFERENCES `name_mob` (`ID_name`);

--
-- Обмеження зовнішнього ключа таблиці `mobi`
--
ALTER TABLE `mobi`
  ADD CONSTRAINT `mobi_ibfk_1` FOREIGN KEY (`id_characteristics`) REFERENCES `characteristic_mob` (`id_name_mob_one`),
  ADD CONSTRAINT `mobi_ibfk_2` FOREIGN KEY (`id_name`) REFERENCES `name_mob` (`ID_name`),
  ADD CONSTRAINT `mobi_ibfk_3` FOREIGN KEY (`id_placing`) REFERENCES `placing` (`id_name_plasing_mob_one`);

--
-- Обмеження зовнішнього ключа таблиці `namecharacteristic_character`
--
ALTER TABLE `namecharacteristic_character`
  ADD CONSTRAINT `namecharacteristic_character_ibfk_1` FOREIGN KEY (`id_value_character`) REFERENCES `value_character` (`ID_value`);

--
-- Обмеження зовнішнього ключа таблиці `name_characteristic_mob`
--
ALTER TABLE `name_characteristic_mob`
  ADD CONSTRAINT `name_characteristic_mob_ibfk_1` FOREIGN KEY (`id_value_characteristic`) REFERENCES `value_mob` (`ID_value`);

--
-- Обмеження зовнішнього ключа таблиці `name_characteristic_object`
--
ALTER TABLE `name_characteristic_object`
  ADD CONSTRAINT `name_characteristic_object_ibfk_1` FOREIGN KEY (`id_value`) REFERENCES `value_object` (`ID_value`);

--
-- Обмеження зовнішнього ключа таблиці `name_characteristic_skil`
--
ALTER TABLE `name_characteristic_skil`
  ADD CONSTRAINT `name_characteristic_skil_ibfk_1` FOREIGN KEY (`id_value`) REFERENCES `value_skill` (`ID_value`);

--
-- Обмеження зовнішнього ключа таблиці `object`
--
ALTER TABLE `object`
  ADD CONSTRAINT `object_ibfk_1` FOREIGN KEY (`id_name`) REFERENCES `name_object` (`ID_name`),
  ADD CONSTRAINT `object_ibfk_2` FOREIGN KEY (`id_characteristics`) REFERENCES `characteristic_object` (`id_name_object_one`);

--
-- Обмеження зовнішнього ключа таблиці `placing`
--
ALTER TABLE `placing`
  ADD CONSTRAINT `placing_ibfk_1` FOREIGN KEY (`id_name_plasing_mob_one`) REFERENCES `name_mob` (`ID_name`);

--
-- Обмеження зовнішнього ключа таблиці `skill`
--
ALTER TABLE `skill`
  ADD CONSTRAINT `skill_ibfk_1` FOREIGN KEY (`id_characteristics`) REFERENCES `characteristic_skil` (`id_name_skill_one`),
  ADD CONSTRAINT `skill_ibfk_2` FOREIGN KEY (`id_name`) REFERENCES `name_skill` (`ID_name`);

--
-- Обмеження зовнішнього ключа таблиці `statistics`
--
ALTER TABLE `statistics`
  ADD CONSTRAINT `statistics_ibfk_1` FOREIGN KEY (`id_character`) REFERENCES `character` (`ID_character`),
  ADD CONSTRAINT `statistics_ibfk_2` FOREIGN KEY (`id_killed_mobs`) REFERENCES `killed_mobs` (`ID_killed_mobs`),
  ADD CONSTRAINT `statistics_ibfk_3` FOREIGN KEY (`id_level`) REFERENCES `level` (`ID_level`),
  ADD CONSTRAINT `statistics_ibfk_4` FOREIGN KEY (`id_progress`) REFERENCES `progress` (`ID_progress`),
  ADD CONSTRAINT `statistics_ibfk_6` FOREIGN KEY (`id_users`) REFERENCES `users` (`ID_users`),
  ADD CONSTRAINT `statistics_ibfk_7` FOREIGN KEY (`id_mobi`) REFERENCES `mobi` (`id_name`),
  ADD CONSTRAINT `statistics_ibfk_8` FOREIGN KEY (`id_object`) REFERENCES `object` (`id_name`),
  ADD CONSTRAINT `statistics_ibfk_9` FOREIGN KEY (`id_skill`) REFERENCES `skill` (`id_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
