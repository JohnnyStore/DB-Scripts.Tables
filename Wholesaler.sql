DROP TABLE IF EXISTS `Wholesaler`;
CREATE TABLE `Wholesaler` (
	`WholesalerID` INT NOT NULL AUTO_INCREMENT,
	`Password` VARCHAR(15) NOT NULL ,
	`Cellphone` VARCHAR(20) NOT NULL UNIQUE ,
	`Email` VARCHAR(50) NOT NULL UNIQUE ,
	`Status` CHAR(1) NOT NULL ,
	`InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
	`LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (`WholesalerID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;
CREATE INDEX Wholesaler_Index_Cellphone ON `Wholesaler`(`Cellphone`);
CREATE INDEX Wholesaler_Index_Email ON `Wholesaler`(`Email`);
