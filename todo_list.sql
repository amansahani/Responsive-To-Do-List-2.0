
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `todos` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL
);



INSERT INTO `todos` (`id`, `title`, `description`, `date`, `user_id`) VALUES
(1, 'Create a PHP Program', 'In this PHP program I will be create a Todo List with Multi User registration system. It means Multiple user can register their account and add todos.', '2022-12-15', 1);


CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
);



INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'Mr.Nobody@gmail.com', '0c12278389532e91c601af4c8adef7fc'),



ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `todos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

