-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Ноя 16 2020 г., 15:07
-- Версия сервера: 10.1.47-MariaDB-0ubuntu0.18.04.1
-- Версия PHP: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `three`
--

-- --------------------------------------------------------

--
-- Структура таблицы `learning`
--

CREATE TABLE `learning` (
  `id` int(11) NOT NULL,
  `col_id` int(11) NOT NULL,
  `course_name` text NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `learning`
--

INSERT INTO `learning` (`id`, `col_id`, `course_name`, `score`) VALUES
(1, 2, 'excel', 81),
(2, 3, 'word', 79),
(3, 4, 'word', 95),
(4, 5, 'excel', 95);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `learning`
--
ALTER TABLE `learning`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `col_id` (`col_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `learning`
--
ALTER TABLE `learning`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
