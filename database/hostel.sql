/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.5-10.4.17-MariaDB : Database - hostel
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hostel` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hostel`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`id`,`username`,`email`,`password`,`reg_date`,`updation_date`) values (1,'admin','admin@gmail.com','admin','2016-04-05 02:01:45','2016-04-17');

/*Table structure for table `adminlog` */

DROP TABLE IF EXISTS `adminlog`;

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `adminlog` */

/*Table structure for table `allot` */

DROP TABLE IF EXISTS `allot`;

CREATE TABLE `allot` (
  `trid` int(11) NOT NULL AUTO_INCREMENT,
  `rno` varchar(45) NOT NULL,
  `mname` varchar(45) NOT NULL,
  PRIMARY KEY (`trid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `allot` */

insert  into `allot`(`trid`,`rno`,`mname`) values (1,'101','abc'),(2,'101','abc'),(3,'103','asd'),(4,'104','asd1'),(5,'106','ghj'),(6,'null','null'),(7,'null','null'),(8,'111','asdf'),(9,'null','null'),(10,'null','null');

/*Table structure for table `courses` */

DROP TABLE IF EXISTS `courses`;

CREATE TABLE `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_code` varchar(255) NOT NULL,
  `course_sn` varchar(255) NOT NULL,
  `course_fn` varchar(255) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `courses` */

insert  into `courses`(`id`,`course_code`,`course_sn`,`course_fn`,`posting_date`) values (1,'B10992','B.Tech','Bachelor  of Technology','2020-12-19 10:36:47'),(2,'BCOM1453','B.Com','Bachelor Of commerce ','2020-12-19 10:36:47'),(3,'BSC12','BSC','Bachelor  of Science','2020-12-19 10:36:47'),(4,'BC36356','BCA','Bachelor Of Computer Application','2020-12-19 10:36:47'),(5,'MCA565','MCA','Master of Computer Application','2020-12-19 10:36:47'),(6,'MBA75','MBA','Master of Business Administration','2020-12-19 10:36:47'),(7,'BE765','BE','Bachelor of Engineering','2020-12-19 10:36:47');

/*Table structure for table `invoice` */

DROP TABLE IF EXISTS `invoice`;

CREATE TABLE `invoice` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `rfees` varchar(45) NOT NULL,
  `mfess` varchar(45) NOT NULL,
  `time` text DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `invoice` */

insert  into `invoice`(`pid`,`name`,`rfees`,`mfess`,`time`) values (1,'bhupi','1000','2000',NULL),(2,'bhupi','1000','2000',NULL),(3,'bhupi','1000','2000',NULL),(4,'\"+name+\"','\"+rfees+\"','\"+mfees+\"','\"+time+\"'),(5,'yes','40000','30000','6');

/*Table structure for table `messtable` */

DROP TABLE IF EXISTS `messtable`;

CREATE TABLE `messtable` (
  `messid` int(11) NOT NULL AUTO_INCREMENT,
  `regno` varchar(20) DEFAULT NULL,
  `typeoffood` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`messid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `messtable` */

insert  into `messtable`(`messid`,`regno`,`typeoffood`) values (1,'108061211','Veg'),(2,'108061211','Veg');

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomno` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `feespm` int(11) NOT NULL,
  `foodstatus` int(11) NOT NULL,
  `stayfrom` date NOT NULL,
  `duration` int(11) NOT NULL,
  `course` varchar(500) NOT NULL,
  `regno` int(11) NOT NULL,
  `firstName` varchar(500) NOT NULL,
  `middleName` varchar(500) NOT NULL,
  `lastName` varchar(500) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `emailid` varchar(500) NOT NULL,
  `egycontactno` bigint(11) NOT NULL,
  `guardianName` varchar(500) NOT NULL,
  `guardianRelation` varchar(500) NOT NULL,
  `guardianContactno` bigint(11) NOT NULL,
  `corresAddress` varchar(500) NOT NULL,
  `corresCIty` varchar(500) NOT NULL,
  `corresState` varchar(500) NOT NULL,
  `corresPincode` int(11) NOT NULL,
  `pmntAddress` varchar(500) NOT NULL,
  `pmntCity` varchar(500) NOT NULL,
  `pmnatetState` varchar(500) NOT NULL,
  `pmntPincode` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

insert  into `registration`(`id`,`roomno`,`seater`,`feespm`,`foodstatus`,`stayfrom`,`duration`,`course`,`regno`,`firstName`,`middleName`,`lastName`,`gender`,`contactno`,`emailid`,`egycontactno`,`guardianName`,`guardianRelation`,`guardianContactno`,`corresAddress`,`corresCIty`,`corresState`,`corresPincode`,`pmntAddress`,`pmntCity`,`pmnatetState`,`pmntPincode`,`postingDate`,`updationDate`) values (6,100,5,8000,0,'2020-04-22',5,'Bachelor  of Technology',10806121,'code','','projects','male',8285703354,'code.lpu1@gmail.com',0,'XYZ','Mother',8285703354,'H n0 18/1 Bihari Puram Phase-1 Melrose Bye Pass','Aligarh','EPE',202001,'H n0 18/1 Bihari Puram Phase-1 Melrose Bye Pass','Aligarh','EPE',202001,'2020-04-16 13:54:09',''),(7,100,5,8000,1,'2020-06-17',4,'Bachelor of Engineering',108061211,'code','test','projects','male',8467067344,'test@gmail.com',8285703354,'test','test',9999857868,'H no- 18/1 Bihari puram phase-1 melrose bye pass','Aligarh','EPE',202001,'H no- 18/1 Bihari puram phase-1 melrose bye pass','Aligarh','EPE',202001,'2020-06-23 17:24:35',''),(8,112,3,4000,0,'2020-06-27',5,'Bachelor  of Science',102355,'Harry','projects','Singh','male',6786786786,'Harry@gmail.com',789632587,'demo','demo',1234567890,'New Delhi','Delhi','Delhi (NCT)',110001,'New Delhi','Delhi','Delhi (NCT)',110001,'2020-06-26 22:01:08',''),(9,132,5,2000,1,'2020-06-28',6,'Bachelor of Engineering',586952,'Benjamin','','projects','male',8596185625,'Benjamin@gmail.com',8285703354,'demo','demo',8285703354,'H no- 18/1 Bihari puram phase-1 melrose bye pass','Aligarh','EPE',202001,'H no- 18/1 Bihari puram phase-1 melrose bye pass','Aligarh','EPE',202001,'2016-06-26 22:10:07','');

/*Table structure for table `rooms` */

DROP TABLE IF EXISTS `rooms`;

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seater` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `fees` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `rooms` */

insert  into `rooms`(`id`,`seater`,`room_no`,`fees`,`posting_date`) values (1,5,100,8000,'2020-12-02 01:54:05'),(2,2,201,6000,'2020-12-02 01:54:05'),(3,2,200,6000,'2020-12-02 01:54:05'),(4,3,112,4000,'2020-12-02 01:54:05'),(5,5,132,2000,'2020-12-02 01:54:05');

/*Table structure for table `sregister` */

DROP TABLE IF EXISTS `sregister`;

CREATE TABLE `sregister` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `sregister` */

insert  into `sregister`(`sid`,`name`,`mobile`,`address`,`email`,`password`) values (3,'','','','',''),(5,'priya','888888888888','indore','priya@gmail.com','123'),(6,'demo1','888888888','indore','dfg@gmail.com','12345');

/*Table structure for table `staff` */

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `staff` */

/*Table structure for table `states` */

DROP TABLE IF EXISTS `states`;

CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `State` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

/*Data for the table `states` */

insert  into `states`(`id`,`State`) values (1,'Andaman and Nicobar Island (UT)'),(2,'Andhra Pradesh'),(3,'Arunachal Pradesh'),(4,'Assam'),(5,'Bihar'),(6,'Chandigarh (UT)'),(7,'Chhattisgarh'),(8,'Dadra and Nagar Haveli (UT)'),(9,'Daman and Diu (UT)'),(10,'Delhi (NCT)'),(11,'Goa'),(12,'Gujarat'),(13,'Haryana'),(14,'Himachal Pradesh'),(15,'Jammu and Kashmir'),(16,'Jharkhand'),(17,'Karnataka'),(18,'Kerala'),(19,'Lakshadweep (UT)'),(20,'Madhya Pradesh'),(21,'Maharashtra'),(22,'Manipur'),(23,'Meghalaya'),(24,'Mizoram'),(25,'Nagaland'),(26,'Odisha'),(27,'Puducherry (UT)'),(28,'Punjab'),(29,'Rajastha'),(30,'Sikkim'),(31,'Tamil Nadu'),(32,'Telangana'),(33,'Tripura'),(34,'Uttarakhand'),(35,'EPE'),(36,'West Bengal');

/*Table structure for table `userlog` */

DROP TABLE IF EXISTS `userlog`;

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `userlog` */

insert  into `userlog`(`id`,`userId`,`userEmail`,`userIp`,`city`,`country`,`loginTime`) values (1,10,'test@gmail.com','','','','2020-06-22 11:46:42'),(2,10,'test@gmail.com','','','','2020-06-24 16:50:28'),(4,10,'test@gmail.com','::1','','','2020-06-24 16:52:47'),(5,10,'test@gmail.com','::1','','','2020-06-26 21:07:40'),(6,20,'Benjamin@gmail.com','::1','','','2020-06-26 22:10:57'),(7,10,'test@gmail.com','::1','','','2020-11-15 10:42:39'),(8,1,'user1@gmail.com','::1','','','2018-11-26 06:50:39'),(9,10,'test@gmail.com','::1','','','2020-12-02 01:55:12'),(10,10,'test@gmail.com','127.0.0.1','','','2021-08-27 16:08:27'),(11,1,'user1@gmail.com','127.0.0.1','','','2021-08-27 16:11:21');

/*Table structure for table `userregistration` */

DROP TABLE IF EXISTS `userregistration`;

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regNo` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) NOT NULL,
  `passUdateDate` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `userregistration` */

insert  into `userregistration`(`id`,`regNo`,`firstName`,`middleName`,`lastName`,`gender`,`contactNo`,`email`,`password`,`regDate`,`updationDate`,`passUdateDate`) values (10,'108061211','code','test','projects','male',8467067344,'test@gmail.com','Test@123','2020-06-22 09:51:33','23-06-2020 11:04:15','22-06-2016 05:16:49'),(19,'102355','Harry','projects','Singh','male',6786786786,'Harry@gmail.com','6786786786','2020-06-26 22:03:36','',''),(20,'586952','Benjamin','','projects','male',8596185625,'Benjamin@gmail.com','8596185625','2020-06-26 22:10:07','','');

/*Table structure for table `wardentable` */

DROP TABLE IF EXISTS `wardentable`;

CREATE TABLE `wardentable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wardenno` varchar(20) DEFAULT NULL,
  `Fname` varchar(20) DEFAULT NULL,
  `Mname` varchar(20) DEFAULT NULL,
  `Lname` varchar(20) DEFAULT NULL,
  `UserName` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `ContactNo` varchar(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `Pincode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `wardentable` */

insert  into `wardentable`(`id`,`wardenno`,`Fname`,`Mname`,`Lname`,`UserName`,`Password`,`Gender`,`ContactNo`,`Email`,`City`,`State`,`Pincode`) values (1,'warden','warden','warden','user1','user1','user1','male','9886239083','user1@gmail.com','Bangalore','Assam','560010');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
