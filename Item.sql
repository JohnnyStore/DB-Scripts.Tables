DROP TABLE IF EXISTS `Item`;
CREATE TABLE `Item` (
	`ItemID` INT NOT NULL AUTO_INCREMENT,
	`BrandID` INT NOT NULL ,
	`CategoryID` INT NOT NULL ,
	`SubCategoryID` INT NOT NULL ,
  `ItemGroupID` INT NOT NULL ,
	`SeriesID` INT NOT NULL DEFAULT '0',
  `ItemCode` VARCHAR(15) NOT NULL,
	`UnitPrice4RMB` DECIMAL(10,2) NOT NULL ,
	`UnitPrice4USD` DECIMAL(10,2) NOT NULL ,
	`Rate` FLOAT(3,2) NOT NULL DEFAULT '1',
	`ColorID` INT NOT NULL ,
	`SizeID` INT NOT NULL ,
	`ItemMaterial` VARCHAR(100) NOT NULL ,
	`MadeInID` INT NOT NULL ,
	`ItemLength` VARCHAR(20) NULL ,
	`AdjustLength` VARCHAR(20) NULL ,
	`SuitablePetCN` NVARCHAR(20) NULL ,
	`SuitablePetEN` VARCHAR(20) NULL ,
	`ItemShortDescriptionCN` NVARCHAR(30) NOT NULL ,
	`ItemShortDescriptionEN` VARCHAR(50) NOT NULL ,
	`ItemDescriptionCN` NVARCHAR(500) NOT NULL ,
	`ItemDescriptionEN` VARCHAR(500) NOT NULL ,
	`ItemStatus` CHAR(1) NULL ,
	`InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
	`LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (`ItemID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;
CREATE INDEX Item_Index_BrandID ON `Item`(`BrandID`);
CREATE INDEX Item_Index_CategoryID ON `Item`(`CategoryID`);
CREATE INDEX Item_Index_SubCategoryID ON `Item`(`SubCategoryID`);
CREATE INDEX Item_Index_ItemGroupID ON `Item`(`ItemGroupID`);
CREATE INDEX Item_Index_SeriesID ON `Item`(`SeriesID`);
CREATE INDEX Item_Index_ColorID ON `Item`(`ColorID`);
CREATE INDEX Item_Index_SizeID ON `Item`(`SizeID`);
CREATE INDEX Item_Index_ItemCode ON `Item`(`ItemCode`);
CREATE INDEX Item_Index_MadeInID ON `Item`(`MadeInID`);
