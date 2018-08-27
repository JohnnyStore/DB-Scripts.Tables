DROP TABLE IF EXISTS `Image`;
CREATE TABLE `Image` (
	`ImageID` INT NOT NULL AUTO_INCREMENT,
	`ImageSrc` VARCHAR(300) NOT NULL ,
	`ParentImageSrc` VARCHAR(300) NOT NULL ,
	`ObjectID` INT NOT NULL ,
	`ObjectType` CHAR(1) NOT NULL ,
	`GroupID` INT NOT NULL DEFAULT 0,
	`ImageType` CHAR(1) NOT NULL ,
	`InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
	`LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (`ImageID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;
CREATE INDEX Image_Index_ObjectID ON `Image`(`ObjectID`);
CREATE INDEX Image_Index_ObjectType ON `Image`(`ObjectType`);
