
--
-- Table structure for table `#__jobpositions`
--

CREATE TABLE IF NOT EXISTS `#__jobpositions` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `job_position_name` varchar(128) NOT NULL,
  `job_description` text NOT NULL,
  `job_location` text NOT NULL,
  `job_start_date` date NOT NULL,
  `job_end_date` date NOT NULL,
  `job_contract_type` text NOT NULL,
  `job_part_of_employment` text NOT NULL, --part-time, full-time
  `job_level` text NOT NULL,
  `job_employment_type` text NOT NULL, --hybrid, on-site
  `job_recruitment_type` text NOT NULL,
  `job_technologies_required` text NOT NULL,
  `job_technologies_nice_to_have` text NOT NULL,
  `job_operating systems` text NOT NULL,
  `job_duties` text NOT NULL,
  `job_requirements` text NOT NULL,
  `job_nice_to_have` text NOT NULL,
  `job_project_management_system` text NOT NULL,
  `job_what_to_offer` text NOT NULL,
  `job_sportcard` tinyint(1) NOT NULL DEFAULT '0',
  `job_healthplan` tinyint(1) NOT NULL DEFAULT '0',
  `job_lifeinsurance` tinyint(1) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `distance` decimal(10,0) NOT NULL,
  `toilets` tinyint(1) NOT NULL DEFAULT '0',
  `cafe` tinyint(1) NOT NULL DEFAULT '0',
  `hills` int(11) NOT NULL DEFAULT '0',
  `bogs` int(11) NOT NULL DEFAULT '0', 
  `picture` varchar(128) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `alt` varchar(64) DEFAULT NULL,
  `state` TINYINT NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 DEFAULT COLLATE utf8mb4_unicode_ci;

-- 
-- Dumping data for table `#__jobpositions`
-- 

INSERT IGNORE INTO `#__jobpositions` (`id`, `job_position_name` ,`job_description`,`job_location`,`job_start_date`,`job_end_date`, `description`, `distance`, `toilets`, `cafe`, `hills`, `bogs`, `picture`, `width`, `height`, `alt`) VALUES
(1, 'Analityk SQL', '<h1>Kogo szukamy</h1>Prawdopodobnie Ciebie!','Warszawa','2023-01-01','2024-06-01', 'Walks somewhere','5', 1, 1, 0, 0, NULL, NULL, NULL, ''),
(2, 'Programista SAS', '<h1>Kogo szukamy</h1>Prawdopodobnie Ciebie!','Kraków','2023-01-11','', 'Woodland walk on hard paths', '4', 0, 0, 1, 1, NULL, NULL, NULL, ''),
(3, 'Programista Senior Vue', '<h1>Kogo szukamy</h1>Prawdopodobnie Ciebie!','Gdańsk','2023-01-15','', 'Hill walk with good views on established path.', '6', 0, 0, 3, 2, NULL, NULL, NULL, ''),
(4, 'Programista Java', '<h1>Kogo szukamy</h1>Prawdopodobnie Ciebie!','Siedlce','2023-02-6','', 'Walk around the lake on an accessible path.', '2', 1, 1, 0, 0, NULL, NULL, NULL, ''),
(5, 'Programista HTML', '<h1>Kogo szukamy</h1>Prawdopodobnie Ciebie!','Siedlce','2023-02-6','', 'Walk around the lake on an accessible path.', '2', 1, 1, 0, 0, NULL, NULL, NULL, ''),
(6, 'Analityk CSS', '<h1>Kogo szukamy</h1>Prawdopodobnie Ciebie!','Siedlce','2023-02-6','', 'Walk around the lake on an accessible path.', '2', 1, 1, 0, 0, NULL, NULL, NULL, ''),
(7, 'Analityk Java', '<h1>Kogo szukamy</h1>Prawdopodobnie Ciebie!','Siedlce','2023-02-6','', 'Walk around the lake on an accessible path.', '2', 1, 1, 0, 0, NULL, NULL, NULL, ''),
(8, 'Analityk CSS', '<h1>Kogo szukamy</h1>Prawdopodobnie Ciebie!','Siedlce','2023-02-6','', 'Walk around the lake on an accessible path.', '2', 1, 1, 0, 0, NULL, NULL, NULL, ''),
(9, 'Analityk HTML', '<h1>Kogo szukamy</h1>Prawdopodobnie Ciebie!','Siedlce','2023-02-6','', 'Walk around the lake on an accessible path.', '2', 1, 1, 0, 0, NULL, NULL, NULL, ''),
(10,'Analityk Java', '<h1>Kogo szukamy</h1>Prawdopodobnie Ciebie!','Siedlce','2023-02-6','', 'Walk around the lake on an accessible path.', '2', 1, 1, 0, 0, NULL, NULL, NULL, ''),
(11,'Programista Python / Django', '<h1>Kogo szukamy</h1>Prawdopodobnie Ciebie!','Wrocław','2023-03-7','', 'Walk along the line of the old railway track from start point car park to Thing castle', '2', 1, 1, 0, 0, NULL, NULL, NULL, '');
(12, 'Programista SAS', '<h1>Kogo szukamy</h1>Prawdopodobnie Ciebie!','Kraków','2023-01-11','', 'Woodland walk on hard paths', '4', 0, 0, 1, 1, NULL, NULL, NULL, ''),
(13, 'Programista Senior Vue', '<h1>Kogo szukamy</h1>Prawdopodobnie Ciebie!','Gdańsk','2023-01-15','', 'Hill walk with good views on established path.', '6', 0, 0, 3, 2, NULL, NULL, NULL, ''),
(14, 'Programista Java', '<h1>Kogo szukamy</h1>Prawdopodobnie Ciebie!','Siedlce','2023-02-6','', 'Walk around the lake on an accessible path.', '2', 1, 1, 0, 0, NULL, NULL, NULL, ''),
(15, 'Programista HTML', '<h1>Kogo szukamy</h1>Prawdopodobnie Ciebie!','Siedlce','2023-02-6','', 'Walk around the lake on an accessible path.', '2', 1, 1, 0, 0, NULL, NULL, NULL, ''),
(16, 'Analityk CSS', '<h1>Kogo szukamy</h1>Prawdopodobnie Ciebie!','Siedlce','2023-02-6','', 'Walk around the lake on an accessible path.', '2', 1, 1, 0, 0, NULL, NULL, NULL, ''),
(17, 'Analityk Java', '<h1>Kogo szukamy</h1>Prawdopodobnie Ciebie!','Siedlce','2023-02-6','', 'Walk around the lake on an accessible path.', '2', 1, 1, 0, 0, NULL, NULL, NULL, ''),
(18, 'Analityk CSS', '<h1>Kogo szukamy</h1>Prawdopodobnie Ciebie!','Siedlce','2023-02-6','', 'Walk around the lake on an accessible path.', '2', 1, 1, 0, 0, NULL, NULL, NULL, ''),
(19, 'Analityk HTML', '<h1>Kogo szukamy</h1>Prawdopodobnie Ciebie!','Siedlce','2023-02-6','', 'Walk around the lake on an accessible path.', '2', 1, 1, 0, 0, NULL, NULL, NULL, ''),
(20,'Analityk Java', '<h1>Kogo szukamy</h1>Prawdopodobnie Ciebie!','Siedlce','2023-02-6','', 'Walk around the lake on an accessible path.', '2', 1, 1, 0, 0, NULL, NULL, NULL, ''),
(21,'Programista Python / Django', '<h1>Kogo szukamy</h1>Prawdopodobnie Ciebie!','Wrocław','2023-03-7','', 'Walk along the line of the old railway track from start point car park to Thing castle', '2', 1, 1, 0, 0, NULL, NULL, NULL, '');
(22, 'Programista SAS', '<h1>Kogo szukamy</h1>Prawdopodobnie Ciebie!','Kraków','2023-01-11','', 'Woodland walk on hard paths', '4', 0, 0, 1, 1, NULL, NULL, NULL, ''),
(23, 'Programista Senior Vue', '<h1>Kogo szukamy</h1>Prawdopodobnie Ciebie!','Gdańsk','2023-01-15','', 'Hill walk with good views on established path.', '6', 0, 0, 3, 2, NULL, NULL, NULL, ''),
(24, 'Programista Java', '<h1>Kogo szukamy</h1>Prawdopodobnie Ciebie!','Siedlce','2023-02-6','', 'Walk around the lake on an accessible path.', '2', 1, 1, 0, 0, NULL, NULL, NULL, ''),
(25, 'Programista HTML', '<h1>Kogo szukamy</h1>Prawdopodobnie Ciebie!','Siedlce','2023-02-6','', 'Walk around the lake on an accessible path.', '2', 1, 1, 0, 0, NULL, NULL, NULL, ''),
(26, 'Analityk CSS', '<h1>Kogo szukamy</h1>Prawdopodobnie Ciebie!','Siedlce','2023-02-6','', 'Walk around the lake on an accessible path.', '2', 1, 1, 0, 0, NULL, NULL, NULL, ''),
(27, 'Analityk Java', '<h1>Kogo szukamy</h1>Prawdopodobnie Ciebie!','Siedlce','2023-02-6','', 'Walk around the lake on an accessible path.', '2', 1, 1, 0, 0, NULL, NULL, NULL, ''),
(28, 'Analityk CSS', '<h1>Kogo szukamy</h1>Prawdopodobnie Ciebie!','Siedlce','2023-02-6','', 'Walk around the lake on an accessible path.', '2', 1, 1, 0, 0, NULL, NULL, NULL, ''),
(29, 'Analityk HTML', '<h1>Kogo szukamy</h1>Prawdopodobnie Ciebie!','Siedlce','2023-02-6','', 'Walk around the lake on an accessible path.', '2', 1, 1, 0, 0, NULL, NULL, NULL, ''),

-- --------------------------------------------------------

--
-- Table structure for table `#__jobposition_dates`
--

CREATE TABLE IF NOT EXISTS `#__jobposition_dates` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `walk_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `weather` varchar(256) DEFAULT NULL,
  `state` TINYINT NOT NULL DEFAULT '1',
  KEY `idx_walk` (`walk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 DEFAULT COLLATE utf8mb4_unicode_ci;

--
-- Dumping data for table `#__jobposition_dates`
--

INSERT IGNORE INTO `#__jobposition_dates` (`id`, `walk_id`, `date`, `weather`) VALUES
(1, 1, '2019-05-12', 'Dry and Sunny'),
(2, 2, '2019-06-09', 'Wet and Windy'),
(3, 3, '2019-01-01', 'Cold and wet'),
(4, 4, '2019-01-20', 'Bright but frosty'),
(5, 5, '2019-04-28', 'Dry and warm'),
(6, 1, '2019-05-12', 'Wet and windy'),
(7, 3, '2019-06-09', 'Hot and dry'),
(8, 5, '2019-07-21', 'Overcast but warm and humid');
