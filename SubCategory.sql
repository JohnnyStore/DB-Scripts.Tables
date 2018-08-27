DROP TABLE IF EXISTS `SubCategory`;
CREATE TABLE `SubCategory` (
	`SubCategoryID` INT NOT NULL AUTO_INCREMENT,
	`SubCategoryCN` NVARCHAR(15) NOT NULL ,
	`SubCategoryEN` VARCHAR(25) NOT NULL ,
	`InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
	`LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (`SubCategoryID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;
