-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2024 at 09:38 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinnamon`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `message`) VALUES
(1, 'Pasan Pethangoda', 'This application was very useful for identify the Cinnamon Diseases'),
(2, 'Nimesh Alawatta\r\n ', 'I Identified Cinnamon Diseases from using this Application  '),
(3, 'Thulitha Theekshana', 'This system was very helpful to our harvest'),
(9, 'Janitha Senevirathna', 'Highly Recommended '),
(33, 'Nimendra Kariyawasam', 'This application is Very user-friendly. '),
(39, 'Deepesh Jayasekara', 'Dr. CINNAMON System Highly Recommended');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `client_name` varchar(255) DEFAULT NULL,
  `client_email` varchar(255) DEFAULT NULL,
  `client_address` varchar(255) DEFAULT NULL,
  `client_mobile` varchar(20) DEFAULT NULL,
  `card_number` varchar(20) DEFAULT NULL,
  `card_expiry` varchar(7) DEFAULT NULL,
  `card_cvv` varchar(4) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `quantity`, `client_name`, `client_email`, `client_address`, `client_mobile`, `card_number`, `card_expiry`, `card_cvv`, `price`) VALUES
(30, 5, 4, 'Nimesh Alawatta', 'nimeshalawatta@gmail.com', '97/1 Kithumalpitiya, Galle', '0761334569', '1234 4567 6789 3456', '12/23', '890', '2000.00'),
(31, 5, 2, 'Pasan Pethangoda', 'pasanpethangoda20@gmail.com', 'No 47/2 1st Lane Makuluwa, Galle', '0761775731', '1234 4567 7786 8907', '12/24', '123', '1000.00'),
(32, 1, 4, 'Thulitha Senevirathna', 'thulithasenevirathna@gmail.com', '88/2 Dangedara Road, Galle', '0761237865', '1235 8969 5869 4857 ', '12/24', '897', '2000.00'),
(35, 1, 2, 'Janitha Senevirathna', 'janithasenevirathna@gmail.com', 'No 123 1st Lane Homagama, Colombo ', '0771775633', '1232 4563 5674 6578', '12/25', '786', '1000.00'),
(36, 1, 2, 'Deepesh Jayasekara', 'pasanpethangoda20@gmail.com', 'No 47/2 1st Lane, Makuluwa, Galle', '0761775731', '1234 5674 4567 3456', '02/25', '098', '1000.00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`) VALUES
(1, 'Cinnamon (U)', 'This Product is Best Choose for Diseases ', '500.00', 'C-U.png'),
(3, 'Cinnamon Supper', 'Best Product for Cinnamon Harvest', '200.00', 'C-Super.png'),
(5, 'UREA', 'Best UREA Product for Cinnamon Harvest', '500.00', 'Nitrogen.png'),
(16, 'Baurs Super Veg ', 'Good Product for Cinnamon Harvest', '1000.00', 'Fertilizer_img.png'),
(18, 'NE Super Basal', 'Protect your cinnamon harvest from diseases', '1500.00', 'NE-Super-Basal-.png'),
(19, 'U-834', 'Good Product for Cinnamon Diseases', '1200.00', 'U-834.png'),
(20, 'Cinnamon (A)', 'Use this one for protect your Cinnamon Plantation ', '800.00', 'Untitled_design.png'),
(24, 'Baurs Special Cinnamon ', 'High Quality Fertilizer', '1375.00', 'Special_Cinnamon.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
