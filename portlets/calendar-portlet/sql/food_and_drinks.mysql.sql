DROP TABLE IF EXISTS `FoodAndDrinks`;

CREATE TABLE `FoodAndDrinks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO FoodAndDrinks(name) VALUES('Coke');
INSERT INTO FoodAndDrinks(name) VALUES('Snacks');
INSERT INTO FoodAndDrinks(name) VALUES('Chips');
