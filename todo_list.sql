
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `todos` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `todos` (`id`, `title`, `description`, `date`, `user_id`) VALUES
(1, 'Create a PHP Program', 'In this PHP program I will be create a Todo List with Multi User registration system. It means Multiple user can register their account and add todos.', '2021-09-15', 1),
(2, 'Upload a YouTube Video', 'Just for testing.....', '2021-09-15', 1),
(3, 'Newsapp for video', 'This is a basic news app and here all data from api.', '2021-09-15', 1),
(4, 'Aliquam feugiat sapien in turpis dapibus, sit amet', 'Donec nec velit et velit scelerisque vehicula eget non sem.\r\nMauris ac purus nec nisi bibendum accumsan vel sit amet lectus.', '2021-09-15', 1),
(5, 'Second user todo', 'here are some descriptions', '2021-09-15', 4);



CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'purecodingofficial@gmail.com', '0139a3c5cf42394be982e766c93f5ed0'),
(3, 'musabwebdev@gmail.com', 'b4be228cfaab078906e7a1abc9b63f19'),
(4, 'test@gmail.com', '098f6bcd4621d373cade4e832627b4f6');


ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `todos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

