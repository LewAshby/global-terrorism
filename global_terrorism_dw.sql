CREATE TABLE `dt_date` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `full_date` date,
  `date_string` varchar(255),
  `year` int,
  `day_of_week` int,
  `day_in_month` int,
  `day_in_year` int,
  `day_name` varchar(15),
  `day_abbreviation` varchar(5),
  `week_in_month` int,
  `week_in_year` int,
  `month` int,
  `month_name` varchar(15),
  `month_abbreviation` varchar(5),
  `quarter_number` int,
  `quarter_name` varchar(255),
  `is_weekend` boolean,
  `is_holiday` boolean,
  `holiday_name` varchar(255)
);

CREATE TABLE `dt_weapon_type` (
  `sur_key_wt` int PRIMARY KEY AUTO_INCREMENT,
  `id_wt` int,
  `type` varchar(255)
);

CREATE TABLE `dt_group_name` (
  `sur_key_gn` int PRIMARY KEY AUTO_INCREMENT,
  `id_gn` int,
  `group_name` varchar(255)
);

CREATE TABLE `dt_target_type` (
  `sur_key_tt` int PRIMARY KEY AUTO_INCREMENT,
  `id_tt` int,
  `target_type` varchar(255),
  `target_subtype` varchar(255)
);

CREATE TABLE `dt_attack_type` (
  `sur_key_at` int PRIMARY KEY AUTO_INCREMENT,
  `id_at` int,
  `attack_type` varchar(255)
);

CREATE TABLE `dt_damage_amount` (
  `sur_key_da` int PRIMARY KEY AUTO_INCREMENT,
  `id_da` int,
  `amount_range` varchar(255)
);

CREATE TABLE `dt_location` (
  `sur_key_l` int PRIMARY KEY AUTO_INCREMENT,
  `id_region` int,
  `region` varchar(255),
  `id_country` int,
  `country` varchar(255),
  `id_prov_state` int,
  `prov_state` varchar(255),
  `id_city` int,
  `city` varchar(255),
  `latitude` double,
  `longitude` double
);

CREATE TABLE `ft_attack` (
  `id_fact` int PRIMARY KEY AUTO_INCREMENT,
  `id_date` int,
  `id_weapon_type` int,
  `id_location` int,
  `id_group_name` int,
  `id_target_type` int,
  `id_attack_type` int,
  `id_amount_damage` int,
  `n_deaths` int,
  `n_perpetrators_custody` int,
  `n_injured` int
);

ALTER TABLE `ft_attack` ADD FOREIGN KEY (`id_date`) REFERENCES `dt_date` (`id`);

ALTER TABLE `ft_attack` ADD FOREIGN KEY (`id_weapon_type`) REFERENCES `dt_weapon_type` (`sur_key_wt`);

ALTER TABLE `ft_attack` ADD FOREIGN KEY (`id_location`) REFERENCES `dt_location` (`sur_key_l`);

ALTER TABLE `ft_attack` ADD FOREIGN KEY (`id_group_name`) REFERENCES `dt_group_name` (`sur_key_gn`);

ALTER TABLE `ft_attack` ADD FOREIGN KEY (`id_target_type`) REFERENCES `dt_target_type` (`sur_key_tt`);

ALTER TABLE `ft_attack` ADD FOREIGN KEY (`id_attack_type`) REFERENCES `dt_attack_type` (`sur_key_at`);

ALTER TABLE `ft_attack` ADD FOREIGN KEY (`id_amount_damage`) REFERENCES `dt_damage_amount` (`sur_key_da`);
