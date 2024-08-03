-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.2.3-MariaDB-log - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for fyp-railway-reservation
CREATE DATABASE IF NOT EXISTS `fyp-railway-reservation` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `fyp-railway-reservation`;

-- Dumping structure for table fyp-railway-reservation.orrs_admin
CREATE TABLE IF NOT EXISTS `orrs_admin` (
  `admin_id` int(20) NOT NULL AUTO_INCREMENT,
  `admin_fname` varchar(200) NOT NULL,
  `admin_lname` varchar(200) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_uname` varchar(200) NOT NULL,
  `admin_pwd` varchar(200) NOT NULL,
  `admin_dpic` varchar(60) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table fyp-railway-reservation.orrs_admin: ~0 rows (approximately)
DELETE FROM `orrs_admin`;
/*!40000 ALTER TABLE `orrs_admin` DISABLE KEYS */;
INSERT INTO `orrs_admin` (`admin_id`, `admin_fname`, `admin_lname`, `admin_email`, `admin_uname`, `admin_pwd`, `admin_dpic`) VALUES
	(1, 'System ', 'Admin', 'admin@mail.com', 'Administrator', '59ca128a5b223b787c099d8550ca577a719cb56c', 'admin-icn.png');
/*!40000 ALTER TABLE `orrs_admin` ENABLE KEYS */;

-- Dumping structure for table fyp-railway-reservation.orrs_employee
CREATE TABLE IF NOT EXISTS `orrs_employee` (
  `emp_id` int(20) NOT NULL AUTO_INCREMENT,
  `emp_fname` varchar(200) NOT NULL,
  `emp_lname` varchar(200) NOT NULL,
  `emp_nat_idno` varchar(200) NOT NULL,
  `emp_phone` varchar(200) NOT NULL,
  `emp_addr` varchar(200) NOT NULL,
  `emp_uname` varchar(200) NOT NULL,
  `emp_email` varchar(200) NOT NULL,
  `emp_pwd` varchar(200) NOT NULL,
  `emp_dpic` varchar(200) NOT NULL,
  `emp_dept` varchar(200) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table fyp-railway-reservation.orrs_employee: ~0 rows (approximately)
DELETE FROM `orrs_employee`;
/*!40000 ALTER TABLE `orrs_employee` DISABLE KEYS */;
INSERT INTO `orrs_employee` (`emp_id`, `emp_fname`, `emp_lname`, `emp_nat_idno`, `emp_phone`, `emp_addr`, `emp_uname`, `emp_email`, `emp_pwd`, `emp_dpic`, `emp_dept`) VALUES
	(1, 'John', 'Deacon', '866861970', '+31024579651', '79 Green Avenue', 'deacon', 'employee@mail.com', '903b21879b4a60fc9103c3334e4f6f62cf6c3a2d', 'defaultimg.jpg', 'Train Captain');
/*!40000 ALTER TABLE `orrs_employee` ENABLE KEYS */;

-- Dumping structure for table fyp-railway-reservation.orrs_passenger
CREATE TABLE IF NOT EXISTS `orrs_passenger` (
  `pass_id` int(20) NOT NULL AUTO_INCREMENT,
  `pass_fname` varchar(200) NOT NULL,
  `pass_lname` varchar(200) NOT NULL,
  `pass_phone` varchar(200) NOT NULL,
  `pass_addr` varchar(200) NOT NULL,
  `pass_email` varchar(200) NOT NULL,
  `pass_pwd` varchar(200) NOT NULL,
  `pass_dpic` varchar(200) NOT NULL,
  `pass_uname` varchar(200) NOT NULL,
  `pass_bday` varchar(200) NOT NULL,
  `pass_bio` longtext NOT NULL,
  `pass_train_number` varchar(200) NOT NULL,
  `pass_train_name` varchar(200) NOT NULL,
  `pass_dep_station` varchar(200) NOT NULL,
  `pass_dep_time` varchar(200) NOT NULL,
  `pass_arr_station` varchar(200) NOT NULL,
  `pass_train_fare` varchar(200) NOT NULL,
  `pass_fare_payment_code` varchar(200) NOT NULL,
  PRIMARY KEY (`pass_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Dumping data for table fyp-railway-reservation.orrs_passenger: ~17 rows (approximately)
DELETE FROM `orrs_passenger`;
/*!40000 ALTER TABLE `orrs_passenger` DISABLE KEYS */;
INSERT INTO `orrs_passenger` (`pass_id`, `pass_fname`, `pass_lname`, `pass_phone`, `pass_addr`, `pass_email`, `pass_pwd`, `pass_dpic`, `pass_uname`, `pass_bday`, `pass_bio`, `pass_train_number`, `pass_train_name`, `pass_dep_station`, `pass_dep_time`, `pass_arr_station`, `pass_train_fare`, `pass_fare_payment_code`) VALUES
	(4, 'Passenger', 'Khan', '7778885454', '44 Demo Address', 'passenger@mail.com', '59ca128a5b223b787c099d8550ca577a719cb56c', 'defaultimg.jpg', 'christine', '', '', 'CA556680', 'ZX Express', 'Test Station', '7:00 PM', 'Test Demo Station', '65', 'CAS0014587'),
	(5, 'John', 'Barnes', '7412225698', '32 Ocello Street', 'johnk@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'johnbarnes', '', '', 'CA-777', 'Corridor Express', 'New York', '1:00 PM', 'Washington', '38', '102458700041'),
	(6, 'Fritz', 'Mickk', '7412560000', '80 Russell Street', 'fritz@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'fritz', '', '', 'CA-007', 'Black Water', 'Chicago', '7:00 AM', 'Carbondale', '33', '107856452120'),
	(7, 'Raisa', 'Taylor', '8542221450', '22 Valley Street', 'taylor@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'raisataylor', '', '', '', '', '', '', '', '', ''),
	(8, 'Michael', 'Murdock', '7414587744', '43 Private Lane', 'murdock@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'murdock', '', '', '', '', '', '', '', '', ''),
	(9, 'Greg', 'Alexander', '7458000015', '33 Pleasant Hill Road', 'greg@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'greg', '', '', '', '', '', '', '', '', ''),
	(10, 'Dorothy', 'Garcia', '7458965555', '97 Euclid Avenue', 'garcia@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'dorothy', '', '', '', '', '', '', '', '', ''),
	(11, 'Adele', 'Wilson', '7896547777', '28 Cook Hill Road', 'adelew@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'adele', '', '', '', '', '', '', '', '', ''),
	(12, 'Martha', 'Meyer', '4570001569', '12 Eva Pearl Street', 'martha@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'martha', '', '', '', '', '', '', '', '', ''),
	(13, 'Edna', 'Ashworth', '1475458500', '91 Timberbrook Lane', 'edna@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'edna', '', '', '', '', '', '', '', '', ''),
	(14, 'Jody', 'Bennett', '7123650014', '60 Oral Lake Road', 'jody@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'jody', '', '', '', '', '', '', '', '', ''),
	(15, 'Jerry', 'Campbell', '5478540000', '93 Sarah Drive', 'campbell@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'jerry', '', '', '', '', '', '', '', '', ''),
	(16, 'Noelle', 'Ross', '3745698850', '41 Ray Court', 'ross@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'noelle', '', '', '', '', '', '', '', '', ''),
	(17, 'William', 'Barnes', '6547778540', '31 Briarwood Road', 'wbarnes@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'wbarnes', '', '', '', '', '', '', '', '', ''),
	(18, 'Fred', 'Jacquez', '6478540000', '17 Peck Court', 'fredj@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'fred', '', '', '', '', '', '', '', '', ''),
	(19, 'Larry', 'Clark', '7696965450', '39 Dawson Drive', 'larry@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'larry', '', '', '', '', '', '', '', '', ''),
	(20, 'Liam', 'Moore', '4750001458', '114 Southcross Avenue', 'liamoore@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'liamoore', '', '', 'CA-778', 'Adirondack', 'Seattle', '6:00 AM', 'New York', '198', '100000789640');
/*!40000 ALTER TABLE `orrs_passenger` ENABLE KEYS */;

-- Dumping structure for table fyp-railway-reservation.orrs_passwordresets
CREATE TABLE IF NOT EXISTS `orrs_passwordresets` (
  `pwd_id` int(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`pwd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table fyp-railway-reservation.orrs_passwordresets: ~2 rows (approximately)
DELETE FROM `orrs_passwordresets`;
/*!40000 ALTER TABLE `orrs_passwordresets` DISABLE KEYS */;
INSERT INTO `orrs_passwordresets` (`pwd_id`, `email`, `status`) VALUES
	(1, 'employee@mail.com', 'Approved'),
	(2, 'test21@mail.com', 'Pending');
/*!40000 ALTER TABLE `orrs_passwordresets` ENABLE KEYS */;

-- Dumping structure for table fyp-railway-reservation.orrs_train
CREATE TABLE IF NOT EXISTS `orrs_train` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `route` varchar(200) NOT NULL,
  `current` varchar(200) NOT NULL,
  `destination` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  `passengers` varchar(200) NOT NULL,
  `number` varchar(200) NOT NULL,
  `fare` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- Dumping data for table fyp-railway-reservation.orrs_train: ~9 rows (approximately)
DELETE FROM `orrs_train`;
/*!40000 ALTER TABLE `orrs_train` DISABLE KEYS */;
INSERT INTO `orrs_train` (`id`, `name`, `route`, `current`, `destination`, `time`, `passengers`, `number`, `fare`) VALUES
	(6, 'Black Water', 'Chicago - Carbondale', 'Chicago', 'Carbondale', '7:00 AM', '195', 'CA-007', '33'),
	(10, 'ZX Express', 'Location One - Location Two', 'Test Station', 'Test Demo Station', '7:00 PM', '200', 'CA556680', '65'),
	(11, 'Iron Range Express', 'Stockton - San Diego', 'Stockton', 'San Diego', '9:00 AM', '185', 'CA-697', '43'),
	(12, 'Colonial', 'Boston - New York', 'Boston', 'New York', '10:45 AM', '255', 'CA-107', '35'),
	(13, 'Corridor Express', 'New York - Washington', 'New York', 'Washington', '1:00 PM', '330', 'CA-777', '38'),
	(14, 'Silver Meteor', 'New York - Miami', 'New York', 'Miami', '10:00 AM', '200', 'CA-707', '128'),
	(15, 'Silver Star', 'New Orleans - Los Angeles', 'New Orleans', 'Los Angeles', '8:45 AM', '190', 'CA-107', '149'),
	(16, 'Adirondack', 'Seattle - New York', 'Seattle', 'New York', '6:00 AM', '210', 'CA-778', '198'),
	(17, 'Corridor Express', 'New York - Pittsfield', 'New York', 'Pittsfield', '12:45 PM', '195', 'CA-797', '45');
/*!40000 ALTER TABLE `orrs_train` ENABLE KEYS */;

-- Dumping structure for table fyp-railway-reservation.orrs_train_tickets
CREATE TABLE IF NOT EXISTS `orrs_train_tickets` (
  `ticket_id` int(20) NOT NULL AUTO_INCREMENT,
  `pass_name` varchar(200) NOT NULL,
  `pass_email` varchar(200) NOT NULL,
  `pass_addr` varchar(200) NOT NULL,
  `train_name` varchar(200) NOT NULL,
  `train_no` varchar(200) NOT NULL,
  `train_dep_stat` varchar(200) NOT NULL,
  `train_arr_stat` varchar(200) NOT NULL,
  `train_fare` varchar(200) NOT NULL,
  `fare_payment_code` varchar(200) NOT NULL,
  `confirmation` varchar(200) NOT NULL,
  PRIMARY KEY (`ticket_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table fyp-railway-reservation.orrs_train_tickets: ~5 rows (approximately)
DELETE FROM `orrs_train_tickets`;
/*!40000 ALTER TABLE `orrs_train_tickets` DISABLE KEYS */;
INSERT INTO `orrs_train_tickets` (`ticket_id`, `pass_name`, `pass_email`, `pass_addr`, `train_name`, `train_no`, `train_dep_stat`, `train_arr_stat`, `train_fare`, `fare_payment_code`, `confirmation`) VALUES
	(5, 'Christine Moore', 'christine@mail.com', '44 Demo Address', 'ZX Express', 'CA556680', 'Test Station', 'Test Demo Station', '65', 'CAS0014587', ''),
	(6, 'John Barnes', 'johnk@mail.com', '32 Ocello Street', 'Iron Range Express', 'CA-697', 'Stockton', 'San Diego', '43', '102458700041', 'Approved'),
	(7, 'John Barnes', 'johnk@mail.com', '32 Ocello Street', 'Corridor Express', 'CA-777', 'New York', 'Washington', '38', '102458700041', 'Approved'),
	(8, 'Fritz Mickk', 'fritz@mail.com', '80 Russell Street', 'Black Water', 'CA-007', 'Chicago', 'Carbondale', '33', '107856452120', 'Approved'),
	(9, 'Liam Moore', 'liamoore@mail.com', '114 Southcross Avenue', 'Adirondack', 'CA-778', 'Seattle', 'New York', '198', '100000789640', 'Approved');
/*!40000 ALTER TABLE `orrs_train_tickets` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
