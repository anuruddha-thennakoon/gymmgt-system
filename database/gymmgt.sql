-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.6.17


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema gsm
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ gymmgt;
USE gymmgt;

--
-- Table structure for table `gsm`.`customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `cid` varchar(50) NOT NULL DEFAULT '',
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `bday` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  `plan` varchar(10) NOT NULL,
  `amount` double(10,0) NOT NULL,
  `sdate` date NOT NULL,
  `edate` date NOT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gsm`.`customer`
--

/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`cid`,`fname`,`lname`,`bday`,`gender`,`contact_no`,`plan`,`amount`,`sdate`,`edate`,`remarks`,`date`) VALUES 
 ('CN15000001','Amal','Perera','1985-04-04','Male','0716538695','Plan A',15000,'2016-04-02','2016-12-02','Muscle gain','2016-04-02'),
 ('CN15000002','Suranga','Pathirana','1996-04-16','Male','0774586295','Plan B',18000,'2016-03-04','2016-08-04','all','2016-04-02'),
 ('CN15000003','Ranjan','Hettigoda','1980-04-06','Male','0718546589','Plan B',18000,'2016-04-02','2016-10-02','all','2016-04-02'),
 ('CN15000004','Kasun','Jayasinghe','1980-04-25','Male','0718569237','Plan B',18000,'2016-04-01','2016-09-01','full body','2016-04-02'),
 ('CN15000005','Nipuni','Aththanayake','1995-04-07','Female','0784585296','Plan C',21000,'2016-04-02','2016-12-02','all','2016-04-02');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;


--
-- Table structure for table `gsm`.`customer_attendence`
--

DROP TABLE IF EXISTS `customer_attendence`;
CREATE TABLE `customer_attendence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `week` int(5) NOT NULL,
  `works_done` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_customer_attendence_customer1_idx` (`cid`),
  CONSTRAINT `fk_customer_attendence_customer1` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gsm`.`customer_attendence`
--

/*!40000 ALTER TABLE `customer_attendence` DISABLE KEYS */;
INSERT INTO `customer_attendence` (`id`,`cid`,`date`,`week`,`works_done`) VALUES 
 (1,'CN15000001','2016-04-09',1,'Bent Over Rows'),
 (2,'CN15000001','2016-04-16',2,'Pull Ups'),
 (3,'CN15000001','2016-04-23',3,'Wide Grip Shrugs'),
 (4,'CN15000001','2016-04-30',4,'Incline Barbbell Press'),
 (5,'CN15000001','2016-05-07',5,'Standing DB Shoulder Press');
/*!40000 ALTER TABLE `customer_attendence` ENABLE KEYS */;


--
-- Table structure for table `gsm`.`customer_payments`
--

DROP TABLE IF EXISTS `customer_payments`;
CREATE TABLE `customer_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` varchar(50) NOT NULL,
  `total_amount` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_customer_payments_customer_idx` (`cid`),
  CONSTRAINT `fk_customer_payments_customer` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gsm`.`customer_payments`
--

/*!40000 ALTER TABLE `customer_payments` DISABLE KEYS */;
INSERT INTO `customer_payments` (`id`,`cid`,`total_amount`,`date`,`status`) VALUES 
 (5,'CN15000001','15000.00','2016-04-02','Unpaid'),
 (6,'CN15000002','18000.00','2016-04-02','Unpaid'),
 (7,'CN15000003','18000.00','2016-04-02','Unpaid'),
 (8,'CN15000004','18000.00','2016-04-02','Unpaid'),
 (9,'CN15000005','21000.00','2016-04-02','Paid');
/*!40000 ALTER TABLE `customer_payments` ENABLE KEYS */;


--
-- Table structure for table `gsm`.`equipments`
--

DROP TABLE IF EXISTS `equipments`;
CREATE TABLE `equipments` (
  `eid` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `qty` int(5) NOT NULL,
  `category` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gsm`.`equipments`
--

/*!40000 ALTER TABLE `equipments` DISABLE KEYS */;
INSERT INTO `equipments` (`eid`,`description`,`qty`,`category`,`status`) VALUES 
 ('EQ15000001','Preacher Bench',5,'Cardiac','Available'),
 ('EQ15000002','Squat Station',5,'Cardiac','Available'),
 ('EQ15000003','Dumb Bells',20,'Cardiac','Available'),
 ('EQ15000004','Lat Pull Down Machine',10,'Cardiac','Available'),
 ('EQ15000005','Leg Extension Machine',8,'Legs','Available'),
 ('EQ15000006','Hyper Extension Bench',6,'Weights','Available'),
 ('EQ15000007','Pec Deck Machine',10,'Weights','Available'),
 ('EQ15000008','Hammer Strength machine',10,'Abs','Available'),
 ('EQ15000009','Calf Machines',4,'Stretching','Available'),
 ('EQ15000010','Dipping Bars',5,'Stretching','Available');
/*!40000 ALTER TABLE `equipments` ENABLE KEYS */;


--
-- Table structure for table `gsm`.`invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ino` varchar(50) NOT NULL DEFAULT '',
  `item_id` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `qty` double(10,0) NOT NULL,
  `gross_amount` double(10,0) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_invoice_item_registration1_idx` (`item_id`),
  CONSTRAINT `fk_invoice_item_registration1` FOREIGN KEY (`item_id`) REFERENCES `item_registration` (`item_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gsm`.`invoice`
--

/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` (`id`,`ino`,`item_id`,`description`,`qty`,`gross_amount`) VALUES 
 (1,'IN15000001','IT15000001','Milk',10,8500),
 (2,'IN15000002','IT15000001','Milk',12,10200),
 (3,'IN15000003','IT15000003','Weight Gain',5,7500),
 (4,'IN15000004','IT15000004','Towel',10,2500),
 (5,'IN15000004','IT15000002','Whey Protein',5,5250);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;


--
-- Table structure for table `gsm`.`item_registration`
--

DROP TABLE IF EXISTS `item_registration`;
CREATE TABLE `item_registration` (
  `item_id` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gsm`.`item_registration`
--

/*!40000 ALTER TABLE `item_registration` DISABLE KEYS */;
INSERT INTO `item_registration` (`item_id`,`description`) VALUES 
 ('IT15000001','Milk'),
 ('IT15000002','Whey Protein'),
 ('IT15000003','Weight Gain'),
 ('IT15000004','Towel'),
 ('IT15000005','Hand Gloves');
/*!40000 ALTER TABLE `item_registration` ENABLE KEYS */;


--
-- Table structure for table `gsm`.`schedule`
--

DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan` varchar(70) NOT NULL,
  `day` varchar(20) NOT NULL,
  `exercises` varchar(100) NOT NULL,
  `reps` varchar(30) NOT NULL,
  `sets` varchar(40) NOT NULL,
  `rest` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gsm`.`schedule`
--

/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` (`id`,`plan`,`day`,`exercises`,`reps`,`sets`,`rest`) VALUES 
 (1,'plan A','day 01','Bent Over Rows','3-4','6-8','2 min'),
 (2,'plan A','day 01','Pull Ups','3-4','6-8','2 min'),
 (3,'plan A','day 01','Wide Grip Shrugs','3-4','6-8','2 min'),
 (4,'plan A','day 01','Stiff Leg Deadlift','3-4','6-8','2 min'),
 (5,'plan A','day 02','Incline Barbbell Press','3-4','6-8','2 min'),
 (6,'plan A','day 02','Standing DB Shoulder Press','3-4','6-8','2 min'),
 (7,'plan A','day 02','Close grip Bench press','3-4','6-8','2 min'),
 (8,'plan A','day 02','Seated Calve Raises','3-4','6-8','2 min'),
 (9,'plan A','day 03','rest day','rest day','rest day','rest day'),
 (10,'plan B','day 01','Cheated Barbell curl','5-8','8-12','3 min'),
 (11,'plan B','day 01','Incline Dumbbell Curl','5-8','8-12','3 min'),
 (12,'plan B','day 01','One-arm Concentration Curl','5-8','10','3 min'),
 (13,'plan B','day 01','Standing dumbbell curl','5-8','8-12','3 min'),
 (14,'plan B','day 02','Incline dumbbell curls','5-8','8-12','3 min'),
 (15,'plan B','day 02','Triceps press down','5-8','8-12','3 min');
INSERT INTO `schedule` (`id`,`plan`,`day`,`exercises`,`reps`,`sets`,`rest`) VALUES 
 (16,'plan B','day 02','On-arm Extensions','5-8','10','3 min'),
 (17,'plan B','day 02','Lying French presses','5-8','8-12','3 min'),
 (18,'plan B','day 03','rest day','rest day','rest day','rest day'),
 (19,'plan B','day 04','Revers Triceps pushups','5-8','8-12','3 min'),
 (20,'plan B','day 04','Concentration curl','5-8','8-12','3 min'),
 (21,'plan B','day 04','Preacher reverse curl','5-8','10','3 min'),
 (22,'plan B','day 04','Barbell wrist curl','5-8','8-12','3 min'),
 (23,'plan C','day 01','BARBELL FULL SQUAT','12-15','3-4','3 min'),
 (24,'plan C','day 01','LEG PRESS','12-15','3-4','3 min'),
 (25,'plan C','day 01','SEATED LEG CURL','12-15','3-4','3 min'),
 (26,'plan C','day 01','STANDING CALF RAISE','12-15','3-4','3 min'),
 (27,'plan C','day 02','BARBELL FULL SQUAT','12-15','3-4','3 min'),
 (28,'plan C','day 02','DUMBBELL BENCH PRESS','12-15','3-4','3 min'),
 (29,'plan C','day 02','DUMBBELL FLY','12-15','3-4','3 min'),
 (30,'plan C','day 02','BENT-ARM DUMBBELL PULLOVER','12-15','3-4','3 min');
INSERT INTO `schedule` (`id`,`plan`,`day`,`exercises`,`reps`,`sets`,`rest`) VALUES 
 (31,'plan C','day 03','rest day ','rest day ','rest day','rest day'),
 (32,'plan C','day 04','CRUNCH','12-15','3-4','3 min'),
 (33,'plan C','day 04','FLAT-BENCH LYING LEG RAISE','12-15','3-4','3 min'),
 (34,'plan C','day 04','CABLE CRUNCH','12-15','3-4','3 min'),
 (35,'plan C','day 04','PLANK','12-15','3-4','3 min');
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;


--
-- Table structure for table `gsm`.`stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `qty` int(10) NOT NULL,
  `unit_price` double(10,0) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_stock_item_registration1_idx` (`item_id`),
  CONSTRAINT `fk_stock_item_registration1` FOREIGN KEY (`item_id`) REFERENCES `item_registration` (`item_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gsm`.`stock`
--

/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` (`id`,`item_id`,`description`,`qty`,`unit_price`) VALUES 
 (6,'IT15000001','Milk',68,850),
 (7,'IT15000002','Whey Protein',81,1050),
 (8,'IT15000003','Weight Gain',45,1500),
 (9,'IT15000004','Towel',40,250),
 (10,'IT15000005','Hand Gloves',50,650);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;


--
-- Table structure for table `gsm`.`user_accounts`
--

DROP TABLE IF EXISTS `user_accounts`;
CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `pword` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gsm`.`user_accounts`
--

/*!40000 ALTER TABLE `user_accounts` DISABLE KEYS */;
INSERT INTO `user_accounts` (`id`,`fname`,`lname`,`uname`,`pword`,`type`) VALUES 
 (2,'Suresh','Bandara','suresh.b','suresh@123','Coach'),
 (3,'Kamal','Munasighe','kamal.m','kamal@123','Coach'),
 (4,'Nihal','Perera','nihal.p','nihal@123','Admin'),
 (5,'Sumali','Harshani','sumali.h','sumali@123','Cashier'),
 (6,'Udeshika','Kavindi','udeshika.k','udeshika@123','Cashier');
/*!40000 ALTER TABLE `user_accounts` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
