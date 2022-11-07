-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 07, 2022 at 11:33 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jet2_holidays`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `name_number` varchar(255) NOT NULL,
  `address_line_one` varchar(255) NOT NULL,
  `address_line_two` varchar(255) NOT NULL,
  `postal_code` varchar(11) NOT NULL,
  `gps_lat` varchar(255) NOT NULL,
  `gps_long` varchar(255) NOT NULL,
  `city_id` int(11) NOT NULL,
  `address_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `name_number`, `address_line_one`, `address_line_two`, `postal_code`, `gps_lat`, `gps_long`, `city_id`, `address_type_id`) VALUES
(1, 'Aquasis Deluxe Resort & Spa', 'Çamlık, Üç Mevsim Cd. No:77, 09270', 'Didim/Aydın, Turkey', '86WP+H7 ', '37.346443213273616, ', '27.23572023858953', 19, 3),
(2, 'Club Alize', 'Siteler, Yunus Nadi Cd. No:87, 48700 ', 'Marmaris/Muğla, Turkey', 'R7W2+V6 ', '36.847310061158325', '28.250541846491075', 18, 3),
(3, 'Grand Hotel Excelsior', 'Great Siege Road, Floriana', 'Valletta, Malta', 'FRN1810', '35.89771731833021', '14.504840999999997', 16, 3),
(4, 'Corinthia Palace Malta', 'De Paule Avenue', 'San Anton, Malta', 'BZN 9023', '35.8947081019238', '14.449284830681584', 17, 3),
(5, 'Catalonia Port', 'Carrer Ample, 1, 08002 ', 'Barcelona, Spain', '95HH+GF ', '41.378903937625495', '2.1787407266426615', 8, 3),
(6, 'Marcella Royal Hotel Rooftop Garden', 'Via Flavia, 106/106, 00187 ', 'Roma RM, Italy', 'WF5X+46 ', '41.908169517921195', '12.498100242125274', 20, 3),
(7, 'Heather Foster', '1 The Close', 'Belfast', 'BT5 UJH', '', '', 1, 2),
(8, 'Carole Jay', '654 Regent Street', 'Manchester', 'BHY 876', '', '', 4, 2),
(9, 'David Gee', '21a', 'Flats Way', 'NBH 11s', '', '', 1, 2),
(10, 'Veneto Palace', 'Via Piemonte, 63, 00187 ', 'Roma RM, Italy', '00187 ', '41.90954113830665', '12.4935302', 20, 3),
(11, 'Nord Nuova Roma', 'Via Giovanni Amendola, 3, 00185 ', 'Stazione Termini RM, Italy', '00185 ', '41.901376698222116', '12.497720684659207', 20, 3),
(12, 'Miss O\'Hare', '50 School Road', 'Ballymartin', 'BT34 4UP', '', '', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `address_type`
--

CREATE TABLE `address_type` (
  `address_type_id` int(11) NOT NULL,
  `address_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address_type`
--

INSERT INTO `address_type` (`address_type_id`, `address_type`) VALUES
(1, 'Billing'),
(2, 'Customer'),
(3, 'Accommodation'),
(4, 'Airport');

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `airport_id` int(11) NOT NULL,
  `airport_name` varchar(255) NOT NULL,
  `airport_code` varchar(255) NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`airport_id`, `airport_name`, `airport_code`, `city_id`) VALUES
(2, 'Belfast international Airport', 'BFS', 1),
(3, 'Dublin Airport', 'DUB', 2),
(4, 'London Luton Airport', 'LTN', 3),
(5, 'London Heathrow Airport', 'LHR', 3),
(6, 'Manchester Airport', 'MAN', 4),
(7, 'Edinburgh Airport', 'EDI', 5),
(8, 'Glasgow Airport', 'GLA', 6),
(9, 'Cardiff Airport', 'CWL', 7),
(10, 'Josep Tarradellas Barcelona El Prat Airport', 'BCN', 8),
(12, 'Paris Charles de Gaulle Airport', 'CDG', 10),
(13, 'Humberto Delgado Airport', 'LIS', 12),
(14, 'Faro Airport', 'FAO', 13),
(15, 'Haneda Airport', 'HND', 14),
(21, 'Fiumicino International Airport Rome', 'FCO', 20),
(22, 'Florence Airport, Peretola', 'FLR', 21),
(23, 'Keflavík International Airport', 'KEF', 22),
(24, 'Malta International Airport', 'MLA', 17),
(25, 'Luqa Airport', 'LML', 16),
(26, 'Milas-Bodrum Airport', 'BJV', 19);

-- --------------------------------------------------------

--
-- Table structure for table `board`
--

CREATE TABLE `board` (
  `board_id` int(11) NOT NULL,
  `board_name` text NOT NULL,
  `board_desc` text NOT NULL,
  `board_price_per_day` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `board`
--

INSERT INTO `board` (`board_id`, `board_name`, `board_desc`, `board_price_per_day`) VALUES
(1, 'All Inclusive', 'All food, drink, activities and facilities included in price ', '80.00'),
(2, 'Full Board', 'Breakfast, lunch and dinner included in the price', '50.00'),
(3, 'Half Board', 'Two daily meals - Breakfast and or lunch and dinner included in the price', '30.00'),
(4, 'Bed and Breakfast', 'Breakfast included in the price', '20.00'),
(5, 'Self catering', 'Fully equipped catering facilities in room including fridge freezer', '20.00'),
(6, 'Room Only - Zero Board', 'Room Only ', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `resort_id` int(11) NOT NULL,
  `booking_made_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `booking_start_date` date NOT NULL,
  `duration` varchar(20) NOT NULL,
  `number_of_travelers` int(50) NOT NULL,
  `total_cost` decimal(10,2) NOT NULL,
  `total_paid` decimal(10,2) NOT NULL,
  `outbound_flight_id` int(11) NOT NULL,
  `return_flight_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `board_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `review_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `resort_id`, `booking_made_timestamp`, `booking_start_date`, `duration`, `number_of_travelers`, `total_cost`, `total_paid`, `outbound_flight_id`, `return_flight_id`, `hotel_id`, `board_id`, `customer_id`, `payment_id`, `review_id`) VALUES
(2, 12, '2022-11-07 15:00:02', '2023-01-01', '7 days', 8, '7000.00', '5000.00', 3, 4, 6, 1, 5, 2, 4),
(3, 1, '2022-11-07 15:04:52', '2023-03-01', '5 days', 2, '1000.00', '500.00', 1, 7, 7, 3, 6, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `booking_line_item`
--

CREATE TABLE `booking_line_item` (
  `booking_line_item_id` int(11) NOT NULL,
  `item_cost` decimal(10,2) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_description` text NOT NULL,
  `booking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `card_id` int(11) NOT NULL,
  `cardholder_name` varchar(255) NOT NULL,
  `card_long_number` varbinary(255) NOT NULL,
  `card_expiry_date` date NOT NULL,
  `card_security_code` int(3) NOT NULL,
  `issue_number` int(11) DEFAULT NULL,
  `card_type_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`card_id`, `cardholder_name`, `card_long_number`, `card_expiry_date`, `card_security_code`, `issue_number`, `card_type_id`, `address_id`) VALUES
(1, 'test', 0x35373338353738, '2022-11-16', 425, 32234, 2, 9),
(2, 'Mr Joe Blogg', 0x313233342d313233342d313233342d31323334, '2028-12-14', 234, 3, 3, 9),
(3, 'Mr Joe Blogg', 0x313233342d313233342d313233342d31323334, '2028-12-14', 234, 3, 3, 9),
(4, 'Mr James Smith', 0x3f7b449a84b7619745df822470bead919331393ccf2979ca4b1c751ef5b4853b, '2028-12-14', 234, 3, 3, 9),
(11, 'Miss O Hare', 0xe555f2cc072845b11d783af1f38266ef7a950ff562262f1e31f174aeb8cf6315, '2027-11-01', 234, 3, 2, 12),
(13, 'Miss O Hare', 0xe555f2cc072845b11d783af1f38266ef7a950ff562262f1e31f174aeb8cf6315, '2027-11-01', 234, 3, 2, 12);

-- --------------------------------------------------------

--
-- Table structure for table `card_type`
--

CREATE TABLE `card_type` (
  `card_type_id` int(11) NOT NULL,
  `card_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `card_type`
--

INSERT INTO `card_type` (`card_type_id`, `card_type`) VALUES
(1, 'Visa'),
(2, 'Mastercard'),
(3, 'American Express');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` text NOT NULL,
  `timezone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `timezone_id`, `country_id`) VALUES
(1, 'Belfast', 1, 1),
(2, 'Dublin', 1, 1),
(3, 'London', 1, 2),
(4, 'Manchester', 1, 2),
(5, 'Edinburgh', 1, 3),
(6, 'Glasgow', 1, 3),
(7, 'Cardiff', 1, 4),
(8, 'Barcelona', 6, 5),
(9, 'Madrid', 6, 5),
(10, 'Paris', 6, 6),
(11, 'Lyon', 6, 6),
(12, 'Lisbon', 6, 7),
(13, 'Faro', 6, 7),
(14, 'Malia', 9, 8),
(15, 'Kavos', 9, 8),
(16, 'Valletta', 8, 9),
(17, 'Mdina', 8, 9),
(18, 'Dalyan', 9, 10),
(19, 'Didim', 9, 10),
(20, 'Rome', 6, 11),
(21, 'Florence', 6, 11),
(22, 'Reykjavik', 5, 12);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'Ireland'),
(2, 'England'),
(3, 'Scotland'),
(4, 'Wales'),
(5, 'Spain'),
(6, 'France'),
(7, 'Portugal'),
(8, 'Greece'),
(9, 'Malta'),
(10, 'Turkey'),
(11, 'Italy'),
(12, 'Iceland');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `currency_symbol` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency_id`, `currency`, `currency_symbol`) VALUES
(1, 'Yen', '¥'),
(2, 'Euro', '€'),
(3, 'Sterling', '£'),
(4, 'Peso', '$'),
(5, 'Dollar', '$'),
(6, 'Turkish Lira', '₺');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `title_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telephone_number` varchar(255) DEFAULT NULL,
  `customer_password` varbinary(255) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `card_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `user_name`, `title_id`, `first_name`, `last_name`, `date_of_birth`, `email`, `telephone_number`, `customer_password`, `address_id`, `card_id`, `payment_id`) VALUES
(4, '0', 1, 'Test', 'Test', '2012-11-09', 'hjufgeirhgjuerw', '7895859348', 0x70617373776f7264, 1, 1, 1),
(5, '0', 1, 'Heather', 'Foster', '1986-06-02', 'heather.F@hotmail.co.uk', '7895859348', 0x70617373776f7264, 7, 1, 1),
(6, '0', 1, 'James', 'Gee', '1988-04-10', 'j.gee@skymail.com', '1235859348', 0x2a32343730433043303644454534324644313631384242393930303541444341324543394431453139, 1, 1, 1),
(7, '0', 2, 'Gemma', 'Murphy', '1986-08-10', 'g.murphy\"qub.ac.uk', '12300859348', 0x2a44433532373535463343303946353932333034364244343241464137364244314438304446324539, 1, 1, 1),
(12, '0', 1, 'Joe', 'Bloggs', '1984-03-15', 'jjbloggs@yahoo.co.uk', '0998676566', 0x6a6f65626c6f6767737077, 9, 1, 1),
(13, '0', 1, 'Joe', 'Bloggs', '1984-03-15', 'jjbloggs@yahoo.co.uk', '0998676566', 0x2a45363844303437324232373145414144303436433245344337343835424345434430434532313338, 9, 1, 1),
(22, 'Miss O Hare', 2, 'Gemma', 'OHare', '1986-12-08', 'gem812\"hotmail.com', '09988788767', 0x32616238303031393136356430373531346236333339363730366565313034656462656261623036363331316138, 12, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `flight_id` int(11) NOT NULL,
  `departure_date_time` datetime NOT NULL,
  `arrival_date_time` datetime NOT NULL,
  `flight_code` varchar(255) NOT NULL,
  `flight_base_price_id` int(11) NOT NULL,
  `seat_price_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`flight_id`, `departure_date_time`, `arrival_date_time`, `flight_code`, `flight_base_price_id`, `seat_price_id`, `route_id`) VALUES
(1, '2023-01-01 11:52:08', '2023-01-01 15:52:08', 'BFS-BCN21', 1, 3, 11),
(2, '2023-02-01 11:55:18', '2023-02-01 14:00:30', 'BFS-MLA98', 3, 8, 13),
(3, '2023-03-01 11:55:18', '2023-03-01 16:55:18', 'MAN-BJV44', 4, 17, 15),
(4, '2023-01-08 12:07:07', '2023-01-08 16:07:07', 'BJV-MAN45', 4, 12, 16),
(5, '2023-01-02 18:07:07', '2023-01-02 21:07:07', 'BFS-MLA98', 5, 4, 14),
(6, '2023-03-01 03:10:22', '2023-03-01 06:10:22', 'BFS-BCN21', 6, 46, 11),
(7, '2023-03-06 22:10:22', '2023-03-06 12:10:22', 'BCN-BFS21', 5, 45, 12),
(8, '2023-02-14 14:00:00', '2023-02-14 17:00:00', 'BFS-RMA456', 4, 24, 19),
(9, '2023-02-14 09:00:00', '2022-11-07 12:29:50', 'BFS-RMA765', 3, 4, 19),
(10, '2023-02-21 15:40:32', '2023-02-21 18:40:32', 'RMS-BFS767', 5, 5, 20),
(11, '2023-02-21 08:00:00', '2023-02-21 11:00:00', 'RMA-BFS455', 1, 1, 20);

-- --------------------------------------------------------

--
-- Table structure for table `flight_base_price`
--

CREATE TABLE `flight_base_price` (
  `flight_base_price_id` int(11) NOT NULL,
  `flight_base_price` decimal(10,2) NOT NULL,
  `valid_from_date` date NOT NULL,
  `Valid_to_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `flight_base_price`
--

INSERT INTO `flight_base_price` (`flight_base_price_id`, `flight_base_price`, `valid_from_date`, `Valid_to_date`) VALUES
(1, '60.00', '2023-01-01', '2023-02-28'),
(2, '65.00', '2023-03-01', '2023-04-30'),
(3, '70.00', '2023-05-01', '2023-06-30'),
(4, '80.00', '2023-07-01', '2023-08-31'),
(5, '70.00', '2023-09-01', '2023-10-31'),
(6, '80.00', '2023-11-01', '2023-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `hotel_id` int(11) NOT NULL,
  `hotel_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `check_in_time` time NOT NULL,
  `check_out_time` time NOT NULL,
  `resort_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `star_rating_id` int(11) NOT NULL,
  `review_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hotel_id`, `hotel_name`, `description`, `check_in_time`, `check_out_time`, `resort_id`, `address_id`, `image_id`, `star_rating_id`, `review_id`) VALUES
(3, 'Corinthia Palace Malta', 'Set in beautiful, landscaped gardens, the Corinthia Palace Malta is a secluded haven opposite the Presidential Palace and adjacent to the San Anton Botanical Gardens. Enveloped in history, prestige and tradition, rooms at the Corinthia Palace Hotel & Spa reflect the grandeur of the property and are spacious and tastefully decorated. The hotel features one of the best spa’s on the Island, a Michelin-star restaurant Bahia and a serene outdoor pool, perfect for relaxing days in the Maltese sunshine.', '11:00:00', '15:00:00', 7, 4, 6, 5, 1),
(4, 'Club Alize', 'Get close to the heart of the action at Marmaris’ Club Alize. Perfect for families or groups of friends with simple, relaxed yet well-equipped apartments, sleeping up to six. There’s a great value all inclusive offering at this hotel as well as kitchen facilities in each apartment. Marmaris resort centre is just a short taxi ride away and the nearest shops, bars and restaurants are close by.\r\n\r\n - Lively hotel\r\n - Small and friendly\r\n - Great for friends, couples and groups\r\n - Free Wi-Fi is available in the communal areas.', '12:00:00', '15:00:00', 11, 2, 7, 3, 2),
(5, 'Grand Hotel Excelsior', 'Blessed with spectacular views of Marsamxett Harbour, the luxurious Grand Hotel Excelsior has a prestigious location between the sea and the UNESCO World Heritage and capital city, Valletta. The hotel boasts spacious and comfortable rooms, lavish spa and leisure facilities and superb hospitality. This really is the perfect base from which to explore the magical and fascinating city of Valletta, whilst the rest of the island is easy to explore by public transport too.\r\n\r\n - Great for couples\r\n - Rejuvenating spa\r\n - Stunning views\r\n - Free Wi-Fi is available throughout the hotel.', '14:00:00', '14:00:00', 8, 3, 8, 5, 3),
(6, 'Aquasis Deluxe Resort & Spa', 'Private beach? Tick. On-site waterpark? Tick. Dazzling entertainment programme? Tick! This huge hotel has something for everyone. You’ll find it on the south-west coast of Turkey, close to the centre of Altinkum and its many shops, bars and restaurants. Soak up the rays by one of the four pools or why not visit the beach? The beach is reserved only for hotel guests, plus there’s an exclusive pier that reaches out over the glistening water. You can choose from four restaurants serving a huge variety of cuisines, before heading to one of the bars for drinks. Don’t miss the late-night disco bar on the beach!\r\n\r\n - On-site waterpark\r\n - Direct access to the beach\r\n - Great range of facilities\r\n - Superb entertainment programme\r\n - Choice of bars & restaurants\r\n - Free Wi-Fi is available throughout the hotel.', '15:00:00', '15:00:00', 12, 1, 9, 4, 4),
(7, 'Catalonia Port', 'The Catalonia Port has a fantastic location situated within walking distance of the Gothic Quarter. It’s excellent location puts the sights of Barcelona within easy reach as well as the beach for those who like the best of both worlds. This charming hotel has a range of facilities if you want to break away from the hustle and bustle of the city, including a pool terrace area ideal for relaxing around by day and a bar ideal for unwinding at by night. With it’s prime location and great facilities the Catalonia Port is the perfect choice for a city break.\r\n\r\n - Close to the Gothic Quarter\r\n - Modern pool terrace\r\n - Great views\r\n - Bar and restaurant\r\n - Stylish rooms\r\n - Free Wi-Fi is available throughout the hotel.', '11:00:00', '12:00:00', 1, 5, 2, 4, 5),
(8, 'Marcella Royal Hotel Rooftop Garden', 'The Marcella Royal Hotel - Rooftop Garden enjoys a privileged location in this Eternal city, with delicious restaurants and cafes serving mouth-watering traditional Italian dishes on your doorstep. Classic in style with a refined ambience throughout you\'ll find attention to detail and great service are key to ensuring you can enjoy \'La Dolce Vita\' on your trip to Rome. Plus, don\'t forget to check out the hotel\'s show stopping roof garden, where you can enjoy the most spectacular views over the Eternal City whilst you watch the city awake at breakfast or the sun going down, sipping a glass of your favourite vino.', '11:00:00', '14:00:00', 5, 6, 1, 4, 6),
(9, 'Veneto Palace', 'This elegant 4-star hotel enjoys a central location in the historical centre of Rome, just a short walk from the Villa Borghese, the Trevi Fountain and the Spanish Steps. Characterised by ancient decorations, esteemed marble and sophisticated furnishings the hotel offers a unique atmosphere throughout and guest rooms are welcoming and comfortable. After a day of sightseeing relax in the elegant Atelier lounge bar and enjoy a mix of cocktails, soft drinks and classic wines.\r\n\r\n - Great for a romantic break\r\n - Elegant decor\r\n - Attentive service\r\n - 80m from the nearest bus stop\r\n - 1.4km from the Trevi Fountain', '12:21:27', '14:21:27', 5, 10, 10, 4, 1),
(10, 'Nord Nuova Roma Hotel', 'Close to the Opera House and main station, the Hotel Nord Nuova is an ideal choice for your Rome getaway. With understated elegance, this hotel offers comfortable rooms furnished to a high standard, a top floor gym and the stunning La Limonaia roof garden with panoramic views of the Baths of Diocletian. Spend your days exploring all the City has to offer and your evenings watching the sunset over the city.\r\n\r\n - Rooftop terrace with bar and panoramic views\r\n - Great for couples and friends\r\n - Close to the Baths of Diocletian\r\n - 220m from the nearest metro station\r\n - 1.5km from the Trevi Fountain\r\n - Free Wi-Fi is available throughout the hotel.', '12:00:21', '15:26:21', 5, 11, 11, 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_board`
--

CREATE TABLE `hotel_board` (
  `hotel_board_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `board_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotel_board`
--

INSERT INTO `hotel_board` (`hotel_board_id`, `hotel_id`, `board_id`) VALUES
(1, 6, 1),
(2, 6, 4),
(3, 6, 2),
(4, 6, 6),
(5, 7, 4),
(6, 7, 3),
(7, 7, 2),
(8, 5, 1),
(9, 4, 4),
(10, 4, 5),
(11, 4, 6),
(12, 4, 3),
(13, 3, 1),
(14, 3, 4),
(15, 3, 2),
(16, 3, 3),
(17, 3, 6),
(18, 3, 5),
(19, 8, 1),
(20, 8, 4),
(21, 8, 2),
(22, 8, 3),
(23, 8, 6),
(24, 8, 5),
(25, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_facilities`
--

CREATE TABLE `hotel_facilities` (
  `hotel_facilities_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `hotel_facilities_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotel_facilities`
--

INSERT INTO `hotel_facilities` (`hotel_facilities_id`, `hotel_id`, `hotel_facilities_type_id`) VALUES
(1, 6, 4),
(2, 6, 2),
(3, 6, 5),
(4, 6, 1),
(5, 7, 3),
(6, 7, 4),
(7, 4, 5),
(8, 4, 6),
(9, 4, 3),
(10, 3, 4),
(11, 3, 3),
(12, 5, 4),
(13, 5, 2),
(14, 5, 5),
(15, 5, 6),
(16, 5, 3),
(17, 5, 1),
(18, 8, 3),
(19, 8, 4),
(20, 8, 1),
(21, 10, 7),
(22, 10, 2),
(23, 9, 4),
(24, 9, 7),
(25, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_facilities_type`
--

CREATE TABLE `hotel_facilities_type` (
  `hotel_facilities_type_id` int(11) NOT NULL,
  `facility_name` varchar(255) NOT NULL,
  `decription_overview` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotel_facilities_type`
--

INSERT INTO `hotel_facilities_type` (`hotel_facilities_type_id`, `facility_name`, `decription_overview`) VALUES
(1, 'Spa', 'Luxurious spa facilities, signature spa treatments (massage, facials and body treatments, products and cosmetics) '),
(2, 'Gym', 'Packed with cardio and resistance equipment and free weights, you can unwind after a busy day exploring'),
(3, 'Outdoor Leisure Pool', 'Boasts waterslide and fun for all ages'),
(4, 'Adults only swim up bar ', 'relax and unwind at our tropical swim up tiki bar'),
(5, 'Kids Club', 'Fully vetted and registered childcare facility with. Fun filled, jam packed days to make their stay a dream come true. '),
(6, 'Nightclub', 'Themed nights and guest DJs at our in house ClubLand Nightclub'),
(7, 'Roof Terrace', 'Roof Terrace allowing for stunning views and relaxing in the sun');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_images`
--

CREATE TABLE `hotel_images` (
  `image_id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `image_desc` text NOT NULL,
  `image_alt_text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotel_images`
--

INSERT INTO `hotel_images` (`image_id`, `image_path`, `image_desc`, `image_alt_text`) VALUES
(1, 'https://www.jet2holidays.com/italy/rome/rome-city/trevi-palace-luxury-inn', 'Double Room', 'Image of Superior Double Room at Trevi Palace - Rome - Italy'),
(2, 'https://www.jet2holidays.com/spain/barcelona/barcelona/catalonia-port', 'Modern pool terrace and bar', 'Image showing modern pool area with bar on rooftop terrace at Catalonia Port - Barcelona'),
(3, 'https://www.jet2/hotel/es/arenalsuitesmax1024x768/286658558.jpg', 'Spacious living quarters', 'Image showing spacious living quarter at Arenal Suites - Madrid'),
(4, 'https://www.jet2holidays.com/italy/tuscany/montecatini-terme/montecatini-palace', 'Bar and restaurant', 'Image showing modern restaurant at Montecatini Palace - Tuscany'),
(5, 'https://www.jet2holidays.com/france/paris/paris-city/mercure-montmartre-sacre-coeur', 'Restaurant Modern Contemporary Decor', 'Image showing modern contemporary restaurant at Mercure Montmartre Sacre Coeur - Paris'),
(6, 'https://www.jet2holidays.com/malta/malta-and-gozo/san-anton/corinthia-palace-malta', 'Luxurious pool and poolside bar', 'Image depicts luxurious pool in an authentic Maltese architectural style - corinthia-palace-malta'),
(7, 'https://www.jet2holidays.com/turkey/dalaman-area/marmaris/club-alize', 'Outdoor pool apartments and sun lounge area', 'Image showing apartment building with sun lounge area and pool facilities'),
(8, 'https://www.jet2holidays.com/malta/malta-and-gozo/valletta/grand-hotel-excelsior', 'Apartments, pool and poolside bar with neighbouring coastline and Marina', 'Image showing apartment building, pool and lounge area with coast line and marina - grand-hotel-excelsior'),
(9, 'https://www.jet2holidays.com/turkey/bodrum-area/altinkum/aquasis-deluxe-resort-and-spa', 'Aerial view of entire complex including multiple pool areas', 'Image showing entire complex and multiple pool facilities including slides'),
(10, 'https://www.jet2holidays.com/italy/rome/rome-city/veneto-palace', 'Rustic Restaurant and Reception', 'Images showing from reception area and rustic style setting of restaurant - veneto-palace'),
(11, 'https://www.jet2holidays.com/italy/rome/rome-city/nord-nuova-roma-hotel', 'Roof Terrace and View', 'Image showing classic Italian roof terrace and stunning views of Rome');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_rooms`
--

CREATE TABLE `hotel_rooms` (
  `hotel_rooms_id` int(11) NOT NULL,
  `room_type_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotel_rooms`
--

INSERT INTO `hotel_rooms` (`hotel_rooms_id`, `room_type_id`, `quantity`, `hotel_id`) VALUES
(1, 6, 30, 6),
(2, 8, 50, 6),
(3, 16, 30, 6),
(4, 11, 20, 6),
(5, 6, 40, 7),
(6, 13, 20, 7),
(7, 8, 20, 7),
(8, 15, 10, 4),
(9, 12, 20, 4),
(10, 10, 10, 4),
(11, 13, 10, 4),
(12, 7, 40, 3),
(13, 9, 20, 3),
(14, 13, 20, 3),
(15, 11, 50, 5),
(16, 16, 30, 5),
(17, 8, 40, 5),
(18, 14, 60, 5),
(19, 10, 50, 5),
(20, 8, 20, 8),
(21, 5, 10, 8),
(22, 9, 10, 8),
(23, 12, 20, 8);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `language_id` int(11) NOT NULL,
  `language_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`language_id`, `language_name`) VALUES
(1, 'English'),
(2, 'Spanish'),
(3, 'French'),
(4, 'Portuguese'),
(5, 'Italian'),
(6, 'Maltese'),
(7, 'Greek'),
(8, 'Turkish');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `amount_paid` decimal(10,2) NOT NULL,
  `payment_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `payment_type_id` int(11) NOT NULL,
  `card_type_id` int(11) DEFAULT NULL,
  `card_last_4_digits` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `amount_paid`, `payment_timestamp`, `payment_type_id`, `card_type_id`, `card_last_4_digits`) VALUES
(1, '100.00', '2022-11-07 13:23:42', 1, 1, 4322),
(2, '2500.00', '2022-11-07 14:52:28', 1, 3, 333),
(3, '500.00', '2022-11-07 14:52:28', 1, 1, 212);

-- --------------------------------------------------------

--
-- Table structure for table `payment_type`
--

CREATE TABLE `payment_type` (
  `payment_type_id` int(11) NOT NULL,
  `payment_type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_type`
--

INSERT INTO `payment_type` (`payment_type_id`, `payment_type_name`) VALUES
(1, 'Card'),
(2, 'Paypal');

-- --------------------------------------------------------

--
-- Table structure for table `resort`
--

CREATE TABLE `resort` (
  `resort_id` int(11) NOT NULL,
  `resort_name` text NOT NULL,
  `resort_desc` text NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resort`
--

INSERT INTO `resort` (`resort_id`, `resort_name`, `resort_desc`, `city_id`) VALUES
(1, 'La Rambla', 'La Rambla is a good place to find your feet if you’re a newcomer to Barcelona. A main artery in the centre, it extends from Plaça Catalunya down to the dock and is lined with cafés, bars, restaurants and tourist shops. There are street performers and stalls, too, and a general sense of bustling party spirit.', 8),
(2, 'Plaza Mayor', 'The Plaza Mayor is a major public space in the heart of Madrid, the capital of Spain. It was once the centre of Old Madrid. It was first built during the reign of Philip III. Only a few blocks away is another famous plaza, the Puerta del Sol.', 9),
(3, 'Algarve', 'Trimmed by golden beaches, twinkling cobalt waters and ochre-tinged cliffs, Portugal\'s dramatic south coast is a natural stunner. This is the amazing Algarve, where you can count on long days of sunshine and a laid-back pace of life. Seaside towns in various guises pepper its shores, from swanky Vilamoura and family-friendly Albufeira to vibrant Alvor and soulful Lagos. That means you can take your pick from lazing on Blue Flag beaches, teeing off at top golf courses, wandering tile-clad old towns and whooshing down slides at water parks. Oh, and if you love buzzy bars, Irish pubs and atmospheric restaurants, the Algarve’s nightlife will be right up your street.', 13),
(4, 'Tuscany', 'Tuscany is a region in central Italy. Its capital, Florence, is home to some of the world’s most recognizable Renaissance art and architecture, including Michelangelo’s \"David\" statue, Botticelli’s works in the Uffizi Gallery and the Duomo basilica. Its diverse natural landscape encompasses the rugged Apennine Mountains, the island of Elba’s beaches on the Tyrrhenian Sea and Chianti’s olive groves and vineyards. ', 21),
(5, 'Trastevere', 'Colorful Trastevere is a funky, bohemian area that clings to its centuries-old, working-class roots. It\'s known for traditional and innovative trattorias, craft beer pubs and artisan shops, as well as simple B&Bs and budget hotels. From the pre-dinner passeggiata (promenade) until late, a young crowd buzzes around Piazza di San Calisto and Piazza Santa Maria in Trastevere, the site of a gilded, mosaic-filled church.', 20),
(6, 'Montmartre ', 'Montmartre is a large hill in Paris\'s northern 18th arrondissement. It is 130 m high and gives its name to the surrounding district, part of the Right Bank.', 10),
(7, 'San Anton', 'San Anton’s known for its vibrant variety of plants and blossoming flowers. These gorgeous gardens are ideal for balmy afternoon strolls, all rustic and resplendent, with ornate fountains to marvel at. Wander a little longer and you’ll find the beach, so be prepared to stare out to sea in staggering surroundings.', 17),
(8, 'Valletta', 'Petite in size but big on charm, Valletta’s a truly magical city that’s not to be missed. Despite its modest form, this picturesque little resort holds the trophy as Malta’s capital, and has a history that spans back through the centuries. A charming centre and a breathtaking waterfront… Valletta’s got it all.', 16),
(9, 'Crete (Heraklion Area)', 'As the largest of the Greek Islands, it’s no surprise Crete’s got a lot going on, whether you’re after a family friendly holiday, group getaway or romantic retreat. And that\'s certainly the case here on the eastern side, where adventure-ready mountains sit alongside neon-lit clubs, water parks and ancient Minoan treasures. Mega town Malia is where the party happens, Hersonissos is the perfect place for beach days and Rethymnon has a gorgeous harbour and Old Town to explore. Then there’s Elounda where things get a bit more swanky.', 14),
(10, 'Corfu', 'Corfu holidays\r\nThis popular, emerald-green isle is a classic crowd-pleaser with something for everyone. Miles of sun-kissed sands, friendly locals and plenty of places to party add up to the classic holiday package. Night owls have been flocking to Kavos and Sidari for years, while elegant Corfu Town\'s the place to go for a pinch of history and dash of nightlife chic. Bit of a beach bum? Soft white sand and warm blue waters come as standard here – try the tranquil pace of Agios Ioannis on for size. Away from the buzz of the beach resorts, there’s a beautiful countryside studded with olive groves all set for exploring too.', 15),
(11, 'Marmaris', 'As a big-time favourite, Marmaris has some of the most beautiful beaches on the Mediterranean coast and a pumping nightlife scene to boot. You’ll find remote coves, waterfalls and mountains to explore, plus waterparks and grand bazaars. Nibble on classic Turkish delight and check out the all-singing, all-dancing cabarets by night.', 18),
(12, 'Altinkum', 'Friendly and unspoilt, you’ll stumble across a choice of three fabulous beaches and easy access to some of the world’s most important historical sites. If it’s traditional Bodrum you’re looking for, Altinkum takes things up a notch. Sumptuous seafront eateries, buzzing bars and terrific temples are calling…\r\n', 19);

-- --------------------------------------------------------

--
-- Table structure for table `resort_currency`
--

CREATE TABLE `resort_currency` (
  `resort_currency_id` int(11) NOT NULL,
  `resort_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resort_currency`
--

INSERT INTO `resort_currency` (`resort_currency_id`, `resort_id`, `currency_id`) VALUES
(1, 3, 2),
(2, 3, 3),
(3, 12, 6),
(4, 12, 2),
(5, 12, 3),
(6, 5, 2),
(7, 5, 3),
(8, 4, 2),
(9, 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `resort_language`
--

CREATE TABLE `resort_language` (
  `resort_language_id` int(11) NOT NULL,
  `resort_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resort_language`
--

INSERT INTO `resort_language` (`resort_language_id`, `resort_id`, `language_id`) VALUES
(1, 1, 2),
(2, 1, 1),
(3, 2, 1),
(4, 2, 2),
(5, 3, 1),
(6, 3, 4),
(7, 4, 1),
(8, 4, 5),
(9, 7, 6),
(10, 7, 1),
(11, 9, 7),
(12, 10, 7),
(13, 9, 7),
(14, 11, 8),
(15, 12, 8);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `review_header` varchar(255) NOT NULL,
  `review_date` date NOT NULL,
  `review_summary` text NOT NULL,
  `review_star_rating` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `review_header`, `review_date`, `review_summary`, `review_star_rating`) VALUES
(1, 'Classic ', '2022-11-01', 'I spent 3 nights here recently and was very impressed. The service was spot on from check in to check out. Classic good old fashioned service of the best kind. The room was spacious and amenities were great. Breakfast was excellent. The pool area was neat and well run. I didn\'t try the spa but it looked great. A calm, comdortable, well run place to stay. Thank you', 5),
(2, 'clean friendly hotel great pool', '2022-11-01', 'arrived here on Monday 24th October and emailed hotel as we were arriving at 1;30 am and was hoping for something to eat got no reply and no food left in room for us just 2 little cups of water Hotel is very clean and friendly staff work tirelessly food was edible but as my wife is very fussy eater she sometimes had to do with chips from kids corner. but as Turkey isnt for us we will not be returning', 5),
(3, '5 star service excellent hotel and position in Valetta.', '2022-11-01', 'Excellent staff and service at this hotel. Walking distance to beautiful Valetta especially at night. We will definately be back. We stayed in a seafacing rooms which was definately worth it. Breakfast was exceptional. It isnt cheap but it is definately worth the money.', 5),
(4, 'Family of 8', '2022-10-31', 'Fabulous family holiday. 8 of us went, age range was 17-70. The hotel is clean, the food is nice and varied. The drinks are good. The drinks are better in the lobby than the pool bar. Not all the bars were open as it was end of season but you can get food and drink in the main restaurant, the Al a carte restaurants and the beach restaurant. There is a coffee shop that serves ice creams, cookies etc that is really good too. Two negatives- the pools are cold and the Italian restaurant was not nice. The first two days the pools were freezing because the temperature was only 22-23 the rest of the week was 26-27 and the pool was slightly warmer. This wouldn’t stop us going back. The beach is nice and we went in the sea a few times as it was warmer than the pools. The slides are really good, and there is a kiddy pool with slides for younger children. The entertainment is good, it starts late in the amphitheatre near the beach but it’s worth watching. The staff are all helpful. We went for a meal in the town to Topaki restaurant, really good food, overlooking the beach. We did the boat trip that stops at three bays, that was a good day out. Kids jumped in the sea at each stop and went on the banana boat and there was dancing on the deck with foam. In the hotel the young ones hired segways and small kids can hire electric cars. There is shops onsite, tattooist, jewellers, bag shop, barbers, spa. We all had the Turkish bath but didn’t rate it. I would definitely go back, we all really enjoyed it.', 5),
(5, 'Would definitely visit again', '2022-09-04', 'The room was lovely, the beds were very comfy. The staff were so friendly and Extremely helpful. The breakfast was AMAZING. Even had a bloody Mary station. The location was perfect for wondering around the gothic quarter. Highly recommend!', 5),
(6, 'Amazing !!!', '2022-10-29', 'Can\'t recommend this hotel highly enough excellent location walking distance to nearly all main attractions all staff were very helpful and friendly have to give special thanks to salvatore in the restaurant who made us feel so welcome brilliant at his job and a great sense of humour will definitely be staying here again', 5);

-- --------------------------------------------------------

--
-- Table structure for table `room_booking`
--

CREATE TABLE `room_booking` (
  `room_booking_id` int(11) NOT NULL,
  `vaild_from_date` date NOT NULL,
  `valid_to_date` date NOT NULL,
  `hotel_rooms_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_booking`
--

INSERT INTO `room_booking` (`room_booking_id`, `vaild_from_date`, `valid_to_date`, `hotel_rooms_id`, `hotel_id`, `booking_id`) VALUES
(15, '2023-04-01', '2023-04-08', 1, 7, 2),
(16, '2023-01-01', '2023-01-05', 4, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `room_facilities_type`
--

CREATE TABLE `room_facilities_type` (
  `room_facilities_type_id` int(11) NOT NULL,
  `facility_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_facilities_type`
--

INSERT INTO `room_facilities_type` (`room_facilities_type_id`, `facility_name`) VALUES
(1, 'Mini Bar'),
(2, 'Tv'),
(3, 'Netflix'),
(4, 'Hot Tub'),
(5, 'Balcony'),
(6, 'Sea View');

-- --------------------------------------------------------

--
-- Table structure for table `room_facilties`
--

CREATE TABLE `room_facilties` (
  `room_facilities_id` int(11) NOT NULL,
  `room_type_id` int(11) NOT NULL,
  `room_facilities_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_facilties`
--

INSERT INTO `room_facilties` (`room_facilities_id`, `room_type_id`, `room_facilities_type_id`) VALUES
(1, 15, 5),
(2, 15, 4),
(3, 15, 3),
(4, 15, 1),
(5, 15, 6),
(6, 15, 2),
(7, 16, 5),
(8, 16, 1),
(9, 16, 4),
(10, 16, 6),
(11, 7, 5),
(12, 7, 3),
(13, 8, 1),
(14, 8, 3),
(15, 9, 5),
(16, 9, 3),
(17, 10, 5),
(18, 10, 3),
(19, 5, 1),
(20, 6, 1),
(21, 11, 4),
(22, 11, 5),
(23, 12, 4),
(24, 12, 5),
(25, 13, 5),
(26, 14, 5),
(27, 15, 5);

-- --------------------------------------------------------

--
-- Table structure for table `room_price`
--

CREATE TABLE `room_price` (
  `room_price_id` int(11) NOT NULL,
  `room_type_id` int(11) NOT NULL,
  `room_pricing_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_price`
--

INSERT INTO `room_price` (`room_price_id`, `room_type_id`, `room_pricing_id`) VALUES
(1, 15, 12),
(2, 16, 13),
(3, 7, 4),
(4, 8, 5),
(5, 9, 5),
(6, 10, 6),
(7, 5, 2),
(8, 6, 3),
(9, 11, 8),
(10, 12, 9),
(11, 13, 10),
(12, 14, 11);

-- --------------------------------------------------------

--
-- Table structure for table `room_pricing`
--

CREATE TABLE `room_pricing` (
  `room_price_id` int(11) NOT NULL,
  `price_per_night` decimal(10,2) NOT NULL,
  `valid_from_date` date NOT NULL,
  `valid_to_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_pricing`
--

INSERT INTO `room_pricing` (`room_price_id`, `price_per_night`, `valid_from_date`, `valid_to_date`) VALUES
(2, '100.00', '2023-01-01', '2023-06-30'),
(3, '120.00', '2023-07-01', '2023-12-31'),
(4, '130.00', '2023-01-01', '2023-06-30'),
(5, '140.00', '2023-07-01', '2023-12-31'),
(6, '150.00', '2023-01-01', '2023-06-30'),
(7, '160.00', '2023-07-01', '2023-12-31'),
(8, '160.00', '2023-01-01', '2023-06-30'),
(9, '170.00', '2023-07-01', '2023-12-31'),
(10, '130.00', '2023-01-01', '2023-06-30'),
(11, '140.00', '2023-07-01', '2023-12-31'),
(12, '200.00', '2023-01-01', '2023-06-30'),
(13, '220.00', '2023-07-01', '2023-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `room_type_id` int(11) NOT NULL,
  `room_type` text NOT NULL,
  `sleeps_max` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`room_type_id`, `room_type`, `sleeps_max`) VALUES
(5, 'Single', 1),
(6, 'Single', 1),
(7, 'Double', 2),
(8, 'Double', 2),
(9, 'Family', 5),
(10, 'Family', 5),
(11, 'Superior Double', 2),
(12, 'Superior Double', 2),
(13, 'Twin', 3),
(14, 'Twin', 3),
(15, 'Deluxe Suite', 6),
(16, 'Deluxe Suite', 6);

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `route_id` int(11) NOT NULL,
  `route_name` varchar(255) NOT NULL,
  `departure_airport_id` int(11) NOT NULL,
  `arrival_airport_id` int(11) NOT NULL,
  `duration_hours` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`route_id`, `route_name`, `departure_airport_id`, `arrival_airport_id`, `duration_hours`) VALUES
(11, 'Belfast to Barcelona', 2, 10, '2.50'),
(12, 'Barcelona to Belfast', 10, 2, '3.00'),
(13, 'Belfast to Malta', 2, 24, '5.00'),
(14, 'Malta to Belfast', 24, 2, '4.00'),
(15, 'Manchester to Turkey', 6, 26, '3.50'),
(16, 'Turkey to Manchester', 26, 6, '4.50'),
(17, 'London to Turkey', 5, 25, '4.50'),
(18, 'Turkey to London', 25, 5, '4.00'),
(19, 'Belfast to Rome', 2, 21, '3.00'),
(20, 'Rome to Belfast', 21, 2, '2.50'),
(21, 'Belfast to Valetta', 2, 25, '4.00'),
(22, 'Valletta to Belfast', 25, 2, '3.50');

-- --------------------------------------------------------

--
-- Table structure for table `seat_price`
--

CREATE TABLE `seat_price` (
  `seat_price_id` int(11) NOT NULL,
  `seat_number` varchar(255) NOT NULL,
  `seat_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seat_price`
--

INSERT INTO `seat_price` (`seat_price_id`, `seat_number`, `seat_price`) VALUES
(1, '1A', '10.00'),
(3, '1B', '8.00'),
(4, '1C', '6.00'),
(5, '2A', '10.00'),
(6, '2B', '8.00'),
(7, '2C', '6.00'),
(8, '3A', '10.00'),
(9, '3B', '8.00'),
(10, '3C', '6.00'),
(11, '4A', '10.00'),
(12, '4B', '8.00'),
(13, '4C', '6.00'),
(14, '5A', '10.00'),
(15, '5B', '8.00'),
(16, '5C', '6.00'),
(17, '6A', '8.00'),
(18, '6B', '6.00'),
(19, '6C', '5.00'),
(20, '7A', '8.00'),
(21, '7B', '6.00'),
(22, '7C', '5.00'),
(23, '8A', '18.00'),
(24, '8B', '16.00'),
(25, '8C', '15.00'),
(26, '9A', '8.00'),
(27, '9B', '6.00'),
(28, '9C', '5.00'),
(29, '10A', '8.00'),
(30, '10B', '6.00'),
(31, '10C', '5.00'),
(32, '11A', '6.00'),
(33, '11B', '5.00'),
(34, '11C', '4.00'),
(35, '12A', '6.00'),
(36, '12B', '5.00'),
(37, '12C', '4.00'),
(38, '13A', '6.00'),
(39, '13B', '5.00'),
(40, '13C', '4.00'),
(41, '14A', '6.00'),
(42, '14B', '5.00'),
(43, '14C', '4.00'),
(44, '15A', '6.00'),
(45, '15B', '5.00'),
(46, '15C', '4.00'),
(47, '16A', '6.00'),
(48, '16B', '5.00'),
(49, '16C', '4.00');

-- --------------------------------------------------------

--
-- Table structure for table `star_rating`
--

CREATE TABLE `star_rating` (
  `star_rating_id` int(11) NOT NULL,
  `start_rating` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `star_rating`
--

INSERT INTO `star_rating` (`star_rating_id`, `start_rating`) VALUES
(1, '1 Star'),
(2, '2 Star'),
(3, '3 Star'),
(4, '4 Star'),
(5, '5 Star');

-- --------------------------------------------------------

--
-- Table structure for table `timezone`
--

CREATE TABLE `timezone` (
  `timezone_id` int(11) NOT NULL,
  `timezone` varchar(255) NOT NULL,
  `time_diff` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `timezone`
--

INSERT INTO `timezone` (`timezone_id`, `timezone`, `time_diff`) VALUES
(1, 'GMT Standard Time', 0),
(2, 'Central Standard Time (US)', -6),
(3, 'Eastern Standard Time (US)', -5),
(4, 'Mexico Standard Time', -6),
(5, 'Mid-Atlantic Standard Time', -2),
(6, 'Western Europe Standard Time', 1),
(7, 'Tokyo Standard Time', 9),
(8, 'Central European Standard Time', 1),
(9, 'Eastern European Standard Time', 2);

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE `title` (
  `title_id` int(11) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`title_id`, `title`) VALUES
(1, 'Mr'),
(2, 'Mrs'),
(3, 'Ms'),
(4, 'Mx'),
(5, 'Miss'),
(6, 'Master'),
(7, 'Sir'),
(8, 'Dame'),
(9, 'Dr'),
(10, 'Cllr');

-- --------------------------------------------------------

--
-- Table structure for table `traveler`
--

CREATE TABLE `traveler` (
  `traveler_id` int(11) NOT NULL,
  `traveler_type_id` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `booking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `traveler`
--

INSERT INTO `traveler` (`traveler_id`, `traveler_type_id`, `title_id`, `first_name`, `last_name`, `date_of_birth`, `booking_id`) VALUES
(1, 1, 1, 'Joe', 'Blogg', '1982-11-04', 2),
(2, 2, 6, 'Jimmy', 'Blogg', '2021-11-10', 2),
(3, 1, 2, 'Jenny', 'Blogg', '1985-03-19', 2),
(4, 3, 5, 'Suzan', 'Smiley', '2002-11-02', 3);

-- --------------------------------------------------------

--
-- Table structure for table `traveler_type`
--

CREATE TABLE `traveler_type` (
  `traveler_type_id` int(11) NOT NULL,
  `traveler_type` varchar(255) NOT NULL,
  `description` varchar(2555) NOT NULL,
  `concession_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `traveler_type`
--

INSERT INTO `traveler_type` (`traveler_type_id`, `traveler_type`, `description`, `concession_amount`) VALUES
(1, 'Adult', 'Full Price', 20),
(2, 'Under 2 Years', 'Concession Traveller ', 0),
(3, 'Solo ', 'Concession Traveller', -30),
(4, 'Senior Citizen', 'Concession Traveller', -50),
(5, 'Disability', 'Concession traveller', -50),
(6, 'Under 12 Years', 'Concession Traveller', -25),
(7, 'Student', 'Concession Traveller', -30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `FK_city_city_id` (`city_id`),
  ADD KEY `FK_address_type_address_type_id` (`address_type_id`);

--
-- Indexes for table `address_type`
--
ALTER TABLE `address_type`
  ADD PRIMARY KEY (`address_type_id`);

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`airport_id`),
  ADD KEY `FK_city_city_id_two` (`city_id`);

--
-- Indexes for table `board`
--
ALTER TABLE `board`
  ADD PRIMARY KEY (`board_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `FK_resort_resort_id_2` (`resort_id`),
  ADD KEY `FK_customer_customer_id_2` (`customer_id`),
  ADD KEY `FK_hotel_hote_id_3` (`hotel_id`),
  ADD KEY `FK_board_board_id` (`board_id`),
  ADD KEY `FK_payment_payment_id` (`payment_id`),
  ADD KEY `FK_flights_outbound_flight_id` (`outbound_flight_id`),
  ADD KEY `FK_flights_return_flight_id` (`return_flight_id`),
  ADD KEY `FK_review_review_id_1` (`review_id`);

--
-- Indexes for table `booking_line_item`
--
ALTER TABLE `booking_line_item`
  ADD PRIMARY KEY (`booking_line_item_id`),
  ADD KEY `FK_booking_booking_id_two` (`booking_id`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`card_id`),
  ADD KEY `FK_card_card_type_id` (`card_type_id`),
  ADD KEY `FK_address_address_id_two` (`address_id`);

--
-- Indexes for table `card_type`
--
ALTER TABLE `card_type`
  ADD PRIMARY KEY (`card_type_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `FK_country_country_id` (`country_id`),
  ADD KEY `FK_timezone_timezone_id` (`timezone_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `FK_customer_card_id` (`card_id`),
  ADD KEY `FK_customer_payment_id` (`payment_id`),
  ADD KEY `FK_title_title_id` (`title_id`),
  ADD KEY `FK_address_address_id` (`address_id`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`flight_id`),
  ADD KEY `FK_flight_base_price_flight_base_price_id` (`flight_base_price_id`),
  ADD KEY `FK_seat_price_seat_price_id` (`seat_price_id`),
  ADD KEY `FK_route_route_id` (`route_id`);

--
-- Indexes for table `flight_base_price`
--
ALTER TABLE `flight_base_price`
  ADD PRIMARY KEY (`flight_base_price_id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hotel_id`),
  ADD KEY `FK_resort_resort_id_two` (`resort_id`),
  ADD KEY `FK_address_address_id_three` (`address_id`),
  ADD KEY `FK_hotel_images_image_id_two` (`image_id`),
  ADD KEY `FK_star_rating_rating_id` (`star_rating_id`),
  ADD KEY `FK_review_review_id` (`review_id`);

--
-- Indexes for table `hotel_board`
--
ALTER TABLE `hotel_board`
  ADD PRIMARY KEY (`hotel_board_id`),
  ADD KEY `FK_hotel_hotel_id_three` (`hotel_id`),
  ADD KEY `FK_board_board_id_two` (`board_id`);

--
-- Indexes for table `hotel_facilities`
--
ALTER TABLE `hotel_facilities`
  ADD PRIMARY KEY (`hotel_facilities_id`),
  ADD KEY `FK_hotel_hotel_id` (`hotel_id`),
  ADD KEY `FK_hotel_facilities_type_hotel_facilities_type_id` (`hotel_facilities_type_id`);

--
-- Indexes for table `hotel_facilities_type`
--
ALTER TABLE `hotel_facilities_type`
  ADD PRIMARY KEY (`hotel_facilities_type_id`);

--
-- Indexes for table `hotel_images`
--
ALTER TABLE `hotel_images`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `hotel_rooms`
--
ALTER TABLE `hotel_rooms`
  ADD PRIMARY KEY (`hotel_rooms_id`),
  ADD KEY `FK_hotel_hotel_id_2` (`hotel_id`),
  ADD KEY `FK_room_type_room_type_id_2` (`room_type_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`language_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `FK_payment_type_payment_type_id` (`payment_type_id`),
  ADD KEY `FK_card_type_card_type_id` (`card_type_id`);

--
-- Indexes for table `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`payment_type_id`);

--
-- Indexes for table `resort`
--
ALTER TABLE `resort`
  ADD PRIMARY KEY (`resort_id`),
  ADD KEY `FK_city_city_id_three` (`city_id`);

--
-- Indexes for table `resort_currency`
--
ALTER TABLE `resort_currency`
  ADD PRIMARY KEY (`resort_currency_id`),
  ADD KEY `FK_resort_resort_id_three` (`resort_id`),
  ADD KEY `FK_currency_currency_id_two` (`currency_id`);

--
-- Indexes for table `resort_language`
--
ALTER TABLE `resort_language`
  ADD PRIMARY KEY (`resort_language_id`),
  ADD KEY `FK_resort_resort_id` (`resort_id`),
  ADD KEY `FK_language_language_id` (`language_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `room_booking`
--
ALTER TABLE `room_booking`
  ADD PRIMARY KEY (`room_booking_id`),
  ADD KEY `FK_room_room_id` (`hotel_rooms_id`),
  ADD KEY `FK_hotel_hotel_id_two` (`hotel_id`),
  ADD KEY `FK_booking_booking_id_three` (`booking_id`);

--
-- Indexes for table `room_facilities_type`
--
ALTER TABLE `room_facilities_type`
  ADD PRIMARY KEY (`room_facilities_type_id`);

--
-- Indexes for table `room_facilties`
--
ALTER TABLE `room_facilties`
  ADD PRIMARY KEY (`room_facilities_id`),
  ADD KEY `FK_room_facilitites_type_room_facilities_type_id` (`room_facilities_type_id`),
  ADD KEY `FK_room_type_room_type_id` (`room_type_id`);

--
-- Indexes for table `room_price`
--
ALTER TABLE `room_price`
  ADD PRIMARY KEY (`room_price_id`),
  ADD KEY `FK_room_type_room_type_id_1` (`room_type_id`),
  ADD KEY `FK_room_pricing_room_pricing_id` (`room_pricing_id`);

--
-- Indexes for table `room_pricing`
--
ALTER TABLE `room_pricing`
  ADD PRIMARY KEY (`room_price_id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`room_type_id`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`route_id`),
  ADD KEY `FK_airport_departure_airport_id` (`departure_airport_id`),
  ADD KEY `FK_airport_arrival_airport_id` (`arrival_airport_id`);

--
-- Indexes for table `seat_price`
--
ALTER TABLE `seat_price`
  ADD PRIMARY KEY (`seat_price_id`);

--
-- Indexes for table `star_rating`
--
ALTER TABLE `star_rating`
  ADD PRIMARY KEY (`star_rating_id`);

--
-- Indexes for table `timezone`
--
ALTER TABLE `timezone`
  ADD PRIMARY KEY (`timezone_id`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`title_id`);

--
-- Indexes for table `traveler`
--
ALTER TABLE `traveler`
  ADD PRIMARY KEY (`traveler_id`),
  ADD KEY `FK_traveler_type_traveler_type_id` (`traveler_type_id`),
  ADD KEY `FK_title_title_id_two` (`title_id`),
  ADD KEY `FK_booking_booking_id_2` (`booking_id`);

--
-- Indexes for table `traveler_type`
--
ALTER TABLE `traveler_type`
  ADD PRIMARY KEY (`traveler_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `address_type`
--
ALTER TABLE `address_type`
  MODIFY `address_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `airport`
--
ALTER TABLE `airport`
  MODIFY `airport_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `board`
--
ALTER TABLE `board`
  MODIFY `board_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `booking_line_item`
--
ALTER TABLE `booking_line_item`
  MODIFY `booking_line_item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `card_type`
--
ALTER TABLE `card_type`
  MODIFY `card_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `flight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `flight_base_price`
--
ALTER TABLE `flight_base_price`
  MODIFY `flight_base_price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hotel_board`
--
ALTER TABLE `hotel_board`
  MODIFY `hotel_board_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `hotel_facilities`
--
ALTER TABLE `hotel_facilities`
  MODIFY `hotel_facilities_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `hotel_facilities_type`
--
ALTER TABLE `hotel_facilities_type`
  MODIFY `hotel_facilities_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hotel_images`
--
ALTER TABLE `hotel_images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `hotel_rooms`
--
ALTER TABLE `hotel_rooms`
  MODIFY `hotel_rooms_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_type`
--
ALTER TABLE `payment_type`
  MODIFY `payment_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `resort`
--
ALTER TABLE `resort`
  MODIFY `resort_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `resort_currency`
--
ALTER TABLE `resort_currency`
  MODIFY `resort_currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `resort_language`
--
ALTER TABLE `resort_language`
  MODIFY `resort_language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `room_booking`
--
ALTER TABLE `room_booking`
  MODIFY `room_booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `room_facilities_type`
--
ALTER TABLE `room_facilities_type`
  MODIFY `room_facilities_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `room_facilties`
--
ALTER TABLE `room_facilties`
  MODIFY `room_facilities_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `room_price`
--
ALTER TABLE `room_price`
  MODIFY `room_price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `room_pricing`
--
ALTER TABLE `room_pricing`
  MODIFY `room_price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `room_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `seat_price`
--
ALTER TABLE `seat_price`
  MODIFY `seat_price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `star_rating`
--
ALTER TABLE `star_rating`
  MODIFY `star_rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `timezone`
--
ALTER TABLE `timezone`
  MODIFY `timezone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
  MODIFY `title_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `traveler`
--
ALTER TABLE `traveler`
  MODIFY `traveler_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `traveler_type`
--
ALTER TABLE `traveler_type`
  MODIFY `traveler_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK_address_type_address_type_id` FOREIGN KEY (`address_type_id`) REFERENCES `address_type` (`address_type_id`),
  ADD CONSTRAINT `FK_city_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`);

--
-- Constraints for table `airport`
--
ALTER TABLE `airport`
  ADD CONSTRAINT `FK_city_city_id_two` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`);

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FK_board_board_id` FOREIGN KEY (`board_id`) REFERENCES `board` (`board_id`),
  ADD CONSTRAINT `FK_customer_customer_id_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `FK_flights_outbound_flight_id` FOREIGN KEY (`outbound_flight_id`) REFERENCES `flights` (`flight_id`),
  ADD CONSTRAINT `FK_flights_return_flight_id` FOREIGN KEY (`return_flight_id`) REFERENCES `flights` (`flight_id`),
  ADD CONSTRAINT `FK_hotel_hote_id_3` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`),
  ADD CONSTRAINT `FK_payment_payment_id` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`),
  ADD CONSTRAINT `FK_resort_resort_id_2` FOREIGN KEY (`resort_id`) REFERENCES `resort` (`resort_id`),
  ADD CONSTRAINT `FK_review_review_id_1` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`);

--
-- Constraints for table `booking_line_item`
--
ALTER TABLE `booking_line_item`
  ADD CONSTRAINT `FK_booking_booking_id_two` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`);

--
-- Constraints for table `card`
--
ALTER TABLE `card`
  ADD CONSTRAINT `FK_address_address_id_two` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
  ADD CONSTRAINT `FK_card_card_type_id` FOREIGN KEY (`card_type_id`) REFERENCES `card_type` (`card_type_id`);

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `FK_country_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`),
  ADD CONSTRAINT `FK_timezone_timezone_id` FOREIGN KEY (`timezone_id`) REFERENCES `timezone` (`timezone_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `FK_address_address_id` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
  ADD CONSTRAINT `FK_customer_payment_id` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`),
  ADD CONSTRAINT `FK_title_title_id` FOREIGN KEY (`title_id`) REFERENCES `title` (`title_id`);

--
-- Constraints for table `flights`
--
ALTER TABLE `flights`
  ADD CONSTRAINT `FK_flight_base_price_flight_base_price_id` FOREIGN KEY (`flight_base_price_id`) REFERENCES `flight_base_price` (`flight_base_price_id`),
  ADD CONSTRAINT `FK_route_route_id` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`),
  ADD CONSTRAINT `FK_seat_price_seat_price_id` FOREIGN KEY (`seat_price_id`) REFERENCES `seat_price` (`seat_price_id`);

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `FK_address_address_id_three` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
  ADD CONSTRAINT `FK_hotel_images_image_id` FOREIGN KEY (`image_id`) REFERENCES `hotel_images` (`image_id`),
  ADD CONSTRAINT `FK_resort_resort_id_two` FOREIGN KEY (`resort_id`) REFERENCES `resort` (`resort_id`),
  ADD CONSTRAINT `FK_review_review_id` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`),
  ADD CONSTRAINT `FK_star_rating_rating_id` FOREIGN KEY (`star_rating_id`) REFERENCES `star_rating` (`star_rating_id`);

--
-- Constraints for table `hotel_board`
--
ALTER TABLE `hotel_board`
  ADD CONSTRAINT `FK_board_board_id_two` FOREIGN KEY (`board_id`) REFERENCES `board` (`board_id`),
  ADD CONSTRAINT `FK_hotel_hotel_id_three` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`);

--
-- Constraints for table `hotel_facilities`
--
ALTER TABLE `hotel_facilities`
  ADD CONSTRAINT `FK_hotel_facilities_type_hotel_facilities_type_id` FOREIGN KEY (`hotel_facilities_type_id`) REFERENCES `hotel_facilities_type` (`hotel_facilities_type_id`),
  ADD CONSTRAINT `FK_hotel_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`);

--
-- Constraints for table `hotel_rooms`
--
ALTER TABLE `hotel_rooms`
  ADD CONSTRAINT `FK_hotel_hotel_id_2` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`),
  ADD CONSTRAINT `FK_room_type_room_type_id_2` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `FK_card_type_card_type_id` FOREIGN KEY (`card_type_id`) REFERENCES `card_type` (`card_type_id`),
  ADD CONSTRAINT `FK_payment_type_payment_type_id` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_type` (`payment_type_id`);

--
-- Constraints for table `resort`
--
ALTER TABLE `resort`
  ADD CONSTRAINT `FK_city_city_id_three` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`);

--
-- Constraints for table `resort_currency`
--
ALTER TABLE `resort_currency`
  ADD CONSTRAINT `FK_currency_currency_id_two` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`currency_id`),
  ADD CONSTRAINT `FK_resort_resort_id_three` FOREIGN KEY (`resort_id`) REFERENCES `resort` (`resort_id`);

--
-- Constraints for table `resort_language`
--
ALTER TABLE `resort_language`
  ADD CONSTRAINT `FK_language_language_id` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`),
  ADD CONSTRAINT `FK_resort_resort_id` FOREIGN KEY (`resort_id`) REFERENCES `resort` (`resort_id`);

--
-- Constraints for table `room_booking`
--
ALTER TABLE `room_booking`
  ADD CONSTRAINT `FK_booking_booking_id_three` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `FK_hotel_hotel_id_two` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`),
  ADD CONSTRAINT `FK_room_room_id` FOREIGN KEY (`hotel_rooms_id`) REFERENCES `hotel_rooms` (`hotel_rooms_id`);

--
-- Constraints for table `room_facilties`
--
ALTER TABLE `room_facilties`
  ADD CONSTRAINT `FK_room_facilitites_type_room_facilities_type_id` FOREIGN KEY (`room_facilities_type_id`) REFERENCES `room_facilities_type` (`room_facilities_type_id`),
  ADD CONSTRAINT `FK_room_type_room_type_id` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`);

--
-- Constraints for table `room_price`
--
ALTER TABLE `room_price`
  ADD CONSTRAINT `FK_room_pricing_room_pricing_id` FOREIGN KEY (`room_pricing_id`) REFERENCES `room_pricing` (`room_price_id`),
  ADD CONSTRAINT `FK_room_type_room_type_id_1` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`);

--
-- Constraints for table `route`
--
ALTER TABLE `route`
  ADD CONSTRAINT `FK_airport_arrival_airport_id` FOREIGN KEY (`arrival_airport_id`) REFERENCES `airport` (`airport_id`),
  ADD CONSTRAINT `FK_airport_departure_airport_id` FOREIGN KEY (`departure_airport_id`) REFERENCES `airport` (`airport_id`);

--
-- Constraints for table `traveler`
--
ALTER TABLE `traveler`
  ADD CONSTRAINT `FK_booking_booking_id_2` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `FK_title_title_id_two` FOREIGN KEY (`title_id`) REFERENCES `title` (`title_id`),
  ADD CONSTRAINT `FK_traveler_type_traveler_type_id` FOREIGN KEY (`traveler_type_id`) REFERENCES `traveler_type` (`traveler_type_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
