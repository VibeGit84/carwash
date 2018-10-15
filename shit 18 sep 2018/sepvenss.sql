/*
SQLyog Community Edition- MySQL GUI v5.22a
Host - 5.1.30-community : Database - sepvens
*********************************************************************
Server version : 5.1.30-community
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `sepvens`;

USE `sepvens`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `tbl_account` */

DROP TABLE IF EXISTS `tbl_account`;

CREATE TABLE `tbl_account` (
  `acc_ID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `acc_cardExpDate` date DEFAULT NULL,
  `acc_num` int(16) DEFAULT NULL,
  `acc_cardType` varchar(20) DEFAULT NULL,
  `acc_bankName` varchar(30) DEFAULT NULL,
  `acc_bankBranchCode` varchar(20) DEFAULT NULL,
  `fk_custID` int(5) unsigned zerofill DEFAULT NULL,
  `acc_cardNum` int(20) DEFAULT NULL,
  `acc_bal` float(12,2) DEFAULT NULL,
  PRIMARY KEY (`acc_ID`),
  KEY `FK_tbl_account` (`fk_custID`),
  CONSTRAINT `FK_tbl_account` FOREIGN KEY (`fk_custID`) REFERENCES `tbl_customer` (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_account` */

insert  into `tbl_account`(`acc_ID`,`acc_cardExpDate`,`acc_num`,`acc_cardType`,`acc_bankName`,`acc_bankBranchCode`,`fk_custID`,`acc_cardNum`,`acc_bal`) values (00001,'2018-09-05',2147483647,'Master','Capitec','7622',00001,0,NULL),(00002,'0001-01-01',0,'--Select Card Type--','','0',00002,0,NULL),(00003,'2018-09-12',3223,'Master','ABSA','323',00003,0,NULL);

/*Table structure for table `tbl_addon` */

DROP TABLE IF EXISTS `tbl_addon`;

CREATE TABLE `tbl_addon` (
  `addOn_id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `addOn_name` varchar(30) DEFAULT NULL,
  `addOn_cost` float(12,2) DEFAULT NULL,
  `fk_bookID` int(5) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`addOn_id`),
  KEY `FK_tbl_addon` (`fk_bookID`),
  CONSTRAINT `FK_tbl_addon` FOREIGN KEY (`fk_bookID`) REFERENCES `tbl_booking` (`bk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_addon` */

/*Table structure for table `tbl_booking` */

DROP TABLE IF EXISTS `tbl_booking`;

CREATE TABLE `tbl_booking` (
  `bk_id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `bk_time` varchar(5) DEFAULT NULL,
  `bk_serviceDate` varchar(20) DEFAULT NULL,
  `bk_washType` varchar(30) DEFAULT NULL,
  `bk_addOns` varchar(500) DEFAULT NULL,
  `bk_cost` float(12,2) DEFAULT NULL,
  `fk_custID` int(5) unsigned zerofill DEFAULT NULL,
  `bk_datePlaced` varchar(20) DEFAULT NULL,
  `bk_carType` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`bk_id`),
  KEY `FK_tbl_booking` (`fk_custID`),
  CONSTRAINT `FK_tbl_booking` FOREIGN KEY (`fk_custID`) REFERENCES `tbl_customer` (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_booking` */

insert  into `tbl_booking`(`bk_id`,`bk_time`,`bk_serviceDate`,`bk_washType`,`bk_addOns`,`bk_cost`,`fk_custID`,`bk_datePlaced`,`bk_carType`) values (00003,'07:00','1-Aug-2018','In & Out','Dash Wax',95.00,NULL,'2018-8-29','Sedan'),(00004,'07:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00005,'07:30',NULL,NULL,NULL,NULL,NULL,'18.09.2018',NULL),(00006,'07:30','1-Sep-2018','Inside Only',NULL,NULL,NULL,'18-09-2018',NULL),(00007,'07:00','3-Dec-2018','Outside Only','Valet',NULL,NULL,'18-09-2018','Bakkie'),(00008,'07:00','3-Dec-2018','Valet','Rim Renewal',0.00,NULL,'18-09-2018','Combi'),(00009,'Time','1-Sep-2018','Valet','Rim Renewal',0.00,NULL,'18-09-2018',''),(00010,'Time','1-Sep-2018','Valet','Rim Renewal',70.00,NULL,'18-09-2018','Sedan'),(00011,'07:30','1-Sep-2018','Valet','Body Polish',70.00,00001,'18-09-2018','Sedan'),(00012,'08:30','4-Dec-2018','Valet','Rim Renewal',90.00,00026,'15-10-2018','SUV'),(00013,'08:30','4-Dec-2018','Valet','Rim Renewal',90.00,00026,'15-10-2018','SUV'),(00014,'08:30','4-Dec-2018','Inside Only','Rim Renewal',90.00,00026,'15-10-2018','SUV');

/*Table structure for table `tbl_car` */

DROP TABLE IF EXISTS `tbl_car`;

CREATE TABLE `tbl_car` (
  `car_id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `car_regNum` varchar(20) DEFAULT NULL,
  `car_brand` varchar(20) DEFAULT NULL,
  `car_model` varchar(20) DEFAULT NULL,
  `car_type` varchar(20) DEFAULT NULL,
  `car_color` varchar(20) DEFAULT NULL,
  `fk_custID` int(5) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`car_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_car` */

insert  into `tbl_car`(`car_id`,`car_regNum`,`car_brand`,`car_model`,`car_type`,`car_color`,`fk_custID`) values (00001,'YINA 232 MP','BMW','SUBARU','SUV','White',00021),(00002,'YINpo 232 MP','BMW','sdf','SUV','White',00022),(00003,'YINpo 232 MP','BMW','sdf','SUV','White',00023),(00004,'YINS 232 MP','BMW','SUBARU','Sedan','White',00024),(00005,'YID 232 MP','BMWe43','SUBARU','Sedan','White',00025),(00006,'YINX 232 MP','BMW','WRZ','Sedan','White',00026),(00007,'CZ9 2WL GP','VW','2016 GTI','Sedan','BLUE',00027);

/*Table structure for table `tbl_carwash` */

DROP TABLE IF EXISTS `tbl_carwash`;

CREATE TABLE `tbl_carwash` (
  `cWash_id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `cWash_name` varchar(20) DEFAULT NULL,
  `cWash_city` varchar(20) DEFAULT NULL,
  `cWash_telNum` int(12) DEFAULT NULL,
  PRIMARY KEY (`cWash_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_carwash` */

/*Table structure for table `tbl_customer` */

DROP TABLE IF EXISTS `tbl_customer`;

CREATE TABLE `tbl_customer` (
  `cust_id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `cust_name` varchar(20) DEFAULT NULL,
  `cust_surname` varchar(20) DEFAULT NULL,
  `cust_gender` varchar(6) DEFAULT NULL,
  `cust_idNum` int(11) DEFAULT NULL,
  `cust_PhoneNum` int(12) DEFAULT NULL,
  `cust_altPhoneNum` int(12) DEFAULT NULL,
  `cust_suburb` varchar(30) DEFAULT NULL,
  `cust_streetInfo` varchar(100) DEFAULT NULL,
  `fk_cWashID` int(5) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`cust_id`),
  KEY `FK_tbl_customer` (`fk_cWashID`),
  CONSTRAINT `FK_tbl_customer` FOREIGN KEY (`fk_cWashID`) REFERENCES `tbl_carwash` (`cWash_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_customer` */

insert  into `tbl_customer`(`cust_id`,`cust_name`,`cust_surname`,`cust_gender`,`cust_idNum`,`cust_PhoneNum`,`cust_altPhoneNum`,`cust_suburb`,`cust_streetInfo`,`fk_cWashID`) values (00001,'Lazarus','Moogoroane','Male',2147483647,785432892,136569222,'23 poplar','wiwiwe',NULL),(00002,'Ponko','',' ',0,0,0,' ','',NULL),(00003,'dance','kaHouse','Female',2147483647,245342673,786452198,'11 Mabine','tasbert',NULL),(00004,'SUBARU','BMW',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00006,'BMWe43','SUBARUfaith',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00007,'faith','Mogogoronane',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(00008,'potego','poti','Gender',9090,343,233,NULL,NULL,NULL),(00009,'potego','poti','Gender',9090,343,233,'tasbert','89,poler',NULL),(00010,'potego','poti','Female',9090,343,233,'Middleburg','89,poler,tasbert',NULL),(00011,'potego','poti','Female',9090,343,233,'Witbank','89,poler,tasbert',NULL),(00025,'potego','poti','Female',9090,343,233,'Witbank','89,poler,tasbert',NULL),(00026,'Ricardo','Ricky','Male',187566477,343,233,'Witbank','89,poler,tasbert',NULL),(00027,'Nkosikhona','Dlamini','Male',2147483647,711065404,726082279,'Middleburg','89,French,Emalahleni',NULL);

/*Table structure for table `tbl_payment` */

DROP TABLE IF EXISTS `tbl_payment`;

CREATE TABLE `tbl_payment` (
  `pay_id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `pay_date` date DEFAULT NULL,
  `pay_amt` float(12,2) DEFAULT NULL,
  `fk_accID` int(5) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`pay_id`),
  KEY `FK_tbl_payment` (`fk_accID`),
  CONSTRAINT `FK_tbl_payment` FOREIGN KEY (`fk_accID`) REFERENCES `tbl_account` (`acc_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_payment` */

/*Table structure for table `tbl_staff` */

DROP TABLE IF EXISTS `tbl_staff`;

CREATE TABLE `tbl_staff` (
  `staf_id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `staf_name` varchar(20) DEFAULT NULL,
  `staf_surname` varchar(20) DEFAULT NULL,
  `staf_cellNum` int(12) DEFAULT NULL,
  `staf_altCellNum` int(12) DEFAULT NULL,
  `staf_idNum` int(13) DEFAULT NULL,
  `staf_jobTitle` varchar(20) DEFAULT NULL,
  `staff_hireDate` date DEFAULT NULL,
  `staf_sex` varchar(6) DEFAULT NULL,
  `staff_ressAddress` varchar(100) DEFAULT NULL,
  `fk_cWashID` int(5) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`staf_id`),
  KEY `FK_tbl_staff` (`fk_cWashID`),
  CONSTRAINT `FK_tbl_staff` FOREIGN KEY (`fk_cWashID`) REFERENCES `tbl_carwash` (`cWash_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_staff` */

/*Table structure for table `tbl_washtype` */

DROP TABLE IF EXISTS `tbl_washtype`;

CREATE TABLE `tbl_washtype` (
  `washType_id` int(5) NOT NULL AUTO_INCREMENT,
  `washType_name` varchar(20) DEFAULT NULL,
  `washType_cost` float(12,2) DEFAULT NULL,
  `fk_bookID` int(5) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`washType_id`),
  KEY `FK_tbl_washtype` (`fk_bookID`),
  CONSTRAINT `FK_tbl_washtype` FOREIGN KEY (`fk_bookID`) REFERENCES `tbl_booking` (`bk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_washtype` */

/* Procedure structure for procedure `addCar` */

/*!50003 DROP PROCEDURE IF EXISTS  `addCar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `addCar`(
 IN pRegNum Varchar(20),
 IN pBrand Varchar(20),
 IN pModel Varchar(20),
 IN pType Varchar(20),
 IN pColor Varchar(20),
 IN custID INT
 )
BEGIN
 INSERT INTO tbl_car(car_regNum,car_brand,car_model,car_type,car_color,fk_custID)
 values(pRegNum,pBrand,pModel,pType,pColor,custID);
 END */$$
DELIMITER ;

/* Procedure structure for procedure `bokk` */

/*!50003 DROP PROCEDURE IF EXISTS  `bokk` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `bokk`(
 IN pBkType VARCHAr(30),
 IN pAddOn VARCHAR(30),
 IN pTime  VARCHAR(20),
 IN pDate VARCHAR(20),
 IN pServed VARCHaR(20),
 IN pCost VARCHAR(20),
 IN pCarType VArCHAR (20),
 IN pID INT
 )
BEGIN
 INSERT INTO tbl_booking(bk_washType,bk_addOns,bk_time,bk_serviceDate,bk_datePlaced,bk_cost,bk_carType,fk_cutID)
 VALUES (pBkType,pAddOn,pTime,pDate,pServed,pCost,pCarType,pID);
 END */$$
DELIMITER ;

/* Procedure structure for procedure `booking` */

/*!50003 DROP PROCEDURE IF EXISTS  `booking` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `booking`(
 IN washTime Varchar(20),
 IN washType Varchar(20),
 IN washDate  varchar(20),
 IN datePlaced  varchar(20),
 IN addOns    varchar(20),
 IN clientID	INT,
 IN cost FLOAT(12.2)
 )
BEGIN
 INSERT INTO tbl_booking(bk_washType,bk_addOns,bk_time,fk_custID)
 VALUES(washType,addOns,washTime,clientID);
 END */$$
DELIMITER ;

/* Procedure structure for procedure `booky` */

/*!50003 DROP PROCEDURE IF EXISTS  `booky` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `booky`(
 IN pBkType VARCHAr(10)
 )
BEGIN
 INSERT INTO tbl_booking(bk_washType)
 VALUES (pBkType);
 END */$$
DELIMITER ;

/* Procedure structure for procedure `deleteMem` */

/*!50003 DROP PROCEDURE IF EXISTS  `deleteMem` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteMem`(
 IN pID int(5))
BEGIN
 DELETE FROM  tbl_account
 WHERE fk_custID = pID;
 DELETE FROM tbl_customer
 WHERE cust_id= pAdvId;
 END */$$
DELIMITER ;

/* Procedure structure for procedure `makeBook` */

/*!50003 DROP PROCEDURE IF EXISTS  `makeBook` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `makeBook`(
 IN pTime varchar(20),
 IN pDate VARCHAR(20),
 IN pServDate VARCHAR(20), 
 IN pWashType varchar(50),
 IN pAddOns Varchar(50),
 IN pCarType VARCHAR(30),
 IN pCost float,
 IN pCustID int
 )
BEGIN
 INSERT INTO tbl_booking(bk_time,bk_datePlaced,bk_serviceDate,bk_washType,bk_addOns,bk_carType,bk_cost,fk_custID)
 values(pTime,pDate,pServDate,pWashType,pAddOns,pCarType,pCost,pCustID);
 END */$$
DELIMITER ;

/* Procedure structure for procedure `new` */

/*!50003 DROP PROCEDURE IF EXISTS  `new` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `new`(
 in pName  VARCHAR(20),
 IN pSurname VARCHAR(20),
 IN  pIdNum VARCHAR (20),
 IN pGen	VARCHAR (20),
 IN pPhone VARCHAR (20),  
 IN pScndPhone VARCHAR (20),
 iN pSubub varchar(30),
 IN pResInfo VARCHAR(100),
 In pRegNum Varchar(20),
 IN pBrand Varchar(20),  
 IN pModel varchar(30),
 In pType VARCHAR(30),
 In pColor varchar(30)
 )
BEGIN
 DECLARE cWashID,custID INT;
 SELECT MAX(cWash_id) INTO cWashID 
 FROM tbl_carwash;
 INSERT INTO tbl_customer(cust_name,cust_surname,cust_idNum,cust_gender,cust_PhoneNum,cust_altPhoneNum,cust_suburb,cust_streetInfo) 
 VALUES(pName,pSurname,pIdNum,pGen,pPhone,pScndPhone,pSubub,pResInfo);
 SELECT MAX(cust_id) INTO custID 
 from tbl_customer;
 INSERT INTO tbl_car(car_regNum,car_brand,car_model,car_type,car_color,fk_custID)
 values(pRegNum,pBrand,pModel,pType,pColor,custID);
 END */$$
DELIMITER ;

/* Procedure structure for procedure `pay` */

/*!50003 DROP PROCEDURE IF EXISTS  `pay` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `pay`(
 IN pDate varchar(20),
 IN pAmt Varchar(20),
 IN pId  int )
BEGIN
 insert into tbl_payment(pay_date, pay_amt,fk_accID) values (pDate,pAmt,pId);
 update tbl_account 
 set acc_bal=acc_bal-pAmt
 WHERE acc_id=pId;
 END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
