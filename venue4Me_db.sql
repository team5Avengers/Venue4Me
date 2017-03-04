-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.16 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             8.1.0.4545
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for venue4me
CREATE DATABASE IF NOT EXISTS `venue4me` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `venue4me`;


-- Dumping structure for table venue4me.addon
CREATE TABLE IF NOT EXISTS `addon` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `description` varchar(500) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(20) NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `aid` (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table venue4me.addon: ~0 rows (approximately)
/*!40000 ALTER TABLE `addon` DISABLE KEYS */;
/*!40000 ALTER TABLE `addon` ENABLE KEYS */;


-- Dumping structure for table venue4me.address_info
CREATE TABLE IF NOT EXISTS `address_info` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` varchar(10) NOT NULL,
  `street1` varchar(300) NOT NULL,
  `street2` varchar(150) NOT NULL,
  `landmark` varchar(50) NOT NULL,
  `locality` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `postalcode` varchar(6) NOT NULL,
  `longitude` float NOT NULL DEFAULT '0',
  `latitude` float NOT NULL DEFAULT '0',
  `created_by` varchar(20) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(20) NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table venue4me.address_info: ~0 rows (approximately)
/*!40000 ALTER TABLE `address_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `address_info` ENABLE KEYS */;


-- Dumping structure for table venue4me.booking_avail
CREATE TABLE IF NOT EXISTS `booking_avail` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `hid` varchar(10) NOT NULL,
  `slotid` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(20) NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table venue4me.booking_avail: ~0 rows (approximately)
/*!40000 ALTER TABLE `booking_avail` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking_avail` ENABLE KEYS */;


-- Dumping structure for table venue4me.booking_transaction
CREATE TABLE IF NOT EXISTS `booking_transaction` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` varchar(10) NOT NULL,
  `booking_id` varchar(10) NOT NULL,
  `transactionId` varchar(50) NOT NULL,
  `transaction_type` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(20) NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `booking_id` (`booking_id`),
  UNIQUE KEY `transactionId` (`transactionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table venue4me.booking_transaction: ~0 rows (approximately)
/*!40000 ALTER TABLE `booking_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking_transaction` ENABLE KEYS */;


-- Dumping structure for table venue4me.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `customerid` varchar(25) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(20) NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `customerid` (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table venue4me.customer: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;


-- Dumping structure for table venue4me.hall
CREATE TABLE IF NOT EXISTS `hall` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `hid` varchar(15) NOT NULL DEFAULT '0',
  `hname` varchar(100) NOT NULL DEFAULT '0',
  `category` varchar(5) NOT NULL DEFAULT '0',
  `booking_amt` float NOT NULL DEFAULT '0',
  `pricing` float NOT NULL DEFAULT '0',
  `hall_shortdesc` varchar(100) NOT NULL DEFAULT '0',
  `hall_desc` varchar(500) NOT NULL DEFAULT '0',
  `features` varchar(500) NOT NULL DEFAULT '0',
  `capacity` int(11) NOT NULL DEFAULT '0',
  `menu` varchar(100) NOT NULL DEFAULT '0',
  `seating` varchar(100) NOT NULL DEFAULT '0',
  `events` varchar(300) NOT NULL DEFAULT '0',
  `vid` varchar(10) NOT NULL DEFAULT '0',
  `created_by` varchar(20) NOT NULL DEFAULT '0',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(20) NOT NULL DEFAULT '0',
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `hid` (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table venue4me.hall: ~25 rows (approximately)
/*!40000 ALTER TABLE `hall` DISABLE KEYS */;
INSERT INTO `hall` (`Id`, `hid`, `hname`, `category`, `booking_amt`, `pricing`, `hall_shortdesc`, `hall_desc`, `features`, `capacity`, `menu`, `seating`, `events`, `vid`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES
	(1, 'h2', 'Manasarovar the Fern', 'Banqu', 1025, 10, 'An environmentally responsible hotel with various Eco initiatives, Manasarovar-The Fern, in Hyderaba', 'NA', 'NA', 175, 'NA', 'NA', 'Cocktail Party;Get Together;Wedding;Birthdays;Conference;Wedding Anniversary;Destination Weddings;Engagement;Kitty Party;Sangeet Ceremony;Baby Shower;Naming Ceremony;Annual Meet;Business Lunch/Dinner;Board Room Meeting;Corporate Trainings;Convention;Product Launch;Walk in Interview;Fresher/Farewell ', 'v1', '0', '2017-03-04 15:51:57', '0', '2017-03-04 15:52:38'),
	(2, 'h3', 'Manasarovar the Fern', 'Banqu', 1025, 10, 'An environmentally responsible hotel with various Eco initiatives, Manasarovar-The Fern, in Hyderaba', 'NA', 'NA', 325, 'NA', 'NA', 'Cocktail Party;Get Together;Wedding;Birthdays;Conference;Wedding Anniversary;Destination Weddings;Engagement;Kitty Party;Sangeet Ceremony;Baby Shower;Naming Ceremony;Annual Meet;Business Lunch/Dinner;Board Room Meeting;Corporate Trainings;Convention;Product Launch;Walk in Interview;Fresher/Farewell ', 'v1', '0', '2017-03-04 15:51:57', '0', '2017-03-04 15:52:42'),
	(3, 'h4', 'Manasarovar the Fern', 'Banqu', 1025, 10, 'An environmentally responsible hotel with various Eco initiatives, Manasarovar-The Fern, in Hyderaba', 'NA', 'NA', 900, 'NA', 'NA', 'Cocktail Party;Get Together;Wedding;Birthdays;Conference;Wedding Anniversary;Destination Weddings;Engagement;Kitty Party;Sangeet Ceremony;Baby Shower;Naming Ceremony;Annual Meet;Business Lunch/Dinner;Board Room Meeting;Corporate Trainings;Convention;Product Launch;Walk in Interview;Fresher/Farewell ', 'v1', '0', '2017-03-04 15:51:57', '0', '2017-03-04 15:52:46'),
	(4, 'h5', 'Manasarovar the Fern', 'Banqu', 1025, 10, 'An environmentally responsible hotel with various Eco initiatives, Manasarovar-The Fern, in Hyderaba', 'NA', 'NA', 175, 'NA', 'NA', 'Cocktail Party;Get Together;Wedding;Birthdays;Conference;Wedding Anniversary;Destination Weddings;Engagement;Kitty Party;Sangeet Ceremony;Baby Shower;Naming Ceremony;Annual Meet;Business Lunch/Dinner;Board Room Meeting;Corporate Trainings;Convention;Product Launch;Walk in Interview;Fresher/Farewell ', 'v1', '0', '2017-03-04 15:51:57', '0', '2017-03-04 15:52:50'),
	(5, 'h6', 'Manda yadav reddy garden', 'Funct', 100000, 10, 'An environmentally responsible hotel with various Eco initiatives, Manasarovar-The Fern, in Hyderaba', 'NA', 'NA', 500, 'NA', 'NA', 'Cocktail Party;Get Together;Wedding;Birthdays;Conference;Wedding Anniversary;Destination Weddings;Engagement;Kitty Party;Sangeet Ceremony;Baby Shower;Naming Ceremony;Annual Meet;Business Lunch/Dinner;Board Room Meeting;Corporate Trainings;Convention;Product Launch;Walk in Interview;Fresher/Farewell ', 'v1', '0', '2017-03-04 15:51:57', '0', '2017-03-04 15:52:55'),
	(6, 'h7', 'Vijay garden', 'Funct', 200000, 10, 'An environmentally responsible hotel with various Eco initiatives, Manasarovar-The Fern, in Hyderaba', 'NA', 'NA', 2000, 'NA', 'NA', 'Cocktail Party;Get Together;Wedding;Birthdays;Conference;Wedding Anniversary;Destination Weddings;Engagement;Kitty Party;Sangeet Ceremony;Baby Shower;Naming Ceremony;Annual Meet;Business Lunch/Dinner;Board Room Meeting;Corporate Trainings;Convention;Product Launch;Walk in Interview;Fresher/Farewell ', 'v2', '0', '2017-03-04 15:51:57', '0', '2017-03-04 15:52:59'),
	(7, 'h8', 'Minerva garden', 'Funct', 250000, 10, 'An environmentally responsible hotel with various Eco initiatives, Manasarovar-The Fern, in Hyderaba', 'NA', 'NA', 1000, 'NA', 'NA', 'Cocktail Party;Get Together;Wedding;Birthdays;Conference;Wedding Anniversary;Destination Weddings;Engagement;Kitty Party;Sangeet Ceremony;Baby Shower;Naming Ceremony;Annual Meet;Business Lunch/Dinner;Board Room Meeting;Corporate Trainings;Convention;Product Launch;Walk in Interview;Fresher/Farewell ', 'v3', '0', '2017-03-04 15:51:57', '0', '2017-03-04 15:53:03'),
	(8, 'h9', 'Mega function hall ', 'Funct', 50000, 10, ' Manda Yadava Reddy Gardens is one of the highly reputed marriage halls located in Champapet, Hydera', 'NA', 'NA', 200, 'NA', 'NA', 'Cocktail Party;Get Together;Wedding;Birthdays;Conference;Wedding Anniversary;Destination Weddings;Engagement;Kitty Party;Sangeet Ceremony;Baby Shower;Naming Ceremony;Annual Meet;Business Lunch/Dinner;Board Room Meeting;Corporate Trainings;Convention;Product Launch;Walk in Interview;Fresher/Farewell ', 'v4', '0', '2017-03-04 15:51:57', '0', '2017-03-04 15:53:06'),
	(9, 'h10', 'Knr convention hall & banquet hall', 'Banqu', 1025, 10, ' Vijaya Garden Function Hall is one of the highly reputed marriage halls located in Golconda, Hydera', 'NA', 'NA', 300, 'NA', 'NA', 'Cocktail Party;Get Together;Wedding;Birthdays;Conference;Wedding Anniversary;Destination Weddings;Engagement;Kitty Party;Sangeet Ceremony;Baby Shower;Naming Ceremony;Annual Meet;Business Lunch/Dinner;Board Room Meeting;Corporate Trainings;Convention;Product Launch;Walk in Interview;Fresher/Farewell ', 'v5', '0', '2017-03-04 15:51:57', '0', '2017-03-04 15:53:10'),
	(10, 'h11', 'MAK Club & Resort', 'Banqu', 1025, 10, 'Minerva Gardens Function Hall is best for Wedding, Wedding Anniversary, Valentine\'s Day, Birthday Pa', 'NA', 'NA', 250, 'NA', 'NA', 'Cocktail Party;Get Together;Wedding;Birthdays;Conference;Wedding Anniversary;Destination Weddings;Engagement;Kitty Party;Sangeet Ceremony;Baby Shower;Naming Ceremony;Annual Meet;Business Lunch/Dinner;Board Room Meeting;Corporate Trainings;Convention;Product Launch;Walk in Interview;Fresher/Farewell ', 'v6', '0', '2017-03-04 15:51:57', '0', '2017-03-04 15:53:13'),
	(11, 'h12', 'prime garden function hall', 'Garde', 100000, 10, 'Mega Function Hall, Champapet, Hyderabad offers a beautiful and huge space for pre-wedding and weddi', 'NA', 'NA', 1000, 'NA', 'NA', 'Cocktail Party;Get Together;Wedding;Birthdays;Conference;Wedding Anniversary;Destination Weddings;Engagement;Kitty Party;Sangeet Ceremony;Baby Shower;Naming Ceremony;Annual Meet;Business Lunch/Dinner;Board Room Meeting;Corporate Trainings;Convention;Product Launch;Walk in Interview;Fresher/Farewell ', 'v7', '0', '2017-03-04 15:51:57', '0', '2017-03-04 15:53:16'),
	(12, 'h13', 'kothapaku yadhava reddy garden', 'Garde', 200000, 10, 'KNR Banquet & Conference  Hall in Champapet,Hyderabad listed under Function Hall Wedding with Addres', 'NA', 'NA', 2500, 'NA', 'NA', 'Cocktail Party;Get Together;Wedding;Birthdays;Conference;Wedding Anniversary;Destination Weddings;Engagement;Kitty Party;Sangeet Ceremony;Baby Shower;Naming Ceremony;Annual Meet;Business Lunch/Dinner;Board Room Meeting;Corporate Trainings;Convention;Product Launch;Walk in Interview;Fresher/Farewell ', 'v8', '0', '2017-03-04 15:51:57', '0', '2017-03-04 15:53:19'),
	(13, 'h14', 'Lalitha Gardens', 'Garde', 250000, 10, 'Mak Club, Ranga Reddy, Hyderabad is equipped to plan every aspect of your wedding function carefully', 'NA', 'NA', 750, 'NA', 'NA', 'Cocktail Party;Get TogetherKitty Party;Sangeet Ceremony;Baby Shower;Naming Ceremony;Annual Meet;Business Lunch/Dinner;Board Room Meeting;Corporate Trainings;Convention;Product Launch;Walk in Interview;Fresher/Farewell Party;Reunion Party;Seminar;Reception;', 'v9', '0', '2017-03-04 15:51:57', '0', '2017-03-04 15:53:22'),
	(14, 'h15', 'Laxma reddy gardens', 'Garde', 50000, 10, ' Jfs Prime Garden Function Hall is one of the sought after wedding halls located in Moti Nagar, Hyde', 'NA', 'NA', 1500, 'NA', 'NA', 'Cocktail Party;Get Together;Wedding;Birthdays;Conference;Wedding Anniversary;Destination Weddings;Engagement;Kitty Party;Sangeet Ceremony;Baby Shower;Naming Ceremony;Annual Meet;Business Lunch/Dinner;Board Room Meeting;Corporate Trainings;Convention;Product Launch;Walk in Interview;Fresher/Farewell ', 'v10', '0', '2017-03-04 15:51:57', '0', '2017-03-04 15:53:27'),
	(15, 'h16', 'Manasa Gardens', 'Garde', 100000, 10, ' Kothakapu Yadhava Reddy Gardens is one of the sought after marriage halls located in Champapet, Hyd', 'NA', 'NA', 1500, 'NA', 'NA', 'Cocktail Party;Get Together;Wedding;Birthdays;Conference;Wedding Anniversary;Destination Weddings;Engagement;Kitty Party;Sangeet Ceremony;Baby Shower;Naming Ceremony;Annual Meet;Business Lunch/Dinner;Board Room Meeting;Corporate Trainings;Convention;Product Launch;Walk in Interview;Fresher/Farewell ', 'v11', '0', '2017-03-04 15:51:57', '0', '2017-03-04 15:53:33'),
	(16, 'h17', 'amr convention hall', 'Conve', 200000, 10, 'Bommidi Lalitha Gardens & Function Hall is located in LB Nagar. Bommidi Lalitha Gardens & Function H', 'NA', 'NA', 250, 'NA', 'NA', 'Cocktail Party;Get Together;Wedding;Birthdays;Conference;Wedding Anniversary;Destination Weddings;Engagement;Kitty Party;Sangeet Ceremony;Baby Shower;Naming Ceremony;Annual Meet;Business Lunch/Dinner;Board Room Meeting;Corporate Trainings;Convention;Product Launch;Walk in Interview;Fresher/Farewell ', 'v12', '0', '2017-03-04 15:51:57', '0', '2017-03-04 15:53:37'),
	(17, 'h18', 'sri durga convention & banquet hall', 'Conve', 250000, 10, ' Laxma Reddy Gardens is one of the popular marriage halls located in Champapet, Hyderabad. The posta', 'NA', 'NA', 300, 'NA', 'NA', 'Cocktail Party;Get Together;Wedding;Birthdays;Conference;Wedding Anniversary;Destination Weddings;Engagement;Kitty Party;Sangeet Ceremony;Baby Shower;Naming Ceremony;Annual Meet;Product Launch;Walk in Interview;Fresher/Farewell Party;Reunion Party;Seminar;Reception;', 'v13', '0', '2017-03-04 15:51:57', '0', '2017-03-04 15:53:40'),
	(18, 'h19', 'bhaskar\'s convention hall ', 'Conve', 50000, 10, ' Manasa Gardens is one of the famous wedding halls located in Champapet, Hyderabad. The postal addre', 'NA', 'NA', 500, 'NA', 'NA', 'Cocktail Party;Get Together;Wedding;Birthdays;Conference;Wedding Anniversary;Destination Weddings;Engagement;Kitty Party;Sangeet Ceremony;Baby Shower;Naming Ceremony;Annual Meet;Business Lunch/Dinner;Board Room Meeting;Corporate Trainings;Convention;Product Launch;Walk in Interview;Fresher/Farewell ', 'v14', '0', '2017-03-04 15:51:57', '0', '2017-03-04 15:53:44'),
	(19, 'h20', 'm convention center ', 'Conve', 100000, 10, ' AMR Convention Hall 2 is located in LB Nagar. AMR Convention Hall 2, LB Nagar has dining hall capac', 'NA', 'NA', 2000, 'NA', 'NA', 'Cocktail Party;Get Together;Wedding;Birthdays;Conference;Wedding Anniversary;Destination Weddings;Engagement;Kitty Party;Sangeet Ceremony;Baby Shower;Naming Ceremony;Annual Meet;Business Lunch/Dinner;Board Room Meeting;Corporate Trainings;Convention;Product Launch;Walk in Interview;Fresher/Farewell ', 'v15', '0', '2017-03-04 15:51:57', '0', '2017-03-04 15:53:48'),
	(20, 'h21', 'jrc  convention center ', 'Conve', 200000, 10, 'WE HAVE A GOOD CONVENTION CENTER WITH BANQUET HALL WITH GOOD PARKING FACILITY & NICE GARDENING....AT', 'NA', 'NA', 2000, 'NA', 'NA', 'Cocktail Party;Get Together;Wedding;Birthdays;Conference;Wedding Anniversary;Destination Weddings;Engagement;Kitty Party;Sangeet Ceremony;Baby Shower;Naming Ceremony;Annual Meet;Corporate Trainings;Convention;Product Launch;Walk in Interview;Fresher/Farewell Party;Reunion Party;Seminar;Reception;', 'v16', '0', '2017-03-04 15:51:57', '0', '2017-03-04 15:53:53'),
	(21, 'h22', 'Mrugavani Resort and Spa', 'Resor', 250000, 10, '             ', 'NA', 'NA', 655, 'NA', 'NA', 'Cocktail Party;Get Together;Wedding;Birthdays;Conference;Wedding Anniversary;Destination Weddings;Engagement;Kitty Party;Sangeet Ceremony;Baby Shower;Naming Ceremony;Annual Meet;Business Lunch/Dinner;Board Room Meeting;Corporate Trainings;Convention;Product Launch;Walk in Interview;Fresher/Farewell ', 'v17', '0', '2017-03-04 15:51:57', '0', '2017-03-04 15:53:58'),
	(22, 'h23', 'Golkonda Resorts & Spa', 'Resor', 50000, 10, '   M Convention Center is located in Boduppal. M Convention Center, Boduppal has dining hall capacit', 'NA', 'NA', 326, 'NA', 'NA', 'Cocktail Party;Get Together;Wedding;Birthdays;Conference;Wedding Anniversary;Destination Weddings;Engagement;Kitty Party;Sangeet Ceremony;Baby Shower;Naming Ceremony;Annual Meet;Business Lunch/Dinner;Walk in Interview;Fresher/Farewell Party;Reunion Party;Seminar;Reception;', 'v18', '0', '2017-03-04 15:51:57', '0', '2017-03-04 15:54:02'),
	(23, 'h24', 'Button Eyes Resort', 'Resor', 100000, 10, 'The JRC Convention Centre located in Jubilee Hill, Hyderabad has Wedding Hotels, Banquet Halls, Wedd', 'NA', 'NA', 320, 'NA', 'NA', 'Cocktail Party;Wedding Anniversary;Destination Weddings;Engagement;Kitty Party;Sangeet Ceremony;Baby Shower;Naming Ceremony;Annual Meet;Business Lunch/Dinner;Board Room Meeting;Corporate Trainings;Convention;Product Launch;Walk in Interview;Fresher/Farewell Party;Reunion Party;Seminar;Reception;', 'v19', '0', '2017-03-04 15:51:57', '0', '2017-03-04 15:54:07'),
	(24, 'h25', 'Countryside Resorts', 'Resor', 200000, 10, 'Nestled in the City of Pearls, well known for its magnificent palaces, mosques and tombs, Hyderabad,', 'NA', 'NA', 322, 'NA', 'NA', 'Cocktail Party;Get Together;Wedding;Birthdays;Conference;Wedding Anniversary;Destination Weddings;Engagement;Kitty Party;Sangeet Ceremony;;Annual Meet;Business Lunch/Dinner;Board Room Meeting;Corporate Trainings;Convention;Product Launch;Walk in Interview;Fresher/Farewell Party;Reunion Party;Seminar', 'v20', '0', '2017-03-04 15:51:57', '0', '2017-03-04 15:54:11'),
	(25, 'h26', 'D Lake View Resort', 'Resor', 250000, 10, 'Endearingly called the City of Pearls, located in the charming city of Hyderabad. Golkonda Resorts a', 'NA', 'NA', 336, 'NA', 'NA', 'Cocktail Party;Get Together;Wedding;Birthdays;Conference;Wedding Anniversary;Destination Weddings;Engagement;Kitty Party;Sangeet Ceremony;Baby Shower;Naming Ceremony;Reception;', 'v21', '0', '2017-03-04 15:51:57', '0', '2017-03-04 15:54:22');
/*!40000 ALTER TABLE `hall` ENABLE KEYS */;


-- Dumping structure for table venue4me.hall_booking
CREATE TABLE IF NOT EXISTS `hall_booking` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `booking_id` varchar(50) NOT NULL,
  `cid` varchar(10) NOT NULL,
  `hid` varchar(10) NOT NULL,
  `from_date` datetime NOT NULL,
  `to_date` datetime NOT NULL,
  `invoice_num` varchar(50) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(20) NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_of_booking` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `booking_id` (`booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table venue4me.hall_booking: ~0 rows (approximately)
/*!40000 ALTER TABLE `hall_booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `hall_booking` ENABLE KEYS */;


-- Dumping structure for table venue4me.hall_multimedia
CREATE TABLE IF NOT EXISTS `hall_multimedia` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `hid` varchar(10) NOT NULL,
  `photos` varchar(200) NOT NULL,
  `videos` varchar(200) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(200) NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table venue4me.hall_multimedia: ~0 rows (approximately)
/*!40000 ALTER TABLE `hall_multimedia` DISABLE KEYS */;
/*!40000 ALTER TABLE `hall_multimedia` ENABLE KEYS */;


-- Dumping structure for table venue4me.lookup
CREATE TABLE IF NOT EXISTS `lookup` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `l_key` varchar(50) NOT NULL DEFAULT '0',
  `value` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `l_key` (`l_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table venue4me.lookup: ~0 rows (approximately)
/*!40000 ALTER TABLE `lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `lookup` ENABLE KEYS */;


-- Dumping structure for table venue4me.seating_type
CREATE TABLE IF NOT EXISTS `seating_type` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `hid` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `packs` varchar(10) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(20) NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `hid` (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table venue4me.seating_type: ~0 rows (approximately)
/*!40000 ALTER TABLE `seating_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `seating_type` ENABLE KEYS */;


-- Dumping structure for table venue4me.slot_lookup
CREATE TABLE IF NOT EXISTS `slot_lookup` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `slot_id` varchar(10) NOT NULL,
  `value` varchar(30) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `slot_id` (`slot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table venue4me.slot_lookup: ~0 rows (approximately)
/*!40000 ALTER TABLE `slot_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `slot_lookup` ENABLE KEYS */;


-- Dumping structure for table venue4me.user_login
CREATE TABLE IF NOT EXISTS `user_login` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `pswd` varchar(150) NOT NULL,
  `salt` varchar(150) NOT NULL,
  `usertype` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(20) NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table venue4me.user_login: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_login` ENABLE KEYS */;


-- Dumping structure for table venue4me.vendor
CREATE TABLE IF NOT EXISTS `vendor` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `vid` varchar(10) NOT NULL DEFAULT '0',
  `vname` varchar(50) NOT NULL DEFAULT '0',
  `contact` varchar(10) NOT NULL DEFAULT '0',
  `no_of_halls` int(3) NOT NULL DEFAULT '0',
  `created_by` varchar(20) NOT NULL DEFAULT '0',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(20) NOT NULL DEFAULT '0',
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `vid` (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- Dumping data for table venue4me.vendor: ~22 rows (approximately)
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` (`Id`, `vid`, `vname`, `contact`, `no_of_halls`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES
	(1, 'v2', 'Manda yadav reddy garden', '65344014', 1, '0', '2017-03-04 15:47:06', '0', '2017-03-04 15:47:06'),
	(2, 'v3', 'Vijay garden', '040-235116', 1, '0', '2017-03-04 15:47:06', '0', '2017-03-04 15:47:06'),
	(3, 'v4', 'Minerva garden', '040 6559 9', 1, '0', '2017-03-04 15:47:06', '0', '2017-03-04 15:47:06'),
	(4, 'v5', 'Mega function hall ', '040 2407 5', 1, '0', '2017-03-04 15:47:06', '0', '2017-03-04 15:47:06'),
	(5, 'v6', 'Knr convention hall & banquet hall', ' +(91)-40-', 1, '0', '2017-03-04 15:47:06', '0', '2017-03-04 15:47:06'),
	(6, 'v7', 'MAK Club & Resort', '+91 40 23 ', 1, '0', '2017-03-04 15:47:06', '0', '2017-03-04 15:47:06'),
	(7, 'v8', 'prime garden function hall', '040 2403 5', 1, '0', '2017-03-04 15:47:06', '0', '2017-03-04 15:47:06'),
	(8, 'v9', 'kothapaku yadhava reddy garden', '4024078777', 1, '0', '2017-03-04 15:47:06', '0', '2017-03-04 15:47:06'),
	(9, 'v10', 'Lalitha Gardens', '', 1, '0', '2017-03-04 15:47:06', '0', '2017-03-04 15:47:06'),
	(10, 'v11', 'Laxma reddy gardens', '', 1, '0', '2017-03-04 15:47:06', '0', '2017-03-04 15:47:06'),
	(11, 'v12', 'Manasa Gardens', '4065344014', 1, '0', '2017-03-04 15:47:06', '0', '2017-03-04 15:47:06'),
	(12, 'v13', 'amr convention hall', '', 1, '0', '2017-03-04 15:47:06', '0', '2017-03-04 15:47:06'),
	(13, 'v14', 'sri durga convention & banquet hall', '', 1, '0', '2017-03-04 15:47:06', '0', '2017-03-04 15:47:06'),
	(14, 'v15', 'bhaskar\'s convention hall ', '040 2422 9', 1, '0', '2017-03-04 15:47:06', '0', '2017-03-04 15:47:06'),
	(15, 'v16', 'm convention center ', '040 3301 5', 1, '0', '2017-03-04 15:47:06', '0', '2017-03-04 15:47:06'),
	(16, 'v17', 'jrc  convention center ', '040 4554 9', 1, '0', '2017-03-04 15:47:06', '0', '2017-03-04 15:47:06'),
	(17, 'v18', 'Mrugavani Resort and Spa', '', 1, '0', '2017-03-04 15:47:06', '0', '2017-03-04 15:47:06'),
	(18, 'v19', 'Golkonda Resorts & Spa', '040 306969', 1, '0', '2017-03-04 15:47:06', '0', '2017-03-04 15:47:06'),
	(19, 'v20', 'Button Eyes Resort', '', 1, '0', '2017-03-04 15:47:06', '0', '2017-03-04 15:47:06'),
	(20, 'v21', 'Countryside Resorts', '', 1, '0', '2017-03-04 15:47:06', '0', '2017-03-04 15:47:06'),
	(21, 'v22', 'D Lake View Resort', '', 1, '0', '2017-03-04 15:47:06', '0', '2017-03-04 15:47:06'),
	(32, 'v1', 'Manasarovar the Fern', '4030839999', 5, '0', '2017-03-04 15:56:12', '0', '2017-03-04 15:56:12');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
