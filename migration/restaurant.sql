CREATE TABLE `restaurant` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `score` varchar(255),
  `address` varchar(255) UNIQUE NOT NULL,
  `contacts` varchar(255),
  `created_at` timestamp DEFAULT (now()),
  `deleted_at` timestamp 
);

CREATE TABLE `restaurant_query_log` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `restaurant_address` varchar(255) NOT NULL,
  `created_at` timestamp DEFAULT (now())
);

ALTER TABLE `restaurant_query_log` ADD FOREIGN KEY (`restaurant_address`) REFERENCES `restaurant` (`address`);
