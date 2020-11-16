-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Ноя 16 2020 г., 15:06
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
-- Структура таблицы `col`
--

CREATE TABLE `col` (
  `id` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `subdivision_name` text NOT NULL,
  `birth_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `col`
--

INSERT INTO `col` (`id`, `fullname`, `subdivision_name`, `birth_date`) VALUES
(2, 'Иванов Иван Иванович', 'склад', '2020-11-16'),
(3, 'Неизвестная Зинаида Петровна', 'администрация', '2020-11-15'),
(4, 'Петров Петр Петрович', 'бухгалтерия', '2020-11-17'),
(5, 'Путин Владимир Владимирович', 'бухгалтерия', '2020-11-18');

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
-- Индексы таблицы `col`
--
ALTER TABLE `col`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT для таблицы `col`
--
ALTER TABLE `col`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `learning`
--
ALTER TABLE `learning`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `col`
--
ALTER TABLE `col`
  ADD CONSTRAINT `col_ibfk_1` FOREIGN KEY (`id`) REFERENCES `learning` (`col_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
