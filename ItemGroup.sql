DROP TABLE IF EXISTS `ItemGroup`;
CREATE TABLE `ItemGroup` (
	`ItemGroupID` INT NOT NULL AUTO_INCREMENT,
	`BrandID` INT NOT NULL ,
	`CategoryID` INT NOT NULL ,
	`SubCategoryID` INT NOT NULL ,
	`ItemGroupCN` NVARCHAR(15) NOT NULL ,
	`ItemGroupEN` VARCHAR(25) NOT NULL ,
	`InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
	`LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (`ItemGroupID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;
CREATE INDEX ItemGroup_Index_BrandID ON `ItemGroup`(`BrandID`);
CREATE INDEX ItemGroup_Index_CategoryID ON `ItemGroup`(`CategoryID`);
CREATE INDEX ItemGroup_Index_SubCategoryID ON `ItemGroup`(`SubCategoryID`);