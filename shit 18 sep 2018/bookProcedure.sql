DELIMITER $$

DROP PROCEDURE IF EXISTS `sepvens`.`makeBook`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `makeBook`(
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
    END$$

DELIMITER ;