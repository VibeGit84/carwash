/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.1.41 : Database - sepvens
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`sepvens` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `sepvens`;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_booking` */

insert  into `tbl_booking`(`bk_id`,`bk_time`,`bk_serviceDate`,`bk_washType`,`bk_addOns`,`bk_cost`,`fk_custID`,`bk_datePlaced`,`bk_carType`) values (00003,'07:00','1-Aug-2018','In & Out','Dash Wax',95.00,NULL,'2018-8-29','Sedan');

/*Table structure for table `tbl_car` */

DROP TABLE IF EXISTS `tbl_car`;

CREATE TABLE `tbl_car` (
  `car_regNum` varchar(8) NOT NULL,
  `car_brand` varchar(20) DEFAULT NULL,
  `car_model` varchar(20) DEFAULT NULL,
  `car_type` varchar(20) DEFAULT NULL,
  `car_color` varchar(20) DEFAULT NULL,
  `fk_custID` int(5) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`car_regNum`),
  KEY `FK_tbl_car` (`fk_custID`),
  CONSTRAINT `FK_tbl_car` FOREIGN KEY (`fk_custID`) REFERENCES `tbl_customer` (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_car` */

insert  into `tbl_car`(`car_regNum`,`car_brand`,`car_model`,`car_type`,`car_color`,`fk_custID`) values (' ','','','--Select car type--','',00002),('DJT 333G','BMW','325 is','Sedan','blue',00003),('DJT 342E','BMW','325 is','SUV','blue',00001),('DJT 342G','Subaru','343','Bakkie','grey',00002),('HHS 523M','Subaru','343','SUV','White',00001);

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
  `cust_ressInfo` varchar(100) DEFAULT NULL,
  `fk_cWashID` int(5) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`cust_id`),
  KEY `FK_tbl_customer` (`fk_cWashID`),
  CONSTRAINT `FK_tbl_customer` FOREIGN KEY (`fk_cWashID`) REFERENCES `tbl_carwash` (`cWash_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_customer` */

insert  into `tbl_customer`(`cust_id`,`cust_name`,`cust_surname`,`cust_gender`,`cust_idNum`,`cust_PhoneNum`,`cust_altPhoneNum`,`cust_suburb`,`cust_ressInfo`,`fk_cWashID`) values (00001,'Lazarus','Moogoroane','Male',2147483647,785432892,136569222,'23 poplar','wiwiwe',NULL),(00002,'Ponko','',' ',0,0,0,' ','',NULL),(00003,'dance','kaHouse','Female',2147483647,245342673,786452198,'11 Mabine','tasbert',NULL);

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
INSERT INTO tbl_booking(bk_washType,bk_addOns,bk_serviceDate,bk_date,bk_datePlaced,bk_cost,fk_custID)
VALUES(washType,addOns,washTime,washDate,datePlaced,cost,clientID);
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

/* Procedure structure for procedure `bookys` */

/*!50003 DROP PROCEDURE IF EXISTS  `bookys` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `bookys`(
IN pBkType VARCHAr(10),
IN pAddOn VARCHAR(30),
IN pTime  VARCHAR(20),
IN pDate VARCHAR(20)
)
BEGIN
INSERT INTO tbl_booking(bk_washType,bk_addOns,bk_time,bk_serviceDate)
VALUES (pBkType,pAddOn,pTime,pDate);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `bookyy` */

/*!50003 DROP PROCEDURE IF EXISTS  `bookyy` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `bookyy`(
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

/* Procedure structure for procedure `bookyz` */

/*!50003 DROP PROCEDURE IF EXISTS  `bookyz` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `bookyz`(
IN pBkType VARCHAr(30),
IN pAddOn VARCHAR(30),
IN pTime  VARCHAR(20),
IN pDate VARCHAR(20),
IN pServed VARCHaR(20),
IN pCost VARCHAR(20),
IN pCarType VArCHAR (20)
)
BEGIN
INSERT INTO tbl_booking(bk_washType,bk_addOns,bk_time,bk_serviceDate,bk_datePlaced,bk_cost,bk_carType)
VALUES (pBkType,pAddOn,pTime,pDate,pServed,pCost,pCarType);
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

/* Procedure structure for procedure `newMember` */

/*!50003 DROP PROCEDURE IF EXISTS  `newMember` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `newMember`(
IN pNAME varchar(20),
IN pSurname varchar(20),
IN pGen varchar(6),
IN pIDnum INT,
IN pCellNum INT,
IN pAltCellNum INT,
IN pStrtAdres varchar(100),
IN pSuburb varchar(20),
IN pCardExpDate VARCHAR(11),
IN pAccNUM INT,
IN pBankname varchar(20),
IN pCardType VARCHAR(20),
IN pCardnum INT,
IN pBranchCode INT,
IN pRegNum Varchar(20),
IN pBrand Varchar(20),
IN pModel Varchar(20),
IN pType Varchar(20),
IN pColor Varchar(20)
)
BEGIN    
DECLARE cWashID,custID INT;
	SELECT MAX(cWash_id) INTO cWashID 
	FROM tbl_carwash;
  
	
 INSERT INTO tbl_customer(cust_name,cust_surname,cust_gender,cust_idNum,
		cust_PhoneNum,cust_AltPhoneNum,cust_suburb,cust_ressInfo,fk_cWashID)
values(pName,pSurname,pGen,pIdNum,pCellNum,pAltCellNum,pStrtAdres,pSuburb,cWashID);
SELECT MAX(cust_id) INTO custID 
	from tbl_customer;
	 
	INSERT INTO tbl_account(acc_cardExpDate,acc_num,acc_bankName,acc_cardNum,acc_cardType,acc_bankBranchCode,fk_custID)
	VALUES(pCardExpDate,pAccNUM,pBankname,pCardnum,pCardType,pBranchCode,custID);
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
