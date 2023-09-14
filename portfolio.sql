-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 14 Sep 2023 pada 15.33
-- Versi server: 8.0.34
-- Versi PHP: 8.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'app'),
(2, 'card'),
(3, 'web');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE `contact` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`) VALUES
(4, 'Nita Imut', 'nita@gmail.com', 'hahaha', 'hello');

-- --------------------------------------------------------

--
-- Struktur dari tabel `counter`
--

CREATE TABLE `counter` (
  `id` int NOT NULL,
  `icon` varchar(255) NOT NULL,
  `pre` int NOT NULL,
  `post` int NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `counter`
--

INSERT INTO `counter` (`id`, `icon`, `pre`, `post`, `title`) VALUES
(1, 'bi bi-emoji-smile', 0, 234, 'Happy Clients'),
(2, 'bi bi-emoji-smile', 500, 1000, 'Students'),
(3, 'bi bi-emoji-smile', 0, 15, 'Assistents'),
(5, 'bi bi-emoji-smile', 0, 234, 'Classes');

-- --------------------------------------------------------

--
-- Struktur dari tabel `details`
--

CREATE TABLE `details` (
  `company` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `details`
--

INSERT INTO `details` (`company`, `url`, `id`) VALUES
('Mkaidev', 'https://mkaidev-mern-portfolio.vercel.app', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `client` varchar(255) NOT NULL,
  `project_date` date NOT NULL,
  `url` varchar(255) NOT NULL,
  `text` mediumtext NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `portfolio`
--

INSERT INTO `portfolio` (`id`, `title`, `category`, `client`, `project_date`, `url`, `text`, `image`) VALUES
(1, 'Project 1', '1', 'Utha', '2023-06-15', 'https://mkai-lagu.netlify.app', 'Music player app', 'assets/img/portfolio/app-01.png'),
(2, 'Project 2', '2', 'Nabil', '2023-06-15', 'https://mkai-undangan.netlify.app', 'Wedding Invitation with postgres database', 'assets/img/portfolio/card-01.png'),
(3, 'Project 3', '3', 'Utha', '2023-07-25', 'https://blogci4.000webhostapp.com', 'Blog with Code Igniter 4', 'assets/img/portfolio/web-01.png'),
(4, 'Project 4', '1', 'Nita', '2023-07-17', 'https://mkai-gen.vercel.app', 'making AI for next Generation', 'assets/img/portfolio/app-02.png'),
(5, 'Project 5', '2', 'Nita', '2023-07-17', 'https://wedding-style.netlify.app', 'Wedding Online with skin color light dark theme', 'assets/img/portfolio/card-02.png'),
(6, 'Project 6', '3', 'Utha', '2023-08-17', 'https://eshop-online-77vr.vercel.app', 'Web Shopping online', 'assets/img/portfolio/web-02.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `quets`
--

CREATE TABLE `quets` (
  `id` int NOT NULL,
  `quet` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `quets`
--

INSERT INTO `quets` (`id`, `quet`, `name`, `title`) VALUES
(1, 'There are many variations of Accumsan lectus at habitant potenti mauris elementum. Vestibulum consequat ac nullam dictum duis. Interdum sociosqu natoque condimentum sem dignissim consequat purus ultrices accumsan fermentum. Dignissim nascetur ac rhoncus volutpat dapibus vehicula sodales dictumst elit. Commodo nulla et placerat arcu lacinia si. Malesuada erat habitant tempus tristique maecenas dictum magnis. Vehicula faucibus dolor lacinia luctus nostra commodo ante.', 'Utha', 'CEO'),
(2, 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Justo vel augue tempor nostra scelerisque nisl faucibus mus dis placerat. Curabitur tristique laoreet dis egestas elit diam aenean eget hac. Parturient inceptos orci nulla nisl id natoque condimentum. Vestibulum non iaculis lacus sem maecenas elementum nostra nisi dapibus litora.', 'Nita', 'BTech'),
(3, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Nabil', 'BCA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `services`
--

CREATE TABLE `services` (
  `id` int NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `services`
--

INSERT INTO `services` (`id`, `icon`, `title`, `text`) VALUES
(1, 'bi bi-alarm-fill', 'Laoreet ridiculus', 'Tortor dui sagittis conubia cubilia efficitur montes letius. Sem duis aliquet mattis habitant vivamus mollis orci in lobortis dis rhoncus. Dictumst duis litora risus parturient cursus. Vel litora tellus pellentesque rutrum suscipit dictum pharetra.'),
(2, 'bi bi-alarm-fill', 'Semper odio', 'Sed blandit phasellus arcu venenatis pede eros quam. Hendrerit viverra fermentum cras vel scelerisque fames. A turpis vehicula sollicitudin nec urna viverra. Diam convallis penatibus habitant hendrerit augue congue blandit sagittis sem.'),
(3, 'bi bi-alarm-fill', 'Dictum vivamus', 'Litora ut urna in pulvinar diam aptent auctor non magna risus. Penatibus habitasse praesent imperdiet eros purus habitant euismod senectus. Hendrerit proin in euismod leo placerat metus et egestas parturient finibus.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `skills`
--

CREATE TABLE `skills` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `skills`
--

INSERT INTO `skills` (`id`, `title`, `icon`, `color`) VALUES
(1, 'Lorem Ipsum\r\n', 'ri-store-line', 'ffbb2c'),
(2, 'Dolor Sitema\r\n', 'ri-bar-chart-box-line', '4CEB95'),
(3, 'Sed perspiciatis\r\n', 'ri-bar-chart-box-line', 'E75C54'),
(4, 'Magni Dolores', 'ri-bar-chart-box-line', 'ffbb2c');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `facebook` text NOT NULL,
  `twitter` text NOT NULL,
  `instagram` text NOT NULL,
  `youtube` text NOT NULL,
  `linkedin` text NOT NULL,
  `github` text NOT NULL,
  `slogan` text NOT NULL,
  `birthday` date NOT NULL,
  `website` text NOT NULL,
  `phone` text NOT NULL,
  `city` text NOT NULL,
  `age` text NOT NULL,
  `degree` text NOT NULL,
  `freelance` int NOT NULL,
  `certification` text NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `title`, `place`, `facebook`, `twitter`, `instagram`, `youtube`, `linkedin`, `github`, `slogan`, `birthday`, `website`, `phone`, `city`, `age`, `degree`, `freelance`, `certification`, `address`) VALUES
(1, 'Mkai Ey.', 'mkaiey', 'mkaidev88@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Web development', 'world wide web', 'facebook', 'twitter', 'instagram', 'youtube', 'linkedin', 'github', 'do what you want to do', '2005-04-28', 'https://mkaidev-mern-portfolio.vercel.app', '08223456789', 'Mozambiq', '-', '-', 1, 'MIT', '88, Mozambiq, Africa');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `quets`
--
ALTER TABLE `quets`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `details`
--
ALTER TABLE `details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `quets`
--
ALTER TABLE `quets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `services`
--
ALTER TABLE `services`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
