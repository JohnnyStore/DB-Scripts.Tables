DROP TABLE IF EXISTS `Order`;
CREATE TABLE `Order` (
	`OrderID` INT NOT NULL AUTO_INCREMENT,
	`CustomerID` INT NOT NULL ,
	`OrderDate` TIMESTAMP NOT NULL ,
	`OrderAmount` DECIMAL(8,2) NOT NULL ,
	`CurrencyType` CHAR(3) NOT NULL ,
	`CountryID` INT NOT NULL ,
	`ShippingAddressProvinceID` INT NOT NULL ,
	`ShippingAddressCityID` INT NOT NULL ,
	`ShippingAddress` VARCHAR(50) NOT NULL ,
	`OrderStatus` CHAR(1) NOT NULL ,
	`TrackingNumber` VARCHAR(50) NULL ,
	`ExpressCompanyID` INT NOT NULL ,
	`InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
	`LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (`OrderID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;
CREATE INDEX Order_Index_CustomerID ON `Order`(`CustomerID`);
CREATE INDEX Order_Index_CountryID ON `Order`(`CountryID`);
CREATE INDEX Order_Index_ShippingAddressProvinceID ON `Order`(`ShippingAddressProvinceID`);
CREATE INDEX Order_Index_ShippingAddressCityID ON `Order`(`ShippingAddressCityID`);
CREATE INDEX Order_Index_OrderStatus ON `Order`(`OrderStatus`);
CREATE INDEX Order_Index_ExpressCompanyID ON `Order`(`ExpressCompanyID`);
