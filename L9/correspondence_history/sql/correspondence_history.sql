-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Лис 12 2022 р., 23:03
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
-- База даних: `correspondence_history`
--

-- --------------------------------------------------------

--
-- Структура таблиці `correspondence_history`
--

CREATE TABLE `correspondence_history` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `status` varchar(20) NOT NULL,
  `from_whom_/_for_whom` varchar(50) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `correspondence_history`
--

INSERT INTO `correspondence_history` (`id`, `date`, `time`, `status`, `from_whom_/_for_whom`, `text`) VALUES
(1, '2022-11-07', '04:04:00', 'Відправлене', 'Helli', 'Hello'),
(2, '2022-11-07', '09:00:37', 'Отримане', 'Helli', 'Hello!');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `correspondence_history`
--
ALTER TABLE `correspondence_history`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `correspondence_history`
--
ALTER TABLE `correspondence_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
