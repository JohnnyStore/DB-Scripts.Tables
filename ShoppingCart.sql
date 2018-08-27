DROP TABLE IF EXISTS `ShoppingCart`;
CREATE TABLE `ShoppingCart` (
	`ShoppingCartID` INT NOT NULL AUTO_INCREMENT,
	`ItemID` INT NOT NULL ,
    `CustomerID` INT NOT NULL ,
	`ShoppingCount` INT NOT NULL ,
	`Status` CHAR(1) NOT NULL ,
	`InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
	`LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (`ShoppingCartID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;
CREATE INDEX ShoppingCart_Index_ItemID ON `ShoppingCart`(`ItemID`);
CREATE INDEX ShoppingCart_Index_CustomerID ON `ShoppingCart`(`CustomerID`);