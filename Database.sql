-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Хост: 10.0.2.14
-- Время создания: Апр 06 2018 г., 11:19
-- Версия сервера: 5.6.32-78.0-log
-- Версия PHP: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `a228090_1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `bots`
--

CREATE TABLE `bots` (
  `id` int(255) NOT NULL,
  `bothwid` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ipaddress` varchar(75) CHARACTER SET utf8 NOT NULL,
  `country` int(5) NOT NULL,
  `installdate` int(50) NOT NULL,
  `lastresponse` int(50) NOT NULL,
  `currenttask` int(255) NOT NULL,
  `operatingsys` varchar(300) CHARACTER SET utf8 NOT NULL,
  `botversion` varchar(30) CHARACTER SET utf8 NOT NULL,
  `privileges` varchar(5) CHARACTER SET utf8 NOT NULL,
  `installationpath` text CHARACTER SET utf8 NOT NULL,
  `computername` text CHARACTER SET utf8 NOT NULL,
  `lastreboot` text CHARACTER SET utf8 NOT NULL,
  `mark` int(1) NOT NULL,
  `cpu` text CHARACTER SET utf8 NOT NULL,
  `gpu` text CHARACTER SET utf8 NOT NULL,
  `enabled` int(11) NOT NULL,
  `hash` int(11) NOT NULL,
  `antivirus` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `plogs`
--

CREATE TABLE `plogs` (
  `id` int(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `ipaddress` varchar(75) NOT NULL,
  `action` text NOT NULL,
  `date` int(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(255) NOT NULL,
  `knock` int(10) NOT NULL,
  `dead` int(10) NOT NULL,
  `gate_status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `knock`, `dead`, `gate_status`) VALUES
(1, 5, 7, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `tasks`
--

CREATE TABLE `tasks` (
  `id` int(255) NOT NULL,
  `task` varchar(100) NOT NULL,
  `params` text NOT NULL,
  `filters` text NOT NULL,
  `executions` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `status` int(1) NOT NULL,
  `date` int(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `tasks_completed`
--

CREATE TABLE `tasks_completed` (
  `id` int(255) NOT NULL,
  `bothwid` varchar(100) NOT NULL,
  `taskid` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `chatid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `bots`
--
ALTER TABLE `bots`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `plogs`
--
ALTER TABLE `plogs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tasks_completed`
--
ALTER TABLE `tasks_completed`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `bots`
--
ALTER TABLE `bots`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `plogs`
--
ALTER TABLE `plogs`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `tasks_completed`
--
ALTER TABLE `tasks_completed`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
