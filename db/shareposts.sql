-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 11, 2020 at 06:08 AM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.3.16-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shareposts`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`) VALUES
(3, 1, 'Post One', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisi quis eleifend quam adipiscing vitae proin. Bibendum enim facilisis gravida neque. Et malesuada fames ac turpis. Auctor neque vitae tempus quam pellentesque nec nam aliquam sem. Et netus et malesuada fames ac turpis egestas sed. Tempor orci dapibus ultrices in iaculis nunc sed. Eu volutpat odio facilisis mauris sit amet. Vel fringilla est ullamcorper eget. Metus vulputate eu scelerisque felis. Pellentesque eu tincidunt tortor aliquam nulla facilisi cras fermentum odio. At elementum eu facilisis sed odio.', '2020-04-11 09:41:43'),
(4, 1, 'Post Two', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisi quis eleifend quam adipiscing vitae proin. Bibendum enim facilisis gravida neque. Et malesuada fames ac turpis. Auctor neque vitae tempus quam pellentesque nec nam aliquam sem. Et netus et malesuada fames ac turpis egestas sed. Tempor orci dapibus ultrices in iaculis nunc sed. Eu volutpat odio facilisis mauris sit amet. Vel fringilla est ullamcorper eget. Metus vulputate eu scelerisque felis. Pellentesque eu tincidunt tortor aliquam nulla facilisi cras fermentum odio. At elementum eu facilisis sed odio.', '2020-04-11 09:45:15'),
(5, 2, 'Post Three', 'Dictum sit amet justo donec enim diam vulputate ut. Cursus eget nunc scelerisque viverra mauris. Urna cursus eget nunc scelerisque viverra mauris in aliquam sem. Aliquet nibh praesent tristique magna sit amet. Ut faucibus pulvinar elementum integer enim neque volutpat ac tincidunt. Adipiscing at in tellus integer feugiat scelerisque. Tortor posuere ac ut consequat semper viverra nam libero. Libero enim sed faucibus turpis in eu mi. Dui id ornare arcu odio. Amet aliquam id diam maecenas ultricies mi. Posuere morbi leo urna molestie at elementum eu. Orci ac auctor augue mauris augue neque gravida in fermentum. Ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at. Laoreet suspendisse interdum consectetur libero id faucibus. Justo donec enim diam vulputate ut pharetra.', '2020-04-11 11:26:58'),
(6, 2, 'Post Four', 'Dictum sit amet justo donec enim diam vulputate ut. Cursus eget nunc scelerisque viverra mauris. Urna cursus eget nunc scelerisque viverra mauris in aliquam sem. Aliquet nibh praesent tristique magna sit amet. Ut faucibus pulvinar elementum integer enim neque volutpat ac tincidunt. Adipiscing at in tellus integer feugiat scelerisque. Tortor posuere ac ut consequat semper viverra nam libero. Libero enim sed faucibus turpis in eu mi. Dui id ornare arcu odio. Amet aliquam id diam maecenas ultricies mi. Posuere morbi leo urna molestie at elementum eu. Orci ac auctor augue mauris augue neque gravida in fermentum. Ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at. Laoreet suspendisse interdum consectetur libero id faucibus. Justo donec enim diam vulputate ut pharetra.', '2020-04-11 11:27:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$wZbCxSJ9vScCD7sjOL4rlO9pjwmZHyq.K9rcnvOoy0iq/GQLQx1F6', '2020-04-10 15:10:01'),
(2, 'Abdullah', 'abdullah@gmail.com', '$2y$10$OD.OjFi830diHr7MDo949OgroXFeQeBgazrCMsUjEZY59tjcbR8cK', '2020-04-10 15:11:10'),
(3, 'John', 'john@doe.com', '$2y$10$evd1XwRKTI9Db55CL2Bh9.0W2sG6PUZ/KA2Ulxf/.hu3irGBH5O.2', '2020-04-10 15:20:06'),
(4, 'John Doe', 'jdoe@gmail.com', '$2y$10$.QwOws.WhFhhdAze6qc1muSkYT6j8roU0yHyeb1GQq0szZIk5Gr3S', '2020-04-10 15:48:06'),
(5, 'Jane Doe', 'jane@doe.com', '$2y$10$9qUcxdN2k1NKwoGwaDpAG.YpwYKJGP3MSryvq31kcIkaJ5WPItp42', '2020-04-10 16:02:45'),
(6, 'Jane Doe', 'janeDoe@gmail.com', '$2y$10$b4K2i0Jp3pO6VhKaG8TA9OWy0T85YBB1G38Ui.8fOggaGt/9oG8jm', '2020-04-10 16:03:48'),
(7, 'Abdul Karim', 'karim@gmail.com', '$2y$10$DKaFg0Pi7C3ebcnIktu9KO.xOlNTlj26E4nZNrTNtxhh2h3dOU072', '2020-04-10 19:56:05'),
(8, 'Abu Karim', 'abu@karim.com', '$2y$10$t50bzqDGhDF.oldHmCO1xOglMZwR6sV6vW6rrBfGyrTO/bedwU9o.', '2020-04-10 19:58:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
