DROP TABLE IF EXISTS `Customer`;
CREATE TABLE `Customer` (
	`CustomerID` INT NOT NULL AUTO_INCREMENT,
	`CustomerName` NVARCHAR(15) NULL ,
	`Account` VARCHAR(15) NOT NULL UNIQUE ,
	`Password` VARCHAR(15) NOT NULL ,
	`CustomerSex` CHAR(1) NULL,
	`Cellphone` VARCHAR(20) NULL,
	`Email` VARCHAR(50) NULL,
	`CustomerType` CHAR(1) NOT NULL DEFAULT 'N',
	`Status` CHAR(1) NOT NULL,
	`InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
	`LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (`CustomerID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;
CREATE INDEX Customer_Index_Account ON `Customer`(`Account`);
CREATE INDEX Customer_Index_Cellphone ON `Customer`(`Cellphone`);
CREATE INDEX Customer_Index_Email ON `Customer`(`Email`);