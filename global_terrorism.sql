CREATE TABLE `country` (
  `id` int PRIMARY KEY,
  `country_name` varchar(255)
);

CREATE TABLE `region` (
  `id` int PRIMARY KEY,
  `region_name` varchar(255)
);

CREATE TABLE `prov_state` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `provstate_name` varchar(255)
);

CREATE TABLE `city` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `city_name` varchar(255)
);

CREATE TABLE `attack_type` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `type` varchar(255)
);

CREATE TABLE `target_type` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `type` varchar(255),
  `subtype` varchar(255)
);

CREATE TABLE `group_name` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `weapon_type` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `type` varchar(255),
  `subtype` varchar(255)
);

CREATE TABLE `amount_damage` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `amount` varchar(255)
);

CREATE TABLE `attack` (
  `id` bigint(15) PRIMARY KEY,
  `attack_date` date,
  `success` boolean,
  `n_deaths` int,
  `n_us_deaths` int,
  `n_perpetrator_deaths` int,
  `n_perpetrators` int,
  `n_perpetrators_custody` int,
  `n_injured` int,
  `n_us_injured` int,
  `latitude` double,
  `longitude` double,
  `location` mediumtext,
  `id_region` int,
  `id_country` int,
  `id_prov_state` int,
  `id_city` int,
  `id_target_nationality` int,
  `id_attack_type` int,
  `id_target_type` int,
  `id_group_name` int,
  `id_weapon_type` int,
  `id_amount_damage` int,
  `created_at` date
);

ALTER TABLE `attack` ADD FOREIGN KEY (`id_region`) REFERENCES `region` (`id`);

ALTER TABLE `attack` ADD FOREIGN KEY (`id_country`) REFERENCES `country` (`id`);

ALTER TABLE `attack` ADD FOREIGN KEY (`id_prov_state`) REFERENCES `prov_state` (`id`);

ALTER TABLE `attack` ADD FOREIGN KEY (`id_city`) REFERENCES `city` (`id`);

ALTER TABLE `attack` ADD FOREIGN KEY (`id_target_nationality`) REFERENCES `country` (`id`);

ALTER TABLE `attack` ADD FOREIGN KEY (`id_attack_type`) REFERENCES `attack_type` (`id`);

ALTER TABLE `attack` ADD FOREIGN KEY (`id_target_type`) REFERENCES `target_type` (`id`);

ALTER TABLE `attack` ADD FOREIGN KEY (`id_group_name`) REFERENCES `group_name` (`id`);

ALTER TABLE `attack` ADD FOREIGN KEY (`id_weapon_type`) REFERENCES `weapon_type` (`id`);

ALTER TABLE `attack` ADD FOREIGN KEY (`id_amount_damage`) REFERENCES `amount_damage` (`id`);
