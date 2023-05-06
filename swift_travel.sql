-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2021 at 05:55 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swift_travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `guide`
--

CREATE TABLE `guide` (
  `g_iid` int(10) NOT NULL,
  `g_name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `d_id` int(10) NOT NULL,
  `g_avail` varchar(255) NOT NULL,
  `g_pic` varchar(255) DEFAULT NULL,
  `Tourist_Spotd_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

CREATE TABLE `insurance` (
  `user_id` int(10) DEFAULT NULL,
  `insurance_id` int(10) NOT NULL,
  `ins_category` varchar(255) NOT NULL,
  `user_profileuser_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `packing_tips`
--

CREATE TABLE `packing_tips` (
  `d_id` int(10) NOT NULL,
  `description` varchar(255) NOT NULL,
  `Tourist_Spotd_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `places_to_visit`
--

CREATE TABLE `places_to_visit` (
  `d_id` int(10) DEFAULT NULL,
  `place_name` varchar(255) NOT NULL,
  `place_pic` varchar(255) DEFAULT NULL,
  `Tourist_Spotd_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `places_to_visit`
--

INSERT INTO `places_to_visit` (`d_id`, `place_name`, `place_pic`, `Tourist_Spotd_id`) VALUES
(1, 'Lalbagh Fort', './image/lalbag.jpg', 1),
(1, 'Ahsan Manzil', './image/ahsan_monjil.jpg', 1),
(1, 'Sonargaon', './image/panam_city.jpg', 1),
(1, 'Bangladesh National Museum', './image/national_mus.jpg', 1),
(2, 'Bangabandhu Sheikh Mujib Safari Park ', './image/Bangabandhu_Sheikh_Mujib_Safari_Park.jpg', 2),
(2, 'Himchari', './image/Himchari.jpg', 2),
(2, 'Moheshkhali Island', './image/Moheshkhali_Island.jpg', 2),
(2, 'Inani Beach', './image/Inani Beach.jpg', 2),
(3, 'Nafakhum Waterfall', './image/Nafakhum_Waterfall.jpg', 3),
(3, 'Nilgiri', './image/Nilgiri.jpg', 3),
(3, 'Keokradong', './image/keokradong_hill.jpg', 3),
(3, 'Sangu River', './image/Sangu_River.jpg', 3),
(4, 'Ratargul Swamp Forest', './image/Ratargul_Swamp_Forest.jpg', 4),
(4, 'Sreemangal', './image/Sreemangal_tea_garden.jpg', 4),
(4, 'Bisnakandi', './image/Bisnakandi.jpg', 4),
(4, 'Hum Hum Water Falls', './image/Hum_Hum_Water_Falls.jpg', 4),
(5, 'Saint Martin Island ', './image/Saint_Martin_Island.jpg', 5),
(5, 'Chhera Dwip', './image/Chhera_Dwip.jpg', 5),
(6, 'Patenga beach', './image/Patenga_beach.jpg', 6),
(6, 'Battali hills park', './image/Battali_hills_park.jpg', 6),
(6, 'Shrine of Bayazid Bostami', './image/Shrine_of_Bayazid_Bostami.jpg', 6),
(6, 'Foy\'s lake and amusement park', './image/Foy\'s_lake_and_amusement_park.jpg', 6),
(7, 'Konglak Hill', './image/Konglak_Hill.jpg', 7),
(7, 'Pidam Taisa', './image/Pidam_Taisa.jpg', 7),
(8, 'Sundarban National Park', './image/Sundarban_National_Park.jpg', 8),
(8, 'Hiron Point', './image/Hiron_Point.jpg', 8),
(8, 'Kotka Beach', './image/Kotka_Beach.jpg', 8),
(8, 'Dublar Char Island', './image/Dublar_Char_Island.jpg', 8),
(9, 'Kaptai Lake', './image/Kaptai_Lake.jpg', 9),
(9, 'Shuvolong Waterfalls', './image/Shuvolong_Waterfalls.jpg', 9),
(9, 'Rongrang Hill', './image/Rongrang_Hill.jpg', 9),
(9, 'Parjatan Hanging Bridge', './image/Parjatan_Hanging_Bridge.jpg', 9),
(10, 'Banglabanda (Zero Point)', './image/Banglabanda_Zero_Point.jpg', 10),
(10, 'Mughali killah (fort) at Chandan-bari', './image/Mughali_killah_fort_at_Chandan_bari.jpg', 10),
(10, 'Mirzapur Shahi Mosque (400 years old)', './image/Mirzapur_Shahi_Mosque_400_years_old.jpg', 10),
(10, 'Box Museum', './image/Box_Museum.jpg', 10);

-- --------------------------------------------------------

--
-- Table structure for table `rental_car`
--

CREATE TABLE `rental_car` (
  `d_id` int(10) NOT NULL,
  `rent` int(11) DEFAULT NULL,
  `car_id` int(10) NOT NULL,
  `car_model` varchar(255) DEFAULT NULL,
  `c_avail` varchar(255) NOT NULL,
  `Tourist_Spotd_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `room booking_user_profile`
--

CREATE TABLE `room booking_user_profile` (
  `Room_Bookingh_id` int(10) NOT NULL,
  `user_profileuser_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `room_booking`
--

CREATE TABLE `room_booking` (
  `h_id` int(10) NOT NULL,
  `h_name` varchar(255) NOT NULL,
  `room_id` int(10) NOT NULL,
  `price` int(11) NOT NULL,
  `availability` varchar(255) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `Tourist_Spotd_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_booking`
--

INSERT INTO `room_booking` (`h_id`, `h_name`, `room_id`, `price`, `availability`, `user_id`, `Tourist_Spotd_id`) VALUES
(101, 'Hotel Seven Star', 101, 1050, 'Yes', NULL, 1),
(102, 'Hotel Seven Star', 102, 700, 'Yes', NULL, 1),
(103, 'Hotel Seven Star', 103, 1350, 'Yes', NULL, 1),
(111, ' Muskat holiday Resort', 101, 1372, 'Yes', NULL, 2),
(112, ' Muskat holiday Resort', 102, 1568, 'Yes', NULL, 2),
(113, ' Muskat holiday Resort', 103, 950, 'Yes', NULL, 2),
(121, 'Hill Crown Hotel ', 101, 1200, 'Yes', NULL, 3),
(122, 'Hill Crown Hotel ', 102, 1769, 'Yes', NULL, 3),
(123, 'Hill Crown Hotel ', 103, 750, 'Yes', NULL, 3),
(131, ' The Grand Hotel', 101, 1290, 'Yes', NULL, 4),
(132, ' The Grand Hotel', 102, 550, 'Yes', NULL, 4),
(133, ' The Grand Hotel', 103, 870, 'Yes', NULL, 4),
(141, 'Blue Marine', 101, 1090, 'Yes', NULL, 5),
(142, 'Blue Marine', 102, 850, 'Yes', NULL, 5),
(143, 'Blue Marine', 103, 620, 'Yes', NULL, 5),
(151, 'Hotel Hilton City Residential', 101, 1090, 'Yes', NULL, 6),
(152, 'Hotel Hilton City Residential', 102, 850, 'Yes', NULL, 6),
(153, 'Hotel Hilton City Residential', 103, 620, 'Yes', NULL, 6),
(161, 'Rung Rang Resort', 101, 1900, 'Yes', NULL, 7),
(162, 'Rung Rang Resort', 102, 1400, 'Yes', NULL, 7),
(163, 'Rung Rang Resort', 103, 850, 'Yes', NULL, 7),
(171, 'Sundarban Jangal Mahal', 101, 1400, 'Yes', NULL, 8),
(172, 'Sundarban Jangal Mahal', 102, 1600, 'Yes', NULL, 8),
(173, 'Sundarban Jangal Mahal', 103, 800, 'Yes', NULL, 8),
(181, 'Moti Mahal', 101, 400, 'Yes', NULL, 9),
(182, 'Moti Mahal', 102, 600, 'Yes', NULL, 9),
(183, 'Moti Mahal', 103, 1400, 'Yes', NULL, 9),
(191, 'Hotel Holidon', 101, 600, 'Yes', NULL, 10),
(192, 'Hotel Holidon', 102, 1000, 'Yes', NULL, 10),
(193, 'Hotel Holidon', 103, 1500, 'Yes', NULL, 10),
(201, 'Hotel City Place', 201, 600, 'Yes', NULL, 1),
(202, 'Hotel City Place', 202, 1200, 'Yes', NULL, 1),
(203, 'Hotel City Place', 203, 1757, 'Yes', NULL, 1),
(211, 'Grand Beach Resort', 201, 1274, 'Yes', NULL, 2),
(212, 'Grand Beach Resort', 202, 1764, 'Yes', NULL, 2),
(213, 'Grand Beach Resort', 203, 700, 'Yes', NULL, 2),
(221, 'Hotel Diamond Park', 201, 1500, 'Yes', NULL, 3),
(222, 'Hotel Diamond Park', 202, 1107, 'Yes', NULL, 3),
(223, 'Hotel Diamond Park', 203, 800, 'Yes', NULL, 3),
(231, ' Hotel Payra ', 201, 400, 'Yes', NULL, 4),
(232, ' Hotel Payra ', 202, 950, 'Yes', NULL, 4),
(233, ' Hotel Payra ', 203, 893, 'Yes', NULL, 4),
(241, 'Darjeeling Resor', 201, 1440, 'Yes', NULL, 5),
(242, 'Darjeeling Resor', 202, 650, 'Yes', NULL, 5),
(243, 'Darjeeling Resor', 203, 866, 'Yes', NULL, 5),
(251, 'Hotel Diamond Park', 201, 1440, 'Yes', NULL, 6),
(252, 'Hotel Diamond Park', 202, 650, 'Yes', NULL, 6),
(253, 'Hotel Diamond Park', 203, 866, 'Yes', NULL, 6),
(261, 'Meghaloy Resort', 201, 1500, 'Yes', NULL, 7),
(262, 'Meghaloy Resort', 202, 1700, 'Yes', NULL, 7),
(263, 'Meghaloy Resort', 203, 990, 'Yes', NULL, 7),
(271, 'Cnest Sundarban', 201, 1598, 'Yes', NULL, 8),
(272, 'Cnest Sundarban', 202, 1700, 'Yes', NULL, 8),
(273, 'Cnest Sundarban', 203, 945, 'Yes', NULL, 8),
(281, 'Hotel Prince', 201, 1500, 'Yes', NULL, 9),
(282, 'Hotel Prince', 202, 1700, 'Yes', NULL, 9),
(283, 'Hotel Prince', 203, 1945, 'Yes', NULL, 9),
(291, 'Jupiter Lodge', 201, 600, 'Yes', NULL, 10),
(292, 'Jupiter Lodge', 202, 700, 'Yes', NULL, 10),
(293, 'Jupiter Lodge', 203, 800, 'Yes', NULL, 10),
(301, 'Hotel Rahmania', 301, 500, 'Yes', NULL, 1),
(302, 'Hotel Rahmania', 302, 1509, 'Yes', NULL, 1),
(303, 'Hotel Rahmania', 303, 1000, 'Yes', NULL, 1),
(311, 'Hotel Shams Plaza ', 301, 1191, 'Yes', NULL, 2),
(312, 'Hotel Shams Plaza ', 302, 700, 'Yes', NULL, 2),
(313, 'Hotel Shams Plaza ', 303, 500, 'Yes', NULL, 2),
(321, 'Hotel Prince', 301, 1105, 'Yes', NULL, 3),
(322, 'Hotel Prince', 302, 705, 'Yes', NULL, 3),
(323, 'Hotel Prince', 303, 500, 'Yes', NULL, 3),
(331, 'W Hotel', 301, 1833, 'Yes', NULL, 4),
(332, 'W Hotel', 302, 1260, 'Yes', NULL, 4),
(333, 'W Hotel', 303, 850, 'Yes', NULL, 4),
(341, 'Saint Martains Resort', 301, 1960, 'Yes', NULL, 5),
(342, 'Saint Martains Resort', 302, 1560, 'Yes', NULL, 5),
(343, 'Saint Martains Resort', 303, 1850, 'Yes', NULL, 5),
(351, 'Golden Inn Chattagram', 301, 1890, 'Yes', NULL, 6),
(352, 'Golden Inn Chattagram', 302, 1760, 'Yes', NULL, 6),
(353, 'Golden Inn Chattagram', 303, 1660, 'Yes', NULL, 6),
(361, 'Himachal Guest House', 301, 1800, 'Yes', NULL, 7),
(362, 'Himachal Guest House', 302, 2100, 'Yes', NULL, 7),
(363, 'Himachal Guest House', 303, 1695, 'Yes', NULL, 7),
(371, 'Swabhumi Guest House', 301, 900, 'Yes', NULL, 8),
(372, 'Swabhumi Guest House', 302, 1200, 'Yes', NULL, 8),
(373, 'Swabhumi Guest House', 303, 695, 'Yes', NULL, 8),
(381, 'Hotel Green Peace', 301, 1900, 'Yes', NULL, 9),
(382, 'Hotel Green Peace', 302, 1300, 'Yes', NULL, 9),
(383, 'Hotel Green Peace', 303, 1195, 'Yes', NULL, 9),
(391, 'Treebo Trip GD Hotel', 301, 900, 'Yes', NULL, 10),
(392, 'Treebo Trip GD Hotel', 302, 1300, 'Yes', NULL, 10),
(393, 'Treebo Trip GD Hotel', 303, 1595, 'Yes', NULL, 10);

-- --------------------------------------------------------

--
-- Table structure for table `things_to_do`
--

CREATE TABLE `things_to_do` (
  `d_id` int(10) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `ttd_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `things_to_do`
--

INSERT INTO `things_to_do` (`d_id`, `description`, `ttd_id`) VALUES
(3, 'Hiking Trails', '1'),
(4, 'Air Tours', '10'),
(1, 'Enjoying the local food', '11'),
(4, 'Enjoying the local food', '12'),
(7, 'Enjoying the local food', '13'),
(10, 'Enjoying the local food', '14'),
(2, 'Kayaking', '15'),
(6, 'Kayaking', '16'),
(9, 'Kayaking', '17'),
(1, 'Speed Boats Tours', '18'),
(2, 'Speed Boats Tours', '19'),
(7, 'Hiking Trails', '2'),
(6, 'Speed Boats Tours', '20'),
(8, 'Speed Boats Tours', '21'),
(2, 'Scuba Diving', '22'),
(5, 'Scuba Diving', '23'),
(2, 'Parasailing', '24'),
(9, 'Parasailing', '25'),
(3, 'Paragliding', '26'),
(9, 'Paragliding', '27'),
(1, 'Safaris', '28'),
(6, 'Safaris', '29'),
(9, 'Hiking Trails', '3'),
(3, 'Nature & Wildlife', '30'),
(4, 'Nature & Wildlife', '31'),
(7, 'Nature & Wildlife', '32'),
(8, 'Nature & Wildlife', '33'),
(10, 'Nature & Wildlife', '34'),
(2, 'Beach', '35'),
(5, 'Beach', '36'),
(6, 'Beach', '37'),
(8, 'Beach', '38'),
(3, '4WD, ATV & Off-Road Tours', '39'),
(1, 'Horseback Riding', '4'),
(4, '4WD, ATV & Off-Road Tours', '40'),
(5, '4WD, ATV & Off-Road Tours', '41'),
(8, '4WD, ATV & Off-Road Tours', '42'),
(10, '4WD, ATV & Off-Road Tours', '43'),
(7, 'Horseback Riding', '5'),
(10, 'Horseback Riding', '6'),
(2, 'Water Sports', '7'),
(5, 'Water Sports', '8'),
(2, 'Air Tours', '9');

-- --------------------------------------------------------

--
-- Table structure for table `things_to_do_tourist spot`
--

CREATE TABLE `things_to_do_tourist spot` (
  `things_to_dottd_id` varchar(255) NOT NULL,
  `Tourist_Spotd_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_bboking`
--

CREATE TABLE `ticket_bboking` (
  `t_id` int(10) NOT NULL,
  `d_id` int(10) NOT NULL,
  `t_avail` varchar(255) NOT NULL,
  `time` time NOT NULL,
  `travel_medium` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `t_price` int(10) NOT NULL,
  `Tourist_Spotd_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tourist_spot`
--

CREATE TABLE `tourist_spot` (
  `d_id` int(10) NOT NULL,
  `d_name` varchar(255) NOT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tourist_spot`
--

INSERT INTO `tourist_spot` (`d_id`, `d_name`, `pic`, `description`) VALUES
(1, 'Dhaka City', './image/lalbag.jpg', 'Dhaka, also spelled Dacca, city and capital of Bangladesh. It is located just north of the Buriganga River, a channel of the Dhaleswari River, in the south-central part of the country. Dhaka is Bangladesh\'s most populous city and is one of the largest met'),
(2, 'Cox\'s Bazar', './image/national_mus.jpg', 'Cox\'s Bazar town has an area of 6.85 km 2 (2.64 sq mi) and is bounded by Bakkhali River on the north and East, Bay of Bengal in the West, and Jhilwanj Union in the south. The beach in Cox\'s Bazar has a gentle slope and with an unbroken length of 155 km (9'),
(3, 'Bandarban', './image/Nafakhum_Waterfall.jpg', 'Bandarban is a district in South-Eastern Bangladesh, Coordinates is 22.20N 92.35E, and a part of the Chittagong Division and Chittagong Hill Tracts. ... The newly reported highest peak of Bangladesh - Saka Haphong (3488 ft) is also here in Thanchi upazila'),
(4, 'Sylhet', './image/Ratargul_Swamp_Forest.jpg', 'Sylhet is one of the oldest city in Bangladesh having a vast historical and cultural background and diversified inhabitants of Garo, Khasia, Monipuri and,Hazong. The district is surrounded by the Jaintia, Khasi and Tripura hills.'),
(5, 'Saint Martin', './image/Saint_Martin_Island.jpg', 'St. Martin\'s Island is a small island (area only 3 km 2) in the northeastern part of the Bay of Bengal, about 9 km south of the tip of the Cox\'s Bazar - Teknaf peninsula, and forming the southernmost part of Bangladesh.'),
(6, 'Chattogram', './image/Patenga_beach.jpg', 'Chattogram (Previous Chittagong), the second largest city of Bangladesh and a busy international seaport, is an ideal vacation spot. Its green hills and forests, its broad sandy beaches and its fine cool climate always attract the holiday-makers.'),
(7, 'Sajek Valley', './image/Konglak_Hill.jpg', 'Sajek valley is located among a range of mountains to the southern part of Bangladesh. Although the height of the mountain range is nothing remarkable, it’s a beautiful place to visit and one of the most popular tourist destinations in Bangladesh. Here is'),
(8, 'Sundarban', './image/Sundarban_National_Park.jpg', 'The Sundarbans is a cluster of low-lying islands in the Bay of Bengal, spread across India and Bangladesh, famous for its unique mangrove forests. This active delta region is among the largest in the world, measuring about 40,000 sq km.'),
(9, 'Rangamati', './image/Kaptai_Lake.jpg', 'Rangamati Hill District is the largest district of Bangladesh, about 77 kilometers away from Chittagong. It\'s one of the main tourist spot of Bangladesh for its rich natural resources like green hills, lakes and rivers also for location, tribal people, tr'),
(10, 'Panchagarh', './image/Banglabanda_Zero_Point.jpg', 'Panchagarh was elevated to a district in 01th February 1984. It consists of five upazilas, two municipality, 43 union Parishads and 850 villages.Panchagarh has a strong history and heritage in diversified culture within indigenous Sautal (Tribal) people\'s');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `user_id` int(10) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `insurance_id` int(10) NOT NULL,
  `d_id` int(10) DEFAULT NULL,
  `h_id` int(10) DEFAULT NULL,
  `car_id` int(10) DEFAULT NULL,
  `user_mail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Tourist_Spotd_id` int(10) NOT NULL,
  `Rental_carcar_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guide`
--
ALTER TABLE `guide`
  ADD PRIMARY KEY (`g_iid`),
  ADD KEY `FKGuide474924` (`Tourist_Spotd_id`);

--
-- Indexes for table `insurance`
--
ALTER TABLE `insurance`
  ADD PRIMARY KEY (`insurance_id`),
  ADD KEY `FKInsurance540301` (`user_profileuser_id`);

--
-- Indexes for table `packing_tips`
--
ALTER TABLE `packing_tips`
  ADD PRIMARY KEY (`d_id`),
  ADD KEY `FKPacking_ti894263` (`Tourist_Spotd_id`);

--
-- Indexes for table `places_to_visit`
--
ALTER TABLE `places_to_visit`
  ADD KEY `FKPlaces_to_308030` (`Tourist_Spotd_id`);

--
-- Indexes for table `rental_car`
--
ALTER TABLE `rental_car`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `FKRental_car630364` (`Tourist_Spotd_id`);

--
-- Indexes for table `room booking_user_profile`
--
ALTER TABLE `room booking_user_profile`
  ADD PRIMARY KEY (`Room_Bookingh_id`,`user_profileuser_id`),
  ADD KEY `FKRoom Booki539697` (`Room_Bookingh_id`),
  ADD KEY `FKRoom Booki455875` (`user_profileuser_id`);

--
-- Indexes for table `room_booking`
--
ALTER TABLE `room_booking`
  ADD PRIMARY KEY (`h_id`),
  ADD KEY `FKRoom_Booki498088` (`Tourist_Spotd_id`);

--
-- Indexes for table `things_to_do`
--
ALTER TABLE `things_to_do`
  ADD PRIMARY KEY (`ttd_id`);

--
-- Indexes for table `things_to_do_tourist spot`
--
ALTER TABLE `things_to_do_tourist spot`
  ADD PRIMARY KEY (`things_to_dottd_id`,`Tourist_Spotd_id`),
  ADD KEY `FKthings_to_290669` (`things_to_dottd_id`),
  ADD KEY `FKthings_to_291151` (`Tourist_Spotd_id`);

--
-- Indexes for table `ticket_bboking`
--
ALTER TABLE `ticket_bboking`
  ADD PRIMARY KEY (`t_id`),
  ADD KEY `FKticket_bbo1109` (`Tourist_Spotd_id`);

--
-- Indexes for table `tourist_spot`
--
ALTER TABLE `tourist_spot`
  ADD PRIMARY KEY (`d_id`),
  ADD UNIQUE KEY `d_name` (`d_name`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_mail` (`user_mail`),
  ADD KEY `FKuser_profi407832` (`Tourist_Spotd_id`),
  ADD KEY `FKuser_profi582526` (`Rental_carcar_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guide`
--
ALTER TABLE `guide`
  MODIFY `g_iid` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `insurance`
--
ALTER TABLE `insurance`
  MODIFY `insurance_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packing_tips`
--
ALTER TABLE `packing_tips`
  MODIFY `d_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rental_car`
--
ALTER TABLE `rental_car`
  MODIFY `car_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_booking`
--
ALTER TABLE `room_booking`
  MODIFY `h_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=394;

--
-- AUTO_INCREMENT for table `ticket_bboking`
--
ALTER TABLE `ticket_bboking`
  MODIFY `t_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tourist_spot`
--
ALTER TABLE `tourist_spot`
  MODIFY `d_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `guide`
--
ALTER TABLE `guide`
  ADD CONSTRAINT `FKGuide474924` FOREIGN KEY (`Tourist_Spotd_id`) REFERENCES `tourist_spot` (`d_id`);

--
-- Constraints for table `insurance`
--
ALTER TABLE `insurance`
  ADD CONSTRAINT `FKInsurance540301` FOREIGN KEY (`user_profileuser_id`) REFERENCES `user_profile` (`user_id`);

--
-- Constraints for table `packing_tips`
--
ALTER TABLE `packing_tips`
  ADD CONSTRAINT `FKPacking_ti894263` FOREIGN KEY (`Tourist_Spotd_id`) REFERENCES `tourist_spot` (`d_id`);

--
-- Constraints for table `places_to_visit`
--
ALTER TABLE `places_to_visit`
  ADD CONSTRAINT `FKPlaces_to_308030` FOREIGN KEY (`Tourist_Spotd_id`) REFERENCES `tourist_spot` (`d_id`);

--
-- Constraints for table `rental_car`
--
ALTER TABLE `rental_car`
  ADD CONSTRAINT `FKRental_car630364` FOREIGN KEY (`Tourist_Spotd_id`) REFERENCES `tourist_spot` (`d_id`);

--
-- Constraints for table `room booking_user_profile`
--
ALTER TABLE `room booking_user_profile`
  ADD CONSTRAINT `FKRoom Booki455875` FOREIGN KEY (`user_profileuser_id`) REFERENCES `user_profile` (`user_id`),
  ADD CONSTRAINT `FKRoom Booki539697` FOREIGN KEY (`Room_Bookingh_id`) REFERENCES `room_booking` (`h_id`);

--
-- Constraints for table `room_booking`
--
ALTER TABLE `room_booking`
  ADD CONSTRAINT `FKRoom_Booki498088` FOREIGN KEY (`Tourist_Spotd_id`) REFERENCES `tourist_spot` (`d_id`);

--
-- Constraints for table `things_to_do_tourist spot`
--
ALTER TABLE `things_to_do_tourist spot`
  ADD CONSTRAINT `FKthings_to_290669` FOREIGN KEY (`things_to_dottd_id`) REFERENCES `things_to_do` (`ttd_id`),
  ADD CONSTRAINT `FKthings_to_291151` FOREIGN KEY (`Tourist_Spotd_id`) REFERENCES `tourist_spot` (`d_id`);

--
-- Constraints for table `ticket_bboking`
--
ALTER TABLE `ticket_bboking`
  ADD CONSTRAINT `FKticket_bbo1109` FOREIGN KEY (`Tourist_Spotd_id`) REFERENCES `tourist_spot` (`d_id`);

--
-- Constraints for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD CONSTRAINT `FKuser_profi407832` FOREIGN KEY (`Tourist_Spotd_id`) REFERENCES `tourist_spot` (`d_id`),
  ADD CONSTRAINT `FKuser_profi582526` FOREIGN KEY (`Rental_carcar_id`) REFERENCES `rental_car` (`car_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
