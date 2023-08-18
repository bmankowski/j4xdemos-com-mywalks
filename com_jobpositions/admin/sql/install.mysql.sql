CREATE TABLE IF NOT EXISTS #__jobpositions (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  job_position_name varchar(128) NOT NULL,
  job_remuneration_from varchar(128) ,
  job_remuneration_to varchar(128) ,
  job_remuneration_unit varchar(128) ,
  job_description text NOT NULL,
  job_location text ,
  job_start_date date ,
  job_end_date date ,
  job_contract_type text ,
  job_part_of_employment text , 
  job_level text ,
  job_employment_type text , 
  job_recruitment_type text ,
  job_technologies_required text ,
  job_technologies_optional text ,
  job_operating_systems text ,
  job_duties text ,
  job_requirements text ,
  job_requirements_optional text ,
  job_project_management_system text ,
  job_what_to_offer text ,
  job_sportcard tinyint(1)  DEFAULT '0',
  job_healthplan tinyint(1)  DEFAULT '0',
  job_lifeinsurance tinyint(1)  DEFAULT '0',
  description text ,
  distance decimal(10,0) ,
  toilets tinyint(1) NOT NULL DEFAULT '0',
  cafe tinyint(1) NOT NULL DEFAULT '0',
  hills int(11) NOT NULL DEFAULT '0',
  bogs int(11) NOT NULL DEFAULT '0', 
  picture varchar(128) DEFAULT NULL,
  width int(11) DEFAULT NULL,
  height int(11) DEFAULT NULL,
  alt varchar(64) DEFAULT NULL,
  state TINYINT NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 DEFAULT COLLATE utf8mb4_unicode_ci;

-- 
-- Dumping data for table #__jobpositions
-- 


INSERT INTO #__jobpositions (job_position_name, job_remuneration_from, job_remuneration_to, job_remuneration_unit, job_description, job_location, job_start_date, job_end_date, job_contract_type, 
job_part_of_employment, job_level, job_employment_type,job_recruitment_type,job_technologies_required, job_technologies_optional, job_operating_systems, job_duties, 
job_requirements,job_requirements_optional,job_project_management_system,
job_what_to_offer,
job_sportcard,job_healthplan,job_lifeinsurance) VALUES 
("Analityk SQL", "12000", "15000", "netto (+ VAT) mies.", "Praca w stabilnej firmie, która od 12 lat stale obsługuje T-Mobile i Orange, a obecnie także szybko rozwija świadczenie usług dla innych klientów na rynku krajowym i międzynarodowym", 
"Warszawa", "2023-01-01", "2024-06-01", "umowa zlecenie, kontrakt B2B","Cały etat","specjalista (Mid / Regular)","praca hybrydowa","rekrutacja zdalna","<ul><li>SQL</li>NOSQL<li></li><li>Konteneryzacja</li></ul>","<ul><li>ORACLE</li>Git<li></li><li>Java</li></ul>","<ul><li>Linux</li></ul>","<ul><li>Administracja i utrzymanie systemów OSS </li><li>Instalacja i utrzymanie środowisk opartych o systemy: Linux, bazy danych typu Sql i NoSql</li></ul>",
"<ul><li>SQL</li><li></li><li></li></ul>","<ul><li>SQL</li><li></li><li></li></ul>","<ul><li>Doświadczenie w administracji relacyjnych baz danych jak Oracle, MySQL</li></ul>",
"<ul><li>SQL</li>Dołączenie do doświadczonego zespołu profesjonalistów, którzy chętnie dzielą się swoją wiedzą i umiejętnościami<li></li><li>Dostęp do najnowszych technologii i rozbudowanego środowiska IT</li></ul>",
true, true, false)
;


-- --------------------------------------------------------

--
-- Table structure for table #__jobposition_dates
--

CREATE TABLE IF NOT EXISTS #__jobposition_dates (
  id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  walk_id int(11) NOT NULL,
  date date NOT NULL,
  weather varchar(256) DEFAULT NULL,
  state TINYINT NOT NULL DEFAULT '1',
  KEY idx_walk (walk_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 DEFAULT COLLATE utf8mb4_unicode_ci;

--
-- Dumping data for table #__jobposition_dates
--

INSERT IGNORE INTO #__jobposition_dates (id, walk_id, date, weather) VALUES
(1, 1, '2019-05-12', 'Dry and Sunny'),
(2, 2, '2019-06-09', 'Wet and Windy'),
(3, 3, '2019-01-01', 'Cold and wet'),
(4, 4, '2019-01-20', 'Bright but frosty'),
(5, 5, '2019-04-28', 'Dry and warm'),
(6, 1, '2019-05-12', 'Wet and windy'),
(7, 3, '2019-06-09', 'Hot and dry'),
(8, 5, '2019-07-21', 'Overcast but warm and humid');
