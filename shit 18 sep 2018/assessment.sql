DELIMITER $$

DROP PROCEDURE IF EXISTS `sepvens`.`new`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `new`(
 in pName  VARCHAR(20),
 IN pSurname VARCHAR(20),
 IN  pIdNum VARCHAR(20),
 IN pGen	VARCHAR (20),
 IN pPhone VARCHAR(20),  
 IN pScndPhone VARCHAR(20),
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
 END$$

DELIMITER ;