DROP TABLE IF EXISTS `ShippingAddress`;
CREATE TABLE `ShippingAddress` (
	`ShippingID` INT NOT NULL AUTO_INCREMENT,
	`CustomerID` INT NOT NULL ,
  `ShippingCountryID` INT NOT NULL ,
	`ShippingProvinceID` INT NOT NULL ,
	`ShippingCityID` INT NOT NULL ,
	`ShippingStreet` VARCHAR(100) NOT NULL ,
	`Consignee` VARCHAR(15) NOT NULL ,
	`Cellphone` VARCHAR(11) NOT NULL ,
	`DefaultAddress` BIT NOT NULL DEFAULT 0,
	`InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
	`LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (`ShippingID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;
CREATE INDEX ShippingAddress_Index_CustomerID ON `ShippingAddress`(`CustomerID`);
CREATE INDEX ShippingAddress_Index_ShippingCountryID ON `ShippingAddress`(`ShippingCountryID`);
CREATE INDEX ShippingAddress_Index_ShippingProvinceID ON `ShippingAddress`(`ShippingProvinceID`);
CREATE INDEX ShippingAddress_Index_ShippingCityID ON `ShippingAddress`(`ShippingCityID`);