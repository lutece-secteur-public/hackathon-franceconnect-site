-- MySQL dump 10.13  Distrib 5.6.20, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: hackathon_fc_dev
-- ------------------------------------------------------
-- Server version	5.6.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `appointment_appointment`
--

DROP TABLE IF EXISTS `appointment_appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_appointment` (
  `id_appointment` int(11) NOT NULL DEFAULT '0',
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_user` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `authentication_service` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `localization` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `date_appointment` date NOT NULL,
  `id_slot` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `id_action_cancel` int(11) NOT NULL,
  `id_admin_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_appointment`),
  KEY `idx_appointment_id_slot` (`id_slot`),
  KEY `idx_appointment_date_app` (`date_appointment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_appointment`
--

LOCK TABLES `appointment_appointment` WRITE;
/*!40000 ALTER TABLE `appointment_appointment` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment_appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_appointment_response`
--

DROP TABLE IF EXISTS `appointment_appointment_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_appointment_response` (
  `id_appointment` int(11) NOT NULL,
  `id_response` int(11) NOT NULL,
  PRIMARY KEY (`id_appointment`,`id_response`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_appointment_response`
--

LOCK TABLES `appointment_appointment_response` WRITE;
/*!40000 ALTER TABLE `appointment_appointment_response` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment_appointment_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_calendar_template`
--

DROP TABLE IF EXISTS `appointment_calendar_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_calendar_template` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `template_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_calendar_template`
--

LOCK TABLES `appointment_calendar_template` WRITE;
/*!40000 ALTER TABLE `appointment_calendar_template` DISABLE KEYS */;
INSERT INTO `appointment_calendar_template` VALUES (1,'Calendrier','Calendrier des créneaux disponibles et indisponibles','skin/plugins/appointment/calendar/appointment_form_calendar.html'),(2,'Liste des créneaux disponibles','Liste des créneaux disponibles','skin/plugins/appointment/calendar/appointment_form_list_open_slots.html'),(3,'Calendrier horizontal','Calendrier horizontal','skin/plugins/appointment/calendar/appointment_form_calendar_horizontal.html');
/*!40000 ALTER TABLE `appointment_calendar_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_day`
--

DROP TABLE IF EXISTS `appointment_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_day` (
  `id_day` int(11) NOT NULL,
  `id_form` int(11) NOT NULL,
  `is_open` smallint(6) NOT NULL,
  `date_day` date NOT NULL,
  `opening_hour` int(11) NOT NULL,
  `opening_minute` int(11) NOT NULL,
  `closing_hour` int(11) NOT NULL,
  `closing_minute` int(11) NOT NULL,
  `appointment_duration` int(11) NOT NULL,
  `people_per_appointment` int(11) NOT NULL,
  `free_places` int(11) NOT NULL,
  PRIMARY KEY (`id_day`),
  KEY `idx_appointment_day_id_form` (`id_form`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_day`
--

LOCK TABLES `appointment_day` WRITE;
/*!40000 ALTER TABLE `appointment_day` DISABLE KEYS */;
INSERT INTO `appointment_day` VALUES (1,1,1,'2015-06-15',9,0,17,0,30,1,16),(2,1,0,'2015-06-16',9,0,17,0,30,1,0),(3,1,1,'2015-06-17',9,0,17,0,30,1,16),(4,1,1,'2015-06-18',9,0,17,0,30,1,16),(5,1,1,'2015-06-19',9,0,17,0,30,1,16),(6,1,0,'2015-06-20',9,0,17,0,30,1,0),(7,1,0,'2015-06-21',9,0,17,0,30,1,0),(8,1,1,'2015-06-22',9,0,17,0,30,1,16),(9,1,0,'2015-06-23',9,0,17,0,30,1,0),(10,1,1,'2015-06-24',9,0,17,0,30,1,16),(11,1,1,'2015-06-25',9,0,17,0,30,1,16),(12,1,1,'2015-06-26',9,0,17,0,30,1,16),(13,1,0,'2015-06-27',9,0,17,0,30,1,0),(14,1,0,'2015-06-28',9,0,17,0,30,1,0),(15,1,1,'2015-06-29',9,0,17,0,30,1,16),(16,1,0,'2015-06-30',9,0,17,0,30,1,0),(17,1,1,'2015-07-01',9,0,17,0,30,1,16),(18,1,1,'2015-07-02',9,0,17,0,30,1,16),(19,1,1,'2015-07-03',9,0,17,0,30,1,16),(20,1,0,'2015-07-04',9,0,17,0,30,1,0),(21,1,0,'2015-07-05',9,0,17,0,30,1,0),(22,1,1,'2015-07-06',9,0,17,0,30,1,16),(23,1,0,'2015-07-07',9,0,17,0,30,1,0),(24,1,1,'2015-07-08',9,0,17,0,30,1,16),(25,1,1,'2015-07-09',9,0,17,0,30,1,16),(26,1,1,'2015-07-10',9,0,17,0,30,1,16),(27,1,0,'2015-07-11',9,0,17,0,30,1,0),(28,1,0,'2015-07-12',9,0,17,0,30,1,0),(29,1,1,'2015-07-13',9,0,17,0,30,1,16),(30,1,0,'2015-07-14',9,0,17,0,30,1,0),(31,1,1,'2015-07-15',9,0,17,0,30,1,16),(32,1,1,'2015-07-16',9,0,17,0,30,1,16),(33,1,1,'2015-07-17',9,0,17,0,30,1,16),(34,1,0,'2015-07-18',9,0,17,0,30,1,0),(35,1,0,'2015-07-19',9,0,17,0,30,1,0),(36,1,1,'2015-07-20',9,0,17,0,30,1,16),(37,1,0,'2015-07-21',9,0,17,0,30,1,0),(38,1,1,'2015-07-22',9,0,17,0,30,1,16),(39,1,1,'2015-07-23',9,0,17,0,30,1,16),(40,1,1,'2015-07-24',9,0,17,0,30,1,16),(41,1,0,'2015-07-25',9,0,17,0,30,1,0),(42,1,0,'2015-07-26',9,0,17,0,30,1,0),(43,1,1,'2015-07-27',9,0,17,0,30,1,16),(44,1,0,'2015-07-28',9,0,17,0,30,1,0),(45,1,1,'2015-07-29',9,0,17,0,30,1,16),(46,1,1,'2015-07-30',9,0,17,0,30,1,16),(47,1,1,'2015-07-31',9,0,17,0,30,1,16),(48,1,0,'2015-08-01',9,0,17,0,30,1,0),(49,1,0,'2015-08-02',9,0,17,0,30,1,0),(50,1,1,'2015-08-03',9,0,17,0,30,1,16),(51,1,0,'2015-08-04',9,0,17,0,30,1,0),(52,1,1,'2015-08-05',9,0,17,0,30,1,16),(53,1,1,'2015-08-06',9,0,17,0,30,1,16),(54,1,1,'2015-08-07',9,0,17,0,30,1,16),(55,1,0,'2015-08-08',9,0,17,0,30,1,0),(56,1,0,'2015-08-09',9,0,17,0,30,1,0),(57,1,1,'2015-08-10',9,0,17,0,30,1,16),(58,1,0,'2015-08-11',9,0,17,0,30,1,0),(59,1,1,'2015-08-12',9,0,17,0,30,1,16),(60,1,1,'2015-08-13',9,0,17,0,30,1,16),(61,1,1,'2015-08-14',9,0,17,0,30,1,16),(62,1,0,'2015-08-15',9,0,17,0,30,1,0),(63,1,0,'2015-08-16',9,0,17,0,30,1,0);
/*!40000 ALTER TABLE `appointment_day` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_form`
--

DROP TABLE IF EXISTS `appointment_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_form` (
  `id_form` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `time_start` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `time_end` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `duration_appointments` int(11) NOT NULL DEFAULT '0',
  `is_open_monday` smallint(6) NOT NULL,
  `is_open_tuesday` smallint(6) NOT NULL,
  `is_open_wednesday` smallint(6) NOT NULL,
  `is_open_thursday` smallint(6) NOT NULL,
  `is_open_friday` smallint(6) NOT NULL,
  `is_open_saturday` smallint(6) NOT NULL,
  `is_open_sunday` smallint(6) NOT NULL,
  `date_start_validity` date DEFAULT NULL,
  `date_end_validity` date DEFAULT NULL,
  `is_active` smallint(6) NOT NULL,
  `dispolay_title_fo` smallint(6) NOT NULL,
  `nb_weeks_to_display` int(11) NOT NULL DEFAULT '0',
  `people_per_appointment` int(11) NOT NULL DEFAULT '0',
  `id_workflow` int(11) NOT NULL DEFAULT '0',
  `is_captcha_enabled` smallint(6) NOT NULL,
  `users_can_cancel_appointments` smallint(6) NOT NULL,
  `min_days_before_app` smallint(6) NOT NULL,
  `id_calendar_template` int(11) NOT NULL,
  `max_appointment_mail` int(11) NOT NULL DEFAULT '0',
  `nb_appointment_week` int(11) NOT NULL DEFAULT '0',
  `reference` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_form_step` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_form`),
  KEY `fk_app_form_template` (`id_calendar_template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_form`
--

LOCK TABLES `appointment_form` WRITE;
/*!40000 ALTER TABLE `appointment_form` DISABLE KEYS */;
INSERT INTO `appointment_form` VALUES (1,'Formulaire de demande de rendez-vous','demande de RDV','09h00','17h00',30,1,0,1,1,1,0,0,'2014-02-09',NULL,1,1,8,1,101,0,1,4,1,0,0,'MDP_LUTECE',0);
/*!40000 ALTER TABLE `appointment_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_form_messages`
--

DROP TABLE IF EXISTS `appointment_form_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_form_messages` (
  `id_form` int(11) NOT NULL,
  `calendar_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `field_firstname_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `field_firstname_help` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `field_lastname_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `field_lastname_help` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `field_email_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `field_email_help` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `text_appointment_created` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `url_redirect_after_creation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `text_appointment_canceled` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `label_button_redirection` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `no_available_slot` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `calendar_description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `calendar_reserve_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `calendar_full_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_form`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_form_messages`
--

LOCK TABLES `appointment_form_messages` WRITE;
/*!40000 ALTER TABLE `appointment_form_messages` DISABLE KEYS */;
INSERT INTO `appointment_form_messages` VALUES (1,'Choisir une date','Prénom','','Nom','','Email','','Votre demande de rendez-vous a bien été créée avec la reference <b>%%REF%%</b>','jsp/site/Portal.jsp','Votre demande de rendez-vous a bien été annulée','Terminer','Aucun créneau disponible na été trouvé. Veuillez réessayer ultérieurement.','','Reserver','Complet');
/*!40000 ALTER TABLE `appointment_form_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_form_portlet`
--

DROP TABLE IF EXISTS `appointment_form_portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_form_portlet` (
  `id_portlet` int(11) NOT NULL DEFAULT '0',
  `id_form` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_portlet`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_form_portlet`
--

LOCK TABLES `appointment_form_portlet` WRITE;
/*!40000 ALTER TABLE `appointment_form_portlet` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment_form_portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_slot`
--

DROP TABLE IF EXISTS `appointment_slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_slot` (
  `id_slot` int(11) NOT NULL,
  `id_form` int(11) NOT NULL,
  `id_day` int(11) NOT NULL,
  `day_of_week` int(11) NOT NULL,
  `nb_places` int(11) NOT NULL,
  `starting_hour` int(11) NOT NULL,
  `starting_minute` int(11) NOT NULL,
  `ending_hour` int(11) NOT NULL,
  `ending_minute` int(11) NOT NULL,
  `is_enabled` smallint(6) NOT NULL,
  PRIMARY KEY (`id_slot`),
  KEY `idx_appointment_slot_id_form` (`id_form`),
  KEY `idx_appointment_slot_id_day` (`id_day`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_slot`
--

LOCK TABLES `appointment_slot` WRITE;
/*!40000 ALTER TABLE `appointment_slot` DISABLE KEYS */;
INSERT INTO `appointment_slot` VALUES (1,1,0,1,1,9,0,9,30,1),(2,1,0,1,1,9,30,10,0,1),(3,1,0,1,1,10,0,10,30,1),(4,1,0,1,1,10,30,11,0,1),(5,1,0,1,1,11,0,11,30,1),(6,1,0,1,1,11,30,12,0,1),(7,1,0,1,1,12,0,12,30,1),(8,1,0,1,1,12,30,13,0,1),(9,1,0,1,1,13,0,13,30,1),(10,1,0,1,1,13,30,14,0,1),(11,1,0,1,1,14,0,14,30,1),(12,1,0,1,1,14,30,15,0,1),(13,1,0,1,1,15,0,15,30,1),(14,1,0,1,1,15,30,16,0,1),(15,1,0,1,1,16,0,16,30,1),(16,1,0,1,1,16,30,17,0,1),(17,1,0,3,1,9,0,9,30,1),(18,1,0,3,1,9,30,10,0,1),(19,1,0,3,1,10,0,10,30,1),(20,1,0,3,1,10,30,11,0,1),(21,1,0,3,1,11,0,11,30,1),(22,1,0,3,1,11,30,12,0,1),(23,1,0,3,1,12,0,12,30,1),(24,1,0,3,1,12,30,13,0,1),(25,1,0,3,1,13,0,13,30,1),(26,1,0,3,1,13,30,14,0,1),(27,1,0,3,1,14,0,14,30,1),(28,1,0,3,1,14,30,15,0,1),(29,1,0,3,1,15,0,15,30,1),(30,1,0,3,1,15,30,16,0,1),(31,1,0,3,1,16,0,16,30,1),(32,1,0,3,1,16,30,17,0,1),(33,1,0,4,1,9,0,9,30,1),(34,1,0,4,1,9,30,10,0,1),(35,1,0,4,1,10,0,10,30,1),(36,1,0,4,1,10,30,11,0,1),(37,1,0,4,1,11,0,11,30,1),(38,1,0,4,1,11,30,12,0,1),(39,1,0,4,1,12,0,12,30,1),(40,1,0,4,1,12,30,13,0,1),(41,1,0,4,1,13,0,13,30,1),(42,1,0,4,1,13,30,14,0,1),(43,1,0,4,1,14,0,14,30,1),(44,1,0,4,1,14,30,15,0,1),(45,1,0,4,1,15,0,15,30,1),(46,1,0,4,1,15,30,16,0,1),(47,1,0,4,1,16,0,16,30,1),(48,1,0,4,1,16,30,17,0,1),(49,1,0,5,1,9,0,9,30,1),(50,1,0,5,1,9,30,10,0,1),(51,1,0,5,1,10,0,10,30,1),(52,1,0,5,1,10,30,11,0,1),(53,1,0,5,1,11,0,11,30,1),(54,1,0,5,1,11,30,12,0,1),(55,1,0,5,1,12,0,12,30,1),(56,1,0,5,1,12,30,13,0,1),(57,1,0,5,1,13,0,13,30,1),(58,1,0,5,1,13,30,14,0,1),(59,1,0,5,1,14,0,14,30,1),(60,1,0,5,1,14,30,15,0,1),(61,1,0,5,1,15,0,15,30,1),(62,1,0,5,1,15,30,16,0,1),(63,1,0,5,1,16,0,16,30,1),(64,1,0,5,1,16,30,17,0,1),(65,1,1,1,1,9,0,9,30,1),(66,1,1,1,1,9,30,10,0,1),(67,1,1,1,1,10,0,10,30,1),(68,1,1,1,1,10,30,11,0,1),(69,1,1,1,1,11,0,11,30,1),(70,1,1,1,1,11,30,12,0,1),(71,1,1,1,1,12,0,12,30,1),(72,1,1,1,1,12,30,13,0,1),(73,1,1,1,1,13,0,13,30,1),(74,1,1,1,1,13,30,14,0,1),(75,1,1,1,1,14,0,14,30,1),(76,1,1,1,1,14,30,15,0,1),(77,1,1,1,1,15,0,15,30,1),(78,1,1,1,1,15,30,16,0,1),(79,1,1,1,1,16,0,16,30,1),(80,1,1,1,1,16,30,17,0,1),(81,1,3,3,1,9,0,9,30,1),(82,1,3,3,1,9,30,10,0,1),(83,1,3,3,1,10,0,10,30,1),(84,1,3,3,1,10,30,11,0,1),(85,1,3,3,1,11,0,11,30,1),(86,1,3,3,1,11,30,12,0,1),(87,1,3,3,1,12,0,12,30,1),(88,1,3,3,1,12,30,13,0,1),(89,1,3,3,1,13,0,13,30,1),(90,1,3,3,1,13,30,14,0,1),(91,1,3,3,1,14,0,14,30,1),(92,1,3,3,1,14,30,15,0,1),(93,1,3,3,1,15,0,15,30,1),(94,1,3,3,1,15,30,16,0,1),(95,1,3,3,1,16,0,16,30,1),(96,1,3,3,1,16,30,17,0,1),(97,1,4,4,1,9,0,9,30,1),(98,1,4,4,1,9,30,10,0,1),(99,1,4,4,1,10,0,10,30,1),(100,1,4,4,1,10,30,11,0,1),(101,1,4,4,1,11,0,11,30,1),(102,1,4,4,1,11,30,12,0,1),(103,1,4,4,1,12,0,12,30,1),(104,1,4,4,1,12,30,13,0,1),(105,1,4,4,1,13,0,13,30,1),(106,1,4,4,1,13,30,14,0,1),(107,1,4,4,1,14,0,14,30,1),(108,1,4,4,1,14,30,15,0,1),(109,1,4,4,1,15,0,15,30,1),(110,1,4,4,1,15,30,16,0,1),(111,1,4,4,1,16,0,16,30,1),(112,1,4,4,1,16,30,17,0,1),(113,1,5,5,1,9,0,9,30,1),(114,1,5,5,1,9,30,10,0,1),(115,1,5,5,1,10,0,10,30,1),(116,1,5,5,1,10,30,11,0,1),(117,1,5,5,1,11,0,11,30,1),(118,1,5,5,1,11,30,12,0,1),(119,1,5,5,1,12,0,12,30,1),(120,1,5,5,1,12,30,13,0,1),(121,1,5,5,1,13,0,13,30,1),(122,1,5,5,1,13,30,14,0,1),(123,1,5,5,1,14,0,14,30,1),(124,1,5,5,1,14,30,15,0,1),(125,1,5,5,1,15,0,15,30,1),(126,1,5,5,1,15,30,16,0,1),(127,1,5,5,1,16,0,16,30,1),(128,1,5,5,1,16,30,17,0,1),(129,1,8,1,1,9,0,9,30,1),(130,1,8,1,1,9,30,10,0,1),(131,1,8,1,1,10,0,10,30,1),(132,1,8,1,1,10,30,11,0,1),(133,1,8,1,1,11,0,11,30,1),(134,1,8,1,1,11,30,12,0,1),(135,1,8,1,1,12,0,12,30,1),(136,1,8,1,1,12,30,13,0,1),(137,1,8,1,1,13,0,13,30,1),(138,1,8,1,1,13,30,14,0,1),(139,1,8,1,1,14,0,14,30,1),(140,1,8,1,1,14,30,15,0,1),(141,1,8,1,1,15,0,15,30,1),(142,1,8,1,1,15,30,16,0,1),(143,1,8,1,1,16,0,16,30,1),(144,1,8,1,1,16,30,17,0,1),(145,1,10,3,1,9,0,9,30,1),(146,1,10,3,1,9,30,10,0,1),(147,1,10,3,1,10,0,10,30,1),(148,1,10,3,1,10,30,11,0,1),(149,1,10,3,1,11,0,11,30,1),(150,1,10,3,1,11,30,12,0,1),(151,1,10,3,1,12,0,12,30,1),(152,1,10,3,1,12,30,13,0,1),(153,1,10,3,1,13,0,13,30,1),(154,1,10,3,1,13,30,14,0,1),(155,1,10,3,1,14,0,14,30,1),(156,1,10,3,1,14,30,15,0,1),(157,1,10,3,1,15,0,15,30,1),(158,1,10,3,1,15,30,16,0,1),(159,1,10,3,1,16,0,16,30,1),(160,1,10,3,1,16,30,17,0,1),(161,1,11,4,1,9,0,9,30,1),(162,1,11,4,1,9,30,10,0,1),(163,1,11,4,1,10,0,10,30,1),(164,1,11,4,1,10,30,11,0,1),(165,1,11,4,1,11,0,11,30,1),(166,1,11,4,1,11,30,12,0,1),(167,1,11,4,1,12,0,12,30,1),(168,1,11,4,1,12,30,13,0,1),(169,1,11,4,1,13,0,13,30,1),(170,1,11,4,1,13,30,14,0,1),(171,1,11,4,1,14,0,14,30,1),(172,1,11,4,1,14,30,15,0,1),(173,1,11,4,1,15,0,15,30,1),(174,1,11,4,1,15,30,16,0,1),(175,1,11,4,1,16,0,16,30,1),(176,1,11,4,1,16,30,17,0,1),(177,1,12,5,1,9,0,9,30,1),(178,1,12,5,1,9,30,10,0,1),(179,1,12,5,1,10,0,10,30,1),(180,1,12,5,1,10,30,11,0,1),(181,1,12,5,1,11,0,11,30,1),(182,1,12,5,1,11,30,12,0,1),(183,1,12,5,1,12,0,12,30,1),(184,1,12,5,1,12,30,13,0,1),(185,1,12,5,1,13,0,13,30,1),(186,1,12,5,1,13,30,14,0,1),(187,1,12,5,1,14,0,14,30,1),(188,1,12,5,1,14,30,15,0,1),(189,1,12,5,1,15,0,15,30,1),(190,1,12,5,1,15,30,16,0,1),(191,1,12,5,1,16,0,16,30,1),(192,1,12,5,1,16,30,17,0,1),(193,1,15,1,1,9,0,9,30,1),(194,1,15,1,1,9,30,10,0,1),(195,1,15,1,1,10,0,10,30,1),(196,1,15,1,1,10,30,11,0,1),(197,1,15,1,1,11,0,11,30,1),(198,1,15,1,1,11,30,12,0,1),(199,1,15,1,1,12,0,12,30,1),(200,1,15,1,1,12,30,13,0,1),(201,1,15,1,1,13,0,13,30,1),(202,1,15,1,1,13,30,14,0,1),(203,1,15,1,1,14,0,14,30,1),(204,1,15,1,1,14,30,15,0,1),(205,1,15,1,1,15,0,15,30,1),(206,1,15,1,1,15,30,16,0,1),(207,1,15,1,1,16,0,16,30,1),(208,1,15,1,1,16,30,17,0,1),(209,1,17,3,1,9,0,9,30,1),(210,1,17,3,1,9,30,10,0,1),(211,1,17,3,1,10,0,10,30,1),(212,1,17,3,1,10,30,11,0,1),(213,1,17,3,1,11,0,11,30,1),(214,1,17,3,1,11,30,12,0,1),(215,1,17,3,1,12,0,12,30,1),(216,1,17,3,1,12,30,13,0,1),(217,1,17,3,1,13,0,13,30,1),(218,1,17,3,1,13,30,14,0,1),(219,1,17,3,1,14,0,14,30,1),(220,1,17,3,1,14,30,15,0,1),(221,1,17,3,1,15,0,15,30,1),(222,1,17,3,1,15,30,16,0,1),(223,1,17,3,1,16,0,16,30,1),(224,1,17,3,1,16,30,17,0,1),(225,1,18,4,1,9,0,9,30,1),(226,1,18,4,1,9,30,10,0,1),(227,1,18,4,1,10,0,10,30,1),(228,1,18,4,1,10,30,11,0,1),(229,1,18,4,1,11,0,11,30,1),(230,1,18,4,1,11,30,12,0,1),(231,1,18,4,1,12,0,12,30,1),(232,1,18,4,1,12,30,13,0,1),(233,1,18,4,1,13,0,13,30,1),(234,1,18,4,1,13,30,14,0,1),(235,1,18,4,1,14,0,14,30,1),(236,1,18,4,1,14,30,15,0,1),(237,1,18,4,1,15,0,15,30,1),(238,1,18,4,1,15,30,16,0,1),(239,1,18,4,1,16,0,16,30,1),(240,1,18,4,1,16,30,17,0,1),(241,1,19,5,1,9,0,9,30,1),(242,1,19,5,1,9,30,10,0,1),(243,1,19,5,1,10,0,10,30,1),(244,1,19,5,1,10,30,11,0,1),(245,1,19,5,1,11,0,11,30,1),(246,1,19,5,1,11,30,12,0,1),(247,1,19,5,1,12,0,12,30,1),(248,1,19,5,1,12,30,13,0,1),(249,1,19,5,1,13,0,13,30,1),(250,1,19,5,1,13,30,14,0,1),(251,1,19,5,1,14,0,14,30,1),(252,1,19,5,1,14,30,15,0,1),(253,1,19,5,1,15,0,15,30,1),(254,1,19,5,1,15,30,16,0,1),(255,1,19,5,1,16,0,16,30,1),(256,1,19,5,1,16,30,17,0,1),(257,1,22,1,1,9,0,9,30,1),(258,1,22,1,1,9,30,10,0,1),(259,1,22,1,1,10,0,10,30,1),(260,1,22,1,1,10,30,11,0,1),(261,1,22,1,1,11,0,11,30,1),(262,1,22,1,1,11,30,12,0,1),(263,1,22,1,1,12,0,12,30,1),(264,1,22,1,1,12,30,13,0,1),(265,1,22,1,1,13,0,13,30,1),(266,1,22,1,1,13,30,14,0,1),(267,1,22,1,1,14,0,14,30,1),(268,1,22,1,1,14,30,15,0,1),(269,1,22,1,1,15,0,15,30,1),(270,1,22,1,1,15,30,16,0,1),(271,1,22,1,1,16,0,16,30,1),(272,1,22,1,1,16,30,17,0,1),(273,1,24,3,1,9,0,9,30,1),(274,1,24,3,1,9,30,10,0,1),(275,1,24,3,1,10,0,10,30,1),(276,1,24,3,1,10,30,11,0,1),(277,1,24,3,1,11,0,11,30,1),(278,1,24,3,1,11,30,12,0,1),(279,1,24,3,1,12,0,12,30,1),(280,1,24,3,1,12,30,13,0,1),(281,1,24,3,1,13,0,13,30,1),(282,1,24,3,1,13,30,14,0,1),(283,1,24,3,1,14,0,14,30,1),(284,1,24,3,1,14,30,15,0,1),(285,1,24,3,1,15,0,15,30,1),(286,1,24,3,1,15,30,16,0,1),(287,1,24,3,1,16,0,16,30,1),(288,1,24,3,1,16,30,17,0,1),(289,1,25,4,1,9,0,9,30,1),(290,1,25,4,1,9,30,10,0,1),(291,1,25,4,1,10,0,10,30,1),(292,1,25,4,1,10,30,11,0,1),(293,1,25,4,1,11,0,11,30,1),(294,1,25,4,1,11,30,12,0,1),(295,1,25,4,1,12,0,12,30,1),(296,1,25,4,1,12,30,13,0,1),(297,1,25,4,1,13,0,13,30,1),(298,1,25,4,1,13,30,14,0,1),(299,1,25,4,1,14,0,14,30,1),(300,1,25,4,1,14,30,15,0,1),(301,1,25,4,1,15,0,15,30,1),(302,1,25,4,1,15,30,16,0,1),(303,1,25,4,1,16,0,16,30,1),(304,1,25,4,1,16,30,17,0,1),(305,1,26,5,1,9,0,9,30,1),(306,1,26,5,1,9,30,10,0,1),(307,1,26,5,1,10,0,10,30,1),(308,1,26,5,1,10,30,11,0,1),(309,1,26,5,1,11,0,11,30,1),(310,1,26,5,1,11,30,12,0,1),(311,1,26,5,1,12,0,12,30,1),(312,1,26,5,1,12,30,13,0,1),(313,1,26,5,1,13,0,13,30,1),(314,1,26,5,1,13,30,14,0,1),(315,1,26,5,1,14,0,14,30,1),(316,1,26,5,1,14,30,15,0,1),(317,1,26,5,1,15,0,15,30,1),(318,1,26,5,1,15,30,16,0,1),(319,1,26,5,1,16,0,16,30,1),(320,1,26,5,1,16,30,17,0,1),(321,1,29,1,1,9,0,9,30,1),(322,1,29,1,1,9,30,10,0,1),(323,1,29,1,1,10,0,10,30,1),(324,1,29,1,1,10,30,11,0,1),(325,1,29,1,1,11,0,11,30,1),(326,1,29,1,1,11,30,12,0,1),(327,1,29,1,1,12,0,12,30,1),(328,1,29,1,1,12,30,13,0,1),(329,1,29,1,1,13,0,13,30,1),(330,1,29,1,1,13,30,14,0,1),(331,1,29,1,1,14,0,14,30,1),(332,1,29,1,1,14,30,15,0,1),(333,1,29,1,1,15,0,15,30,1),(334,1,29,1,1,15,30,16,0,1),(335,1,29,1,1,16,0,16,30,1),(336,1,29,1,1,16,30,17,0,1),(337,1,31,3,1,9,0,9,30,1),(338,1,31,3,1,9,30,10,0,1),(339,1,31,3,1,10,0,10,30,1),(340,1,31,3,1,10,30,11,0,1),(341,1,31,3,1,11,0,11,30,1),(342,1,31,3,1,11,30,12,0,1),(343,1,31,3,1,12,0,12,30,1),(344,1,31,3,1,12,30,13,0,1),(345,1,31,3,1,13,0,13,30,1),(346,1,31,3,1,13,30,14,0,1),(347,1,31,3,1,14,0,14,30,1),(348,1,31,3,1,14,30,15,0,1),(349,1,31,3,1,15,0,15,30,1),(350,1,31,3,1,15,30,16,0,1),(351,1,31,3,1,16,0,16,30,1),(352,1,31,3,1,16,30,17,0,1),(353,1,32,4,1,9,0,9,30,1),(354,1,32,4,1,9,30,10,0,1),(355,1,32,4,1,10,0,10,30,1),(356,1,32,4,1,10,30,11,0,1),(357,1,32,4,1,11,0,11,30,1),(358,1,32,4,1,11,30,12,0,1),(359,1,32,4,1,12,0,12,30,1),(360,1,32,4,1,12,30,13,0,1),(361,1,32,4,1,13,0,13,30,1),(362,1,32,4,1,13,30,14,0,1),(363,1,32,4,1,14,0,14,30,1),(364,1,32,4,1,14,30,15,0,1),(365,1,32,4,1,15,0,15,30,1),(366,1,32,4,1,15,30,16,0,1),(367,1,32,4,1,16,0,16,30,1),(368,1,32,4,1,16,30,17,0,1),(369,1,33,5,1,9,0,9,30,1),(370,1,33,5,1,9,30,10,0,1),(371,1,33,5,1,10,0,10,30,1),(372,1,33,5,1,10,30,11,0,1),(373,1,33,5,1,11,0,11,30,1),(374,1,33,5,1,11,30,12,0,1),(375,1,33,5,1,12,0,12,30,1),(376,1,33,5,1,12,30,13,0,1),(377,1,33,5,1,13,0,13,30,1),(378,1,33,5,1,13,30,14,0,1),(379,1,33,5,1,14,0,14,30,1),(380,1,33,5,1,14,30,15,0,1),(381,1,33,5,1,15,0,15,30,1),(382,1,33,5,1,15,30,16,0,1),(383,1,33,5,1,16,0,16,30,1),(384,1,33,5,1,16,30,17,0,1),(385,1,36,1,1,9,0,9,30,1),(386,1,36,1,1,9,30,10,0,1),(387,1,36,1,1,10,0,10,30,1),(388,1,36,1,1,10,30,11,0,1),(389,1,36,1,1,11,0,11,30,1),(390,1,36,1,1,11,30,12,0,1),(391,1,36,1,1,12,0,12,30,1),(392,1,36,1,1,12,30,13,0,1),(393,1,36,1,1,13,0,13,30,1),(394,1,36,1,1,13,30,14,0,1),(395,1,36,1,1,14,0,14,30,1),(396,1,36,1,1,14,30,15,0,1),(397,1,36,1,1,15,0,15,30,1),(398,1,36,1,1,15,30,16,0,1),(399,1,36,1,1,16,0,16,30,1),(400,1,36,1,1,16,30,17,0,1),(401,1,38,3,1,9,0,9,30,1),(402,1,38,3,1,9,30,10,0,1),(403,1,38,3,1,10,0,10,30,1),(404,1,38,3,1,10,30,11,0,1),(405,1,38,3,1,11,0,11,30,1),(406,1,38,3,1,11,30,12,0,1),(407,1,38,3,1,12,0,12,30,1),(408,1,38,3,1,12,30,13,0,1),(409,1,38,3,1,13,0,13,30,1),(410,1,38,3,1,13,30,14,0,1),(411,1,38,3,1,14,0,14,30,1),(412,1,38,3,1,14,30,15,0,1),(413,1,38,3,1,15,0,15,30,1),(414,1,38,3,1,15,30,16,0,1),(415,1,38,3,1,16,0,16,30,1),(416,1,38,3,1,16,30,17,0,1),(417,1,39,4,1,9,0,9,30,1),(418,1,39,4,1,9,30,10,0,1),(419,1,39,4,1,10,0,10,30,1),(420,1,39,4,1,10,30,11,0,1),(421,1,39,4,1,11,0,11,30,1),(422,1,39,4,1,11,30,12,0,1),(423,1,39,4,1,12,0,12,30,1),(424,1,39,4,1,12,30,13,0,1),(425,1,39,4,1,13,0,13,30,1),(426,1,39,4,1,13,30,14,0,1),(427,1,39,4,1,14,0,14,30,1),(428,1,39,4,1,14,30,15,0,1),(429,1,39,4,1,15,0,15,30,1),(430,1,39,4,1,15,30,16,0,1),(431,1,39,4,1,16,0,16,30,1),(432,1,39,4,1,16,30,17,0,1),(433,1,40,5,1,9,0,9,30,1),(434,1,40,5,1,9,30,10,0,1),(435,1,40,5,1,10,0,10,30,1),(436,1,40,5,1,10,30,11,0,1),(437,1,40,5,1,11,0,11,30,1),(438,1,40,5,1,11,30,12,0,1),(439,1,40,5,1,12,0,12,30,1),(440,1,40,5,1,12,30,13,0,1),(441,1,40,5,1,13,0,13,30,1),(442,1,40,5,1,13,30,14,0,1),(443,1,40,5,1,14,0,14,30,1),(444,1,40,5,1,14,30,15,0,1),(445,1,40,5,1,15,0,15,30,1),(446,1,40,5,1,15,30,16,0,1),(447,1,40,5,1,16,0,16,30,1),(448,1,40,5,1,16,30,17,0,1),(449,1,43,1,1,9,0,9,30,1),(450,1,43,1,1,9,30,10,0,1),(451,1,43,1,1,10,0,10,30,1),(452,1,43,1,1,10,30,11,0,1),(453,1,43,1,1,11,0,11,30,1),(454,1,43,1,1,11,30,12,0,1),(455,1,43,1,1,12,0,12,30,1),(456,1,43,1,1,12,30,13,0,1),(457,1,43,1,1,13,0,13,30,1),(458,1,43,1,1,13,30,14,0,1),(459,1,43,1,1,14,0,14,30,1),(460,1,43,1,1,14,30,15,0,1),(461,1,43,1,1,15,0,15,30,1),(462,1,43,1,1,15,30,16,0,1),(463,1,43,1,1,16,0,16,30,1),(464,1,43,1,1,16,30,17,0,1),(465,1,45,3,1,9,0,9,30,1),(466,1,45,3,1,9,30,10,0,1),(467,1,45,3,1,10,0,10,30,1),(468,1,45,3,1,10,30,11,0,1),(469,1,45,3,1,11,0,11,30,1),(470,1,45,3,1,11,30,12,0,1),(471,1,45,3,1,12,0,12,30,1),(472,1,45,3,1,12,30,13,0,1),(473,1,45,3,1,13,0,13,30,1),(474,1,45,3,1,13,30,14,0,1),(475,1,45,3,1,14,0,14,30,1),(476,1,45,3,1,14,30,15,0,1),(477,1,45,3,1,15,0,15,30,1),(478,1,45,3,1,15,30,16,0,1),(479,1,45,3,1,16,0,16,30,1),(480,1,45,3,1,16,30,17,0,1),(481,1,46,4,1,9,0,9,30,1),(482,1,46,4,1,9,30,10,0,1),(483,1,46,4,1,10,0,10,30,1),(484,1,46,4,1,10,30,11,0,1),(485,1,46,4,1,11,0,11,30,1),(486,1,46,4,1,11,30,12,0,1),(487,1,46,4,1,12,0,12,30,1),(488,1,46,4,1,12,30,13,0,1),(489,1,46,4,1,13,0,13,30,1),(490,1,46,4,1,13,30,14,0,1),(491,1,46,4,1,14,0,14,30,1),(492,1,46,4,1,14,30,15,0,1),(493,1,46,4,1,15,0,15,30,1),(494,1,46,4,1,15,30,16,0,1),(495,1,46,4,1,16,0,16,30,1),(496,1,46,4,1,16,30,17,0,1),(497,1,47,5,1,9,0,9,30,1),(498,1,47,5,1,9,30,10,0,1),(499,1,47,5,1,10,0,10,30,1),(500,1,47,5,1,10,30,11,0,1),(501,1,47,5,1,11,0,11,30,1),(502,1,47,5,1,11,30,12,0,1),(503,1,47,5,1,12,0,12,30,1),(504,1,47,5,1,12,30,13,0,1),(505,1,47,5,1,13,0,13,30,1),(506,1,47,5,1,13,30,14,0,1),(507,1,47,5,1,14,0,14,30,1),(508,1,47,5,1,14,30,15,0,1),(509,1,47,5,1,15,0,15,30,1),(510,1,47,5,1,15,30,16,0,1),(511,1,47,5,1,16,0,16,30,1),(512,1,47,5,1,16,30,17,0,1),(513,1,50,1,1,9,0,9,30,1),(514,1,50,1,1,9,30,10,0,1),(515,1,50,1,1,10,0,10,30,1),(516,1,50,1,1,10,30,11,0,1),(517,1,50,1,1,11,0,11,30,1),(518,1,50,1,1,11,30,12,0,1),(519,1,50,1,1,12,0,12,30,1),(520,1,50,1,1,12,30,13,0,1),(521,1,50,1,1,13,0,13,30,1),(522,1,50,1,1,13,30,14,0,1),(523,1,50,1,1,14,0,14,30,1),(524,1,50,1,1,14,30,15,0,1),(525,1,50,1,1,15,0,15,30,1),(526,1,50,1,1,15,30,16,0,1),(527,1,50,1,1,16,0,16,30,1),(528,1,50,1,1,16,30,17,0,1),(529,1,52,3,1,9,0,9,30,1),(530,1,52,3,1,9,30,10,0,1),(531,1,52,3,1,10,0,10,30,1),(532,1,52,3,1,10,30,11,0,1),(533,1,52,3,1,11,0,11,30,1),(534,1,52,3,1,11,30,12,0,1),(535,1,52,3,1,12,0,12,30,1),(536,1,52,3,1,12,30,13,0,1),(537,1,52,3,1,13,0,13,30,1),(538,1,52,3,1,13,30,14,0,1),(539,1,52,3,1,14,0,14,30,1),(540,1,52,3,1,14,30,15,0,1),(541,1,52,3,1,15,0,15,30,1),(542,1,52,3,1,15,30,16,0,1),(543,1,52,3,1,16,0,16,30,1),(544,1,52,3,1,16,30,17,0,1),(545,1,53,4,1,9,0,9,30,1),(546,1,53,4,1,9,30,10,0,1),(547,1,53,4,1,10,0,10,30,1),(548,1,53,4,1,10,30,11,0,1),(549,1,53,4,1,11,0,11,30,1),(550,1,53,4,1,11,30,12,0,1),(551,1,53,4,1,12,0,12,30,1),(552,1,53,4,1,12,30,13,0,1),(553,1,53,4,1,13,0,13,30,1),(554,1,53,4,1,13,30,14,0,1),(555,1,53,4,1,14,0,14,30,1),(556,1,53,4,1,14,30,15,0,1),(557,1,53,4,1,15,0,15,30,1),(558,1,53,4,1,15,30,16,0,1),(559,1,53,4,1,16,0,16,30,1),(560,1,53,4,1,16,30,17,0,1),(561,1,54,5,1,9,0,9,30,1),(562,1,54,5,1,9,30,10,0,1),(563,1,54,5,1,10,0,10,30,1),(564,1,54,5,1,10,30,11,0,1),(565,1,54,5,1,11,0,11,30,1),(566,1,54,5,1,11,30,12,0,1),(567,1,54,5,1,12,0,12,30,1),(568,1,54,5,1,12,30,13,0,1),(569,1,54,5,1,13,0,13,30,1),(570,1,54,5,1,13,30,14,0,1),(571,1,54,5,1,14,0,14,30,1),(572,1,54,5,1,14,30,15,0,1),(573,1,54,5,1,15,0,15,30,1),(574,1,54,5,1,15,30,16,0,1),(575,1,54,5,1,16,0,16,30,1),(576,1,54,5,1,16,30,17,0,1),(577,1,57,1,1,9,0,9,30,1),(578,1,57,1,1,9,30,10,0,1),(579,1,57,1,1,10,0,10,30,1),(580,1,57,1,1,10,30,11,0,1),(581,1,57,1,1,11,0,11,30,1),(582,1,57,1,1,11,30,12,0,1),(583,1,57,1,1,12,0,12,30,1),(584,1,57,1,1,12,30,13,0,1),(585,1,57,1,1,13,0,13,30,1),(586,1,57,1,1,13,30,14,0,1),(587,1,57,1,1,14,0,14,30,1),(588,1,57,1,1,14,30,15,0,1),(589,1,57,1,1,15,0,15,30,1),(590,1,57,1,1,15,30,16,0,1),(591,1,57,1,1,16,0,16,30,1),(592,1,57,1,1,16,30,17,0,1),(593,1,59,3,1,9,0,9,30,1),(594,1,59,3,1,9,30,10,0,1),(595,1,59,3,1,10,0,10,30,1),(596,1,59,3,1,10,30,11,0,1),(597,1,59,3,1,11,0,11,30,1),(598,1,59,3,1,11,30,12,0,1),(599,1,59,3,1,12,0,12,30,1),(600,1,59,3,1,12,30,13,0,1),(601,1,59,3,1,13,0,13,30,1),(602,1,59,3,1,13,30,14,0,1),(603,1,59,3,1,14,0,14,30,1),(604,1,59,3,1,14,30,15,0,1),(605,1,59,3,1,15,0,15,30,1),(606,1,59,3,1,15,30,16,0,1),(607,1,59,3,1,16,0,16,30,1),(608,1,59,3,1,16,30,17,0,1),(609,1,60,4,1,9,0,9,30,1),(610,1,60,4,1,9,30,10,0,1),(611,1,60,4,1,10,0,10,30,1),(612,1,60,4,1,10,30,11,0,1),(613,1,60,4,1,11,0,11,30,1),(614,1,60,4,1,11,30,12,0,1),(615,1,60,4,1,12,0,12,30,1),(616,1,60,4,1,12,30,13,0,1),(617,1,60,4,1,13,0,13,30,1),(618,1,60,4,1,13,30,14,0,1),(619,1,60,4,1,14,0,14,30,1),(620,1,60,4,1,14,30,15,0,1),(621,1,60,4,1,15,0,15,30,1),(622,1,60,4,1,15,30,16,0,1),(623,1,60,4,1,16,0,16,30,1),(624,1,60,4,1,16,30,17,0,1),(625,1,61,5,1,9,0,9,30,1),(626,1,61,5,1,9,30,10,0,1),(627,1,61,5,1,10,0,10,30,1),(628,1,61,5,1,10,30,11,0,1),(629,1,61,5,1,11,0,11,30,1),(630,1,61,5,1,11,30,12,0,1),(631,1,61,5,1,12,0,12,30,1),(632,1,61,5,1,12,30,13,0,1),(633,1,61,5,1,13,0,13,30,1),(634,1,61,5,1,13,30,14,0,1),(635,1,61,5,1,14,0,14,30,1),(636,1,61,5,1,14,30,15,0,1),(637,1,61,5,1,15,0,15,30,1),(638,1,61,5,1,15,30,16,0,1),(639,1,61,5,1,16,0,16,30,1),(640,1,61,5,1,16,30,17,0,1);
/*!40000 ALTER TABLE `appointment_slot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archive_item`
--

DROP TABLE IF EXISTS `archive_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archive_item` (
  `id_archive_item` int(11) NOT NULL DEFAULT '0',
  `folder_to_archive` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `archive_destination` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `archive_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `archive_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `archive_mime_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_archive_item`),
  KEY `archive_item_state_idx` (`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archive_item`
--

LOCK TABLES `archive_item` WRITE;
/*!40000 ALTER TABLE `archive_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `archive_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blobstore_blobstore`
--

DROP TABLE IF EXISTS `blobstore_blobstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blobstore_blobstore` (
  `id_blob` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `blob_value` mediumblob,
  PRIMARY KEY (`id_blob`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blobstore_blobstore`
--

LOCK TABLES `blobstore_blobstore` WRITE;
/*!40000 ALTER TABLE `blobstore_blobstore` DISABLE KEYS */;
INSERT INTO `blobstore_blobstore` VALUES ('0fab4dca-ebee-4c83-baad-2e3e72e7d6e0','{\"id_form\":4}'),('1ee19227-a7eb-4ff4-82af-8d2436ab83cc','{\"id_form\":4}'),('6a811748-9968-4450-9d70-e16a53c98d80','{\"id_form\":4}'),('9d59681d-340d-468c-a80e-3c7d5661c446','{\"id_form\":4}'),('c24b724a-495f-4828-942a-f8d6ad9cf05a','{\"id_form\":4}'),('f9ad538c-5d72-4f84-a131-00b642a72610','{\"id_form\":4}');
/*!40000 ALTER TABLE `blobstore_blobstore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `childpages_portlet`
--

DROP TABLE IF EXISTS `childpages_portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `childpages_portlet` (
  `id_portlet` int(11) NOT NULL DEFAULT '0',
  `id_child_page` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_portlet`,`id_child_page`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `childpages_portlet`
--

LOCK TABLES `childpages_portlet` WRITE;
/*!40000 ALTER TABLE `childpages_portlet` DISABLE KEYS */;
INSERT INTO `childpages_portlet` VALUES (83,1),(85,1),(87,3),(88,1),(89,1);
/*!40000 ALTER TABLE `childpages_portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL DEFAULT '0',
  `description` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `workgroup_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'all',
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_contact`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'Contact 1','adresse_email_du_contact_1@domaine.com','all',0),(2,'Contact 2','adresse_email_du_contact_2@domaine.com','all',0);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_list`
--

DROP TABLE IF EXISTS `contact_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_list` (
  `id_contact_list` int(11) NOT NULL DEFAULT '0',
  `label_contact_list` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description_contact_list` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `workgroup_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'all',
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `contact_list_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_contact_list`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_list`
--

LOCK TABLES `contact_list` WRITE;
/*!40000 ALTER TABLE `contact_list` DISABLE KEYS */;
INSERT INTO `contact_list` VALUES (1,'Liste de contacts','Ceci est une liste de contacts','all','none',1);
/*!40000 ALTER TABLE `contact_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_list_contact`
--

DROP TABLE IF EXISTS `contact_list_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_list_contact` (
  `id_contact_list` int(11) NOT NULL DEFAULT '0',
  `id_contact` int(11) NOT NULL DEFAULT '0',
  `contact_order` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_contact_list`,`id_contact`,`contact_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_list_contact`
--

LOCK TABLES `contact_list_contact` WRITE;
/*!40000 ALTER TABLE `contact_list_contact` DISABLE KEYS */;
INSERT INTO `contact_list_contact` VALUES (1,1,1,0),(1,2,2,0);
/*!40000 ALTER TABLE `contact_list_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_dashboard`
--

DROP TABLE IF EXISTS `core_admin_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_dashboard` (
  `dashboard_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dashboard_column` int(11) NOT NULL,
  `dashboard_order` int(11) NOT NULL,
  PRIMARY KEY (`dashboard_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_dashboard`
--

LOCK TABLES `core_admin_dashboard` WRITE;
/*!40000 ALTER TABLE `core_admin_dashboard` DISABLE KEYS */;
INSERT INTO `core_admin_dashboard` VALUES ('usersAdminDashboardComponent',1,1),('searchAdminDashboardComponent',1,2),('directoryAdminDashboardComponent',1,1),('formAdminDashboardComponent',1,1),('myluteceAuthenticationFilterAdminDashboardComponent',1,3),('databaseAdminDashboardComponent',1,1),('workflowAdminDashboardComponent',1,1);
/*!40000 ALTER TABLE `core_admin_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_mailinglist`
--

DROP TABLE IF EXISTS `core_admin_mailinglist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_mailinglist` (
  `id_mailinglist` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `workgroup` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_mailinglist`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_mailinglist`
--

LOCK TABLES `core_admin_mailinglist` WRITE;
/*!40000 ALTER TABLE `core_admin_mailinglist` DISABLE KEYS */;
INSERT INTO `core_admin_mailinglist` VALUES (1,'admin','admin','all');
/*!40000 ALTER TABLE `core_admin_mailinglist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_mailinglist_filter`
--

DROP TABLE IF EXISTS `core_admin_mailinglist_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_mailinglist_filter` (
  `id_mailinglist` int(11) NOT NULL DEFAULT '0',
  `workgroup` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_mailinglist`,`workgroup`,`role`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_mailinglist_filter`
--

LOCK TABLES `core_admin_mailinglist_filter` WRITE;
/*!40000 ALTER TABLE `core_admin_mailinglist_filter` DISABLE KEYS */;
INSERT INTO `core_admin_mailinglist_filter` VALUES (1,'all','super_admin');
/*!40000 ALTER TABLE `core_admin_mailinglist_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_right`
--

DROP TABLE IF EXISTS `core_admin_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_right` (
  `id_right` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level_right` smallint(6) DEFAULT NULL,
  `admin_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_updatable` int(11) NOT NULL DEFAULT '0',
  `plugin_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_feature_group` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `documentation_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_right`),
  KEY `index_right` (`level_right`,`admin_url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_right`
--

LOCK TABLES `core_admin_right` WRITE;
/*!40000 ALTER TABLE `core_admin_right` DISABLE KEYS */;
INSERT INTO `core_admin_right` VALUES ('CORE_ADMIN_SITE','portal.site.adminFeature.admin_site.name',2,'jsp/admin/site/AdminSite.jsp','portal.site.adminFeature.admin_site.description',1,NULL,'SITE','images/admin/skin/features/admin_site.png','jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-site',1),('CORE_CACHE_MANAGEMENT','portal.system.adminFeature.cache_management.name',0,'jsp/admin/system/ManageCaches.jsp','portal.system.adminFeature.cache_management.description',1,'','SYSTEM','images/admin/skin/features/manage_caches.png',NULL,0),('CORE_SEARCH_INDEXATION','portal.search.adminFeature.indexer.name',0,'jsp/admin/search/ManageSearchIndexation.jsp','portal.search.adminFeature.indexer.description',0,'','SYSTEM',NULL,NULL,1),('CORE_SEARCH_MANAGEMENT','portal.search.adminFeature.search_management.name',0,'jsp/admin/search/ManageSearch.jsp','portal.search.adminFeature.search_management.description',0,'','SYSTEM',NULL,NULL,2),('CORE_LOGS_VISUALISATION','portal.system.adminFeature.logs_visualisation.name',0,'jsp/admin/system/ManageFilesSystem.jsp','portal.system.adminFeature.logs_visualisation.description',1,'','SYSTEM','images/admin/skin/features/view_logs.png',NULL,3),('CORE_MODES_MANAGEMENT','portal.style.adminFeature.modes_management.name',0,'jsp/admin/style/ManageModes.jsp','portal.style.adminFeature.modes_management.description',1,NULL,'STYLE','images/admin/skin/features/manage_modes.png',NULL,1),('CORE_PAGE_TEMPLATE_MANAGEMENT','portal.style.adminFeature.page_template_management.name',0,'jsp/admin/style/ManagePageTemplates.jsp','portal.style.adminFeature.page_template_management.description',0,NULL,'STYLE','images/admin/skin/features/manage_page_templates.png',NULL,2),('CORE_PLUGINS_MANAGEMENT','portal.system.adminFeature.plugins_management.name',0,'jsp/admin/system/ManagePlugins.jsp','portal.system.adminFeature.plugins_management.description',1,'','SYSTEM','images/admin/skin/features/manage_plugins.png',NULL,4),('CORE_PROPERTIES_MANAGEMENT','portal.site.adminFeature.properties_management.name',2,'jsp/admin/ManageProperties.jsp','portal.site.adminFeature.properties_management.description',0,NULL,'SITE',NULL,'jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-properties',2),('CORE_STYLESHEET_MANAGEMENT','portal.style.adminFeature.stylesheet_management.name',0,'jsp/admin/style/ManageStyleSheets.jsp','portal.style.adminFeature.stylesheet_management.description',1,NULL,'STYLE','images/admin/skin/features/manage_stylesheets.png',NULL,3),('CORE_STYLES_MANAGEMENT','portal.style.adminFeature.styles_management.name',0,'jsp/admin/style/ManageStyles.jsp','portal.style.adminFeature.styles_management.description',1,NULL,'STYLE','images/admin/skin/features/manage_styles.png',NULL,4),('CORE_USERS_MANAGEMENT','portal.users.adminFeature.users_management.name',2,'jsp/admin/user/ManageUsers.jsp','portal.users.adminFeature.users_management.description',1,'','MANAGERS','images/admin/skin/features/manage_users.png',NULL,1),('CORE_FEATURES_MANAGEMENT','portal.admin.adminFeature.features_management.name',0,'jsp/admin/features/DispatchFeatures.jsp','portal.admin.adminFeature.features_management.description',0,'','SYSTEM','images/admin/skin/features/manage_features.png',NULL,5),('CORE_RBAC_MANAGEMENT','portal.rbac.adminFeature.rbac_management.name',0,'jsp/admin/rbac/ManageRoles.jsp','portal.rbac.adminFeature.rbac_management.description',0,'','MANAGERS','images/admin/skin/features/manage_rbac.png',NULL,2),('CORE_DAEMONS_MANAGEMENT','portal.system.adminFeature.daemons_management.name',0,'jsp/admin/system/ManageDaemons.jsp','portal.system.adminFeature.daemons_management.description',0,'','SYSTEM',NULL,NULL,6),('CORE_WORKGROUPS_MANAGEMENT','portal.workgroup.adminFeature.workgroups_management.name',2,'jsp/admin/workgroup/ManageWorkgroups.jsp','portal.workgroup.adminFeature.workgroups_management.description',0,NULL,'MANAGERS','images/admin/skin/features/manage_workgroups.png',NULL,3),('CORE_ROLES_MANAGEMENT','portal.role.adminFeature.roles_management.name',2,'jsp/admin/role/ManagePageRole.jsp','portal.role.adminFeature.roles_management.description',0,'','USERS','images/admin/skin/features/manage_roles.png',NULL,0),('CORE_MAILINGLISTS_MANAGEMENT','portal.mailinglist.adminFeature.mailinglists_management.name',2,'jsp/admin/mailinglist/ManageMailingLists.jsp','portal.mailinglist.adminFeature.mailinglists_management.description',0,NULL,'MANAGERS','images/admin/skin/features/manage_mailinglists.png',NULL,4),('CORE_LEVEL_RIGHT_MANAGEMENT','portal.users.adminFeature.level_right_management.name',2,'jsp/admin/features/ManageLevels.jsp','portal.users.adminFeature.level_right_management.description',0,NULL,'MANAGERS','images/admin/skin/features/manage_rights_levels.png',NULL,5),('CORE_LINK_SERVICE_MANAGEMENT','portal.insert.adminFeature.linkService_management.name',2,NULL,'portal.insert.adminFeature.linkService_management.description',0,NULL,NULL,NULL,NULL,1),('CORE_RIGHT_MANAGEMENT','portal.users.adminFeature.right_management.name',0,'jsp/admin/features/ManageRights.jsp','portal.users.adminFeature.right_management.description',0,NULL,'MANAGERS','images/admin/skin/features/manage_rights_levels.png',NULL,5),('CORE_ADMINDASHBOARD_MANAGEMENT','portal.admindashboard.adminFeature.right_management.name',0,'jsp/admin/admindashboard/ManageAdminDashboards.jsp','portal.admindashboard.adminFeature.right_management.description',0,'','SYSTEM','images/admin/skin/features/manage_admindashboards.png',NULL,7),('CORE_DASHBOARD_MANAGEMENT','portal.dashboard.adminFeature.dashboard_management.name',0,'jsp/admin/dashboard/ManageDashboards.jsp','portal.dashboard.adminFeature.dashboard_management.description',0,'','SYSTEM','images/admin/skin/features/manage_dashboards.png',NULL,8),('CORE_XSL_EXPORT_MANAGEMENT','portal.xsl.adminFeature.xsl_export_management.name',2,'jsp/admin/xsl/ManageXslExport.jsp','portal.xsl.adminFeature.xsl_export_management.description',1,'','SYSTEM',NULL,NULL,9),('CORE_GLOBAL_MANAGEMENT','portal.globalmanagement.adminFeature.global_management.name',2,'jsp/admin/globalmanagement/GetGlobalManagement.jsp','portal.globalmanagement.adminFeature.global_management.description',1,'','SYSTEM',NULL,NULL,9),('APPOINTMENT_FORM_MANAGEMENT','appointment.adminFeature.ManageAppointmentForm.name',0,'jsp/admin/plugins/appointment/ManageAppointmentForms.jsp','appointment.adminFeature.ManageAppointmentForm.description',0,'workflow-appointment','SYSTEM',NULL,NULL,14),('APPOINTMENT_CALENDAR_TEMPLATE','appointment.adminFeature.manageCalendarTemplates.name',0,'jsp/admin/plugins/appointment/ManageCalendarTemplates.jsp','appointment.adminFeature.manageCalendarTemplates.description',0,'appointment','APPLICATIONS',NULL,NULL,1),('CONTACT_MANAGEMENT','contact.adminFeature.contact_management.name',3,'jsp/admin/plugins/contact/ManageContactsHome.jsp','contact.adminFeature.contact_management.description',0,'contact','APPLICATIONS',NULL,NULL,2),('CRM_DEMAND_TYPES_MANAGEMENT','crm.adminFeature.demand_type_management.name',3,'jsp/admin/plugins/crm/ManageDemandTypes.jsp','crm.adminFeature.demand_type_management.description',0,'crm','APPLICATIONS',NULL,NULL,3),('DIRECTORY_MANAGEMENT','directory.adminFeature.directory_management.name',2,'jsp/admin/plugins/directory/ManageDirectory.jsp','directory.adminFeature.directory_management.description',0,'directory','APPLICATIONS',NULL,'jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-directory',4),('DOCUMENT_TYPES_MANAGEMENT','document.adminFeature.document_types_management.name',1,'jsp/admin/plugins/document/ManageDocumentTypes.jsp','document.adminFeature.document_types_management.description',0,'document','CONTENT',NULL,NULL,2),('DOCUMENT_MANAGEMENT','document.adminFeature.documents_management.name',3,'jsp/admin/plugins/document/ManageDocuments.jsp','document.adminFeature.documents_management.description',0,'document','CONTENT',NULL,NULL,3),('DOCUMENT_RULES_MANAGEMENT','document.adminFeature.rules_management.name',1,'jsp/admin/plugins/document/ManageRules.jsp','document.adminFeature.rules_management.description',0,'document','CONTENT',NULL,NULL,4),('DOCUMENT_CATEGORY_MANAGEMENT','document.adminFeature.category_management.name',1,'jsp/admin/plugins/document/ManageCategory.jsp','document.adminFeature.category_management.description',0,'document','CONTENT',NULL,NULL,5),('RESOURCE_EXTENDER_MANAGEMENT','extend.adminFeature.resource_extenders_management.name',2,'jsp/admin/plugins/extend/ManageResourceExtendersByResource.jsp','extend.adminFeature.resource_extenders_management.description',0,'extend','APPLICATIONS',NULL,'jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-extend',18),('MANAGE_ACTION_BUTTONS','module.extend.actionbar.adminFeature.manage_action_buttons.name',1,'jsp/admin/plugins/extend/modules/actionbar/GetManageActionButtons.jsp','module.extend.actionbar.adminFeature.manage_action_buttons.description',0,'extend-actionbar','APPLICATIONS',NULL,'jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-extend-actionbar',5),('MANAGE_OPENGRAPH_SOCIALHUB','module.extend.opengraph.adminFeature.manage_opengraph_socialhub.name',2,'jsp/admin/plugins/extend/modules/opengraph/GetManageOpengraphSocialHub.jsp','module.extend.opengraph.adminFeature.manage_opengraph_socialhub.description',0,'extend-opengraph','APPLICATIONS',NULL,'jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-extend-opengraph',12),('EXTEND_VOTE_TYPES_MANAGEMENT','module.extend.rating.adminFeature.vote_types_management.name',2,'jsp/admin/plugins/extend/modules/rating/ManageVoteTypes.jsp','module.extend.rating.adminFeature.vote_types_management.description',0,'extend-rating','APPLICATIONS',NULL,'jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-extend-rating',6),('EXTEND_STATS','module.extend.statistics.adminFeature.statistics.name',2,'jsp/admin/plugins/extend/modules/statistics/ViewStats.jsp','module.extend.statistics.adminFeature.statistics.description',0,'extend-statistics','APPLICATIONS',NULL,'jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-extend-statistics',7),('EXTEND_STATISTICS','module.extend.statistics.adminFeature.statistics.name',2,'jsp/admin/plugins/extend/modules/statistics/ViewStats.jsp','module.extend.statistics.adminFeature.statistics.description',0,'extend-statistics','CONTENT','images/admin/skin/plugins/extend/modules/statistics/extend-statistics.png','jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-extend-statistics',1),('FORM_MANAGEMENT','form.adminFeature.form_management.name',2,'jsp/admin/plugins/form/ManageForm.jsp','form.adminFeature.form_management.description',0,'form','APPLICATIONS',NULL,'jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-form',8),('HELPDESK_MANAGEMENT','helpdesk.adminFeature.helpdesk_management.name',1,'jsp/admin/plugins/helpdesk/ManageHelpdesk.jsp','helpdesk.adminFeature.helpdesk_management.description',0,'helpdesk','APPLICATIONS',NULL,NULL,9),('HTMLPAGE_MANAGEMENT','htmlpage.adminFeature.htmlpage_management.name',2,'jsp/admin/plugins/htmlpage/ManageHtmlPage.jsp','htmlpage.adminFeature.htmlpage_management.description',0,'htmlpage','APPLICATIONS',NULL,'jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-htmlpage',10),('LIBRARY_MANAGEMENT','library.adminFeature.library_management.name',0,'jsp/admin/plugins/library/ManageLibrary.jsp','library.adminFeature.library_management.description',0,'library','APPLICATIONS',NULL,NULL,11),('MYLUTECE_MANAGE_EXTERNAL_APPLICATION','mylutece.adminFeature.mylutece_management_external_application.name',3,'jsp/admin/plugins/mylutece/ManageExternalApplicationUser.jsp','mylutece.adminFeature.mylutece_management_external_application.description',0,'mylutece','APPLICATIONS',NULL,NULL,16),('MYLUTECE_MANAGEMENT','mylutece.adminFeature.mylutece_management.name',2,'jsp/admin/plugins/mylutece/attribute/ManageAttributes.jsp','mylutece.adminFeature.mylutece_management.description',0,'mylutece','USERS',NULL,NULL,NULL),('MYLUTECE_MANAGE_AUTHENTICATION_FILTER','mylutece.adminFeature.mylutece_management_authentication_filter.name',3,'jsp/admin/plugins/mylutece/security/ManageAuthenticationFilter.jsp','mylutece.adminFeature.mylutece_management_authentication_filter.description',0,'mylutece','APPLICATIONS',NULL,NULL,13),('DATABASE_MANAGEMENT_USERS','module.mylutece.database.adminFeature.database_management_user.name',3,'jsp/admin/plugins/mylutece/modules/database/ManageUsers.jsp','module.mylutece.database.adminFeature.database_management_user.description',0,'mylutece-database','APPLICATIONS',NULL,NULL,14),('DATABASE_GROUPS_MANAGEMENT','module.mylutece.database.adminFeature.groups_management.name',3,'jsp/admin/plugins/mylutece/modules/database/ManageGroups.jsp','module.mylutece.database.adminFeature.groups_management.description',0,'mylutece-database','APPLICATIONS',NULL,NULL,15),('PIWIK_MANAGEMENT','piwik.adminFeature.ManagePiwik.name',2,'jsp/admin/plugins/piwik/Piwik.jsp','piwik.adminFeature.ManagePiwik.description',0,'piwik','APPLICATIONS',NULL,NULL,17),('SEO_MANAGEMENT','seo.adminFeature.seo_management.name',0,'jsp/admin/plugins/seo/ManageSEO.jsp','seo.adminFeature.seo_management.description',0,'seo','SYSTEM',NULL,NULL,12),('SYSTEMINFO_MANAGEMENT','systeminfo.adminFeature.systeminfo_management.name',0,'jsp/admin/plugins/systeminfo/ManageSystemInfo.jsp','systeminfo.adminFeature.systeminfo_management.description',0,'systeminfo','SYSTEM',NULL,NULL,13),('WORKFLOW_MANAGEMENT','workflow.adminFeature.workflow_management.name',3,'jsp/admin/plugins/workflow/ManageWorkflow.jsp','workflow.adminFeature.workflow_management.description',0,'workflow','APPLICATIONS',NULL,NULL,19),('APPOINTMENT_MANAGEMENT','appointment.adminFeature.ManageAppointment.name',1,'jsp/admin/plugins/appointment/ManageAppointments.jsp','appointment.adminFeature.ManageAppointment.description',0,'workflow-appointment','SYSTEM',NULL,NULL,15);
/*!40000 ALTER TABLE `core_admin_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_role`
--

DROP TABLE IF EXISTS `core_admin_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_role` (
  `role_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `role_description` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`role_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_role`
--

LOCK TABLES `core_admin_role` WRITE;
/*!40000 ALTER TABLE `core_admin_role` DISABLE KEYS */;
INSERT INTO `core_admin_role` VALUES ('all_site_manager','Site Manager'),('super_admin','Super Administrateur'),('directory_manager','Directory management'),('view_spaces_all','Vue sur tous les espaces'),('manage_spaces','Gestion des espaces de documents'),('view_space_work','Vue sur l\'espace de travail'),('view_spaces_multimedia','Vue sur les espaces multimedia'),('content_contributor','Producteur de contenu'),('content_validator','Validateur de contenu'),('content_publisher','Gestionnaire de publication'),('view_space_validation','Vue sur l\'espace de validation'),('extend_manager','Gestion des type de ressource d\'extend'),('extend_action_button_manager','Gestion des boutons d\'actions'),('extend_opengraph_manager','Gestion des réseaux sociaux'),('form_manager','Gestion des formulaires'),('form_manager_admin','Administration des formulaires'),('helpdesk_manager','Gestion du module de F.A.Q.'),('assign_roles','Assigner des roles aux utilisateurs'),('assign_groups','Assigner des groupes aux utilisateurs'),('mylutece_manager','Gérer les patramètres avancés Mylutece'),('mylutece_database_manager','Mylutece Database management'),('workflow_manager','Workflow management');
/*!40000 ALTER TABLE `core_admin_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_role_resource`
--

DROP TABLE IF EXISTS `core_admin_role_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_role_resource` (
  `rbac_id` int(11) NOT NULL DEFAULT '0',
  `role_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `resource_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `resource_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `permission` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`rbac_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_role_resource`
--

LOCK TABLES `core_admin_role_resource` WRITE;
/*!40000 ALTER TABLE `core_admin_role_resource` DISABLE KEYS */;
INSERT INTO `core_admin_role_resource` VALUES (57,'all_site_manager','PAGE','*','VIEW'),(58,'all_site_manager','PAGE','*','MANAGE'),(77,'super_admin','INSERT_SERVICE','*','*'),(101,'all_site_manager','PORTLET_TYPE','*','*'),(111,'all_site_manager','ADMIN_USER','*','*'),(137,'all_site_manager','SEARCH_SERVICE','*','*'),(164,'all_site_manager','XSL_EXPORT','*','*'),(1026,'super_admin','APPOINTMENT_FORM','*','*'),(903,'directory_manager','DIRECTORY_DIRECTORY_TYPE','*','*'),(904,'directory_manager','DIRECTORY_XSL_FORMAT_TYPE','*','*'),(87,'view_spaces_multimedia','DOCUMENT_SPACE','5','VIEW'),(86,'view_space_work','DOCUMENT_SPACE','2','VIEW'),(85,'manage_spaces','DOCUMENT_SPACE','*','CREATE'),(84,'manage_spaces','DOCUMENT_SPACE','*','MOVE'),(83,'manage_spaces','DOCUMENT_SPACE','*','MODIFY'),(82,'manage_spaces','DOCUMENT_SPACE','*','DELETE'),(81,'view_spaces_all','DOCUMENT_SPACE','0','VIEW'),(78,'super_admin','DOCUMENT_TYPE','*','*'),(88,'content_contributor','DOCUMENT_TYPE','*','SUBMIT'),(89,'content_contributor','DOCUMENT_TYPE','*','DELETE'),(90,'content_contributor','DOCUMENT_TYPE','*','MODIFY'),(91,'content_contributor','DOCUMENT_TYPE','*','VIEW'),(92,'content_contributor','DOCUMENT_TYPE','*','VIEW_HISTORY'),(93,'content_contributor','DOCUMENT_TYPE','*','CREATE'),(94,'content_validator','DOCUMENT_TYPE','*','VIEW'),(95,'content_validator','DOCUMENT_TYPE','*','VIEW_HISTORY'),(96,'content_validator','DOCUMENT_TYPE','*','VALIDATE'),(97,'content_publisher','DOCUMENT_TYPE','*','ARCHIVE'),(98,'content_publisher','DOCUMENT_TYPE','*','VIEW'),(99,'content_publisher','DOCUMENT_TYPE','*','VIEW_HISTORY'),(100,'content_publisher','DOCUMENT_TYPE','*','PUBLISH'),(102,'view_space_validation','DOCUMENT_SPACE','3','VIEW'),(107,'content_contributor','DOCUMENT_TYPE','*','CHANGE'),(108,'content_publisher','DOCUMENT_TYPE','*','ASSIGN'),(990,'extend_manager','EXTEND_EXTENDABLE_RESOURCE_TYPE','*','*'),(991,'extend_manager','EXTEND_EXTENDABLE_RESOURCE','*','*'),(567,'extend_action_button_manager','ACTION_BUTTON','*','*'),(558,'extend_opengraph_manager','OPENGRAPH_SOCIAL_HUB','*','*'),(905,'form_manager_admin','FORM_EXPORT_FORMAT_TYPE','*','*'),(906,'form_manager_admin','FORM_DEFAULT_MESSAGE_TYPE','*','*'),(907,'form_manager','FORM_FORM_TYPE','*','*'),(10,'helpdesk_manager','HELPDESK_FAQ','*','*'),(205,'assign_roles','ROLE_TYPE','*','ASSIGN_ROLE'),(206,'assign_groups','GROUP_TYPE','*','ASSIGN_GROUP'),(207,'mylutece_manager','MYLUTECE','*','*'),(350,'mylutece_database_manager','DATABASE','*','*'),(912,'workflow_manager','WORKFLOW_ACTION_TYPE','*','*'),(923,'workflow_manager','WORKFLOW_STATE_TYPE','*','*'),(992,'super_admin','FORM_EXPORT_DIRECTORY_TYPE','*','*');
/*!40000 ALTER TABLE `core_admin_role_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_user`
--

DROP TABLE IF EXISTS `core_admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_user` (
  `id_user` int(11) NOT NULL DEFAULT '0',
  `access_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `status` smallint(6) NOT NULL DEFAULT '0',
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fr',
  `level_user` smallint(6) NOT NULL DEFAULT '0',
  `reset_password` smallint(6) NOT NULL DEFAULT '0',
  `accessibility_mode` smallint(6) NOT NULL DEFAULT '0',
  `password_max_valid_date` timestamp NULL DEFAULT NULL,
  `account_max_valid_date` bigint(20) DEFAULT NULL,
  `nb_alerts_sent` int(11) NOT NULL DEFAULT '0',
  `last_login` timestamp NOT NULL DEFAULT '1979-12-31 23:00:00',
  `workgroup_key` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'all',
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_user`
--

LOCK TABLES `core_admin_user` WRITE;
/*!40000 ALTER TABLE `core_admin_user` DISABLE KEYS */;
INSERT INTO `core_admin_user` VALUES (1,'admin','Admin','admin','admin@lutece.fr',0,'adminadmin','fr',0,0,0,NULL,1466267562400,0,'2015-06-18 16:32:42','all'),(2,'lutece','Lutèce','lutece','lutece@lutece.fr',0,'adminadmin','fr',1,0,0,NULL,NULL,0,'1979-12-31 23:00:00','all'),(3,'redac','redac','redac','redac@lutece.fr',0,'adminadmin','fr',2,0,0,NULL,NULL,0,'1979-12-31 23:00:00','all'),(4,'valid','valid','valid','valid@lutece.fr',0,'adminadmin','fr',3,0,0,NULL,NULL,0,'1979-12-31 23:00:00','all');
/*!40000 ALTER TABLE `core_admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_user_anonymize_field`
--

DROP TABLE IF EXISTS `core_admin_user_anonymize_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_user_anonymize_field` (
  `field_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `anonymize` smallint(6) NOT NULL,
  PRIMARY KEY (`field_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_user_anonymize_field`
--

LOCK TABLES `core_admin_user_anonymize_field` WRITE;
/*!40000 ALTER TABLE `core_admin_user_anonymize_field` DISABLE KEYS */;
INSERT INTO `core_admin_user_anonymize_field` VALUES ('access_code',1),('last_name',1),('first_name',1),('email',1);
/*!40000 ALTER TABLE `core_admin_user_anonymize_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_user_field`
--

DROP TABLE IF EXISTS `core_admin_user_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_user_field` (
  `id_user_field` int(11) NOT NULL DEFAULT '0',
  `id_user` int(11) DEFAULT NULL,
  `id_attribute` int(11) DEFAULT NULL,
  `id_field` int(11) DEFAULT NULL,
  `id_file` int(11) DEFAULT NULL,
  `user_field_value` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id_user_field`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_user_field`
--

LOCK TABLES `core_admin_user_field` WRITE;
/*!40000 ALTER TABLE `core_admin_user_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_admin_user_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_user_preferences`
--

DROP TABLE IF EXISTS `core_admin_user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_user_preferences` (
  `id_user` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pref_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pref_value` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id_user`,`pref_key`),
  KEY `index_admin_user_preferences` (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_user_preferences`
--

LOCK TABLES `core_admin_user_preferences` WRITE;
/*!40000 ALTER TABLE `core_admin_user_preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_admin_user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_workgroup`
--

DROP TABLE IF EXISTS `core_admin_workgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_workgroup` (
  `workgroup_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `workgroup_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`workgroup_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_workgroup`
--

LOCK TABLES `core_admin_workgroup` WRITE;
/*!40000 ALTER TABLE `core_admin_workgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_admin_workgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_admin_workgroup_user`
--

DROP TABLE IF EXISTS `core_admin_workgroup_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_admin_workgroup_user` (
  `workgroup_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_user` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`workgroup_key`,`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_admin_workgroup_user`
--

LOCK TABLES `core_admin_workgroup_user` WRITE;
/*!40000 ALTER TABLE `core_admin_workgroup_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_admin_workgroup_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_attribute`
--

DROP TABLE IF EXISTS `core_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_attribute` (
  `id_attribute` int(11) NOT NULL DEFAULT '0',
  `type_class_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` mediumtext COLLATE utf8_unicode_ci,
  `help_message` mediumtext COLLATE utf8_unicode_ci,
  `is_mandatory` smallint(6) DEFAULT '0',
  `is_shown_in_search` smallint(6) DEFAULT '0',
  `is_shown_in_result_list` smallint(6) DEFAULT '0',
  `is_field_in_line` smallint(6) DEFAULT '0',
  `attribute_position` int(11) DEFAULT '0',
  `plugin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anonymize` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_attribute`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_attribute`
--

LOCK TABLES `core_attribute` WRITE;
/*!40000 ALTER TABLE `core_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_attribute_field`
--

DROP TABLE IF EXISTS `core_attribute_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_attribute_field` (
  `id_field` int(11) NOT NULL DEFAULT '0',
  `id_attribute` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEFAULT_value` mediumtext COLLATE utf8_unicode_ci,
  `is_DEFAULT_value` smallint(6) DEFAULT '0',
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `max_size_enter` int(11) DEFAULT NULL,
  `is_multiple` smallint(6) DEFAULT '0',
  `field_position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_field`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_attribute_field`
--

LOCK TABLES `core_attribute_field` WRITE;
/*!40000 ALTER TABLE `core_attribute_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_attribute_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_connections_log`
--

DROP TABLE IF EXISTS `core_connections_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_connections_log` (
  `access_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_address` varchar(63) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `login_status` int(11) DEFAULT NULL,
  KEY `index_connections_log` (`ip_address`,`date_login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_connections_log`
--

LOCK TABLES `core_connections_log` WRITE;
/*!40000 ALTER TABLE `core_connections_log` DISABLE KEYS */;
INSERT INTO `core_connections_log` VALUES ('admin','91.213.15.225','2015-06-18 14:33:38',0),('admin','91.213.15.225','2015-06-18 14:33:45',0),('admin','194.153.110.6','2015-06-18 15:42:24',0),('admin','91.213.15.225','2015-06-18 15:51:39',0);
/*!40000 ALTER TABLE `core_connections_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_dashboard`
--

DROP TABLE IF EXISTS `core_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_dashboard` (
  `dashboard_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dashboard_column` int(11) NOT NULL,
  `dashboard_order` int(11) NOT NULL,
  PRIMARY KEY (`dashboard_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_dashboard`
--

LOCK TABLES `core_dashboard` WRITE;
/*!40000 ALTER TABLE `core_dashboard` DISABLE KEYS */;
INSERT INTO `core_dashboard` VALUES ('CORE_SYSTEM',1,2),('CORE_USERS',1,1),('CORE_USER',4,1),('CORE_PAGES',2,1),('APPOINTMENT_FORM',3,2),('DIRECTORY',3,1),('DOCUMENT',2,1),('FORM',3,1),('WORKFLOW',3,1);
/*!40000 ALTER TABLE `core_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_datastore`
--

DROP TABLE IF EXISTS `core_datastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_datastore` (
  `entity_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entity_value` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`entity_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_datastore`
--

LOCK TABLES `core_datastore` WRITE;
/*!40000 ALTER TABLE `core_datastore` DISABLE KEYS */;
INSERT INTO `core_datastore` VALUES ('core.advanced_parameters.password_duration','120'),('core.advanced_parameters.enable_password_encryption','false'),('core.advanced_parameters.encryption_algorithm',''),('core.advanced_parameters.default_user_level','0'),('core.advanced_parameters.default_user_notification','1'),('core.advanced_parameters.default_user_language','fr'),('core.advanced_parameters.default_user_status','0'),('core.advanced_parameters.email_pattern','^[\\w_.\\-!\\#\\$\\%\\&\'\\*\\+\\/\\=\\?\\^\\`\\}\\{\\|\\~]+@[\\w_.\\-]+\\.[\\w]+$'),('core.advanced_parameters.email_pattern_verify_by',''),('core.advanced_parameters.force_change_password_reinit','false'),('core.advanced_parameters.password_minimum_length','8'),('core.advanced_parameters.password_format_upper_lower_case','false'),('core.advanced_parameters.password_format_numero','false'),('core.advanced_parameters.password_format_special_characters','false'),('core.advanced_parameters.password_history_size',''),('core.advanced_parameters.maximum_number_password_change',''),('core.advanced_parameters.tsw_size_password_change',''),('core.advanced_parameters.use_advanced_security_parameters',''),('core.advanced_parameters.account_life_time','12'),('core.advanced_parameters.time_before_alert_account','30'),('core.advanced_parameters.nb_alert_account','2'),('core.advanced_parameters.time_between_alerts_account','10'),('core.advanced_parameters.access_failures_max','3'),('core.advanced_parameters.access_failures_interval','10'),('core.advanced_parameters.expired_alert_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.expired_alert_mail_subject','Votre compte a expiré'),('core.advanced_parameters.first_alert_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.first_alert_mail_subject','Votre compte va bientôt expirer'),('core.advanced_parameters.other_alert_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.other_alert_mail_subject','Votre compte va bientôt expirer'),('core.advanced_parameters.account_reactivated_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.account_reactivated_mail_subject','Votre compte a bien été réactivé'),('core.advanced_parameters.access_failures_captcha','1'),('core.advanced_parameters.notify_user_password_expired',''),('core.advanced_parameters.password_expired_mail_sender','lutece@nowhere.com'),('core.advanced_parameters.password_expired_mail_subject','Votre mot de passe a expiré'),('core.backOffice.defaultEditor','tinymce'),('core.frontOffice.defaultEditor','markitupbbcode'),('core_banned_domain_names','yopmail.com'),('portal.site.site_property.name','LUTECE'),('portal.site.site_property.meta.author','<author>'),('portal.site.site_property.meta.copyright','<copyright>'),('portal.site.site_property.meta.description','<description>'),('portal.site.site_property.meta.keywords','<keywords>'),('portal.site.site_property.email','<webmaster email>'),('portal.site.site_property.noreply_email','no-reply@mydomain.com'),('portal.site.site_property.home_url','jsp/site/Portal.jsp?page=crm'),('portal.site.site_property.admin_home_url','jsp/admin/AdminMenu.jsp'),('portal.site.site_property.popup_credits.textblock','&lt;credits text&gt;'),('portal.site.site_property.popup_legal_info.copyright.textblock','&lt;copyright text&gt;'),('portal.site.site_property.popup_legal_info.privacy.textblock','&lt;privacy text&gt;'),('portal.site.site_property.logo_url','images/logo-header-icon.png'),('portal.site.site_property.menu.position','top'),('portal.site.site_property.locale.default','fr'),('core.cache.status.appointment.appointmentFormCacheService.enabled','1'),('core.cache.status.EntryTypeServiceManagerCache.enabled','1'),('gtools.site_property.analytics.code','<Your Google Analytics Code>'),('gtools.site_property.webmaster_tools.code','<Your Webmaster Tools Code>'),('mylutece.security.public_url.mylutece.url.login.page','jsp/site/Portal.jsp?page=mylutece&action=login'),('mylutece.security.public_url.mylutece.url.doLogin','jsp/site/plugins/mylutece/DoMyLuteceLogin.jsp'),('mylutece.security.public_url.mylutece.url.doLogout','jsp/site/plugins/mylutece/DoMyLuteceLogout.jsp'),('mylutece.security.public_url.mylutece.url.createAccount.page','jsp/site/Portal.jsp?page=mylutece&action=createAccount'),('mylutece.security.public_url.mylutece.url.modifyAccount.page','jsp/site/Portal.jsp?page=mylutece&action=modifyAccount'),('mylutece.security.public_url.mylutece.url.lostPassword.page','jsp/site/Portal.jsp?page=mylutece&action=lostPassword'),('mylutece.security.public_url.mylutece.url.lostLogin.page','jsp/site/Portal.jsp?page=mylutecedatabase&action=lostLogin'),('mylutece.security.public_url.mylutece.url.doActionsAll','jsp/site/plugins/mylutece/Do*'),('mylutece-database_banned_domain_names','yopmail.com'),('mylutece.security.public_url.mylutece-database.url.login.page','jsp/site/Portal.jsp?page=mylutece&action=login'),('mylutece.security.public_url.mylutece-database.url.doLogin','jsp/site/plugins/mylutece/DoMyLuteceLogin.jsp'),('mylutece.security.public_url.mylutece-database.url.doLogout','jsp/site/plugins/mylutece/DoMyLuteceLogout.jsp'),('mylutece.security.public_url.mylutece-database.url.createAccount.page','jsp/site/Portal.jsp?page=mylutecedatabase&action=createAccount'),('mylutece.security.public_url.mylutece-database.url.lostPassword.page','jsp/site/Portal.jsp?page=mylutecedatabase&action=lostPassword'),('mylutece.security.public_url.mylutece-database.url.lostLogin.page','jsp/site/Portal.jsp?page=mylutecedatabase&action=lostLogin'),('mylutece.security.public_url.mylutece-database.url.reinitPassword.page','jsp/site/Portal.jsp?page=mylutecedatabase&action=reinitPassword'),('mylutece.security.public_url.mylutece-database.url.doActionsAll','jsp/site/plugins/mylutece/modules/database/Do*'),('seo.rewrite.config.lastUpdate','Dernière mise à jour du fichier de configuration : 18 juin 2015 19:04:03 Nombre d\'url : 10 Resultat : OK'),('seo.config.uptodate','true'),('seo.generator.option.addPath','false'),('seo.generator.option.addHtmlSuffix','true'),('seo.replaceUrl.enabled','true'),('seo.generator.daemon.enabled','true'),('seo.canonicalUrls.enabled','true'),('seo.sitmap.daemon.enabled','true'),('seo.sitemap.update.log','Dernière génération : 18 juin 2015 19:04:05 Nombre d\'url : 7 Resultat : OK'),('core.cache.status.PageCachingFilter.enabled','0'),('core.cache.status.DocumentResourceServletCache.enabled','1'),('core.cache.status.LuteceUserCacheService.enabled','1'),('core.cache.status.StaticFilesCachingFilter.enabled','1'),('core.cache.status.PageCacheService.enabled','1'),('core.cache.status.MailAttachmentCacheService.overflowToDisk','true'),('core.cache.status.PortletCacheService.enabled','0'),('core.cache.status.LuteceUserCacheService.maxElementsInMemory','1000'),('core.cache.status.MailAttachmentCacheService.enabled','1'),('core.cache.status.PortalMenuService.enabled','1'),('core.cache.status.StaticFilesCachingFilter.timeToLiveSeconds','604800'),('core.cache.status.MailAttachmentCacheService.diskPersistent','true'),('core.cache.status.BaseUserPreferencesCacheService.maxElementsInMemory','1000'),('core.cache.status.MyPortalWidgetContentService.enabled','1'),('core.cache.status.MailAttachmentCacheService.timeToLiveSeconds','7200'),('core.cache.status.MailAttachmentCacheService.maxElementsInMemory','10'),('core.cache.status.MyPortalWidgetService.enabled','1'),('core.cache.status.SiteMapService.enabled','1'),('core.cache.status.BaseUserPreferencesCacheService.enabled','1'),('core.plugins.status.core_extensions.installed','true'),('core.plugins.status.lucene.installed','true'),('core.daemon.indexer.interval','300'),('core.daemon.indexer.onStartUp','true'),('core.daemon.mailSender.interval','60'),('core.daemon.mailSender.onStartUp','true'),('core.daemon.anonymizationDaemon.interval','86400'),('core.daemon.anonymizationDaemon.onStartUp','false'),('core.daemon.accountLifeTimeDaemon.interval','86400'),('core.daemon.accountLifeTimeDaemon.onStartUp','true'),('core.daemon.threadLauncherDaemon.interval','60'),('core.daemon.threadLauncherDaemon.onStartUp','true'),('core.daemon.DayCreationDaemon.interval','86400'),('core.daemon.DayCreationDaemon.onStartUp','true'),('core.daemon.DayRemovalDaemon.interval','86400'),('core.daemon.DayRemovalDaemon.onStartUp','true'),('core.daemon.AppointmentPublicationDaemon.interval','21600'),('core.daemon.AppointmentPublicationDaemon.onStartUp','true'),('core.daemon.archiveIndexer.interval','360'),('core.daemon.archiveIndexer.onStartUp','true'),('core.daemon.crmDemandCleaner.interval','86400'),('core.daemon.crmDemandCleaner.onStartUp','true'),('core.daemon.crmClientSender.interval','60'),('core.daemon.crmClientSender.onStartUp','true'),('core.daemon.zipBasketCheckStatus.interval','180'),('core.daemon.zipBasketCheckStatus.onStartUp','true'),('core.daemon.zipCleaner.interval','86400'),('core.daemon.zipCleaner.onStartUp','true'),('core.daemon.addZipToBacket.interval','60'),('core.daemon.addZipToBacket.onStartUp','true'),('core.daemon.directorySearchIndexer.interval','360'),('core.daemon.directorySearchIndexer.onStartUp','true'),('core.daemon.directoryWorkflowRecordRemovalDaemon.interval','3600'),('core.daemon.directoryWorkflowRecordRemovalDaemon.onStartUp','true'),('core.daemon.docSearchIndexer.interval','600'),('core.daemon.docSearchIndexer.onStartUp','true'),('core.daemon.autoPublication.interval','3600'),('core.daemon.autoPublication.onStartUp','true'),('core.daemon.autoArchiving.interval','3600'),('core.daemon.autoArchiving.onStartUp','true'),('core.daemon.formPublication.interval','60'),('core.daemon.formPublication.onStartUp','true'),('core.daemon.formExportResponses.interval','80000'),('core.daemon.formExportResponses.onStartUp','false'),('core.daemon.formRemoveResponses.interval','86400'),('core.daemon.formRemoveResponses.onStartUp','false'),('core.daemon.databaseAnonymizationDaemon.interval','86400'),('core.daemon.databaseAnonymizationDaemon.onStartUp','true'),('core.daemon.databaseAccountLifeTimeDaemon.interval','86400'),('core.daemon.databaseAccountLifeTimeDaemon.onStartUp','true'),('core.daemon.seoFriendlyUrlGenerator.interval','3600'),('core.daemon.seoFriendlyUrlGenerator.onStartUp','true'),('core.daemon.seoSitemapGenerator.interval','3600'),('core.daemon.seoSitemapGenerator.onStartUp','true'),('core.daemon.automaticActionDaemon.interval','14400'),('core.daemon.automaticActionDaemon.onStartUp','true'),('core.daemon.notifyDirectoryCleaner.interval','45000'),('core.daemon.notifyDirectoryCleaner.onStartUp','true'),('core.startup.time','18 juin 2015 19:04:01'),('core.cache.status.DatastoreCacheService.enabled','0'),('core.plugins.status.appointment.installed','true'),('core.plugins.status.appointment.pool','portal'),('core.plugins.status.archive.installed','true'),('core.plugins.status.archive.pool','portal'),('core.plugins.status.archive-client.installed','true'),('core.plugins.status.asynchronous-upload.installed','true'),('core.plugins.status.asynchronous-upload.pool','portal'),('core.plugins.status.avatar.installed','true'),('core.plugins.status.blobstore-rest.installed','true'),('core.plugins.status.blobstoreclient.installed','true'),('core.plugins.status.captcha.installed','true'),('core.plugins.status.childpages.installed','true'),('core.plugins.status.contact.installed','true'),('core.plugins.status.contact.pool','portal'),('core.plugins.status.crm.installed','true'),('core.plugins.status.crm.pool','portal'),('core.plugins.status.crm-form.installed','true'),('core.plugins.status.crm-rest.installed','true'),('core.plugins.status.crmclient.installed','true'),('core.plugins.status.crmclient.pool','portal'),('core.plugins.status.directory.installed','true'),('core.plugins.status.directory.pool','portal'),('core.plugins.status.directory-pdfproducer.installed','true'),('core.plugins.status.directory-pdfproducer.pool','portal'),('core.plugins.status.directory-pdfproducer-archive.installed','true'),('core.plugins.status.directory-pdfproducer-archive.pool','portal'),('core.plugins.status.document.installed','true'),('core.plugins.status.document.pool','portal'),('core.plugins.status.extend.installed','true'),('core.plugins.status.extend.pool','portal'),('core.plugins.status.extend-actionbar.installed','true'),('core.plugins.status.extend-actionbar.pool','portal'),('core.plugins.status.extend-comment.installed','true'),('core.plugins.status.extend-comment.pool','portal'),('core.plugins.status.extend-opengraph.installed','true'),('core.plugins.status.extend-opengraph.pool','portal'),('core.plugins.status.extend-rating.installed','true'),('core.plugins.status.extend-rating.pool','portal'),('core.plugins.status.extend-statistics.installed','true'),('core.plugins.status.fcsample.installed','true'),('core.plugins.status.fcsample.pool','portal'),('core.plugins.status.federatedatabasefranceconnect.installed','true'),('core.plugins.status.federatedatabasefranceconnect.pool','portal'),('core.plugins.status.form.installed','true'),('core.plugins.status.form.pool','portal'),('core.plugins.status.franceconnect.installed','true'),('core.plugins.status.genericattributes.installed','true'),('core.plugins.status.genericattributes.pool','portal'),('core.plugins.status.gtools.installed','true'),('core.plugins.status.helpdesk.installed','true'),('core.plugins.status.helpdesk.pool','portal'),('core.plugins.status.html.installed','true'),('core.plugins.status.htmlpage.installed','true'),('core.plugins.status.htmlpage.pool','portal'),('core.plugins.status.jcaptcha.installed','true'),('core.plugins.status.library.installed','true'),('core.plugins.status.library.pool','portal'),('core.plugins.status.linkpages.installed','true'),('core.plugins.status.mylutece.installed','true'),('core.plugins.status.mylutece.pool','portal'),('core.plugins.status.mylutece-database.installed','true'),('core.plugins.status.mylutece-database.pool','portal'),('core.plugins.status.mylutece-franceconnect.installed','true'),('core.plugins.status.piwik.installed','true'),('core.plugins.status.rest.installed','true'),('core.plugins.status.seo.installed','true'),('core.plugins.status.seo.pool','portal'),('core.plugins.status.seo-crm.installed','true'),('core.plugins.status.systeminfo.installed','true'),('core.plugins.status.workflow.installed','true'),('core.plugins.status.workflow.pool','portal'),('core.plugins.status.workflow-appointment.installed','true'),('core.plugins.status.workflow-appointment.pool','portal'),('core.plugins.status.workflow-archive.installed','true'),('core.plugins.status.workflow-archive.pool','portal'),('core.plugins.status.workflow-createpdf.installed','true'),('core.plugins.status.workflow-createpdf.pool','portal'),('core.plugins.status.workflow-exportfile.installed','true'),('core.plugins.status.workflow-exportfile.pool','portal'),('core.plugins.status.workflow-notifycrm.installed','true'),('core.plugins.status.workflow-notifycrm.pool','portal'),('core.plugins.status.workflow-notifydirectory.installed','true'),('core.plugins.status.workflow-notifydirectory.pool','portal'),('core.plugins.status.workflow-rest.installed','true'),('core.cache.status.XMLTransformerCacheService(XSLT).enabled','1'),('core.cache.status.SEOFriendlyUrlCacheService.enabled','0'),('piwik.site_property.site.id','< No Site ID provided >'),('piwik.site_property.server.http.url','< No Server HTTP URL provided >'),('piwik.site_property.server.https.url','< No Server HTTPS URL provided >'),('piwik.site_property.widget.auth.token',''),('core.plugins.status.form-exportdirectory.installed','true'),('core.plugins.status.form-exportdirectory.pool','portal'),('captcha.defaultProvider','JCaptcha'),('core.cache.status.asynchronousupload.asynchronousUploadCacheService.enabled','0'),('core.plugins.status.stationnement.installed','true'),('core.plugins.status.stationnement.pool','portal'),('core.plugins.status.quotientfamille.installed','true'),('core.plugins.status.quotientfamille.pool','portal'),('core.plugins.status.blobstore.installed','true'),('core.plugins.status.blobstore.pool','portal');
/*!40000 ALTER TABLE `core_datastore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_feature_group`
--

DROP TABLE IF EXISTS `core_feature_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_feature_group` (
  `id_feature_group` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `feature_group_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `feature_group_label` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `feature_group_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_feature_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_feature_group`
--

LOCK TABLES `core_feature_group` WRITE;
/*!40000 ALTER TABLE `core_feature_group` DISABLE KEYS */;
INSERT INTO `core_feature_group` VALUES ('CONTENT','portal.features.group.content.description','portal.features.group.content.label',1),('APPLICATIONS','portal.features.group.applications.description','portal.features.group.applications.label',3),('SYSTEM','portal.features.group.system.description','portal.features.group.system.label',7),('SITE','portal.features.group.site.description','portal.features.group.site.label',2),('STYLE','portal.features.group.charter.description','portal.features.group.charter.label',6),('USERS','portal.features.group.users.description','portal.features.group.users.label',4),('MANAGERS','portal.features.group.managers.description','portal.features.group.managers.label',5);
/*!40000 ALTER TABLE `core_feature_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_file`
--

DROP TABLE IF EXISTS `core_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_file` (
  `id_file` int(11) NOT NULL DEFAULT '0',
  `title` mediumtext COLLATE utf8_unicode_ci,
  `id_physical_file` int(11) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_file`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_file`
--

LOCK TABLES `core_file` WRITE;
/*!40000 ALTER TABLE `core_file` DISABLE KEYS */;
INSERT INTO `core_file` VALUES (125,'export_users_csv.xml',125,2523,'application/xml'),(126,'export_users_xml.xml',126,259,'application/xml'),(127,'export_users_csv.xml',127,1861,'application/xml'),(128,'export_users_xml.xml',128,259,'application/xml');
/*!40000 ALTER TABLE `core_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_id_generator`
--

DROP TABLE IF EXISTS `core_id_generator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_id_generator` (
  `class_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `current_value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`class_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_id_generator`
--

LOCK TABLES `core_id_generator` WRITE;
/*!40000 ALTER TABLE `core_id_generator` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_id_generator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_indexer_action`
--

DROP TABLE IF EXISTS `core_indexer_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_indexer_action` (
  `id_action` int(11) NOT NULL DEFAULT '0',
  `id_document` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_task` int(11) NOT NULL DEFAULT '0',
  `indexer_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_portlet` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_indexer_action`
--

LOCK TABLES `core_indexer_action` WRITE;
/*!40000 ALTER TABLE `core_indexer_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_indexer_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_level_right`
--

DROP TABLE IF EXISTS `core_level_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_level_right` (
  `id_level` smallint(6) NOT NULL DEFAULT '0',
  `name` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_level_right`
--

LOCK TABLES `core_level_right` WRITE;
/*!40000 ALTER TABLE `core_level_right` DISABLE KEYS */;
INSERT INTO `core_level_right` VALUES (0,'Niveau 0 - Droits de l\'administrateur technique'),(1,'Niveau 1 - Droits de l\'administrateur fonctionnel'),(2,'Niveau 2 - Droits du webmestre'),(3,'Niveau 3 - Droits de l\'assistant webmestre');
/*!40000 ALTER TABLE `core_level_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_mail_item`
--

DROP TABLE IF EXISTS `core_mail_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_mail_item` (
  `id_mail_queue` int(11) NOT NULL DEFAULT '0',
  `mail_item` mediumblob,
  PRIMARY KEY (`id_mail_queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_mail_item`
--

LOCK TABLES `core_mail_item` WRITE;
/*!40000 ALTER TABLE `core_mail_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mail_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_mail_queue`
--

DROP TABLE IF EXISTS `core_mail_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_mail_queue` (
  `id_mail_queue` int(11) NOT NULL DEFAULT '0',
  `is_locked` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id_mail_queue`),
  KEY `is_locked_core_mail_queue` (`is_locked`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_mail_queue`
--

LOCK TABLES `core_mail_queue` WRITE;
/*!40000 ALTER TABLE `core_mail_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_mail_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_mode`
--

DROP TABLE IF EXISTS `core_mode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_mode` (
  `id_mode` int(11) NOT NULL DEFAULT '0',
  `description_mode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `output_xsl_method` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `output_xsl_version` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `output_xsl_media_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `output_xsl_encoding` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `output_xsl_indent` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `output_xsl_omit_xml_dec` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `output_xsl_standalone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_mode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_mode`
--

LOCK TABLES `core_mode` WRITE;
/*!40000 ALTER TABLE `core_mode` DISABLE KEYS */;
INSERT INTO `core_mode` VALUES (0,'Normal','normal/','xml','1.0','text/xml','UTF-8','yes','yes','yes'),(1,'Administration','admin/','xml','1.0','text/xml','UTF-8','yes','yes','yes'),(2,'Wap','wml/','xml','1.0','text/xml','UTF-8','yes','yes','yes');
/*!40000 ALTER TABLE `core_mode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_page`
--

DROP TABLE IF EXISTS `core_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_page` (
  `id_page` int(11) NOT NULL DEFAULT '0',
  `id_parent` int(11) DEFAULT '0',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci,
  `date_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` smallint(6) DEFAULT NULL,
  `page_order` int(11) DEFAULT '0',
  `id_template` int(11) DEFAULT NULL,
  `date_creation` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `role` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_theme` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `node_status` smallint(6) NOT NULL DEFAULT '1',
  `image_content` mediumblob,
  `mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'NULL',
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_authorization_node` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_page`),
  KEY `index_page` (`id_template`,`id_parent`),
  KEY `index_childpage` (`id_parent`,`page_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_page`
--

LOCK TABLES `core_page` WRITE;
/*!40000 ALTER TABLE `core_page` DISABLE KEYS */;
INSERT INTO `core_page` VALUES (1,0,'Home','Home Page','2014-06-08 15:20:44',1,1,4,'2003-09-08 22:38:01','none','default',0,'','application/octet-stream',NULL,NULL,1),(2,1,'Page 1','A child page','2014-06-08 16:23:42',0,1,2,'2014-06-08 16:23:42','none','default',1,NULL,'application/octet-stream',NULL,NULL,1);
/*!40000 ALTER TABLE `core_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_page_template`
--

DROP TABLE IF EXISTS `core_page_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_page_template` (
  `id_template` int(11) NOT NULL DEFAULT '0',
  `description` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_page_template`
--

LOCK TABLES `core_page_template` WRITE;
/*!40000 ALTER TABLE `core_page_template` DISABLE KEYS */;
INSERT INTO `core_page_template` VALUES (1,'Une colonne','skin/site/page_template1.html','page_template1.gif'),(2,'Deux colonnes','skin/site/page_template2.html','page_template2.gif'),(3,'Trois colonnes','skin/site/page_template3.html','page_template3.gif'),(4,'1 + 2 colonnes','skin/site/page_template4.html','page_template4.gif'),(5,'Deux colonnes égales','skin/site/page_template5.html','page_template5.gif'),(6,'Trois colonnes inégales','skin/site/page_template6.html','page_template6.gif');
/*!40000 ALTER TABLE `core_page_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_physical_file`
--

DROP TABLE IF EXISTS `core_physical_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_physical_file` (
  `id_physical_file` int(11) NOT NULL DEFAULT '0',
  `file_value` mediumblob,
  PRIMARY KEY (`id_physical_file`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_physical_file`
--

LOCK TABLES `core_physical_file` WRITE;
/*!40000 ALTER TABLE `core_physical_file` DISABLE KEYS */;
INSERT INTO `core_physical_file` VALUES (125,'<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:output method=\"text\"/>\r\n	\r\n	<xsl:template match=\"users\">\r\n		<xsl:apply-templates select=\"user\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"user\">\r\n		<xsl:text>\"</xsl:text>\r\n		<xsl:value-of select=\"access_code\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"last_name\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"first_name\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"email\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"status\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"locale\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"level\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"must_change_password\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"accessibility_mode\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"password_max_valid_date\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"account_max_valid_date\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"date_last_login\" />\r\n		<xsl:text>\"</xsl:text>\r\n		<xsl:apply-templates select=\"roles\" />\r\n		<xsl:apply-templates select=\"rights\" />\r\n		<xsl:apply-templates select=\"workgroups\" />\r\n		<xsl:apply-templates select=\"attributes\" />\r\n		<xsl:text>&#10;</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"roles\">\r\n		<xsl:apply-templates select=\"role\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"role\">\r\n		<xsl:text>;\"role:</xsl:text>\r\n		<xsl:value-of select=\"current()\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"rights\">\r\n		<xsl:apply-templates select=\"right\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"right\">\r\n		<xsl:text>;\"right:</xsl:text>\r\n		<xsl:value-of select=\"current()\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"workgroups\">\r\n		<xsl:apply-templates select=\"workgroup\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"workgroup\">\r\n		<xsl:text>;\"workgroup:</xsl:text>\r\n		<xsl:value-of select=\"current()\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"attributes\">\r\n		<xsl:apply-templates select=\"attribute\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"attribute\">\r\n		<xsl:text>;\"</xsl:text>\r\n		<xsl:value-of select=\"attribute-id\" />\r\n		<xsl:text>:</xsl:text>\r\n		<xsl:value-of select=\"attribute-field-id\" />\r\n		<xsl:text>:</xsl:text>\r\n		<xsl:value-of select=\"attribute-value\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n</xsl:stylesheet>'),(126,'<?xml version=\"1.0\" ?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:template match=\"/ | @* | node()\">\r\n		<xsl:copy>\r\n			<xsl:apply-templates select=\"@* | node()\" />\r\n		</xsl:copy>\r\n	</xsl:template>\r\n</xsl:stylesheet>'),(127,'<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:output method=\"text\"/>\r\n	\r\n	<xsl:template match=\"users\">\r\n		<xsl:apply-templates select=\"user\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"user\">\r\n		<xsl:text>\"</xsl:text>\r\n		<xsl:value-of select=\"access_code\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"last_name\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"first_name\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"email\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"status\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"password_max_valid_date\" />\r\n		<xsl:text>\";\"</xsl:text>\r\n		<xsl:value-of select=\"account_max_valid_date\" />\r\n		<xsl:text>\"</xsl:text>\r\n		<xsl:apply-templates select=\"roles\" />\r\n		<xsl:apply-templates select=\"groups\" />\r\n		<xsl:apply-templates select=\"attributes\" />\r\n		<xsl:text>&#10;</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"roles\">\r\n		<xsl:apply-templates select=\"role\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"role\">\r\n		<xsl:text>;\"role:</xsl:text>\r\n		<xsl:value-of select=\"current()\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"groups\">\r\n		<xsl:apply-templates select=\"group\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"group\">\r\n		<xsl:text>;\"group:</xsl:text>\r\n		<xsl:value-of select=\"current()\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"attributes\">\r\n		<xsl:apply-templates select=\"attribute\" />\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"attribute\">\r\n		<xsl:text>;\"</xsl:text>\r\n		<xsl:value-of select=\"attribute-id\" />\r\n		<xsl:text>:</xsl:text>\r\n		<xsl:value-of select=\"attribute-field-id\" />\r\n		<xsl:text>:</xsl:text>\r\n		<xsl:value-of select=\"attribute-value\" />\r\n		<xsl:text>\"</xsl:text>\r\n	</xsl:template>\r\n	\r\n</xsl:stylesheet>'),(128,'<?xml version=\"1.0\" ?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:template match=\"/ | @* | node()\">\r\n		<xsl:copy>\r\n			<xsl:apply-templates select=\"@* | node()\" />\r\n		</xsl:copy>\r\n	</xsl:template>\r\n</xsl:stylesheet>');
/*!40000 ALTER TABLE `core_physical_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_portal_component`
--

DROP TABLE IF EXISTS `core_portal_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_portal_component` (
  `id_portal_component` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_portal_component`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_portal_component`
--

LOCK TABLES `core_portal_component` WRITE;
/*!40000 ALTER TABLE `core_portal_component` DISABLE KEYS */;
INSERT INTO `core_portal_component` VALUES (0,'Rubrique'),(1,'Article'),(2,'Rubrique Liste Article'),(3,'Menu Init'),(4,'Menu Principal'),(5,'Chemin Page'),(6,'Plan du site'),(7,'Arborescence'),(8,'Plan du site admin');
/*!40000 ALTER TABLE `core_portal_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_portlet`
--

DROP TABLE IF EXISTS `core_portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_portlet` (
  `id_portlet` int(11) NOT NULL DEFAULT '0',
  `id_portlet_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_page` int(11) DEFAULT NULL,
  `name` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `portlet_order` int(11) DEFAULT NULL,
  `column_no` int(11) DEFAULT NULL,
  `id_style` int(11) DEFAULT NULL,
  `accept_alias` smallint(6) DEFAULT NULL,
  `date_creation` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `display_portlet_title` int(11) NOT NULL DEFAULT '0',
  `role` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_display_flags` int(11) NOT NULL DEFAULT '15',
  PRIMARY KEY (`id_portlet`),
  KEY `index_portlet` (`id_page`,`id_portlet_type`,`id_style`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_portlet`
--

LOCK TABLES `core_portlet` WRITE;
/*!40000 ALTER TABLE `core_portlet` DISABLE KEYS */;
INSERT INTO `core_portlet` VALUES (85,'CHILDPAGES_PORTLET',5,'Pages filles','2007-11-24 16:15:10',0,1,5,300,0,'2007-11-24 16:14:58',1,NULL,15),(87,'CHILDPAGES_PORTLET',3,'Pages filles','2007-11-24 16:21:01',0,1,5,300,0,'2007-11-24 16:19:50',1,NULL,15),(88,'CHILDPAGES_PORTLET',10,'Pages filles','2007-11-24 16:20:37',0,1,5,301,0,'2007-11-24 16:20:37',1,NULL,15),(89,'CHILDPAGES_PORTLET',9,'Pages filles','2007-11-24 16:23:06',0,1,5,301,0,'2007-11-24 16:21:47',1,NULL,15),(83,'CHILDPAGES_PORTLET',1,'Pages filles','2007-11-24 15:11:33',0,1,5,300,0,'2007-11-24 15:11:33',1,NULL,15),(94,'FORM_PORTLET',11,'Questionnaire','2009-06-16 10:55:48',0,1,1,1500,1,'2009-06-16 10:55:48',1,NULL,15),(1,'HTML_PORTLET',1,'Qu\'est-ce que Lutece ?','2014-06-08 15:53:14',0,2,1,101,0,'2011-03-14 12:13:39',1,'none',273),(2,'HTML_PORTLET',1,'Software overview','2014-06-08 15:58:00',0,1,2,100,0,'2012-09-18 06:35:45',0,'none',273),(3,'HTML_PORTLET',1,'Back Office quick access','2014-06-08 15:49:37',0,1,3,100,0,'2009-05-15 02:38:08',0,'none',273),(4,'HTML_PORTLET',2,'Page 1','2014-06-08 16:28:50',0,1,1,100,0,'2014-06-08 16:27:59',0,'none',273);
/*!40000 ALTER TABLE `core_portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_portlet_alias`
--

DROP TABLE IF EXISTS `core_portlet_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_portlet_alias` (
  `id_portlet` int(11) NOT NULL DEFAULT '0',
  `id_alias` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_portlet`,`id_alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_portlet_alias`
--

LOCK TABLES `core_portlet_alias` WRITE;
/*!40000 ALTER TABLE `core_portlet_alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_portlet_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_portlet_type`
--

DROP TABLE IF EXISTS `core_portlet_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_portlet_type` (
  `id_portlet_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_creation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_docreate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_script` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_specific` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_specific_form` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_domodify` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modify_script` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modify_specific` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modify_specific_form` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_portlet_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_portlet_type`
--

LOCK TABLES `core_portlet_type` WRITE;
/*!40000 ALTER TABLE `core_portlet_type` DISABLE KEYS */;
INSERT INTO `core_portlet_type` VALUES ('ALIAS_PORTLET','portal.site.portletAlias.name','plugins/alias/CreatePortletAlias.jsp','plugins/alias/ModifyPortletAlias.jsp','fr.paris.lutece.portal.business.portlet.AliasPortletHome','alias','plugins/alias/DoCreatePortletAlias.jsp','/admin/portlet/script_create_portlet.html','/admin/portlet/alias/create_portlet_alias.html','','plugins/alias/DoModifyPortletAlias.jsp','/admin/portlet/script_modify_portlet.html','/admin/portlet/alias/modify_portlet_alias.html',''),('APPOINTMENT_FORM_PORTLET','appointment.portlet.appointmentFormPortlet.name','plugins/appointment/CreatePortletAppointmentForm.jsp','plugins/appointment/ModifyPortletAppointmentForm.jsp','fr.paris.lutece.plugins.appointment.business.portlet.AppointmentFormPortletHome','appointment','plugins/appointment/DoCreatePortletAppointmentForm.jsp','/admin/portlet/script_create_portlet.html','/admin/plugins/appointment/portlet/create_portletappointmentform.html','','plugins/appointment/DoModifyPortletAppointmentForm.jsp','/admin/portlet/script_modify_portlet.html','/admin/plugins/appointment/portlet/modify_portletappointmentform.html',''),('APPOINTMENT_FORM_LIST_PORTLET','appointment.portlet.appointmentFormListPortlet.name','plugins/appointment/CreatePortletAppointmentFormList.jsp','plugins/appointment/ModifyPortletAppointmentFormList.jsp','fr.paris.lutece.plugins.appointment.business.portlet.AppointmentFormListPortletHome','appointment','plugins/appointment/DoCreatePortletAppointmentFormList.jsp','/admin/portlet/script_create_portlet.html','/admin/plugins/appointment/portlet/create_portletappointmentformlist.html','','plugins/appointment/DoModifyPortletAppointmentFormList.jsp','/admin/portlet/script_modify_portlet.html','/admin/plugins/appointment/portlet/modify_portletappointmentformlist.html',''),('CHILDPAGES_PORTLET','childpages.portlet.name','plugins/childpages/CreatePortletChildPages.jsp','plugins/childpages/ModifyPortletChildPages.jsp','fr.paris.lutece.plugins.childpages.business.portlet.ChildPagesPortletHome','childpages','plugins/childpages/DoCreatePortletChildPages.jsp','/admin/portlet/script_create_portlet.html','/admin/plugins/childpages/value_id_parent.html','','plugins/childpages/DoModifyPortletChildPages.jsp','/admin/portlet/script_modify_portlet.html','/admin/plugins/childpages/value_id_parent.html',''),('DOCUMENT_LIST_PORTLET','document.portlet.documentListPortlet.name','plugins/document/CreateDocumentListPortlet.jsp','plugins/document/ModifyDocumentListPortlet.jsp','fr.paris.lutece.plugins.document.business.portlet.DocumentListPortletHome','document','plugins/document/DoCreateDocumentListPortlet.jsp','/admin/portlet/script_create_portlet.html','/admin/plugins/document/portlet/document_list_portlet_type.html','','plugins/document/DoModifyDocumentListPortlet.jsp','/admin/portlet/script_modify_portlet.html','/admin/plugins/document/portlet/document_list_portlet_type.html',''),('DOCUMENT_PORTLET','document.portlet.documentPortlet.name','plugins/document/CreateDocumentPortlet.jsp','plugins/document/ModifyDocumentPortlet.jsp','fr.paris.lutece.plugins.document.business.portlet.DocumentPortletHome','document','plugins/document/DoCreateDocumentPortlet.jsp','/admin/portlet/script_create_portlet.html','/admin/plugins/document/portlet/document_portlet_type.html','','plugins/document/DoModifyDocumentPortlet.jsp','/admin/portlet/script_modify_portlet.html','/admin/plugins/document/portlet/document_portlet_type.html',''),('FORM_PORTLET','form.portlet.name','plugins/form/CreateFormPortlet.jsp','plugins/form/ModifyFormPortlet.jsp','fr.paris.lutece.plugins.form.business.portlet.FormPortletHome','form','plugins/form/DoCreateFormPortlet.jsp','','/admin/plugins/form/list_form.html','','plugins/form/DoModifyFormPortlet.jsp','','/admin/plugins/form/list_form.html',''),('HTML_PORTLET','html.portlet.name','plugins/html/CreatePortletHtml.jsp','plugins/html/ModifyPortletHtml.jsp','fr.paris.lutece.plugins.html.business.portlet.HtmlPortletHome','html','plugins/html/DoCreatePortletHtml.jsp','/admin/portlet/script_create_portlet.html','/admin/plugins/html/portlet_html.html','','plugins/html/DoModifyPortletHtml.jsp','/admin/portlet/script_modify_portlet.html','/admin/plugins/html/portlet_html.html',''),('LINK_PAGES_PORTLET','linkpages.portlet.name','plugins/linkpages/CreatePortletLinkPages.jsp','plugins/linkpages/ModifyPortletLinkPages.jsp','fr.paris.lutece.plugins.linkpages.business.portlet.LinkPagesPortletHome','linkpages','plugins/linkpages/DoCreatePortletLinkPages.jsp','/admin/portlet/script_create_portlet.html','','','plugins/linkpages/DoModifyPortletLinkPages.jsp','/admin/portlet/script_modify_portlet.html','','/admin/plugins/linkpages/modify_portlet_linkpages_list.html'),('MYLUTECE_PORTLET','mylutece.portlet.name','plugins/mylutece/CreatePortletMyLutece.jsp','plugins/mylutece/ModifyPortletMyLutece.jsp','fr.paris.lutece.plugins.mylutece.business.portlet.MyLutecePortletHome','mylutece','plugins/mylutece/DoCreatePortletMyLutece.jsp','/admin/portlet/script_create_portlet.html','','','plugins/mylutece/DoModifyPortletMyLutece.jsp','/admin/portlet/script_modify_portlet.html','',''),('APPOINTMENT_PORTLET','appointment.portlet.appointmentAppointmentPortlet.name','plugins/appointment/CreatePortletAppointment.jsp','plugins/appointment/ModifyPortletAppointment.jsp','fr.paris.lutece.plugins.appointment.business.portlet.AppointmentPortletHome','workflow-appointment','plugins/appointment/DoCreatePortletAppointment.jsp','/admin/portlet/script_create_portlet.html','/admin/plugins/appointment/portlet/create_portletappointment.html','','plugins/appointment/DoModifyPortletAppointment.jsp','/admin/portlet/script_modify_portlet.html','/admin/plugins/appointment/portlet/modify_portletappointment.html',''),('CRM_DEMAND_TYPE_PORTLET','crm.portlet.demandType.name','plugins/crm/CreateDemandTypePortlet.jsp','plugins/crm/ModifyDemandTypePortlet.jsp','fr.paris.lutece.plugins.crm.business.portlet.DemandTypePortletHome','crm','jsp/admin/plugins/crm/DoCreateDemandTypePortlet.jsp','','/admin/plugins/crm/portlet/list_category.html','','jsp/admin/plugins/crm/DoModifyDemandTypePortlet.jsp','','/admin/plugins/crm/portlet/list_category.html','');
/*!40000 ALTER TABLE `core_portlet_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_role`
--

DROP TABLE IF EXISTS `core_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_role` (
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `role_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `workgroup_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`role`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_role`
--

LOCK TABLES `core_role` WRITE;
/*!40000 ALTER TABLE `core_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_search_parameter`
--

DROP TABLE IF EXISTS `core_search_parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_search_parameter` (
  `parameter_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parameter_value` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`parameter_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_search_parameter`
--

LOCK TABLES `core_search_parameter` WRITE;
/*!40000 ALTER TABLE `core_search_parameter` DISABLE KEYS */;
INSERT INTO `core_search_parameter` VALUES ('type_filter','none'),('default_operator','OR'),('help_message','Message d aide pour la recherche'),('date_filter','0'),('tag_filter','0'),('taglist',NULL);
/*!40000 ALTER TABLE `core_search_parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_style`
--

DROP TABLE IF EXISTS `core_style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_style` (
  `id_style` int(11) NOT NULL DEFAULT '0',
  `description_style` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_portlet_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_portal_component` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_style`),
  KEY `index_style` (`id_portlet_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_style`
--

LOCK TABLES `core_style` WRITE;
/*!40000 ALTER TABLE `core_style` DISABLE KEYS */;
INSERT INTO `core_style` VALUES (3,'Menu Init','',3),(4,'Main Menu','',4),(5,'Chemin Page','',5),(6,'Plan du site','',6),(7,'Arborescence','',7),(8,'Plan du Site Admin',NULL,8),(300,'Défaut','CHILDPAGES_PORTLET',0),(301,'Image + lien','CHILDPAGES_PORTLET',0),(1012,'Liste des types de demande CRM','CRM_DEMAND_TYPE_PORTLET',0),(1700,'Défaut','DOCUMENT_LIST_PORTLET',0),(1701,'Type Actor','DOCUMENT_LIST_PORTLET',0),(1702,'Type Brève','DOCUMENT_LIST_PORTLET',0),(1703,'Type Article','DOCUMENT_LIST_PORTLET',0),(1704,'Type Image','DOCUMENT_LIST_PORTLET',0),(1705,'Type Video','DOCUMENT_LIST_PORTLET',0),(1706,'Type Pdf','DOCUMENT_LIST_PORTLET',0),(1707,'Type Son','DOCUMENT_LIST_PORTLET',0),(1708,'Type Actor Service','DOCUMENT_LIST_PORTLET',0),(1710,'Type Article Extend','DOCUMENT_LIST_PORTLET',0),(1711,'Type PDF Extend','DOCUMENT_LIST_PORTLET',0),(1730,'Type Actor','DOCUMENT_PORTLET',0),(1731,'Type Brève','DOCUMENT_PORTLET',0),(1732,'Type Article','DOCUMENT_PORTLET',0),(1733,'Type Image','DOCUMENT_PORTLET',0),(1734,'Type Video','DOCUMENT_PORTLET',0),(1735,'Type Pdf','DOCUMENT_PORTLET',0),(1736,'Type Son','DOCUMENT_PORTLET',0),(1737,'Type Flash','DOCUMENT_LIST_PORTLET',0),(1738,'Type Flash','DOCUMENT_PORTLET',0),(1739,'Défaut Download','DOCUMENT_LIST_PORTLET',0),(1500,'Défaut','FORM_PORTLET',0),(100,'Défaut','HTML_PORTLET',0),(101,'Fond coloré','HTML_PORTLET',0),(500,'Défaut','LINK_PAGES_PORTLET',0),(501,'Image','LINK_PAGES_PORTLET',0),(200,'Défaut','MYLUTECE_PORTLET',0);
/*!40000 ALTER TABLE `core_style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_style_mode_stylesheet`
--

DROP TABLE IF EXISTS `core_style_mode_stylesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_style_mode_stylesheet` (
  `id_style` int(11) NOT NULL DEFAULT '0',
  `id_mode` int(11) NOT NULL DEFAULT '0',
  `id_stylesheet` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_style`,`id_mode`,`id_stylesheet`),
  KEY `index_style_mode_stylesheet` (`id_stylesheet`,`id_mode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_style_mode_stylesheet`
--

LOCK TABLES `core_style_mode_stylesheet` WRITE;
/*!40000 ALTER TABLE `core_style_mode_stylesheet` DISABLE KEYS */;
INSERT INTO `core_style_mode_stylesheet` VALUES (3,0,211),(4,0,213),(5,0,215),(6,0,217),(7,0,253),(8,1,279),(100,0,10),(101,0,285),(200,0,310),(300,0,30),(301,0,9006),(500,0,312),(501,0,313),(1012,0,809),(1500,0,1500),(1500,0,9007),(1700,0,298),(1701,0,297),(1702,0,299),(1703,0,300),(1704,0,304),(1705,0,9004),(1706,0,302),(1707,0,301),(1708,0,305),(1710,0,305),(1711,0,306),(1720,0,402),(1730,0,403),(1731,0,504),(1732,0,505),(1733,0,506),(1734,0,507),(1735,0,408),(1736,0,409),(1737,0,508),(1738,0,509),(1739,0,510);
/*!40000 ALTER TABLE `core_style_mode_stylesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_stylesheet`
--

DROP TABLE IF EXISTS `core_stylesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_stylesheet` (
  `id_stylesheet` int(11) NOT NULL DEFAULT '0',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` mediumblob,
  PRIMARY KEY (`id_stylesheet`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_stylesheet`
--

LOCK TABLES `core_stylesheet` WRITE;
/*!40000 ALTER TABLE `core_stylesheet` DISABLE KEYS */;
INSERT INTO `core_stylesheet` VALUES (253,'Pages filles - Arborescence','menu_tree.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n\r\n<xsl:template match=\"menu-list\">\r\n	<xsl:variable name=\"menu-list\" select=\"menu\" />\r\n\r\n	<script type=\"text/javascript\">\r\n		$(document).ready(function(){\r\n			$(\"#tree\").treeview({\r\n				animated: \"fast\",\r\n				collapsed: false,\r\n				unique: true,\r\n				persist: \"cookie\"\r\n			});\r\n		\r\n		});\r\n	</script>    \r\n	\r\n	<!-- Menu Tree -->      \r\n	<xsl:if test=\"not(string(menu)=\'\')\">\r\n	    <xsl:text disable-output-escaping=\"yes\">		    \r\n            <div class=\"tree4\">		\r\n			<h2>&#160;</h2>\r\n			<ul id=\"tree\" class=\"tree4\">\r\n                <xsl:apply-templates select=\"menu\" />        \r\n			</ul>	\r\n			</div>\r\n		 	 <br />\r\n		</xsl:text> \r\n	</xsl:if>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"menu\">\r\n    <xsl:variable name=\"index\">\r\n    	<xsl:number level=\"single\" value=\"position()\" />\r\n    </xsl:variable>\r\n		<li>\r\n    <!--<xsl:if test=\"$index &lt; 7\">-->        \r\n          <a href=\"{$site-path}?page_id={page-id}\" target=\"_top\" >\r\n               <xsl:value-of select=\"page-name\" />\r\n           </a>	   \r\n		   <br />\r\n		   <xsl:value-of select=\"page-description\" />\r\n		   <!--<xsl:value-of select=\"page-description\" /><br />-->		   			\r\n			<xsl:apply-templates select=\"sublevel-menu-list\" /> \r\n			\r\n		</li> 	\r\n    <!--</xsl:if>-->\r\n		\r\n</xsl:template>\r\n\r\n<xsl:template match=\"sublevel-menu-list\" > \r\n	\r\n	<xsl:apply-templates select=\"sublevel-menu\" /> 	    	\r\n\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"sublevel-menu\">\r\n   <xsl:variable name=\"index_sous_menu\">\r\n         <xsl:number level=\"single\" value=\"position()\" />\r\n   </xsl:variable>\r\n		 <ul >\r\n			<li>\r\n<!--	<span> -->\r\n				<a href=\"{$site-path}?page_id={page-id}\" target=\"_top\">\r\n					<xsl:value-of select=\"page-name\" />\r\n				</a>\r\n			</li>			\r\n		</ul>\r\n	<!--</span>	-->\r\n		\r\n   \r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n'),(215,'Chemin page','page_path.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n\r\n\r\n<xsl:template match=\"page\">\r\n		<xsl:if test=\"position()!=last()-1\">\r\n			<a href=\"{$site-path}?page_id={page-id}\" target=\"_top\"><xsl:value-of select=\"page-name\" /></a> >\r\n		</xsl:if>\r\n		<xsl:if test=\"position()=last()-1\">\r\n			<xsl:value-of select=\"page-name\" />\r\n		</xsl:if>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"page_link\">\r\n		<xsl:if test=\"position()!=last()-1\">\r\n			<a href=\"{$site-path}?{page-url}\" target=\"_top\"><xsl:value-of select=\"page-name\" /></a> >\r\n		</xsl:if>\r\n		<xsl:if test=\"position()=last()-1\">\r\n			<xsl:value-of select=\"page-name\" />\r\n		</xsl:if>\r\n</xsl:template>\r\n\r\n\r\n</xsl:stylesheet>'),(213,'Menu principal','menu_main.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\"\r\n	xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n	<xsl:param name=\"site-path\" select=\"site-path\" />\r\n\r\n	<xsl:template match=\"menu-list\">\r\n		<xsl:apply-templates select=\"menu\" />\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"menu\">\r\n		<li>\r\n			<a href=\"{$site-path}?page_id={page-id}\" class=\"first-level\" target=\"_top\">\r\n					<xsl:value-of select=\"page-name\" />\r\n			</a>\r\n		</li>\r\n	</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n\r\n'),(211,'Menu Init','menu_init.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n\r\n<xsl:template match=\"menu-list\">\r\n<br /><br />\r\n	<div id=\"menu-init\">\r\n		<div id=\"menu-init-content\">\r\n            <ul id=\"menu-verti\">\r\n                <xsl:apply-templates select=\"menu\" />\r\n            </ul>\r\n        </div>\r\n     </div>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"menu\">\r\n    <xsl:variable name=\"index\">\r\n    	<xsl:number level=\"single\" value=\"position()\" />\r\n    </xsl:variable>\r\n\r\n    <xsl:if test=\"$index &gt; 7\">\r\n        <li class=\"first-verti\">\r\n        	<a href=\"{$site-path}?page_id={page-id}\" target=\"_top\">\r\n          		<xsl:value-of select=\"page-name\" />\r\n	        </a>\r\n    	    <xsl:apply-templates select=\"sublevel-menu-list\" />\r\n        </li>\r\n   </xsl:if>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"sublevel-menu-list\" >\r\n	<ul>\r\n    	<li class=\"last-verti\">\r\n		 	<xsl:apply-templates select=\"sublevel-menu\" />\r\n 	    </li>\r\n    </ul>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"sublevel-menu\">\r\n   <xsl:variable name=\"index_sous_menu\">\r\n         <xsl:number level=\"single\" value=\"position()\" />\r\n   </xsl:variable>\r\n\r\n   <a href=\"{$site-path}?page_id={page-id}\" target=\"_top\">\r\n		<span><xsl:value-of select=\"page-name\" /></span>\r\n   </a>\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n'),(217,'Plan du site','site_map.xsl','<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n\r\n\r\n<xsl:template match=\"page[page-level=0]\">\r\n	<div class=\"span-15 prepend-1 append-1 append-bottom\">\r\n		<div class=\"portlet -lutece-border-radius\">\r\n			<xsl:apply-templates select=\"child-pages-list\" />\r\n		</div>\r\n	</div>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"page[page-level=1]\" >\r\n<ul class=\"site-map-level-one\">\r\n	<li>\r\n		<a href=\"{$site-path}?page_id={page-id}\" target=\"_top\">\r\n			<xsl:value-of select=\"page-name\" />\r\n		</a>\r\n		<xsl:apply-templates select=\"page-description\" />\r\n		<xsl:apply-templates select=\"page-image\" />\r\n		<xsl:apply-templates select=\"child-pages-list\" />\r\n	    <xsl:text disable-output-escaping=\"yes\">\r\n		    <![CDATA[<div class=\"clear\">&#160;</div>]]>\r\n	    </xsl:text>\r\n	</li>\r\n</ul>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"page[page-level=2]\" >\r\n<ul class=\"site-map-level-two\">\r\n	<li>\r\n		<a href=\"{$site-path}?page_id={page-id}\" target=\"_top\">\r\n			<xsl:value-of select=\"page-name\" />\r\n		</a>\r\n		<xsl:apply-templates select=\"page-description\" />\r\n		<xsl:apply-templates select=\"child-pages-list\" />\r\n	</li>\r\n</ul>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"page[page-level>2]\" >\r\n<ul class=\"site-map-level-highest\">\r\n	<li>\r\n		<a href=\"{$site-path}?page_id={page-id}\" target=\"_top\">\r\n			<xsl:value-of select=\"page-name\" />\r\n		</a>\r\n		<xsl:apply-templates select=\"page-description\" />\r\n		<xsl:apply-templates select=\"child-pages-list\" />\r\n	</li>\r\n</ul>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"page-description\">\r\n	<br /><xsl:value-of select=\".\" />\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"child-pages-list[page-level=0]\">\r\n	<xsl:if test=\"count(page)>0\" >\r\n		<xsl:apply-templates select=\"page\" />\r\n    </xsl:if>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"child-pages-list[page-level=1]\">\r\n	<xsl:if test=\"count(page)>0\" >\r\n		<xsl:apply-templates select=\"page\" />\r\n    </xsl:if>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"child-pages-list[page-level=2]\">\r\n	<xsl:if test=\"count(page)>0\" >\r\n		<xsl:apply-templates select=\"page\" />\r\n    </xsl:if>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"child-pages-list[page-level>2]\">\r\n	<xsl:if test=\"count(page)>0\" >\r\n		<xsl:apply-templates select=\"page\" />\r\n    </xsl:if>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"page-image\">\r\n	<div class=\"level-one-image\">\r\n    	<div class=\"polaroid\">\r\n		<img  border=\"0\" width=\"80\" height=\"80\" src=\"images/local/data/pages/{.}\" alt=\"\" />\r\n         </div>\r\n	</div >\r\n</xsl:template>\r\n\r\n\r\n</xsl:stylesheet>\r\n'),(279,'Plan du Site module d\'Administration','admin_site_map_admin.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n<xsl:variable name=\"current-page-id\" select=\"current-page-id\" />\r\n\r\n<xsl:template match=\"page[page-level=0]\"> \r\n	<div id=\"tree\" class=\"jstree-default\">\r\n		<a href=\"{$site-path}?page_id={page-id}\" title=\"{page-description}\" >\r\n			<xsl:value-of select=\"page-name\" />\r\n			<xsl:if test=\"not(string(page-role)=\'none\')\"> \r\n				<strong><xsl:text disable-output-escaping=\"yes\">- #i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text>\r\n				<xsl:value-of select=\"page-role\" /></strong>\r\n			</xsl:if>            \r\n		</a>\r\n		<ul>\r\n			<xsl:apply-templates select=\"child-pages-list\" />\r\n		</ul>\r\n	</div>\r\n</xsl:template>\r\n    \r\n<xsl:template match=\"page[page-level>0]\" >\r\n	<xsl:variable name=\"index\" select=\"page-id\" />\r\n	<xsl:variable name=\"description\" select=\"page-description\" />\r\n	\r\n	<li id=\"node-{$index}\">\r\n		<a href=\"{$site-path}?page_id={page-id}\" title=\"{$description}\">\r\n		<xsl:value-of select=\"page-name\" />\r\n			<xsl:if test=\"not(string(page-role)=\'none\')\">\r\n				<strong>\r\n				  <xsl:text disable-output-escaping=\"yes\">#i18n{portal.site.admin_page.tabAdminMapRoleReserved}</xsl:text><xsl:value-of select=\"page-role\" />\r\n				</strong>\r\n			</xsl:if>\r\n		</a>\r\n		<xsl:choose>\r\n			<xsl:when test=\"count(child-pages-list/*)>0\">\r\n				<ul>\r\n				   <xsl:apply-templates select=\"child-pages-list\" />\r\n				</ul>\r\n			</xsl:when>\r\n		   <xsl:otherwise>\r\n				<xsl:apply-templates select=\"child-pages-list\" />\r\n		   </xsl:otherwise>\r\n		</xsl:choose>\r\n	</li>\r\n</xsl:template>\r\n    \r\n<xsl:template match=\"child-pages-list\">\r\n	<xsl:apply-templates select=\"page\" />\r\n</xsl:template>\r\n    \r\n</xsl:stylesheet>\r\n'),(30,'Rubrique Pages filles - Défaut','portlet_childpages_simple.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n\r\n<xsl:template match=\"portlet\">\r\n\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n	\r\n	<div class=\"portlet {$device_class}\">\r\n        <xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n			<div class=\"portlet-header -top\">\r\n				<xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n			</div>\r\n        </xsl:if>\r\n		<xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n			<div>\r\n				<xsl:apply-templates select=\"child-pages-portlet\" />\r\n			</div>\r\n        </xsl:if>\r\n		<xsl:if test=\"string(display-portlet-title)=\'1\'\">\r\n			<div class=\"portlet-content\">\r\n				<xsl:apply-templates select=\"child-pages-portlet\" />\r\n			</div>\r\n        </xsl:if>\r\n	</div>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"child-pages-portlet\">\r\n	<ul>\r\n	    <xsl:apply-templates select=\"child-page\" />\r\n	</ul>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"child-page\">\r\n	<li>\r\n		<a href=\"{$site-path}?page_id={child-page-id}\" target=\"_top\">\r\n			<b><xsl:value-of select=\"child-page-name\" /></b>\r\n		</a><br/>\r\n		<xsl:value-of select=\"child-page-description\" /><br/>\r\n	</li>\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>'),(9006,'Rubrique Liste de pages filles - Image','portlet_childpages_image.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n\r\n<xsl:template match=\"portlet\">\r\n\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n	<div class=\"portlet {$device_class}\">\r\n		<xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n			<h3>\r\n				<xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n			</h3>\r\n		</xsl:if>\r\n		<xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n			<xsl:apply-templates select=\"child-pages-portlet\" />\r\n			<xsl:text disable-output-escaping=\"yes\">\r\n					<![CDATA[<div class=\"clearfix\">&#160;</div>]]>\r\n				</xsl:text>\r\n		</xsl:if>\r\n		<xsl:if test=\"string(display-portlet-title)=\'1\'\">\r\n				<xsl:apply-templates select=\"child-pages-portlet\" />\r\n				<xsl:text disable-output-escaping=\"yes\">\r\n					<![CDATA[<div class=\"clearfix\">&#160;</div>]]>\r\n				</xsl:text>\r\n		</xsl:if>\r\n	</div>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"child-pages-portlet\">\r\n	<ul class=\"unstyled\">\r\n		<xsl:apply-templates select=\"child-page\" />\r\n	</ul>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"child-page\">\r\n	<li>\r\n 		<a href=\"{$site-path}?page_id={child-page-id}\" target=\"_top\">\r\n		<xsl:apply-templates select=\"child-page-image\" />\r\n			<strong><xsl:value-of select=\"child-page-name\" /></strong>\r\n		</a>\r\n		<br />\r\n		<xsl:value-of select=\"child-page-description\" />\r\n	</li>\r\n</xsl:template>\r\n\r\n\r\n<!-- Format image polaroid -->\r\n<xsl:template match=\"child-page-image\">\r\n    <div class=\"img-polaroid span3\">\r\n       <img src=\"{.}\" alt=\"{../child-page-name}\" />\r\n    </div>\r\n</xsl:template>\r\n\r\n\r\n</xsl:stylesheet>'),(809,'Rubrique Type de Demande CRM','portlet_demand_type.xsl','<?xml version=\"1.0\"?>\r\n	<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n		<xsl:param  name=\"i18n-label-demand-types-list\" select=\"\'Liste des demandes par catégorie\'\" />\r\n		<xsl:param name=\"i18n-label-crm-info\" />\r\n		<xsl:param name=\"i18n-label-crm-contact\" />\r\n		<xsl:param name=\"i18n-label-crm-date-begin\" />\r\n		<xsl:param name=\"i18n-label-crm-date-end\" />\r\n		<xsl:output method=\"html\" indent=\"yes\"/>\r\n		<xsl:template match=\"portlet\">\r\n			<div class=\"portlet -lutece-border-radius append-bottom\">\r\n				<xsl:apply-templates select=\"crm-demand-type-portlet\" />\r\n			</div>\r\n		</xsl:template>\r\n		\r\n		<xsl:template match=\"crm-demand-type-portlet\">\r\n			<xsl:apply-templates select=\"crm-demand-type-portlet-content\" />\r\n		</xsl:template>\r\n	\r\n		<xsl:template match=\"crm-demand-type-portlet-content\">\r\n			<div class=\"portlet\">\r\n				<div class=\"well\">\r\n					<div class=\"row-fluid\">\r\n						<xsl:apply-templates select=\"crm-demand-type-category-list/category\"/>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</xsl:template>\r\n	\r\n		<xsl:template match=\"category\">\r\n			<fieldset>\r\n				<legend>\r\n					<xsl:if test=\"category-name!=\'\'\">\r\n						<xsl:value-of select=\"category-name\" />\r\n					</xsl:if>\r\n				</legend>		\r\n				<ul>\r\n					<xsl:apply-templates select=\"demand-type-list/demand-type\"/>\r\n				</ul>\r\n			</fieldset>\r\n		</xsl:template>\r\n	\r\n		<xsl:template match=\"demand-type\">\r\n			<li>												\r\n				<a href=\"jsp/site/plugins/crm/DoOpenDemandType.jsp?id_demand_type={demand-type-id}\" target=\"{demand-type-target}\">\r\n					<xsl:value-of select=\"demand-type-label\" />\r\n				</a>\r\n				<xsl:if test=\"demand-type-url-info!=\'\'\">\r\n					<br/>\r\n					<em>\r\n						<a href=\"{demand-type-url-info}\">\r\n							<xsl:value-of select=\"$i18n-label-crm-info\" />\r\n						</a>\r\n					</em>\r\n				</xsl:if>\r\n				<xsl:if test=\"demand-type-url-contact!=\'\'\">\r\n					<br />\r\n					<em>\r\n						<a href=\"{demand-type-url-contact}\">\r\n							<xsl:value-of select=\"$i18n-label-crm-contact\" />\r\n						</a>\r\n					</em>\r\n				</xsl:if>\r\n				<xsl:if test=\"demand-type-date-begin!=\'\'\">\r\n					<br />\r\n					<xsl:value-of select=\"$i18n-label-crm-date-begin\" />: <xsl:value-of select=\"demand-type-date-begin\" />\r\n				</xsl:if>\r\n				<xsl:if test=\"demand-type-date-end!=\'\'\">\r\n					<br />\r\n					<xsl:value-of select=\"$i18n-label-crm-date-end\" /> : <xsl:value-of select=\"demand-type-date-end\" />\r\n				</xsl:if>\r\n			</li>		\r\n		</xsl:template>\r\n</xsl:stylesheet>'),(297,'Rubrique Liste de Documents - Type Acteur','portlet_document_actor_list.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n<xsl:template match=\"portlet\">\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hide-for-small</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n	<div class=\"portlet-background-colored  {$device_class} append-bottom\" >\r\n        <xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n			<h3 class=\"portlet-background-colored-header -lutece-border-radius-top\">\r\n				<xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n			</h3>\r\n        </xsl:if>\r\n		<div class=\"portlet-background-content -lutece-border-radius-bottom\" >\r\n		     <ul>        \r\n                 <xsl:apply-templates select=\"document-list-portlet/document\" />	\r\n            </ul>  \r\n		</div>            	\r\n	</div>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"document\">      \r\n    <li style=\"list-style:none;\"> \r\n        <xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n             <table width=\"90%\" summary=\"document\"> \r\n                 <tr>\r\n                     <td  width=\"65%\">   \r\n                         <a href=\"{$site-path}?document_id={document-id}&#38;portlet_id={$portlet-id}\" target=\"_top\">      \r\n                             <xsl:value-of disable-output-escaping=\"yes\" select=\"document-xml-content/actor/actor-firstname\" />&#160;<xsl:value-of disable-output-escaping=\"yes\" select=\"document-xml-content/actor/actor-lastname\" />\r\n\r\n                         </a>\r\n						<xsl:if test=\"(string(resource-is-votable)=\'1\')\">\r\n							<br />\r\n				        	<xsl:variable name=\"resource-score\" select=\"resource-score\" />\r\n	        				<img src=\"images/local/skin/plugins/rating/stars_{$resource-score}.png\" alt=\"Score\" title=\"Score\" />\r\n				        </xsl:if>   \r\n                         <xsl:if test=\"(string(is-download-stat)=\'1\')\">\r\n							<br />\r\n							#i18n{rating.resource_vote.labelDownloadCount} : <xsl:value-of select=\"resource-download-stat\" />\r\n						 </xsl:if>\r\n                    </td>\r\n                    <td  width=\"35%\">\r\n                        <xsl:apply-templates select=\"document-xml-content/actor/actor-photo/file-resource\" />\r\n                   </td>\r\n                </tr>    \r\n            </table> \r\n        </xsl:if>\r\n    </li>        \r\n</xsl:template>              \r\n	\r\n\r\n<xsl:template match=\"file-resource\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"(resource-content-type=\'image/jpeg\' or resource-content-type=\'image/jpg\' or  resource-content-type=\'image/pjpeg\' or resource-content-type=\'image/gif\' or resource-content-type=\'image/png\')\" >\r\n			<img src=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\" alt=\"\" align=\"right\" width=\"40\" height=\"40\"/>\r\n		</xsl:when>\r\n		<xsl:otherwise>\r\n             <a href=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\"> \r\n			   <img src=\"images/local/skin/plugins/document/filetypes/file.png\" border=\"0\" alt=\"\" align=\"right\" width=\"40\" height=\"40\"/>\r\n             </a>\r\n		</xsl:otherwise>        \r\n	</xsl:choose>\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n'),(298,'Rubrique Liste de Documents - Défaut','portlet_document_list.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n    \r\n<xsl:template match=\"portlet\">\r\n\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n    <div class=\"portlet  {$device_class}\">\r\n        <xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n            <h3>\r\n                <xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n            </h3>\r\n        </xsl:if>\r\n		<div>\r\n            <xsl:apply-templates select=\"document-list-portlet\" />\r\n		</div>\r\n    </div>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"document-list-portlet\">\r\n    <ul>\r\n        <xsl:apply-templates select=\"document\" />\r\n    </ul>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"document\">\r\n    <li>\r\n        <a href=\"{$site-path}?document_id={document-id}&#38;portlet_id={$portlet-id}\" target=\"_top\">\r\n            <xsl:for-each select=\"descendant::*\">\r\n                <xsl:value-of select=\"document-title\" />\r\n           </xsl:for-each>\r\n		</a>          \r\n		<xsl:if test=\"(string(resource-is-votable)=\'1\')\">\r\n			<br />\r\n        	<xsl:variable name=\"resource-score\" select=\"resource-score\" />\r\n	        <img src=\"images/local/skin/plugins/rating/stars_{$resource-score}.png\" alt=\"Score\" title=\"Score\" />\r\n        </xsl:if>   \r\n           <br />\r\n            <xsl:for-each select=\"descendant::*\">\r\n                <xsl:value-of select=\"document-summary\" />\r\n            </xsl:for-each>\r\n            <br />\r\n            <xsl:if test=\"(string(document-is-commentable)=\'1\')\">\r\n                <img src=\"images/local/skin/plugins/document/nb_comments.png\" alt=\"Nombre de commentaires\" title=\"Nombre de commentaires\" align=\"middle\"/>&#160;<xsl:value-of select=\"document-comment-nb\" />      \r\n            </xsl:if>   \r\n    </li>\r\n</xsl:template>\r\n\r\n\r\n</xsl:stylesheet>\r\n\r\n'),(299,'Rubrique Liste de Documents - Type Brève','portlet_document_shortarticle_list.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\"\r\n	xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n	<xsl:param name=\"site-path\" select=\"site-path\" />\r\n	<xsl:param name=\"page-id\" select=\"page-id\" />\r\n	<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n	<xsl:template match=\"portlet\">\r\n	\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n	\r\n		<div class=\"portlet {$device_class}\">\r\n			<xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h3 id=\"article_{$portlet-id}\">\r\n					<xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n				</h3>\r\n				<br />\r\n			</xsl:if>\r\n			<xsl:apply-templates select=\"document-list-portlet/document\" />\r\n			<xsl:text disable-output-escaping=\"yes\">\r\n				<![CDATA[<div class=\"clear\">&#160;</div>]]>\r\n			</xsl:text>\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"document\">\r\n		<xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n			<div class=\"span6\">\r\n				<a\r\n					href=\"{$site-path}?document_id={document-id}&#38;portlet_id={$portlet-id}\"\r\n					target=\"_top\">\r\n					<xsl:for-each select=\"descendant::*\">\r\n						<xsl:value-of select=\"document-title\" />\r\n					</xsl:for-each>\r\n				</a>\r\n				<xsl:if test=\"(string(resource-is-votable)=\'1\')\">\r\n					<br />\r\n		        	<xsl:variable name=\"resource-score\" select=\"resource-score\" />\r\n	        		<img src=\"images/local/skin/plugins/rating/stars_{$resource-score}.png\" alt=\"Score\" title=\"Score\" />\r\n		        </xsl:if>   \r\n				<xsl:if test=\"(string(is-download-stat)=\'1\')\">\r\n					<br />\r\n					#i18n{rating.resource_vote.labelDownloadCount} : <xsl:value-of select=\"resource-download-stat\" />\r\n				</xsl:if>\r\n				<br />\r\n				<xsl:for-each select=\"descendant::*\">\r\n					<xsl:value-of select=\"document-summary\" />\r\n				</xsl:for-each>\r\n			</div>\r\n		</xsl:if>\r\n	</xsl:template>\r\n	\r\n</xsl:stylesheet>\r\n'),(300,'Rubrique Liste de Documents - Type Article','portlet_document_article_list.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\"\r\n	xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n	<xsl:param name=\"site-path\" select=\"site-path\" />\r\n	<xsl:param name=\"target\" select=\"target\" />\r\n	<xsl:param name=\"page-id\" select=\"page-id\" />\r\n	<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n	<xsl:template match=\"portlet\">\r\n		<xsl:variable name=\"device_class\">\r\n		<xsl:choose>\r\n			<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n			<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n			<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n			<xsl:otherwise></xsl:otherwise>\r\n		</xsl:choose>\r\n		</xsl:variable>\r\n	\r\n		<div class=\"portlet {$device_class}\">\r\n			<xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h3 id=\"article_{$portlet-id}\"><xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" /></h3>\r\n			</xsl:if>\r\n			<xsl:apply-templates select=\"document-list-portlet/document\" />\r\n			<xsl:text disable-output-escaping=\"yes\">\r\n				<![CDATA[<div class=\"clearfix\">&#160;</div>]]>\r\n			</xsl:text>\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"document\">\r\n		<xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n			<div class=\"span6\">\r\n				<a href=\"{$site-path}?document_id={document-id}&#38;portlet_id={$portlet-id} {$target}\">\r\n					<xsl:for-each select=\"descendant::*\">\r\n						<xsl:value-of select=\"document-title\" />\r\n					</xsl:for-each>\r\n				</a>\r\n				<xsl:if test=\"(string(resource-is-votable)=\'1\')\">\r\n					<br />\r\n	        		<xsl:variable name=\"resource-score\" select=\"resource-score\" />\r\n	        		<img src=\"images/local/skin/plugins/rating/stars_{$resource-score}.png\" alt=\"Score\" title=\"Score\" />\r\n		        </xsl:if>   \r\n				<xsl:if test=\"(string(is-download-stat)=\'1\')\">\r\n					<br />\r\n					#i18n{rating.resource_vote.labelDownloadCount} : <xsl:value-of select=\"resource-download-stat\" />\r\n				</xsl:if>\r\n				<br />\r\n				<xsl:for-each select=\"descendant::*\">\r\n					<xsl:value-of select=\"document-summary\" />\r\n				</xsl:for-each>\r\n			</div>\r\n		</xsl:if>\r\n	</xsl:template>\r\n	\r\n</xsl:stylesheet>\r\n'),(301,'Rubrique Liste de Documents - Type Son','portlet_document_sound_list.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n<xsl:template match=\"portlet\">\r\n\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n	<div class=\"portlet {$device_class}\">\r\n        <xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n			<h3><xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" /></h3>\r\n        </xsl:if>\r\n		<ul>\r\n     	    <xsl:apply-templates select=\"document-list-portlet/document\" />\r\n     	</ul>  \r\n	</div>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"document\">      \r\n<xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n    <li>\r\n        <a href=\"{$site-path}?document_id={document-id}&amp;portlet_id={$portlet-id}\" target=\"_top\">      \r\n             <xsl:value-of select=\"document-xml-content/sound/sound-title\" />   \r\n       </a>\r\n       	<xsl:if test=\"(string(resource-is-votable)=\'1\')\">\r\n			<br />\r\n        	<xsl:variable name=\"resource-score\" select=\"resource-score\" />\r\n	        <img src=\"images/local/skin/plugins/rating/stars_{$resource-score}.png\" alt=\"Score\" title=\"Score\" />\r\n        </xsl:if>   \r\n		<xsl:if test=\"(string(is-download-stat)=\'1\')\">\r\n			<br />\r\n			#i18n{rating.resource_vote.labelDownloadCount} : <xsl:value-of select=\"resource-download-stat\" />\r\n		</xsl:if>\r\n       <br />\r\n          <xsl:value-of select=\"document-xml-content/sound/sound-file\" />\r\n       <br />\r\n          <xsl:value-of select=\"document-xml-content/sound/sound-author\" />\r\n   </li>       \r\n</xsl:if>\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n\r\n\r\n'),(304,'Rubrique Liste de Documents - Type Image','portlet_document_image_list.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n<xsl:template match=\"portlet\">\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n	<div class=\"portlet {$device_class}\">\r\n        <xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n			<h3>\r\n				<xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n			</h3>\r\n        </xsl:if>\r\n		<div>\r\n		     <ul class=\"unstyled\">        \r\n                 <xsl:apply-templates select=\"document-list-portlet/document\" />	\r\n            </ul>  \r\n		</div>            	\r\n	</div>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"document\">      \r\n    <li> \r\n        <xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n            <a href=\"{$site-path}?document_id={document-id}&#38;portlet_id={$portlet-id}\" target=\"_top\">      \r\n                <xsl:apply-templates select=\"document-xml-content/image/image-file/file-resource\" />\r\n            </a>\r\n            <xsl:if test=\"(string(resource-is-votable)=\'1\')\">\r\n				<br />\r\n	        	<xsl:variable name=\"resource-score\" select=\"resource-score\" />\r\n	        	<img src=\"images/local/skin/plugins/rating/stars_{$resource-score}.png\" alt=\"Score\" title=\"Score\" />\r\n        	</xsl:if>   \r\n            <xsl:if test=\"(string(is-download-stat)=\'1\')\">\r\n				<br />\r\n				#i18n{rating.resource_vote.labelDownloadCount} : <xsl:value-of select=\"resource-download-stat\" />\r\n			</xsl:if>\r\n            <br />           \r\n                <xsl:value-of disable-output-escaping=\"yes\" select=\"document-xml-content/image/image-description\" />\r\n            <br />\r\n                <xsl:value-of disable-output-escaping=\"yes\" select=\"document-xml-content/image/image-credits\" />\r\n            <br />\r\n        </xsl:if>\r\n    </li>        \r\n</xsl:template>              \r\n	\r\n\r\n<xsl:template match=\"file-resource\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"(resource-content-type=\'image/jpeg\' or resource-content-type=\'image/jpg\' or  resource-content-type=\'image/pjpeg\' or resource-content-type=\'image/gif\' or resource-content-type=\'image/png\')\">\r\n			<img src=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\" alt=\"\" class=\"img-rounded\" width=\"120\" height=\"120\"/>\r\n		</xsl:when>\r\n		<xsl:otherwise>\r\n             <a href=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\"> \r\n			   <img src=\"images/admin/skin/plugins/document/filetypes/file.png\" class=\"img-rounded\" alt=\"\" width=\"120\" height=\"120\"/>\r\n             </a>\r\n		</xsl:otherwise>        \r\n	</xsl:choose>\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n'),(305,'Rubrique Liste de Documents - Type Article Extend','portlet_document_article_list_extend.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\"\r\n	xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n	<xsl:param name=\"site-path\" select=\"site-path\" />\r\n	<xsl:param name=\"target\" select=\"target\" />\r\n	<xsl:param name=\"page-id\" select=\"page-id\" />\r\n	<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n	<xsl:template match=\"portlet\">\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hide-for-small</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n	\r\n		<div class=\"portlet  {$device_class} -lutece-border-radius append-bottom\">\r\n			<xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h3 id=\"article_{$portlet-id}\">\r\n					<xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n				</h3><br />\r\n			</xsl:if>\r\n			<xsl:apply-templates select=\"document-list-portlet/document\" />\r\n			<xsl:text disable-output-escaping=\"yes\">\r\n				<![CDATA[<div class=\"clear\">&#160;</div>]]>\r\n			</xsl:text>\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"document\">\r\n		<xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n			<div class=\"span-6 portlet -lutece-border-radius append-bottom\">\r\n				<a\r\n					href=\"{$site-path}?document_id={document-id}&#38;portlet_id={$portlet-id} {$target}\">\r\n					<xsl:for-each select=\"descendant::*\">\r\n						<xsl:value-of select=\"document-title\" />\r\n					</xsl:for-each>\r\n				</a>\r\n                <br />\r\n                <xsl:for-each select=\"descendant::*\">\r\n                    <xsl:value-of select=\"document-summary\" />\r\n                </xsl:for-each>\r\n				<xsl:if test=\"document-rating\">\r\n					<br />\r\n	        		<img src=\"images/local/skin/plugins/extend/modules/rating/stars_{document-rating}.png\" alt=\"Score\" title=\"Score\" />\r\n	        		(<xsl:value-of select=\"document-number-rating\" />)\r\n		        </xsl:if>   \r\n                <xsl:if test=\"document-number-comment\">\r\n                    <br />\r\n                    <xsl:value-of select=\"document-number-comment\" /> commentaires\r\n                </xsl:if>   \r\n				<xsl:if test=\"document-number-hits\">\r\n					<br />\r\n                    <xsl:value-of select=\"document-number-hits\" /> vues\r\n				</xsl:if>\r\n			</div>\r\n		</xsl:if>\r\n	</xsl:template>\r\n	\r\n</xsl:stylesheet>\r\n'),(306,'Rubrique Liste de Documents - Type PDF Extend','portlet_document_pdf_list_extend.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n<xsl:template match=\"portlet\">\r\n\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hide-for-small</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n	<div class=\"portlet-background-colored {$device_class} append-bottom\" >\r\n        <xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n			<h3 class=\"portlet-background-colored-header -lutece-border-radius-top\">\r\n				<xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n			</h3>\r\n        </xsl:if>\r\n		<div class=\"portlet-background-content -lutece-border-radius-bottom\" >\r\n		     <ul>\r\n         	       <xsl:apply-templates select=\"document-list-portlet/document\" />\r\n             </ul>  \r\n		</div>\r\n	</div>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"document\">      \r\n<xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n    <li>\r\n        <a href=\"document?id={document-id}&amp;id_attribute=48\" target=\"_blank\">      \r\n        	<xsl:for-each select=\"descendant::*\">\r\n                <xsl:apply-templates select=\"file-resource\" />\r\n           </xsl:for-each>  \r\n          	<xsl:for-each select=\"descendant::*\">\r\n                <xsl:value-of select=\"document-title\" />\r\n           </xsl:for-each>  \r\n        </a>\r\n        <br />\r\n        <xsl:for-each select=\"descendant::*\">\r\n            <xsl:value-of select=\"document-summary\" />\r\n        </xsl:for-each>\r\n                <xsl:if test=\"document-rating\">\r\n                    <br />\r\n                    <img src=\"images/local/skin/plugins/extend/modules/rating/stars_{document-rating}.png\" alt=\"Score\" title=\"Score\" />\r\n                    (<xsl:value-of select=\"document-number-rating\" />)\r\n                </xsl:if>   \r\n                <xsl:if test=\"document-number-comment\">\r\n                    <br />\r\n                    <xsl:value-of select=\"document-number-comment\" /> commentaires\r\n                </xsl:if>   \r\n                <xsl:if test=\"document-number-hits\">\r\n                    <br />\r\n                    <xsl:value-of select=\"document-number-hits\" /> vues\r\n                </xsl:if>\r\n    </li>	\r\n</xsl:if>\r\n</xsl:template>              \r\n\r\n<xsl:template match=\"file-resource\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"(resource-content-type=\'application/pdf\')\" >\r\n			<img src=\"images/local/skin/plugins/document/filetypes/pdf.png\" border=\"0\" alt=\"\" width=\"32\" height=\"32\" />\r\n		</xsl:when>\r\n\r\n		<xsl:otherwise>\r\n		   <img src=\"images/local/skin/plugins/document/filetypes/file.png\" border=\"0\" alt=\"\" width=\"32\" height=\"32\"/>\r\n		</xsl:otherwise>        \r\n	</xsl:choose>\r\n	</xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(403,'Rubrique Document simple - Type Acteur','portlet_document_actor.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n<xsl:template match=\"portlet\">\r\n\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n	<div class=\"portlet {$device_class}\">\r\n        <xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n			<h3>\r\n				<xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n			</h3>\r\n        </xsl:if>\r\n		<div>\r\n		     <ul>        \r\n                 <xsl:apply-templates select=\"document-list-portlet/document\" />	\r\n            </ul>  \r\n		</div>            	\r\n	</div>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"document\">      \r\n    <li style=\"list-style:none;\"> \r\n        <xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n             <table width=\"90%\" summary=\"document\"> \r\n                 <tr>\r\n                     <td  width=\"65%\">   \r\n                         <a href=\"{$site-path}?document_id={document-id}&#38;portlet_id={$portlet-id}\" target=\"_top\">      \r\n                             <xsl:value-of disable-output-escaping=\"yes\" select=\"document-xml-content/actor/actor-firstname\" />&#160;<xsl:value-of disable-output-escaping=\"yes\" select=\"document-xml-content/actor/actor-lastname\" />\r\n\r\n                         </a>\r\n						<xsl:if test=\"(string(resource-is-votable)=\'1\')\">\r\n							<br />\r\n				        	<xsl:variable name=\"resource-score\" select=\"resource-score\" />\r\n	        				<img src=\"images/local/skin/plugins/rating/stars_{$resource-score}.png\" alt=\"Score\" title=\"Score\" />\r\n				        </xsl:if>   \r\n                         <xsl:if test=\"(string(is-download-stat)=\'1\')\">\r\n							<br />\r\n							#i18n{rating.resource_vote.labelDownloadCount} : <xsl:value-of select=\"resource-download-stat\" />\r\n						 </xsl:if>\r\n                    </td>\r\n                    <td  width=\"35%\">\r\n                        <xsl:apply-templates select=\"document-xml-content/actor/actor-photo/file-resource\" />\r\n                   </td>\r\n                </tr>    \r\n            </table> \r\n        </xsl:if>\r\n    </li>        \r\n</xsl:template>              \r\n	\r\n\r\n<xsl:template match=\"file-resource\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"(resource-content-type=\'image/jpeg\' or resource-content-type=\'image/jpg\' or  resource-content-type=\'image/pjpeg\' or resource-content-type=\'image/gif\' or resource-content-type=\'image/png\')\">\r\n			<img src=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\" alt=\"\" align=\"right\" width=\"40\" height=\"40\"/>\r\n		</xsl:when>\r\n		<xsl:otherwise>\r\n             <a href=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\"> \r\n			   <img src=\"images/admin/skin/plugins/document/filetypes/file.png\" border=\"0\" alt=\"\" align=\"right\" width=\"40\" height=\"40\"/>\r\n             </a>\r\n		</xsl:otherwise>        \r\n	</xsl:choose>\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n'),(504,'Rubrique Document simple - Type Brève','portlet_document_shortarticle.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n	<xsl:param name=\"site-path\" select=\"site-path\" />\r\n	<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n	<xsl:template match=\"portlet\">\r\n	\r\n		<xsl:variable name=\"device_class\">\r\n		<xsl:choose>\r\n			<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n			<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n			<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n			<xsl:otherwise></xsl:otherwise>\r\n		</xsl:choose>\r\n		</xsl:variable>\r\n\r\n		<div class=\"portlet {$device_class}\">\r\n			<xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h3>\r\n					<xsl:value-of disable-output-escaping=\"yes\"\r\n						select=\"portlet-name\" />\r\n				</h3>\r\n			</xsl:if>\r\n\r\n			<xsl:apply-templates select=\"document-portlet/document\" />\r\n			<xsl:if test=\"string(document-portlet/document)=\'\'\">\r\n				<xsl:text disable-output-escaping=\"yes\">\r\n					&amp;nbsp;\r\n				</xsl:text>\r\n			</xsl:if>\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"document\">\r\n		<xsl:output method=\"html\" indent=\"yes\" />\r\n		<xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n			<xsl:apply-templates select=\"document-xml-content/shortarticle\" />\r\n		</xsl:if>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"shortarticle\">\r\n		<p><strong><xsl:value-of select=\"document-title\" /></strong></p>\r\n		<p><xsl:value-of disable-output-escaping=\"yes\"	select=\"document-summary\" /></p>\r\n	</xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(505,'Rubrique Document simple - Type Article','portlet_document_article.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\"\r\n	xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n	<xsl:param name=\"site-path\" select=\"site-path\" />\r\n	<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n	<xsl:template match=\"portlet\">\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hide-for-small</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n		<div class=\"portlet-background-colored  {$device_class} append-bottom\">\r\n			<xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h3 class=\"portlet-background-colored-header -lutece-border-radius-top\">\r\n					<xsl:value-of disable-output-escaping=\"yes\"\r\n						select=\"portlet-name\" />\r\n				</h3>\r\n			</xsl:if>\r\n\r\n			<xsl:apply-templates select=\"document-portlet/document\" />\r\n			<xsl:if test=\"string(document-portlet/document)=\'\'\">\r\n				<xsl:text disable-output-escaping=\"yes\">&amp;nbsp;</xsl:text>\r\n			</xsl:if>\r\n\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"document\">\r\n		<div class=\"portlet-background-content -lutece-border-radius-bottom\">\r\n			<xsl:output method=\"html\" indent=\"yes\" />\r\n			<xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n				<xsl:apply-templates\r\n					select=\"document-xml-content/article\" />\r\n			</xsl:if>\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"article\">\r\n		<p>\r\n			<strong>\r\n				<xsl:value-of select=\"document-title\" />\r\n			</strong>\r\n		</p>\r\n		<p>\r\n			<xsl:choose>\r\n				<xsl:when test=\"article-attachment/file-resource!=\'\'\">\r\n					<xsl:apply-templates\r\n						select=\"article-attachment/file-resource\" />\r\n				</xsl:when>\r\n				<xsl:otherwise></xsl:otherwise>\r\n			</xsl:choose>\r\n		</p>\r\n		<p>\r\n			<xsl:value-of disable-output-escaping=\"yes\"\r\n				select=\"article-body\" />\r\n		</p>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"file-resource\">\r\n		<xsl:choose>\r\n			<xsl:when\r\n				test=\"(resource-content-type=\'image/jpeg\' or resource-content-type=\'image/jpg\' or  resource-content-type=\'image/pjpeg\' or resource-content-type=\'image/gif\' or resource-content-type=\'image/png\')\">\r\n				<img\r\n					src=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\"\r\n					align=\"right\" />\r\n			</xsl:when>\r\n			<xsl:otherwise>\r\n				<a\r\n					href=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\">\r\n					<img\r\n						src=\"images/local/skin/plugins/document/filetypes/file.png\"\r\n						border=\"0\" />\r\n				</a>\r\n			</xsl:otherwise>\r\n		</xsl:choose>\r\n	</xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(506,'Rubrique Document simple - Type Image','portlet_document_image.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\"\r\n	xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n	<xsl:param name=\"site-path\" select=\"site-path\" />\r\n	<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n	<xsl:template match=\"portlet\">\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hide-for-small</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n		<div class=\"portlet-background-colored  {$device_class} append-bottom\">\r\n			<xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h3 class=\"portlet-background-colored-header -lutece-border-radius-top\">\r\n					<xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n				</h3>\r\n			</xsl:if>\r\n\r\n			<xsl:apply-templates select=\"document-portlet/document\" />\r\n			<xsl:if test=\"string(document-portlet/document)=\'\'\">\r\n				<xsl:text disable-output-escaping=\"yes\">\r\n					&amp;nbsp;\r\n				</xsl:text>\r\n			</xsl:if>\r\n\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"document\">\r\n		<div class=\"portlet-background-content -lutece-border-radius-bottom\">\r\n			<xsl:output method=\"html\" indent=\"yes\" />\r\n			<xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n				<xsl:apply-templates\r\n					select=\"document-xml-content/image\" />\r\n			</xsl:if>\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"image\">\r\n		<p>\r\n			<strong>\r\n				<xsl:value-of select=\"document-title\" />\r\n			</strong>\r\n		</p>\r\n		<p>\r\n			<xsl:value-of select=\"document-summary\" />\r\n		</p>\r\n		<xsl:choose>\r\n			<xsl:when test=\"image-file/file-resource!=\'\'\">\r\n				<img\r\n					src=\"document?id={image-file/file-resource/resource-document-id}&amp;id_attribute={image-file/file-resource/resource-attribute-id}\" />\r\n			</xsl:when>\r\n			<xsl:otherwise></xsl:otherwise>\r\n		</xsl:choose>\r\n\r\n		<p>\r\n			<em><xsl:value-of disable-output-escaping=\"yes\"\r\n				select=\"image-credits\" /></em>\r\n		</p>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"file-resource\">\r\n		<xsl:choose>\r\n			<xsl:when\r\n				test=\"(resource-content-type=\'image/jpeg\' or resource-content-type=\'image/jpg\' or  resource-content-type=\'image/pjpeg\' or resource-content-type=\'image/gif\' or resource-content-type=\'image/png\')\">\r\n				<img\r\n					src=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\"\r\n					align=\"right\" />\r\n			</xsl:when>\r\n			<xsl:otherwise>\r\n				<a\r\n					href=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\">\r\n					<img\r\n						src=\"images/local/skin/plugins/document/filetypes/file.png\"\r\n						border=\"0\" />\r\n				</a>\r\n			</xsl:otherwise>\r\n		</xsl:choose>\r\n	</xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(507,'Rubrique Document simple - Type Video','portlet_document_video.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\"\r\n	xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n	<xsl:param name=\"site-path\" select=\"site-path\" />\r\n	<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n	<xsl:template match=\"portlet\">\r\n	\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n	<div class=\"portlet-background-colored  {$device_class} append-bottom\">\r\n		<xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n			<h3><xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" /></h3>\r\n		</xsl:if>\r\n		<xsl:apply-templates select=\"document-portlet/document\" />\r\n		<xsl:if test=\"string(document-portlet/document)=\'\'\">\r\n			<xsl:text disable-output-escaping=\"yes\">\r\n				&amp;nbsp;\r\n			</xsl:text>\r\n		</xsl:if>\r\n\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"document\">\r\n			<xsl:output method=\"html\" indent=\"yes\" />\r\n			<xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n				<xsl:apply-templates\r\n					select=\"document-xml-content/video\" />\r\n			</xsl:if>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"video\">\r\n		<p><strong><xsl:value-of select=\"document-title\" /></strong></p>\r\n		<p><xsl:value-of disable-output-escaping=\"yes\"	select=\"document-summary\" /></p>\r\n		<p>\r\n		<xsl:choose>\r\n			<xsl:when test=\"video-file/file-resource!=\'\'\">\r\n				<a href=\"document?id={video-file/file-resource/resource-document-id}&amp;id_attribute={video-file/file-resource/resource-attribute-id}\">\r\n					<img src=\"images/admin/skin/plugins/document/filetypes/video.png\" />\r\n				</a>\r\n			</xsl:when>\r\n			<xsl:otherwise></xsl:otherwise>\r\n		</xsl:choose>\r\n		</p>\r\n		<p><xsl:value-of disable-output-escaping=\"yes\" select=\"video-comments\" /></p>\r\n	</xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(408,'Rubrique Document simple - Type Pdf','portlet_document_pdf.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\"\r\n	xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n	<xsl:param name=\"site-path\" select=\"site-path\" />\r\n	<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n	<xsl:template match=\"portlet\">\r\n	\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hide-for-small</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n		<div class=\"portlet-background-colored  {$device_class} append-bottom\">\r\n			<xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h3 class=\"portlet-background-colored-header -lutece-border-radius-top\">\r\n					<xsl:value-of disable-output-escaping=\"yes\"\r\n						select=\"portlet-name\" />\r\n				</h3>\r\n			</xsl:if>\r\n\r\n			<xsl:apply-templates select=\"document-portlet/document\" />\r\n			<xsl:if test=\"string(document-portlet/document)=\'\'\">\r\n				<xsl:text disable-output-escaping=\"yes\">\r\n					&amp;nbsp;\r\n				</xsl:text>\r\n			</xsl:if>\r\n\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"document\">\r\n		<div class=\"portlet-background-content -lutece-border-radius-bottom\">\r\n			<xsl:output method=\"html\" indent=\"yes\" />\r\n			<xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n				<xsl:apply-templates select=\"document-xml-content/pdf\" />\r\n			</xsl:if>\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"pdf\">\r\n		<p>\r\n			<strong>\r\n				<xsl:value-of select=\"document-title\" />\r\n			</strong>\r\n		</p>\r\n		<p>\r\n			<xsl:value-of disable-output-escaping=\"yes\"\r\n				select=\"document-summary\" />\r\n		</p>\r\n		<p>\r\n			<xsl:choose>\r\n				<xsl:when test=\"pdf-file/file-resource!=\'\'\">\r\n					<a\r\n						href=\"document?id={pdf-file/file-resource/resource-document-id}&amp;id_attribute={pdf-file/file-resource/resource-attribute-id}\">\r\n						<img\r\n							src=\"images/local/skin/plugins/document/filetypes/pdf.png\" />\r\n					</a>\r\n				</xsl:when>\r\n				<xsl:otherwise></xsl:otherwise>\r\n			</xsl:choose>\r\n		</p>\r\n	</xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(409,'Rubrique Document simple - Type Son','portlet_document_sound.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\"\r\n	xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n	<xsl:param name=\"site-path\" select=\"site-path\" />\r\n	<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n	<xsl:template match=\"portlet\">\r\n	\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n	<div class=\"portlet {$device_class}\">\r\n			<xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h3><xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" /></h3>\r\n			</xsl:if>\r\n			<xsl:apply-templates select=\"document-portlet/document\" />\r\n			<xsl:if test=\"string(document-portlet/document)=\'\'\">\r\n				<xsl:text disable-output-escaping=\"yes\">\r\n					&amp;nbsp;\r\n				</xsl:text>\r\n			</xsl:if>\r\n\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"document\">\r\n		<div class=\"portlet-background-content -lutece-border-radius-bottom\">\r\n			<xsl:output method=\"html\" indent=\"yes\" />\r\n			<xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n				<xsl:apply-templates\r\n					select=\"document-xml-content/sound\" />\r\n			</xsl:if>\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"sound\">\r\n		<p><strong><xsl:value-of select=\"document-title\" /></strong></p>\r\n		<p><xsl:value-of disable-output-escaping=\"yes\" select=\"document-summary\" /></p>\r\n		<p>\r\n		<xsl:choose>\r\n			<xsl:when test=\"sound-file/file-resource!=\'\'\">\r\n				<a href=\"document?id={sound-file/file-resource/resource-document-id}&amp;id_attribute={sound-file/file-resource/resource-attribute-id}\">\r\n					<img src=\"images/admin/skin/plugins/document/filetypes/audio.png\" />\r\n				</a>\r\n			</xsl:when>\r\n			<xsl:otherwise></xsl:otherwise>\r\n		</xsl:choose>\r\n		</p>\r\n		<p>	<xsl:value-of disable-output-escaping=\"yes\" select=\"sound-author\" /></p>\r\n	</xsl:template>\r\n</xsl:stylesheet>\r\n\r\n'),(508,'Rubrique Liste de Documents - Type Flash','portlet_document_flash_list.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n<xsl:template match=\"portlet\">\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n    <div class=\"portlet {$device_class}\">\r\n        <xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n            <h3>\r\n                <xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n            </h3>\r\n        </xsl:if>\r\n	<div>\r\n            <ul>\r\n                <xsl:apply-templates select=\"document-list-portlet/document\" />\r\n            </ul>\r\n	</div>\r\n    </div>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"document\">      \r\n<xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n    <li>\r\n        <a href=\"{$site-path}?document_id={document-id}&#38;portlet_id={$portlet-id}\" target=\"_top\"> \r\n            <xsl:for-each select=\"descendant::*\">   \r\n                <xsl:value-of select=\"document-title\" />\r\n            </xsl:for-each>    \r\n        </a>\r\n		<xsl:if test=\"(string(resource-is-votable)=\'1\')\">\r\n			<br />\r\n        	<xsl:variable name=\"resource-score\" select=\"resource-score\" />\r\n	        <img src=\"images/local/skin/plugins/rating/stars_{$resource-score}.png\" alt=\"Score\" title=\"Score\" />\r\n        </xsl:if>   \r\n        <xsl:if test=\"(string(is-download-stat)=\'1\')\">\r\n			<br />\r\n			#i18n{rating.resource_vote.labelDownloadCount} : <xsl:value-of select=\"resource-download-stat\" />\r\n		</xsl:if>\r\n        <br />\r\n        <xsl:for-each select=\"descendant::*\">           \r\n            <xsl:value-of select=\"document-summary\" />                 \r\n        </xsl:for-each>  \r\n        <br />            \r\n        <xsl:if test=\"(string(document-is-commentable)=\'1\')\">\r\n            Nombre de commentaires : <xsl:value-of select=\"document-comment-nb\" />      \r\n        </xsl:if>   \r\n    </li>\r\n</xsl:if>\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n\r\n'),(509,'Rubrique Document simple - Type Flash','portlet_document_flash.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\"\r\n	xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n	<xsl:param name=\"site-path\" select=\"site-path\" />\r\n	<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n	<xsl:template match=\"portlet\">\r\n		<xsl:variable name=\"device_class\">\r\n		<xsl:choose>\r\n			<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n			<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n			<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n			<xsl:otherwise></xsl:otherwise>\r\n		</xsl:choose>\r\n		</xsl:variable>\r\n\r\n		<div class=\"portlet {$device_class}\">\r\n			<xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h3>\r\n					<xsl:value-of disable-output-escaping=\"yes\"\r\n						select=\"portlet-name\" />\r\n				</h3>\r\n			</xsl:if>\r\n			<xsl:apply-templates select=\"document-portlet/document\" />\r\n			<xsl:if test=\"string(document-portlet/document)=\'\'\">\r\n				<xsl:text disable-output-escaping=\"yes\">\r\n					&amp;nbsp;\r\n				</xsl:text>\r\n			</xsl:if>\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"document\">\r\n		<div>\r\n			<xsl:output method=\"html\" indent=\"yes\" />\r\n			<xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n				<xsl:apply-templates\r\n					select=\"document-xml-content/flash\" />\r\n			</xsl:if>\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"flash\">\r\n		<h1><xsl:value-of select=\"document-title\" /></h1>\r\n		<p>\r\n			<xsl:value-of select=\"document-summary\" />\r\n		</p>\r\n		<p>\r\n			<xsl:choose>\r\n				<xsl:when test=\"(flash-object/file-resource/resource-content-type=\'application/x-shockwave-flash\')\">\r\n					<object \r\n						data=\"document?id={flash-object/file-resource/resource-document-id}&amp;id_attribute={flash-object/file-resource/resource-attribute-id}\" \r\n						type=\"application/x-shockwave-flash\" \r\n						width=\"{flash-width}\" \r\n						height=\"{flash-height}\"\r\n						align=\"{flash-align}\"\r\n						classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\"\r\n						codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0\"\r\n					>\r\n						<param name=\"Autostart\" value=\"{flash-autostart}\" />\r\n						<param name=\"Quality\" value=\"{flash-quality}\" />\r\n						<param name=\"Loop\" value=\"{flash-loop}\" />\r\n						<param name=\"menu\" value=\"{flash-menu}\" />\r\n						<param name=\"allowScriptAccess\" value=\"samedomain\" />\r\n						<param name=\"movie\" value=\"document?id={flash-object/file-resource/resource-document-id}&amp;id_attribute={flash-object/file-resource/resource-attribute-id}\" />\r\n						<EMBED \r\n							src=\"document?id={flash-object/file-resource/resource-document-id}&amp;id_attribute={flash-object/file-resource/resource-attribute-id}\" \r\n							type=\"application/x-shockwave-flash\"\r\n							width=\"{flash-width}\" \r\n							height=\"{flash-height}\"\r\n							align=\"{flash-align}\"\r\n							quality=\"{flash-quality}\"\r\n							loop=\"{flash-loop}\"\r\n							menu=\"{flash-menu}\"\r\n							allowScriptAccess=\"samedomain\"\r\n							pluginspace=\"http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash\">\r\n						</EMBED>\r\n					</object>\r\n				</xsl:when>\r\n			</xsl:choose>\r\n		</p>\r\n		<blockquote>\r\n			<xsl:value-of disable-output-escaping=\"yes\" select=\"flash-credits\" />\r\n		</blockquote>\r\n	</xsl:template>\r\n	\r\n</xsl:stylesheet>'),(510,'Rubrique Liste de Documents - Défaut Download','portlet_document_list_download.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n<xsl:template match=\"portlet\">\r\n	<xsl:variable name=\"device_class\">\r\n<xsl:choose>\r\n	<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n	<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n	<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n	<xsl:otherwise></xsl:otherwise>\r\n</xsl:choose>\r\n</xsl:variable>\r\n\r\n	<div class=\"portlet  {$device_class}\">\r\n        <xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n			<h3>\r\n				<xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n			</h3>\r\n        </xsl:if>\r\n		<div>\r\n		     <ul>\r\n         	       <xsl:apply-templates select=\"document-list-portlet/document\" />\r\n             </ul>  \r\n		</div>\r\n	</div>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"document\">      \r\n<xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n    <li>\r\n        <a href=\"document?id={document-id}&amp;id_attribute=48\" target=\"_blank\">      \r\n        	<xsl:for-each select=\"descendant::*\">\r\n                <xsl:apply-templates select=\"file-resource\" />\r\n           </xsl:for-each>  \r\n          	<xsl:for-each select=\"descendant::*\">\r\n                <xsl:value-of select=\"document-title\" />\r\n           </xsl:for-each>  \r\n        </a>\r\n		<xsl:if test=\"(string(resource-is-votable)=\'1\')\">\r\n			<br />\r\n        	<xsl:variable name=\"resource-score\" select=\"resource-score\" />\r\n	        <img src=\"images/local/skin/plugins/rating/stars_{$resource-score}.png\" alt=\"Score\" title=\"Score\" />\r\n        </xsl:if>    \r\n        <xsl:if test=\"(string(is-download-stat)=\'1\')\">\r\n			<br />\r\n			#i18n{rating.resource_vote.labelDownloadCount} : <xsl:value-of select=\"resource-download-stat\" />\r\n		</xsl:if>\r\n		<br />\r\n	    <xsl:for-each select=\"descendant::*\">\r\n        	<xsl:value-of select=\"document-summary\" />\r\n        </xsl:for-each>\r\n    </li>\r\n</xsl:if>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"file-resource\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"(resource-content-type=\'image/jpeg\' or resource-content-type=\'image/jpg\' or resource-content-type=\'image/pjpeg\' or resource-content-type=\'image/gif\' or resource-content-type=\'image/png\')\">\r\n			<img src=\"images/local/skin/plugins/document/filetypes/image.png\" border=\"0\" alt=\"\" width=\"32\" height=\"32\"/>\r\n		</xsl:when>\r\n		<xsl:when test=\"(resource-content-type=\'application/pdf\')\">\r\n			<img src=\"images/local/skin/plugins/document/filetypes/pdf.png\" border=\"0\" alt=\"\" width=\"32\" height=\"32\" />\r\n		</xsl:when>\r\n		<xsl:when test=\"(resource-content-type=\'application/msword\' or resource-content-type=\'application/vnd.oasis.opendocument.text\')\">\r\n			<img src=\"images/local/skin/plugins/document/filetypes/text.png\" border=\"0\" alt=\"\" width=\"32\" height=\"32\" />\r\n		</xsl:when>\r\n		<xsl:when test=\"(resource-content-type=\'application/excel\' or resource-content-type=\'application/vnd.ms-excel\' or resource-content-type=\'application/vnd.oasis.opendocument.spreadsheet\')\">\r\n			<img src=\"images/local/skin/plugins/document/filetypes/spreadsheet.png\" border=\"0\" alt=\"\" width=\"32\" height=\"32\" />\r\n		</xsl:when>\r\n		<xsl:otherwise>\r\n		   <img src=\"images/local/skin/plugins/document/filetypes/file.png\" border=\"0\" alt=\"\" width=\"32\" height=\"32\"/>\r\n		</xsl:otherwise>        \r\n	</xsl:choose>\r\n</xsl:template>              \r\n\r\n\r\n</xsl:stylesheet>\r\n\r\n'),(9004,'Rubrique Liste de documents - Type Vidéo','portlet_document_video_list.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:param name=\"site-path\" select=\"site-path\" />\r\n<xsl:variable name=\"portlet-id\" select=\"portlet/portlet-id\" />\r\n\r\n<xsl:template match=\"portlet\">\r\n\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n	<div class=\"portlet {$device_class}\">\r\n        <xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n			<h2 class=\"portlet-background-colored-header -lutece-border-radius-top\">\r\n				<xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n			</h2>\r\n        </xsl:if>\r\n		<ul>\r\n			<xsl:apply-templates select=\"document-list-portlet/document\" />\r\n        </ul>  \r\n	</div>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"document\">      \r\n<xsl:if test=\"not(string(document-xml-content)=\'null\')\">\r\n    <li>\r\n        <a href=\"{$site-path}?document_id={document-id}&amp;portlet_id={$portlet-id}\" target=\"_top\">      \r\n             <xsl:value-of select=\"document-xml-content/video/video-title\" />   \r\n       </a>\r\n       	<xsl:if test=\"(string(resource-is-votable)=\'1\')\">\r\n			<br />\r\n        	<xsl:variable name=\"resource-score\" select=\"resource-score\" />\r\n	        <img src=\"images/local/skin/plugins/rating/stars_{$resource-score}.png\" alt=\"Score\" title=\"Score\" />\r\n        </xsl:if>   \r\n       <xsl:if test=\"(string(is-download-stat)=\'1\')\">\r\n			<br />\r\n			#i18n{rating.resource_vote.labelDownloadCount} : <xsl:value-of select=\"resource-download-stat\" />\r\n		</xsl:if>\r\n		<br />\r\n        <xsl:value-of select=\"document-xml-content/video/video-file\" />\r\n    </li>\r\n</xsl:if>\r\n</xsl:template>              \r\n\r\n\r\n</xsl:stylesheet>\r\n\r\n'),(9007,'Rubrique Formulaire - Défaut','portlet_form.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n<xsl:output method=\"html\" indent=\"yes\"/>\r\n<xsl:template match=\"portlet\">\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n	\r\n	<div class=\"portlet {$device_class}\">\r\n		<xsl:apply-templates select=\"form-portlet\" />\r\n	</div>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"form-portlet\">\r\n	<xsl:apply-templates select=\"form-portlet-content\" />\r\n</xsl:template>\r\n\r\n<xsl:template match=\"form-portlet-content\">\r\n	<xsl:value-of disable-output-escaping=\"yes\" select=\".\" />\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>'),(10,'Rubrique HTML - Défaut','portlet_html.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n<xsl:output method=\"html\" indent=\"yes\"/>\r\n\r\n<xsl:template match=\"portlet\">\r\n<xsl:variable name=\"device_class\">\r\n<xsl:choose>\r\n	<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n	<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n	<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n	<xsl:otherwise></xsl:otherwise>\r\n</xsl:choose>\r\n</xsl:variable>\r\n\r\n	<div class=\"portlet {$device_class}\">\r\n	<xsl:choose>\r\n	<xsl:when test=\"not(string(display-portlet-title)=\'1\')\">\r\n	<h3><xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" /></h3>\r\n	<xsl:apply-templates select=\"html-portlet\" />\r\n	</xsl:when>\r\n	<xsl:otherwise>\r\n	<xsl:apply-templates select=\"html-portlet\" />\r\n	</xsl:otherwise>\r\n</xsl:choose>\r\n</div>\r\n</xsl:template>\r\n	\r\n<xsl:template match=\"html-portlet\">\r\n	<xsl:apply-templates select=\"html-portlet-content\" />\r\n</xsl:template>\r\n	\r\n<xsl:template match=\"html-portlet-content\">\r\n	<xsl:value-of disable-output-escaping=\"yes\" select=\".\" />\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n\r\n\r\n\r\n\r\n'),(285,'Rubrique HTML - Fond coloré','portlet_html_background.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:output method=\"html\" indent=\"yes\"/>\r\n\r\n<xsl:template match=\"portlet\">\r\n\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n	\r\n	<div class=\"portlet {$device_class}\">\r\n		<div class=\"well\">\r\n		<xsl:choose>\r\n			<xsl:when test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h2>\r\n					<xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" />\r\n				</h2>\r\n				<div class=\"portlet-background-content -lutece-border-radius-bottom\">\r\n					<xsl:apply-templates select=\"html-portlet\" />\r\n				</div>\r\n			</xsl:when>\r\n			<xsl:otherwise>\r\n				<div class=\"portlet-background-content -lutece-border-radius\">\r\n					<xsl:apply-templates select=\"html-portlet\" />\r\n				</div>\r\n			</xsl:otherwise>\r\n		</xsl:choose>\r\n		</div>\r\n    </div>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"html-portlet\">\r\n	<xsl:apply-templates select=\"html-portlet-content\" />\r\n</xsl:template>\r\n\r\n<xsl:template match=\"html-portlet-content\">\r\n	<xsl:value-of disable-output-escaping=\"yes\" select=\".\" />\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>'),(312,'Rubrique Pages du Site - Défaut','portlet_linkpages_simple.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\"\r\n	xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n	<xsl:param name=\"site-path\" select=\"site-path\" />\r\n\r\n	<xsl:template match=\"portlet\">\r\n		\r\n		<xsl:variable name=\"device_class\">\r\n		<xsl:choose>\r\n			<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n			<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n			<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n			<xsl:otherwise></xsl:otherwise>\r\n		</xsl:choose>\r\n		</xsl:variable>\r\n	\r\n		<div class=\"portlet {$device_class}\">\r\n			<xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h3><xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" /></h3>\r\n			</xsl:if>			\r\n			<xsl:apply-templates select=\"link-pages-portlet\" />			\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"link-pages-portlet\">\r\n			<ul>\r\n				<xsl:apply-templates select=\"link-page\" />\r\n			</ul>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"link-page\">\r\n		<li>\r\n			<a href=\"{$site-path}?page_id={link-page-id}\" target=\"_top\">\r\n				<strong><xsl:value-of select=\"link-page-name\" /></strong>\r\n			</a>\r\n			<p><xsl:value-of select=\"link-page-description\" /></p>\r\n		</li>\r\n	</xsl:template>\r\n\r\n</xsl:stylesheet>'),(313,'Rubrique Pages du Site - Image','portlet_linkpages_image.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\"\r\n	xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n	<xsl:param name=\"site-path\" select=\"site-path\" />\r\n\r\n	<xsl:template match=\"portlet\">\r\n		\r\n		<xsl:variable name=\"device_class\">\r\n		<xsl:choose>\r\n			<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n			<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n			<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n			<xsl:otherwise></xsl:otherwise>\r\n		</xsl:choose>\r\n		</xsl:variable>\r\n		\r\n		<div class=\"portlet\">\r\n			<xsl:if test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h3><xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" /></h3>\r\n			</xsl:if>\r\n			<xsl:apply-templates select=\"link-pages-portlet\" />\r\n			<xsl:text disable-output-escaping=\"yes\">\r\n	    	    <![CDATA[<div class=\"clear\">&#160;</div>]]>\r\n            </xsl:text>\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"link-pages-portlet\">\r\n		<xsl:apply-templates select=\"link-page\" />\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"link-page\">\r\n		<p>\r\n			<a href=\"{$site-path}?page_id={link-page-id}\" target=\"_top\">\r\n				<xsl:apply-templates select=\"link-page-image\" />\r\n				<strong><xsl:value-of select=\"link-page-name\" /></strong>\r\n			</a>\r\n			<span class=\"help-text\"><xsl:value-of select=\"link-page-description\" /></span>\r\n		</p>\r\n	</xsl:template>\r\n\r\n	<!-- Format image polaroid -->\r\n	<xsl:template match=\"link-page-image\">\r\n		<div class=\"img-polaroid span3\">\r\n			<img src=\"{.}\" alt=\"\" />\r\n		</div>\r\n	</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n'),(310,'Rubrique MyLutece - Défaut','portlet_mylutece.xsl','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n<xsl:template match=\"portlet\">\r\n\r\n	<xsl:variable name=\"device_class\">\r\n	<xsl:choose>\r\n		<xsl:when test=\"string(display-on-small-device)=\'0\'\">hidden-phone</xsl:when>\r\n		<xsl:when test=\"string(display-on-normal-device)=\'0\'\">hidden-tablet</xsl:when>\r\n		<xsl:when test=\"string(display-on-large-device)=\'0\'\">hidden-desktop</xsl:when>\r\n		<xsl:otherwise></xsl:otherwise>\r\n	</xsl:choose>\r\n	</xsl:variable>\r\n\r\n	<div class=\"portlet {$device_class}\">\r\n		<div class=\"well\">\r\n			<xsl:choose>\r\n	        <xsl:when test=\"not(string(display-portlet-title)=\'1\')\">\r\n				<h3><xsl:value-of disable-output-escaping=\"yes\" select=\"portlet-name\" /></h3>\r\n				<xsl:apply-templates select=\"mylutece-portlet\" />\r\n	        </xsl:when>\r\n	        <xsl:otherwise>\r\n				<xsl:apply-templates select=\"mylutece-portlet\" />\r\n	        </xsl:otherwise>\r\n			</xsl:choose>\r\n			<div class=\"clearfix\">&#160;</div>\r\n		</div>\r\n	</div>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"mylutece-portlet\">\r\n	<xsl:apply-templates select=\"user-not-signed\" />\r\n	<xsl:apply-templates select=\"lutece-user\" />\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"user-not-signed\">\r\n	<form class=\"form\" action=\"jsp/site/plugins/mylutece/DoMyLuteceLogin.jsp\" method=\"post\">\r\n		<xsl:apply-templates select=\"lutece-user-authentication-service[@delegated=\'true\']\" />\r\n		<xsl:apply-templates select=\"lutece-user-authentication-service[@loginpassword-required=\'true\']\" />\r\n		<xsl:if test=\"count(lutece-user-authentication-service[@loginpassword-required=\'true\']) &gt;= 1\">\r\n			<label for=\"username\">Code d\'acc&#232;s :</label>\r\n			<input name=\"username\" class=\"input-normal\" id=\"username\" autocomplete=\"off\" tabindex=\"1\" type=\"text\"/><br />\r\n			<label for=\"password\">Mot de passe :</label>\r\n			<input name=\"password\" class=\"input-normal\" id=\"password\" autocomplete=\"off\" tabindex=\"2\" type=\"password\" />\r\n			<button class=\"btn btn-small\" tabindex=\"3\" type=\"submit\"><i class=\"icon-user\">&#160;</i>&#160;Connexion</button>\r\n		</xsl:if>\r\n	</form>\r\n	<xsl:apply-templates select=\"lutece-user-new-account-url\" />\r\n	<xsl:apply-templates select=\"lutece-user-lost-password-url\" />\r\n</xsl:template>\r\n\r\n<xsl:template match=\"lutece-user-authentication-service[@loginpassword-required=\'true\']\">\r\n	<label class=\"radio\" for=\"auth_provider\" >\r\n		<input type=\"radio\" name=\"auth_provider\" value=\"{name}\" checked=\"checked\" />\r\n		<xsl:value-of select=\"display-name\" />\r\n	</label>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"lutece-user-authentication-service[@delegated=\'true\']\">\r\n	<a href=\"{url}?auth_provider={name}\">\r\n		<img src=\"{icon-url}\" alt=\"{display-name}\" title=\"{display-name}\"/>\r\n	</a>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"lutece-user\">\r\n    <p>\r\n	<strong>Bienvenue&#160;\r\n		<xsl:value-of disable-output-escaping=\"yes\" select=\"lutece-user-name-given\" />&#160;\r\n		<xsl:value-of disable-output-escaping=\"yes\" select=\"lutece-user-name-family\" />\r\n	</strong>\r\n	</p>\r\n    <xsl:apply-templates select=\"lutece-user-logout-url\" />\r\n    <xsl:apply-templates select=\"lutece-user-view-account-url\" />\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"lutece-user-logout-url\">\r\n   <form class=\"form-inline pull-left\" name=\"logout\" action=\"{.}\" method=\"post\">\r\n   	<button type=\"submit\" class=\"btn\"><i class=\"icon-off\">&#160;</i>&#160;D&#233;connexion</button>&#160;\r\n   </form>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"lutece-user-new-account-url\">\r\n	<form class=\"form-inline pull-left\" name=\"logout\" action=\"{.}\" method=\"post\">\r\n		<button type=\"submit\" class=\"btn\"><i class=\"icon-plus\">&#160;</i>&#160;Cr&#233;er un compte</button>&#160;\r\n    </form>\r\n</xsl:template>\r\n\r\n\r\n<xsl:template match=\"lutece-user-lost-password-url\">\r\n	<form class=\"form-inline pull-left\" name=\"logout\" action=\"{.}\" method=\"post\">\r\n	   	<button type=\"submit\" class=\"btn\"><i class=\"icon-lock\">&#160;</i>&#160;Mot de passe perdu</button>&#160;\r\n   </form>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"lutece-user-view-account-url\">\r\n	<form class=\"form-inline pull-left\" name=\"logout\" action=\"{.}\" method=\"post\">\r\n	   	<button type=\"submit\" class=\"btn\"><i class=\"icon-edit\">&#160;</i>&#160;Voir mon compte</button>&#160;\r\n	</form>\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n\r\n');
/*!40000 ALTER TABLE `core_stylesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_template`
--

DROP TABLE IF EXISTS `core_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_template` (
  `template_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `template_value` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`template_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_template`
--

LOCK TABLES `core_template` WRITE;
/*!40000 ALTER TABLE `core_template` DISABLE KEYS */;
INSERT INTO `core_template` VALUES ('core_first_alert_mail','Bonjour ${first_name} ! Votre compte utilisateur arrive à expiration. Pour prolonger sa validité, veuillez <a href=\"${url}\">cliquer ici</a>.</br>Si vous ne le faites pas avant le ${date_valid}, il sera désactivé.'),('core_expiration_mail','Bonjour ${first_name} ! Votre compte a expiré. Vous ne pourrez plus vous connecter avec, et les données vous concernant ont été anonymisées'),('core_other_alert_mail','Bonjour ${first_name} ! Votre compte utilisateur arrive à expiration. Pour prolonger sa validité, veuillez <a href=\"${url}\">cliquer ici</a>.</br>Si vous ne le faites pas avant le ${date_valid}, il sera désactivé.'),('core_account_reactivated_mail','Bonjour ${first_name} ! Votre compte utilisateur a bien été réactivé. Il est désormais valable jusqu\'au ${date_valid}.'),('core_password_expired','Bonjour ! Votre mot de passe a expiré. Lors de votre prochaine connexion, vous pourrez le changer.'),('extend_rating_vote_type_star','<#assign averageScore = 0 />\r\n<#assign voteCount = 0 />\r\n<#if rating??>\r\n	<#assign averageScore = rating.averageScore />\r\n	<#assign voteCount = rating.voteCount />\r\n</#if>\r\n<#if show == \"all\" || show == \"vote\">\r\n	<p>\r\n		<img src=\"images/local/skin/plugins/extend/modules/rating/stars_${averageScore!}.png\" alt=\"Note\" title=\"Note\" />\r\n		(${voteCount!})&nbsp;\r\n	</p>\r\n</#if>\r\n<#if canDeleteVote><div class=\"cancel\"><a href=\"jsp/site/plugins/extend/modules/rating/DoCancelVote.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}\" > </a></div></#if>\r\n<#if show == \"all\" || show == \"actionVote\">\r\n	<#if canVote>\r\n		<div> Votez : </div>\r\n		<div class=\"resource-vote-star-rating\" style=\"display:none;\">\r\n			<form name=\"resource_vote_form\" action=\"jsp/site/plugins/extend/modules/rating/DoVote.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType}\" method=\"post\" >\r\n				<input type=\"hidden\" name=\"voteValue\" value=\"-2\" />\r\n				<input class=\"star-rating\" type=\"radio\" name=\"voteValue_${extendableResourceType}_${idExtendableResource!}\" value=\"-2\" />\r\n				<input class=\"star-rating\" type=\"radio\" name=\"voteValue_${extendableResourceType}_${idExtendableResource!}\" value=\"-1\" />\r\n				<input class=\"star-rating\" type=\"radio\" name=\"voteValue_${extendableResourceType}_${idExtendableResource!}\" value=\"1\" />\r\n				<input class=\"star-rating\" type=\"radio\" name=\"voteValue_${extendableResourceType}_${idExtendableResource!}\" value=\"2\" />\r\n			</form>\r\n		</div>\r\n		<div class=\"resource-vote-star-rating-javascript-disable\" >\r\n			<div class=\"star\">\r\n				<a href=\"jsp/site/plugins/extend/modules/rating/DoVote.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}&voteValue=-2\" ></a>\r\n			</div >\r\n			<div class=\"star\">\r\n				<a href=\"jsp/site/plugins/extend/modules/rating/DoVote.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}&voteValue=-1\" > </a>\r\n			</div>\r\n			<div class=\"star\">\r\n				<a href=\"jsp/site/plugins/extend/modules/rating/DoVote.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}&voteValue=1\" > </a>\r\n			</div>\r\n			<div class=\"star\">\r\n				<a href=\"jsp/site/plugins/extend/modules/rating/DoVote.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}&voteValue=2\" > </a>\r\n			</div>\r\n		</div>\r\n		<br/>\r\n	</#if>\r\n</#if>'),('extend_rating_vote_type_thumb','\r\n<#assign scoreValue = 0 />\r\n<#assign voteCount = 0 />\r\n<#if rating??>\r\n	<#assign scoreValue = rating.scoreValue />\r\n	<#assign voteCount = rating.voteCount />\r\n</#if>\r\n<#if show == \"all\" || show == \"vote\">\r\n	<p>\r\n		<#if ( scoreValue < 0 )>\r\n			<img src=\"images/local/skin/plugins/extend/modules/rating/vote_against.png\" title=\"#i18n{module.extend.rating.rating.labelVoteAgainst}\" alt=\"#i18n{module.extend.rating.rating.labelVoteAgainst}\"/>\r\n			${scoreValue!}\r\n		<#else>\r\n			<img src=\"images/local/skin/plugins/extend/modules/rating/vote_for.png\" title=\"#i18n{module.extend.rating.rating.labelScore}\" alt=\"#i18n{module.extend.rating.rating.labelScore}\"/>\r\n			${scoreValue!}\r\n		</#if>\r\n		(${voteCount!})&nbsp;\r\n	</p>\r\n</#if>\r\n<#if canDeleteVote><div class=\"cancel\"><a href=\"jsp/site/plugins/extend/modules/rating/DoCancelVote.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}\" > </a></div></#if>\r\n<#if show == \"all\" || show == \"actionVote\">\r\n	<#if canVote>\r\n		<div>\r\n			<div class=\"extend-rating-vote-title\">\r\n				<label for=\"\">#i18n{module.extend.rating.rating.labelVote} :</label></div>\r\n				<span class=\"extend-rating-vote-span\">\r\n					<a href=\"jsp/site/plugins/extend/modules/rating/DoVote.jsp?idExtendableResource=${idExtendableResource!}&amp;extendableResourceType=${extendableResourceType!}&amp;voteValue=-1\">\r\n						<img src=\"images/local/skin/plugins/extend/modules/rating/vote_against.png\" title=\"#i18n{module.extend.rating.rating.labelVoteAgainst}\" alt=\"#i18n{module.extend.rating.rating.labelVoteAgainst}\"/> \r\n					</a>\r\n					<a href=\"jsp/site/plugins/extend/modules/rating/DoVote.jsp?idExtendableResource=${idExtendableResource!}&amp;extendableResourceType=${extendableResourceType!}&amp;voteValue=1\">\r\n						<img src=\"images/local/skin/plugins/extend/modules/rating/vote_for.png\" title=\"#i18n{module.extend.rating.rating.labelVoteFor}\" alt=\"#i18n{module.extend.rating.rating.labelVoteFor}\"/>\r\n					</a>\r\n				</span>\r\n		</div>\r\n	</#if>\r\n</#if>\r\n'),('extend_rating_vote_type_simple','<#if !voteClosed><#if canDeleteVote><div><a href=\"jsp/site/plugins/extend/modules/rating/DoCancelVote.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}\" >J\'annule mon vote</a></div></#if><#if show == \"all\" || show == \"actionVote\"><#if canVote><div><div class=\"extend-rating-vote-title\"><label for=\"\">Votez :</label></div><span>					<a href=\"jsp/site/plugins/extend/modules/rating/DoVote.jsp?idExtendableResource=${idExtendableResource!}&extendableResourceType=${extendableResourceType!}&voteValue=1\">Je vote pour</a></span></div></#if></#if></#if>'),('mylutece_database_first_alert_mail','Bonjour ${first_name} ! Votre compte utilisateur arrive à expiration. Pour prolonger sa validité, veuillez <a href=\"${url}\">cliquer ici</a>.</br>Si vous ne le faites pas avant le ${date_valid}, il sera désactivé.'),('mylutece_database_expiration_mail','Bonjour ${first_name} ! Votre compte a expiré. Vous ne pourrez plus vous connecter avec, et les données vous concernant ont été anonymisées'),('mylutece_database_other_alert_mail','Bonjour ${first_name} ! Votre compte utilisateur arrive à expiration. Pour prolonger sa validité, veuillez <a href=\"${url}\">cliquer ici</a>.</br>Si vous ne le faites pas avant le ${date_valid}, il sera désactivé.'),('mylutece_database_account_reactivated_mail','Bonjour ${first_name} ! Votre compte utilisateur a bien été réactivé. Il est désormais valable jusqu\'au ${date_valid}.'),('mylutece_database_unblock_user','${site_link!}<br />Bonjour ! Votre IP a été bloquée. Pour la débloquer, vous pouvez suivre le lien suivant : <a href=\"${url}\">debloquer</a>.'),('mylutece_database_password_expired','Bonjour ! Votre mot de passe a éxpiré. Lors de votre prochaine connection, vous pourrez le changer.'),('mylutece_database_mailLostPassword','<html><head><title>#i18n{mylutece.email_reinit.object}</title></head><body><p>#i18n{mylutece.email_reinit.content.text}<br /></p><p>#i18n{mylutece.email_reinit.content.newPassword} : ${new_password}<br /></p></body></html><p>#i18n{mylutece.email_reinit.content.reinitPassword}<a href=\"${reinit_url}\">#i18n{mylutece.email_reinit.content.labelLink}</a></p>'),('mylutece_database_mailPasswordEncryptionChanged','<html><head><title>Votre mot de passe a été réinitialisé</title></head><body><p>Pour des raisons de sécurité, votre mot de passe a été réinitialisé.<br />----------------------------------------------------------</p><p>Votre nouveau mot de passe est : ${new_password}<br />----------------------------------------------------------</p></body></html>');
/*!40000 ALTER TABLE `core_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_text_editor`
--

DROP TABLE IF EXISTS `core_text_editor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_text_editor` (
  `editor_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `editor_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `backOffice` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`editor_name`,`backOffice`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_text_editor`
--

LOCK TABLES `core_text_editor` WRITE;
/*!40000 ALTER TABLE `core_text_editor` DISABLE KEYS */;
INSERT INTO `core_text_editor` VALUES ('tinymce','portal.globalmanagement.editors.labelBackTinyMCE',1),('','portal.globalmanagement.editors.labelBackNoEditor',1),('','portal.globalmanagement.editors.labelFrontNoEditor',0),('markitupbbcode','portal.globalmanagement.editors.labelFrontMarkitupBBCode',0);
/*!40000 ALTER TABLE `core_text_editor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user_password_history`
--

DROP TABLE IF EXISTS `core_user_password_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_user_password_history` (
  `id_user` int(11) NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_password_change` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_user`,`date_password_change`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_password_history`
--

LOCK TABLES `core_user_password_history` WRITE;
/*!40000 ALTER TABLE `core_user_password_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_user_password_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user_preferences`
--

DROP TABLE IF EXISTS `core_user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_user_preferences` (
  `id_user` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pref_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pref_value` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id_user`,`pref_key`),
  KEY `index_user_preferences` (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_preferences`
--

LOCK TABLES `core_user_preferences` WRITE;
/*!40000 ALTER TABLE `core_user_preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user_right`
--

DROP TABLE IF EXISTS `core_user_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_user_right` (
  `id_right` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_user` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_right`,`id_user`),
  KEY `index_user_right` (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_right`
--

LOCK TABLES `core_user_right` WRITE;
/*!40000 ALTER TABLE `core_user_right` DISABLE KEYS */;
INSERT INTO `core_user_right` VALUES ('APPOINTMENT_CALENDAR_TEMPLATE',1),('APPOINTMENT_FORM_MANAGEMENT',1),('APPOINTMENT_MANAGEMENT',1),('CONTACT_MANAGEMENT',1),('CORE_ADMIN_SITE',1),('CORE_ADMIN_SITE',2),('CORE_ADMINDASHBOARD_MANAGEMENT',1),('CORE_CACHE_MANAGEMENT',1),('CORE_DAEMONS_MANAGEMENT',1),('CORE_DASHBOARD_MANAGEMENT',1),('CORE_FEATURES_MANAGEMENT',1),('CORE_GLOBAL_MANAGEMENT',1),('CORE_LEVEL_RIGHT_MANAGEMENT',1),('CORE_LINK_SERVICE_MANAGEMENT',1),('CORE_LINK_SERVICE_MANAGEMENT',2),('CORE_LOGS_VISUALISATION',1),('CORE_MAILINGLISTS_MANAGEMENT',1),('CORE_MODES_MANAGEMENT',1),('CORE_PAGE_TEMPLATE_MANAGEMENT',1),('CORE_PAGE_TEMPLATE_MANAGEMENT',2),('CORE_PLUGINS_MANAGEMENT',1),('CORE_PROPERTIES_MANAGEMENT',1),('CORE_PROPERTIES_MANAGEMENT',2),('CORE_RBAC_MANAGEMENT',1),('CORE_RIGHT_MANAGEMENT',1),('CORE_ROLES_MANAGEMENT',1),('CORE_ROLES_MANAGEMENT',2),('CORE_SEARCH_INDEXATION',1),('CORE_SEARCH_INDEXATION',2),('CORE_SEARCH_MANAGEMENT',1),('CORE_SEARCH_MANAGEMENT',2),('CORE_STYLES_MANAGEMENT',1),('CORE_STYLESHEET_MANAGEMENT',1),('CORE_USERS_MANAGEMENT',1),('CORE_USERS_MANAGEMENT',2),('CORE_WORKGROUPS_MANAGEMENT',1),('CORE_WORKGROUPS_MANAGEMENT',2),('CORE_XSL_EXPORT_MANAGEMENT',1),('CRM_DEMAND_TYPES_MANAGEMENT',1),('DATABASE_GROUPS_MANAGEMENT',1),('DATABASE_MANAGEMENT_USERS',1),('DIRECTORY_MANAGEMENT',1),('DOCUMENT_CATEGORY_MANAGEMENT',1),('DOCUMENT_MANAGEMENT',1),('DOCUMENT_RULES_MANAGEMENT',1),('DOCUMENT_TYPES_MANAGEMENT',1),('EXTEND_STATISTICS',1),('EXTEND_STATISTICS',2),('EXTEND_STATS',1),('EXTEND_VOTE_TYPES_MANAGEMENT',1),('FORM_MANAGEMENT',1),('HELPDESK_MANAGEMENT',1),('HTMLPAGE_MANAGEMENT',1),('LIBRARY_MANAGEMENT',1),('MANAGE_ACTION_BUTTONS',1),('MANAGE_OPENGRAPH_SOCIALHUB',1),('MYLUTECE_MANAGE_AUTHENTICATION_FILTER',1),('MYLUTECE_MANAGE_EXTERNAL_APPLICATION',1),('MYLUTECE_MANAGEMENT',1),('PIWIK_MANAGEMENT',1),('RESOURCE_EXTENDER_MANAGEMENT',1),('SEO_MANAGEMENT',1),('SYSTEMINFO_MANAGEMENT',1),('WORKFLOW_MANAGEMENT',1);
/*!40000 ALTER TABLE `core_user_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user_role`
--

DROP TABLE IF EXISTS `core_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_user_role` (
  `role_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_user` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_key`,`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user_role`
--

LOCK TABLES `core_user_role` WRITE;
/*!40000 ALTER TABLE `core_user_role` DISABLE KEYS */;
INSERT INTO `core_user_role` VALUES ('all_site_manager',1),('all_site_manager',2),('assign_groups',1),('assign_groups',2),('assign_groups',3),('assign_roles',1),('assign_roles',2),('assign_roles',3),('content_contributor',1),('content_contributor',2),('content_contributor',3),('content_publisher',1),('content_publisher',2),('content_validator',1),('content_validator',2),('content_validator',4),('directory_manager',1),('directory_manager',2),('extend_action_button_manager',1),('extend_action_button_manager',2),('extend_manager',1),('extend_manager',2),('extend_opengraph_manager',1),('extend_opengraph_manager',2),('form_manager',1),('form_manager',2),('form_manager_admin',1),('helpdesk_manager',1),('helpdesk_manager',2),('manage_spaces',1),('manage_spaces',2),('manage_spaces',5),('mylutece_database_manager',1),('mylutece_manager',1),('super_admin',1),('super_admin',2),('view_space_validation',4),('view_space_work',3),('view_spaces_all',1),('view_spaces_all',2),('workflow_manager',1),('workflow_manager',2);
/*!40000 ALTER TABLE `core_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_xsl_export`
--

DROP TABLE IF EXISTS `core_xsl_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_xsl_export` (
  `id_xsl_export` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_file` int(11) DEFAULT NULL,
  `plugin` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`id_xsl_export`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_xsl_export`
--

LOCK TABLES `core_xsl_export` WRITE;
/*!40000 ALTER TABLE `core_xsl_export` DISABLE KEYS */;
INSERT INTO `core_xsl_export` VALUES (125,'Coeur - Export CSV des administrateurs','Export des utilisateurs back office dans un fichier CSV','csv',125,'core'),(126,'Coeur - Export XML des administrateurs','Export des utilisateurs back office dans un fichier XML','xml',126,'core'),(127,'MyLutece Database - Export CSV des utilisateurs','Export des utilisateur MyLutece Database dans un fichier CSV','csv',127,'mylutece-database'),(128,'MyLutece Database - Export XML des utilisateurs','Export des utilisateur MyLutece Database dans un fichier XML','xml',128,'mylutece-database');
/*!40000 ALTER TABLE `core_xsl_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_category`
--

DROP TABLE IF EXISTS `crm_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_category` (
  `id_category` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_category`
--

LOCK TABLES `crm_category` WRITE;
/*!40000 ALTER TABLE `crm_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_client_crm_item`
--

DROP TABLE IF EXISTS `crm_client_crm_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_client_crm_item` (
  `id_crm_queue` int(11) NOT NULL DEFAULT '0',
  `crm_item` mediumblob,
  PRIMARY KEY (`id_crm_queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_client_crm_item`
--

LOCK TABLES `crm_client_crm_item` WRITE;
/*!40000 ALTER TABLE `crm_client_crm_item` DISABLE KEYS */;
INSERT INTO `crm_client_crm_item` VALUES (2,'��\0sr\0Hfr.paris.lutece.plugins.crmclient.business.notification.NotificationItemo���%��o\0\0xr\02fr.paris.lutece.plugins.crmclient.business.CRMItem<Ö�d��\0L\0_mapParameterst\0Ljava/util/Map;L\0_strmCRMWebAppCodet\0Ljava/lang/String;xpsr\0java.util.LinkedHashMap4�N\\l��\0Z\0accessOrderxr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0	id_demandt\0\0t\0notification_objectt\0\"Votre demande de quotient familialt\0notification_messaget�<p>Bonjour&nbsp;Mr&nbsp;Francois merlin dit merlin,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre demande de quotient familal&nbsp;n&deg;&nbsp;QF-2, bas&eacute; sur les &eacute;l&eacute;ments suivants :</p>\r\n<p>&nbsp; - Num&eacute;ro fiscal de r&eacute;f&eacute;rence :&nbsp;12</p>\r\n<p>&nbsp; - Nombre de parts :&nbsp;2</p>\r\n<p>Est bien parvenu aux services concern&eacute;s de la mairie dePalyma.</p>\r\n<p>&nbsp;Vous pouvez t&eacute;l&eacute;charger <a href=\"https://dev.lutece.paris.fr/hackathon-dev/jsp/site/plugins/workflow/modules/createpdf/DoDownloadPDF.jsp?signature=d5ddd890c4ceb081b7737aaf4fe59f650b8f4f82&timestamp=1434643903094&id_directory_record=4&id_task=127\">ici</a> le r&eacute;capitulatif de votre demande</p>\r\n<p>&nbsp;</p>t\0notification_sendert\0PALYMAx\0p');
/*!40000 ALTER TABLE `crm_client_crm_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_client_crm_queue`
--

DROP TABLE IF EXISTS `crm_client_crm_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_client_crm_queue` (
  `id_crm_queue` int(11) NOT NULL DEFAULT '0',
  `is_locked` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id_crm_queue`),
  KEY `is_locked_crm_client_crm_queue` (`is_locked`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_client_crm_queue`
--

LOCK TABLES `crm_client_crm_queue` WRITE;
/*!40000 ALTER TABLE `crm_client_crm_queue` DISABLE KEYS */;
INSERT INTO `crm_client_crm_queue` VALUES (2,1);
/*!40000 ALTER TABLE `crm_client_crm_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_demand`
--

DROP TABLE IF EXISTS `crm_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_demand` (
  `id_demand` int(11) NOT NULL DEFAULT '0',
  `id_demand_type` int(11) NOT NULL DEFAULT '0',
  `id_crm_user` int(11) NOT NULL DEFAULT '0',
  `status_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_status_crm` int(11) NOT NULL DEFAULT '0',
  `data` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date_modification` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_demand`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_demand`
--

LOCK TABLES `crm_demand` WRITE;
/*!40000 ALTER TABLE `crm_demand` DISABLE KEYS */;
INSERT INTO `crm_demand` VALUES (1,2,1,'En attente de validation',1,'f6493e9e-51b4-4f40-99e8-d31d1a766c3c','2015-06-18 16:47:00'),(2,2,1,'Nouveau',0,'0fab4dca-ebee-4c83-baad-2e3e72e7d6e0','2015-06-18 16:52:52'),(3,2,1,'Nouveau',0,'f9ad538c-5d72-4f84-a131-00b642a72610','2015-06-18 16:52:56'),(4,2,1,'Nouveau',0,'6a811748-9968-4450-9d70-e16a53c98d80','2015-06-18 16:58:34'),(5,2,1,'Nouveau',0,'9d59681d-340d-468c-a80e-3c7d5661c446','2015-06-18 16:59:47'),(6,2,1,'Nouveau',0,'c24b724a-495f-4828-942a-f8d6ad9cf05a','2015-06-18 16:59:55'),(7,2,1,'Nouveau',0,'1ee19227-a7eb-4ff4-82af-8d2436ab83cc','2015-06-18 17:00:02');
/*!40000 ALTER TABLE `crm_demand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_demand_type`
--

DROP TABLE IF EXISTS `crm_demand_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_demand_type` (
  `id_demand_type` int(11) NOT NULL DEFAULT '0',
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url_resource` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url_info` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url_contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `demand_type_order` int(11) NOT NULL DEFAULT '1',
  `id_category` int(11) NOT NULL DEFAULT '0',
  `date_begin` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `workgroup_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `role_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `target` smallint(6) NOT NULL DEFAULT '0',
  `url_delete` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `is_include_id_user` smallint(6) NOT NULL DEFAULT '0',
  `is_need_authentication` smallint(6) NOT NULL DEFAULT '0',
  `is_need_validation` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_demand_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_demand_type`
--

LOCK TABLES `crm_demand_type` WRITE;
/*!40000 ALTER TABLE `crm_demand_type` DISABLE KEYS */;
INSERT INTO `crm_demand_type` VALUES (1,'Stationnement','https://dev.lutece.paris.fr/hackathon-dev/jsp/site/Portal.jsp?page=form&id_form=3','','',2,0,NULL,NULL,'all','none',0,'',1,1,1),(2,'Quotient Familial','https://dev.lutece.paris.fr/hackathon-dev/jsp/site/Portal.jsp?page=form&id_form=4','','',1,0,NULL,NULL,'all','none',0,'',1,1,1);
/*!40000 ALTER TABLE `crm_demand_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_demand_type_portlet`
--

DROP TABLE IF EXISTS `crm_demand_type_portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_demand_type_portlet` (
  `id_portlet` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  PRIMARY KEY (`id_portlet`,`id_category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_demand_type_portlet`
--

LOCK TABLES `crm_demand_type_portlet` WRITE;
/*!40000 ALTER TABLE `crm_demand_type_portlet` DISABLE KEYS */;
/*!40000 ALTER TABLE `crm_demand_type_portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_notification`
--

DROP TABLE IF EXISTS `crm_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_notification` (
  `id_notification` int(11) NOT NULL DEFAULT '0',
  `id_demand` int(11) NOT NULL DEFAULT '0',
  `is_read` smallint(6) NOT NULL DEFAULT '0',
  `object` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` mediumtext COLLATE utf8_unicode_ci,
  `date_creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sender` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_notification`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_notification`
--

LOCK TABLES `crm_notification` WRITE;
/*!40000 ALTER TABLE `crm_notification` DISABLE KEYS */;
INSERT INTO `crm_notification` VALUES (1,1,1,'Votre demande de quotient familial','<p>Bonjour&nbsp;Mr&nbsp;Francois merlin dit merlin,</p>\r\n<p>&nbsp;</p>\r\n<p>Votre demande de quotient familal&nbsp;n&deg;&nbsp;QF-4, bas&eacute; sur les &eacute;l&eacute;ments suivants :</p>\r\n<p>&nbsp; - Num&eacute;ro fiscal de r&eacute;f&eacute;rence :&nbsp;12</p>\r\n<p>&nbsp; - Nombre de parts :&nbsp;2</p>\r\n<p>Est bien parvenu aux services concern&eacute;s de la mairie dePalyma.</p>\r\n<p>&nbsp;Vous pouvez t&eacute;l&eacute;charger <a href=\"https://dev.lutece.paris.fr/hackathon-dev/jsp/site/plugins/workflow/modules/createpdf/DoDownloadPDF.jsp?signature=6aa6994539c5345b2ceb3eba8cb3c9aca210030a&timestamp=1434646019569&id_directory_record=6&id_task=127\">ici</a> le r&eacute;capitulatif de votre demande</p>\r\n<p>&nbsp;</p>','2015-06-18 16:47:55','PALYMA');
/*!40000 ALTER TABLE `crm_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_parameter`
--

DROP TABLE IF EXISTS `crm_parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_parameter` (
  `parameter_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parameter_value` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parameter_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_parameter`
--

LOCK TABLES `crm_parameter` WRITE;
/*!40000 ALTER TABLE `crm_parameter` DISABLE KEYS */;
INSERT INTO `crm_parameter` VALUES ('displayDraft','true');
/*!40000 ALTER TABLE `crm_parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_status_crm`
--

DROP TABLE IF EXISTS `crm_status_crm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_status_crm` (
  `id_status_crm` int(11) NOT NULL DEFAULT '0',
  `status_label` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_status_crm`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_status_crm`
--

LOCK TABLES `crm_status_crm` WRITE;
/*!40000 ALTER TABLE `crm_status_crm` DISABLE KEYS */;
INSERT INTO `crm_status_crm` VALUES (0,'crm.statusCRM.draft'),(1,'crm.statusCRM.validated');
/*!40000 ALTER TABLE `crm_status_crm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_user`
--

DROP TABLE IF EXISTS `crm_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_user` (
  `id_crm_user` int(11) NOT NULL DEFAULT '0',
  `user_guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` smallint(6) NOT NULL DEFAULT '1',
  `last_login` timestamp NOT NULL DEFAULT '1979-12-31 23:00:00',
  `current_last_login` timestamp NOT NULL DEFAULT '1979-12-31 23:00:00',
  `must_be_updated` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_crm_user`,`user_guid`),
  UNIQUE KEY `user_guid` (`user_guid`),
  KEY `index_crm_user` (`user_guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_user`
--

LOCK TABLES `crm_user` WRITE;
/*!40000 ALTER TABLE `crm_user` DISABLE KEYS */;
INSERT INTO `crm_user` VALUES (1,'palyma@palyma.fr',1,'1979-12-31 23:00:00','1979-12-31 23:00:00',0);
/*!40000 ALTER TABLE `crm_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crm_user_attribute`
--

DROP TABLE IF EXISTS `crm_user_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crm_user_attribute` (
  `id_crm_user` int(11) NOT NULL DEFAULT '0',
  `user_attribute_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_attribute_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_crm_user`,`user_attribute_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_user_attribute`
--

LOCK TABLES `crm_user_attribute` WRITE;
/*!40000 ALTER TABLE `crm_user_attribute` DISABLE KEYS */;
INSERT INTO `crm_user_attribute` VALUES (1,'user.business-info.online.email','palyma@palyma.fr'),(1,'user.name.given','Guillaume'),(1,'user.name.family','DUPOND'),(1,'user.business-info.telecom.telephone.number','');
/*!40000 ALTER TABLE `crm_user_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_action`
--

DROP TABLE IF EXISTS `directory_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directory_action` (
  `id_action` int(11) NOT NULL DEFAULT '0',
  `name_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_permission` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `directory_state` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id_action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directory_action`
--

LOCK TABLES `directory_action` WRITE;
/*!40000 ALTER TABLE `directory_action` DISABLE KEYS */;
INSERT INTO `directory_action` VALUES (1,'directory.action.modify.name','directory.action.modify.description','jsp/admin/plugins/directory/ModifyDirectory.jsp','icon-edit','MODIFY',0),(2,'directory.action.modify.name','directory.action.modify.description','jsp/admin/plugins/directory/ModifyDirectory.jsp','icon-edit','MODIFY',1),(3,'directory.action.manage_record.name','directory.action.manage_record.description','jsp/admin/plugins/directory/ManageDirectoryRecord.jsp',' icon-folder-open','MANAGE_RECORD',0),(4,'directory.action.manage_record.name','directory.action.manage_record.description','jsp/admin/plugins/directory/ManageDirectoryRecord.jsp',' icon-folder-open','MANAGE_RECORD',1),(5,'directory.action.import_record.name','directory.action.import_record.description','jsp/admin/plugins/directory/ImportDirectoryRecord.jsp','icon-upload','IMPORT_RECORD',0),(6,'directory.action.import_record.name','directory.action.import_record.description','jsp/admin/plugins/directory/ImportDirectoryRecord.jsp','icon-upload','IMPORT_RECORD',1),(7,'directory.action.delete_all_directory_record.name','directory.action.delete_all_directory_record.description','jsp/admin/plugins/directory/ConfirmRemoveAllDirectoryRecord.jsp','icon-ban-circle','DELETE_ALL_RECORD',0),(8,'directory.action.delete_all_directory_record.name','directory.action.delete_all_directory_record.description','jsp/admin/plugins/directory/ConfirmRemoveAllDirectoryRecord.jsp','icon-ban-circle','DELETE_ALL_RECORD',1),(9,'directory.action.disable.name','directory.action.disable.description','jsp/admin/plugins/directory/ConfirmDisableDirectory.jsp','icon-remove','CHANGE_STATE',1),(10,'directory.action.enable.name','directory.action.enable.description','jsp/admin/plugins/directory/DoEnableDirectory.jsp','icon-ok','CHANGE_STATE',0),(11,'directory.action.copy.name','directory.action.copy.description','jsp/admin/plugins/directory/DoCopyDirectory.jsp','icon-plus-sign','COPY',0),(12,'directory.action.copy.name','directory.action.copy.description','jsp/admin/plugins/directory/DoCopyDirectory.jsp','icon-plus-sign','COPY',1),(13,'directory.action.delete.name','directory.action.delete.description','jsp/admin/plugins/directory/ConfirmRemoveDirectory.jsp','icon-trash','DELETE',0);
/*!40000 ALTER TABLE `directory_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_category`
--

DROP TABLE IF EXISTS `directory_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directory_category` (
  `id_category` int(11) NOT NULL DEFAULT '0',
  `title_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directory_category`
--

LOCK TABLES `directory_category` WRITE;
/*!40000 ALTER TABLE `directory_category` DISABLE KEYS */;
INSERT INTO `directory_category` VALUES (1,'directory.category_xsl.export.title'),(2,'directory.category_xsl.style_form_search.title'),(3,'directory.category_xsl.style_result_list.title'),(4,'directory.category_xsl.style_result_record.title');
/*!40000 ALTER TABLE `directory_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_config_entry`
--

DROP TABLE IF EXISTS `directory_config_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directory_config_entry` (
  `id_config` int(11) NOT NULL DEFAULT '0',
  `id_entry` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_config`,`id_entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directory_config_entry`
--

LOCK TABLES `directory_config_entry` WRITE;
/*!40000 ALTER TABLE `directory_config_entry` DISABLE KEYS */;
INSERT INTO `directory_config_entry` VALUES (1,1),(1,2),(2,13),(2,14),(2,15),(2,16),(2,17),(2,18),(2,19),(2,20),(2,22),(2,23),(2,24),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10);
/*!40000 ALTER TABLE `directory_config_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_config_producer`
--

DROP TABLE IF EXISTS `directory_config_producer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directory_config_producer` (
  `id_config` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_entry_name_file` int(11) DEFAULT NULL,
  `id_directory` int(11) DEFAULT NULL,
  `config_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_config_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extract_empty` int(11) DEFAULT '0',
  PRIMARY KEY (`id_config`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directory_config_producer`
--

LOCK TABLES `directory_config_producer` WRITE;
/*!40000 ALTER TABLE `directory_config_producer` DISABLE KEYS */;
INSERT INTO `directory_config_producer` VALUES (1,'PDF',1,3,'PDF','','default',1),(2,'PDF stationnement',13,5,'PDF','','default',1),(3,'PDF QF',3,4,'PDF','','default',1);
/*!40000 ALTER TABLE `directory_config_producer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_default_config`
--

DROP TABLE IF EXISTS `directory_default_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directory_default_config` (
  `id_config` int(11) NOT NULL DEFAULT '0',
  `id_directory` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_config`,`id_directory`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directory_default_config`
--

LOCK TABLES `directory_default_config` WRITE;
/*!40000 ALTER TABLE `directory_default_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `directory_default_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_directory`
--

DROP TABLE IF EXISTS `directory_directory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directory_directory` (
  `id_directory` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `unavailability_message` mediumtext COLLATE utf8_unicode_ci,
  `workgroup_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_key` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_enabled` smallint(6) DEFAULT '0',
  `date_creation` timestamp NULL DEFAULT NULL,
  `id_result_list_template` int(11) DEFAULT NULL,
  `id_result_record_template` int(11) DEFAULT NULL,
  `id_form_search_template` int(11) DEFAULT NULL,
  `number_record_per_page` int(11) DEFAULT NULL,
  `id_workflow` int(11) DEFAULT NULL,
  `is_search_wf_state` smallint(6) DEFAULT '0',
  `is_search_comp_wf_state` smallint(6) DEFAULT '0',
  `is_ascending_sort` smallint(6) DEFAULT '1',
  `is_directory_record_activated` smallint(6) DEFAULT '1',
  `is_indexed` smallint(6) DEFAULT '1',
  `id_sort_entry` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_sort_entry_front` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_ascending_sort_front` smallint(6) DEFAULT '1',
  `front_office_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `automatic_record_removal_workflow_state` int(11) DEFAULT '-1',
  PRIMARY KEY (`id_directory`),
  KEY `id_result_list_template_fk` (`id_result_list_template`),
  KEY `id_result_record_template_fk` (`id_result_record_template`),
  KEY `id_form_search_template_fk` (`id_form_search_template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directory_directory`
--

LOCK TABLES `directory_directory` WRITE;
/*!40000 ALTER TABLE `directory_directory` DISABLE KEYS */;
INSERT INTO `directory_directory` VALUES (1,'Teleservice 1.2','Teleservice 1','<p>Annuaire indisponible.</p>','all','none',1,'2015-06-17 16:23:17',4,5,3,50,102,0,0,1,1,1,NULL,NULL,1,'',-1),(2,'Teleservice 2','Teleservice 2','<p>Annuaire indisponible.</p>','all','none',1,'2015-06-17 16:25:26',4,5,3,50,102,0,0,1,1,1,NULL,NULL,1,'',-1),(3,'Teleservice 1','Teleservice 1','Message d\'indisponibilité','',NULL,1,'2015-06-17 16:43:54',4,5,3,5,102,0,0,1,1,1,NULL,NULL,1,NULL,-1),(4,'Quotient familial','Quotient familial','<p>Message d\'indisponibilit&eacute;</p>','all','none',1,'2015-06-18 15:12:52',4,5,3,5,103,0,0,1,1,1,NULL,NULL,1,'',-1),(5,'Stationnement','Stationnement','Message d\'indisponibilité','',NULL,1,'2015-06-18 15:14:20',4,5,3,5,102,0,0,1,1,1,NULL,NULL,1,NULL,-1);
/*!40000 ALTER TABLE `directory_directory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_directory_attribute`
--

DROP TABLE IF EXISTS `directory_directory_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directory_directory_attribute` (
  `id_directory` int(11) NOT NULL DEFAULT '0',
  `attribute_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attribute_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_directory`,`attribute_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directory_directory_attribute`
--

LOCK TABLES `directory_directory_attribute` WRITE;
/*!40000 ALTER TABLE `directory_directory_attribute` DISABLE KEYS */;
INSERT INTO `directory_directory_attribute` VALUES (1,'dateModificationShownInSearch','false'),(1,'searchOperatorOr','false'),(1,'dateShownInHistory','false'),(1,'dateModificationShownInResultList','false'),(1,'dateModificationShownInResultRecord','false'),(1,'dateModificationShownInExport','false'),(1,'dateShownInExport','false'),(1,'dateModificationShownInHistory','false'),(1,'dateShownInAdvancedSearch','false'),(1,'dateShownInResultRecord','false'),(1,'dateModificationShownInAdvancedSearch','false'),(1,'dateShownInSearch','false'),(1,'dateShownInResultList','false'),(1,'dateShownInMultiSearch','false'),(1,'dateModificationShownInMultiSearch','false'),(2,'dateModificationShownInResultRecord','false'),(2,'dateModificationShownInExport','false'),(2,'dateShownInExport','false'),(2,'dateModificationShownInHistory','false'),(2,'dateShownInResultRecord','false'),(2,'dateShownInAdvancedSearch','false'),(2,'dateModificationShownInAdvancedSearch','false'),(2,'dateShownInResultList','false'),(2,'dateShownInSearch','false'),(2,'dateShownInMultiSearch','false'),(2,'dateModificationShownInMultiSearch','false'),(2,'dateModificationShownInResultList','false'),(2,'searchOperatorOr','false'),(2,'dateShownInHistory','false'),(2,'dateModificationShownInSearch','false'),(3,'dateModificationShownInResultRecord','false'),(3,'dateModificationShownInExport','false'),(3,'dateShownInExport','false'),(3,'dateModificationShownInHistory','false'),(3,'dateShownInResultRecord','false'),(3,'dateShownInAdvancedSearch','false'),(3,'dateModificationShownInAdvancedSearch','false'),(3,'dateShownInResultList','false'),(3,'dateShownInSearch','false'),(3,'dateShownInMultiSearch','false'),(3,'dateModificationShownInMultiSearch','false'),(3,'dateModificationShownInResultList','false'),(3,'searchOperatorOr','false'),(3,'dateShownInHistory','false'),(3,'dateModificationShownInSearch','false'),(4,'dateModificationShownInResultList','false'),(4,'dateShownInSearch','false'),(4,'dateShownInResultList','false'),(4,'dateModificationShownInAdvancedSearch','false'),(4,'dateShownInAdvancedSearch','false'),(4,'dateShownInResultRecord','false'),(4,'dateModificationShownInHistory','false'),(4,'dateShownInExport','false'),(4,'dateModificationShownInExport','false'),(4,'dateModificationShownInResultRecord','false'),(5,'dateModificationShownInResultRecord','false'),(5,'dateShownInSearch','false'),(5,'dateShownInResultList','false'),(5,'dateModificationShownInAdvancedSearch','false'),(5,'dateShownInAdvancedSearch','false'),(5,'dateShownInResultRecord','false'),(5,'dateModificationShownInHistory','false'),(5,'dateShownInExport','false'),(5,'dateModificationShownInExport','false'),(5,'dateModificationShownInMultiSearch','false'),(5,'dateShownInMultiSearch','false'),(5,'dateModificationShownInResultList','false'),(5,'searchOperatorOr','false'),(5,'dateShownInHistory','false'),(5,'dateModificationShownInSearch','false'),(4,'searchOperatorOr','false'),(4,'dateModificationShownInMultiSearch','false'),(4,'dateShownInMultiSearch','false'),(4,'dateShownInHistory','false'),(4,'dateModificationShownInSearch','false');
/*!40000 ALTER TABLE `directory_directory_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_directory_parameter`
--

DROP TABLE IF EXISTS `directory_directory_parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directory_directory_parameter` (
  `parameter_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parameter_value` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parameter_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directory_directory_parameter`
--

LOCK TABLES `directory_directory_parameter` WRITE;
/*!40000 ALTER TABLE `directory_directory_parameter` DISABLE KEYS */;
INSERT INTO `directory_directory_parameter` VALUES ('number_record_per_page','50'),('date_shown_in_result_list','0'),('date_shown_in_result_record','0'),('date_shown_in_history','0'),('date_shown_in_search','0'),('date_shown_in_advanced_search','0'),('date_shown_in_multi_search','0'),('date_shown_in_export','0'),('unavailability_message','Annuaire indisponible.'),('activate_directory_record','1'),('is_indexed','1'),('export_csv_encoding','ISO-8859-1'),('export_xml_encoding','UTF-8'),('date_modification_shown_in_result_list','0'),('date_modification_shown_in_result_record','0'),('date_modification_shown_in_history','0'),('date_modification_shown_in_search','0'),('date_modification_shown_in_advanced_search','0'),('date_modification_shown_in_multi_search','0'),('date_modification_shown_in_export','0');
/*!40000 ALTER TABLE `directory_directory_parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_entry`
--

DROP TABLE IF EXISTS `directory_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directory_entry` (
  `id_entry` int(11) NOT NULL DEFAULT '0',
  `id_entry_parent` int(11) DEFAULT NULL,
  `id_directory` int(11) DEFAULT NULL,
  `id_type` int(11) DEFAULT NULL,
  `title` mediumtext COLLATE utf8_unicode_ci,
  `help_message` mediumtext COLLATE utf8_unicode_ci,
  `help_message_search` mediumtext COLLATE utf8_unicode_ci,
  `entry_comment` mediumtext COLLATE utf8_unicode_ci,
  `is_mandatory` smallint(6) DEFAULT '0',
  `is_indexed` smallint(6) DEFAULT '0',
  `is_indexed_as_title` smallint(6) DEFAULT '0',
  `is_indexed_as_summary` smallint(6) DEFAULT '0',
  `is_shown_in_search` smallint(6) DEFAULT '0',
  `is_shown_in_result_list` smallint(6) DEFAULT '0',
  `is_shown_in_result_record` smallint(6) DEFAULT '0',
  `is_fields_in_line` smallint(6) DEFAULT '0',
  `entry_position` int(11) DEFAULT '0',
  `display_height` int(11) DEFAULT NULL,
  `display_width` int(11) DEFAULT NULL,
  `is_role_associated` smallint(6) DEFAULT '0',
  `is_workgroup_associated` smallint(6) DEFAULT '0',
  `is_multiple_search_fields` smallint(6) DEFAULT '0',
  `is_shown_in_history` smallint(6) DEFAULT '0',
  `id_entry_associate` int(11) DEFAULT NULL,
  `request_sql` mediumtext COLLATE utf8_unicode_ci,
  `is_add_value_search_all` smallint(6) DEFAULT '0',
  `label_value_search_all` mediumtext COLLATE utf8_unicode_ci,
  `map_provider` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_autocomplete_entry` smallint(6) DEFAULT '0',
  `is_shown_in_export` smallint(6) DEFAULT '0',
  `is_shown_in_completeness` smallint(6) DEFAULT '0',
  `anonymize` smallint(6) DEFAULT NULL,
  `num_row` smallint(6) DEFAULT '0',
  `num_column` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id_entry`),
  KEY `id_directory_fk` (`id_directory`),
  KEY `id_type_fk` (`id_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directory_entry`
--

LOCK TABLES `directory_entry` WRITE;
/*!40000 ALTER TABLE `directory_entry` DISABLE KEYS */;
INSERT INTO `directory_entry` VALUES (1,NULL,3,11,'N°',NULL,'','',0,1,0,0,0,1,1,0,1,0,0,0,0,0,0,0,NULL,0,NULL,'',0,0,0,NULL,0,0),(2,NULL,3,6,'test','test','test','',0,1,0,0,0,1,1,0,2,0,0,0,0,0,0,0,'',0,NULL,'',0,1,0,NULL,0,0),(3,NULL,4,11,'N°',NULL,'','',0,1,0,0,0,1,1,0,1,0,0,0,0,0,0,0,NULL,0,NULL,'',0,0,0,NULL,0,0),(4,NULL,4,6,'Civilité','','','',0,1,0,0,0,1,1,0,2,0,0,0,0,0,0,0,'',0,NULL,'',0,1,0,NULL,0,0),(5,NULL,4,6,'Nom famille','','','',0,1,0,0,0,1,1,0,3,0,0,0,0,0,0,0,'',0,NULL,'',0,1,0,NULL,0,0),(6,NULL,4,6,'Nom usage','','','',0,1,0,0,0,1,1,0,4,0,0,0,0,0,0,0,'',0,NULL,'',0,1,0,NULL,0,0),(7,NULL,4,6,'Prénom','','','',0,1,0,0,0,1,1,0,5,0,0,0,0,0,0,0,'',0,NULL,'',0,1,0,NULL,0,0),(8,NULL,4,14,'email','','','',0,1,0,0,0,1,1,0,6,0,0,0,0,0,0,0,'',0,NULL,'',0,1,0,NULL,0,0),(9,NULL,4,6,'Revenu fiscal de référence','','','',0,1,0,0,0,1,1,0,7,0,0,0,0,0,0,0,'',0,NULL,'',0,1,0,NULL,0,0),(10,NULL,4,6,'Nombre de part','','','',0,1,0,0,0,1,1,0,8,0,0,0,0,0,0,0,'',0,NULL,'',0,1,0,NULL,0,0),(11,NULL,4,6,'FORM_ID_DEMAND','','','',0,1,0,0,0,1,1,0,9,0,0,0,0,0,0,0,'',0,NULL,'',0,1,0,NULL,0,0),(12,NULL,4,6,'FORM_USER_GUID','','','',0,1,0,0,0,1,1,0,10,0,0,0,0,0,0,0,'',0,NULL,'',0,1,0,NULL,0,0),(13,NULL,5,11,'N°',NULL,'','',0,1,0,0,0,1,1,0,1,0,0,0,0,0,0,0,NULL,0,NULL,'',0,0,0,NULL,0,0),(14,NULL,5,6,'Civilité','','','',0,1,0,0,0,1,1,0,2,0,0,0,0,0,0,0,'',0,NULL,'',0,1,0,NULL,0,0),(15,NULL,5,6,'Nom','','','',0,1,0,0,0,1,1,0,3,0,0,0,0,0,0,0,'',0,NULL,'',0,1,0,NULL,0,0),(16,NULL,5,6,'Prénom','','','',0,1,0,0,0,1,1,0,4,0,0,0,0,0,0,0,'',0,NULL,'',0,1,0,NULL,0,0),(17,NULL,5,6,'Adresse','','','',0,1,0,0,0,1,1,0,5,0,0,0,0,0,0,0,'',0,NULL,'',0,1,0,NULL,0,0),(18,NULL,5,6,'code postal','','','',0,1,0,0,0,1,1,0,6,0,0,0,0,0,0,0,'',0,NULL,'',0,1,0,NULL,0,0),(19,NULL,5,6,'commune','','','',0,1,0,0,0,1,1,0,7,0,0,0,0,0,0,0,'',0,NULL,'',0,1,0,NULL,0,0),(20,NULL,5,6,'immatriculation','','','',0,1,0,0,0,1,1,0,8,0,0,0,0,0,0,0,'',0,NULL,'',0,1,0,NULL,0,0),(21,NULL,5,6,'Energie','','','',0,1,0,0,0,1,1,0,9,0,0,0,0,0,0,0,'',0,NULL,'',0,1,0,NULL,0,0),(22,NULL,5,6,'Marque','','','',0,1,0,0,0,1,1,0,10,0,0,0,0,0,0,0,'',0,NULL,'',0,1,0,NULL,0,0),(23,NULL,5,6,'Couleur','','','',0,1,0,0,0,1,1,0,11,0,0,0,0,0,0,0,'',0,NULL,'',0,1,0,NULL,0,0),(24,NULL,5,6,'Dénomination commerciale','','','',0,1,0,0,0,1,1,0,12,0,0,0,0,0,0,0,'',0,NULL,'',0,1,0,NULL,0,0),(25,NULL,5,6,'FORM_ID_DEMAND','','','',0,1,0,0,0,1,1,0,13,0,0,0,0,0,0,0,'',0,NULL,'',0,1,0,NULL,0,0),(26,NULL,5,6,'FORM_USER_GUID','','','',0,1,0,0,0,1,1,0,14,0,0,0,0,0,0,0,'',0,NULL,'',0,1,0,NULL,0,0),(27,NULL,5,13,'récapitulatif PDF','','','',0,0,0,0,0,0,0,0,15,0,0,0,0,0,0,0,NULL,0,NULL,'',0,0,0,NULL,0,0),(28,NULL,4,13,'récapitulatif PDF','','','',0,0,0,0,0,0,0,0,11,0,0,0,0,0,0,0,NULL,0,NULL,'',0,0,0,NULL,0,0);
/*!40000 ALTER TABLE `directory_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_entry_parameter`
--

DROP TABLE IF EXISTS `directory_entry_parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directory_entry_parameter` (
  `parameter_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parameter_value` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parameter_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directory_entry_parameter`
--

LOCK TABLES `directory_entry_parameter` WRITE;
/*!40000 ALTER TABLE `directory_entry_parameter` DISABLE KEYS */;
INSERT INTO `directory_entry_parameter` VALUES ('field_in_line','1'),('mandatory','0'),('indexed','0'),('indexed_as_title','0'),('indexed_as_summary','0'),('multiple_search_fields','0'),('shown_in_advanced_search','0'),('shown_in_result_list','1'),('shown_in_result_record','1'),('shown_in_history','1'),('width','50'),('height','50'),('role_associated','0'),('workgroup_associated','0'),('max_size_enter','50'),('autocomplete_entry','0'),('shown_in_export','1'),('shown_in_completeness','0'),('file_max_size','2097152'),('max_files','1');
/*!40000 ALTER TABLE `directory_entry_parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_entry_type`
--

DROP TABLE IF EXISTS `directory_entry_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directory_entry_type` (
  `id_type` int(11) NOT NULL DEFAULT '0',
  `title_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_group` smallint(6) DEFAULT '0',
  `is_comment` smallint(6) DEFAULT '0',
  `is_mylutece_user` smallint(6) DEFAULT '0',
  `class_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directory_entry_type`
--

LOCK TABLES `directory_entry_type` WRITE;
/*!40000 ALTER TABLE `directory_entry_type` DISABLE KEYS */;
INSERT INTO `directory_entry_type` VALUES (1,'directory.entry_type_radio_button.title',0,0,0,'fr.paris.lutece.plugins.directory.business.EntryTypeRadioButton'),(2,'directory.entry_type_check_box.title',0,0,0,'fr.paris.lutece.plugins.directory.business.EntryTypeCheckBox'),(3,'directory.entry_type_comment.title',0,1,0,'fr.paris.lutece.plugins.directory.business.EntryTypeComment'),(4,'directory.entry_type_date.title',0,0,0,'fr.paris.lutece.plugins.directory.business.EntryTypeDate'),(5,'directory.entry_type_select.title',0,0,0,'fr.paris.lutece.plugins.directory.business.EntryTypeSelect'),(6,'directory.entry_type_text.title',0,0,0,'fr.paris.lutece.plugins.directory.business.EntryTypeText'),(7,'directory.entry_type_text_area.title',0,0,0,'fr.paris.lutece.plugins.directory.business.EntryTypeTextArea'),(8,'directory.entry_type_file.title',0,0,0,'fr.paris.lutece.plugins.directory.business.EntryTypeFile'),(9,'directory.entry_type_group.title',1,0,0,'fr.paris.lutece.plugins.directory.business.EntryTypeGroup'),(10,'directory.entry_type_img.title',0,0,0,'fr.paris.lutece.plugins.directory.business.EntryTypeImg'),(11,'directory.entry_type_numbering.title',0,0,0,'fr.paris.lutece.plugins.directory.business.EntryTypeNumbering'),(12,'directory.entry_type_directory.title',0,0,0,'fr.paris.lutece.plugins.directory.business.EntryTypeDirectory'),(13,'directory.entry_type_url.title',0,0,0,'fr.paris.lutece.plugins.directory.business.EntryTypeUrl'),(14,'directory.entry_type_mail.title',0,0,0,'fr.paris.lutece.plugins.directory.business.EntryTypeMail'),(15,'directory.entry_type_sql.title',0,0,0,'fr.paris.lutece.plugins.directory.business.EntryTypeSQL'),(16,'directory.entry_type_geolocation.title',0,0,0,'fr.paris.lutece.plugins.directory.business.EntryTypeGeolocation'),(17,'directory.entry_type_internallink.title',0,0,0,'fr.paris.lutece.plugins.directory.business.EntryTypeInternalLink'),(18,'directory.entry_type_richtext.title',0,0,0,'fr.paris.lutece.plugins.directory.business.EntryTypeRichText'),(19,'directory.entry_type_mylutece_user.title',0,0,1,'fr.paris.lutece.plugins.directory.business.EntryTypeMyLuteceUser'),(20,'directory.entry_type_download_url.title',0,0,0,'fr.paris.lutece.plugins.directory.business.EntryTypeDownloadUrl'),(21,'directory.entry_type_remote_mylutece_user.title',0,0,1,'fr.paris.lutece.plugins.directory.business.EntryTypeRemoteMyLuteceUser'),(22,'directory.entry_type_array.title',0,0,0,'fr.paris.lutece.plugins.directory.business.EntryTypeArray');
/*!40000 ALTER TABLE `directory_entry_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_field`
--

DROP TABLE IF EXISTS `directory_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directory_field` (
  `id_field` int(11) NOT NULL DEFAULT '0',
  `id_entry` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEFAULT_value` mediumtext COLLATE utf8_unicode_ci,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `is_DEFAULT_value` smallint(6) DEFAULT '0',
  `max_size_enter` int(11) DEFAULT NULL,
  `field_position` int(11) DEFAULT NULL,
  `value_type_date` date DEFAULT NULL,
  `role_key` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `workgroup_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_shown_in_result_list` smallint(6) DEFAULT '0',
  `is_shown_in_result_record` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id_field`),
  KEY `id_entry_fk` (`id_entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directory_field`
--

LOCK TABLES `directory_field` WRITE;
/*!40000 ALTER TABLE `directory_field` DISABLE KEYS */;
INSERT INTO `directory_field` VALUES (1,1,'','3',0,0,0,0,1,NULL,NULL,NULL,0,0),(2,2,NULL,'',0,50,0,250,2,NULL,NULL,NULL,0,1),(3,3,'QF-','5',0,0,0,0,3,NULL,NULL,NULL,0,0),(4,4,NULL,'',0,50,0,250,4,NULL,NULL,NULL,0,1),(5,5,NULL,'',0,50,0,250,5,NULL,NULL,NULL,0,1),(6,6,NULL,'',0,50,0,250,6,NULL,NULL,NULL,0,1),(7,7,NULL,'',0,50,0,250,7,NULL,NULL,NULL,0,1),(8,8,NULL,'',0,50,0,250,8,NULL,NULL,NULL,0,1),(9,9,NULL,'',0,50,0,250,9,NULL,NULL,NULL,0,1),(10,10,NULL,'',0,50,0,250,10,NULL,NULL,NULL,0,1),(11,11,NULL,'FORM_ID_DEMAND',0,0,0,0,11,NULL,NULL,NULL,0,1),(12,12,NULL,'FORM_USER_GUID',0,0,0,0,12,NULL,NULL,NULL,0,1),(13,13,'STAT-','1',0,0,0,0,13,NULL,NULL,NULL,0,0),(14,14,NULL,'',0,50,0,250,14,NULL,NULL,NULL,0,1),(15,15,NULL,'',0,50,0,250,15,NULL,NULL,NULL,0,1),(16,16,NULL,'',0,50,0,250,16,NULL,NULL,NULL,0,1),(17,17,NULL,'',0,50,0,250,17,NULL,NULL,NULL,0,1),(18,18,NULL,'',0,50,0,250,18,NULL,NULL,NULL,0,1),(19,19,NULL,'',0,50,0,250,19,NULL,NULL,NULL,0,1),(20,20,NULL,'',0,50,0,250,20,NULL,NULL,NULL,0,1),(21,21,NULL,'',0,50,0,250,21,NULL,NULL,NULL,0,1),(22,22,NULL,'',0,50,0,250,22,NULL,NULL,NULL,0,1),(23,23,NULL,'',0,50,0,250,23,NULL,NULL,NULL,0,1),(24,24,NULL,'',0,50,0,250,24,NULL,NULL,NULL,0,1),(25,25,NULL,'FORM_ID_DEMAND',0,0,0,0,25,NULL,NULL,NULL,0,1),(26,26,NULL,'FORM_USER_GUID',0,0,0,0,26,NULL,NULL,NULL,0,1),(27,27,NULL,'',0,50,0,50,27,NULL,NULL,NULL,0,0),(28,28,NULL,'',0,50,0,50,28,NULL,NULL,NULL,0,0);
/*!40000 ALTER TABLE `directory_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_file`
--

DROP TABLE IF EXISTS `directory_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directory_file` (
  `id_file` int(11) NOT NULL DEFAULT '0',
  `title` mediumtext COLLATE utf8_unicode_ci,
  `id_physical_file` int(11) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_file`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directory_file`
--

LOCK TABLES `directory_file` WRITE;
/*!40000 ALTER TABLE `directory_file` DISABLE KEYS */;
INSERT INTO `directory_file` VALUES (1,'export_directory_xml.xsl',1,1802,'text/xml'),(2,'export_directory_csv.xsl',2,1261,'text/xml'),(3,'form_search_style.xsl',3,294,'text/xml'),(4,'result_list_style.xsl',4,2758,'text/xml'),(5,'result_record_style.xsl',5,5935,'text/xml');
/*!40000 ALTER TABLE `directory_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_indexer_action`
--

DROP TABLE IF EXISTS `directory_indexer_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directory_indexer_action` (
  `id_action` int(11) NOT NULL DEFAULT '0',
  `id_record` int(11) NOT NULL DEFAULT '0',
  `id_task` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_action`),
  KEY `id_indexer_task` (`id_task`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directory_indexer_action`
--

LOCK TABLES `directory_indexer_action` WRITE;
/*!40000 ALTER TABLE `directory_indexer_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `directory_indexer_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_physical_file`
--

DROP TABLE IF EXISTS `directory_physical_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directory_physical_file` (
  `id_physical_file` int(11) NOT NULL DEFAULT '0',
  `file_value` mediumblob,
  PRIMARY KEY (`id_physical_file`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directory_physical_file`
--

LOCK TABLES `directory_physical_file` WRITE;
/*!40000 ALTER TABLE `directory_physical_file` DISABLE KEYS */;
INSERT INTO `directory_physical_file` VALUES (1,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet version=\"1.0\"\r\n	xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:output method=\"xml\" version=\"1.0\" encoding=\"UTF-8\"\r\n		indent=\"yes\"\r\n		cdata-section-elements=\"title record-field-value mime-type status\" />\r\n\r\n\r\n	<xsl:template match=\"directory\">\r\n		<directory id=\"{@id}\">\r\n			<title>\r\n				<xsl:value-of select=\"title\" />\r\n			</title>\r\n			<creation-date>\r\n				<xsl:value-of select=\"creation-date\" />\r\n			</creation-date>\r\n			<list-entry>\r\n				<xsl:apply-templates select=\"list-entry/entry\" />\r\n				<xsl:apply-templates select=\"list-entry/status\" />\r\n			</list-entry>\r\n			<list-record>\r\n				<xsl:apply-templates select=\"list-record/record\" />\r\n			</list-record>\r\n		</directory>\r\n	</xsl:template>\r\n\r\n\r\n\r\n	<xsl:template match=\"record\">\r\n		<record id=\"{@id}\">\r\n			<creation-date>\r\n				<xsl:value-of select=\"creation-date\" />\r\n			</creation-date>\r\n			<modification-date>\r\n				<xsl:value-of select=\"modification-date\" />\r\n			</modification-date>\r\n			<status>\r\n				<xsl:value-of select=\"status\" />\r\n			</status>\r\n			<list-entry>\r\n				<xsl:apply-templates select=\"list-entry/entry\" />\r\n			</list-entry>\r\n		</record>\r\n	</xsl:template>\r\n\r\n\r\n	<xsl:template match=\"record/list-entry/entry\">\r\n		<entry id=\"{@id}\">\r\n			<list-record-field>\r\n				<xsl:apply-templates select=\"list-record-field/record-field\" />\r\n			</list-record-field>\r\n		</entry>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"entry\">\r\n		<entry id=\"{@id}\">\r\n			<title>\r\n				<xsl:value-of select=\"title\" />\r\n			</title>\r\n		</entry>\r\n	</xsl:template>\r\n	\r\n\r\n	<xsl:template match=\"record-field\">\r\n		<record-field-value>\r\n			<xsl:value-of select=\"record-field-value\" />\r\n		</record-field-value>\r\n		<xsl:apply-templates select=\"file\" />\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"file\">\r\n		<xsl:choose>\r\n			<xsl:when test=\"count(child::*) != 0\">\r\n				<file id=\"{@id}\">\r\n					<title>\r\n						<xsl:value-of select=\"title\" />\r\n					</title>\r\n					<size>\r\n						<xsl:value-of select=\"size\" />\r\n					</size>\r\n					<mime-type>\r\n						<xsl:value-of select=\"mime-type\" />\r\n					</mime-type>\r\n				</file>\r\n\r\n			</xsl:when>\r\n			<xsl:otherwise>\r\n				<file />\r\n			</xsl:otherwise>\r\n		</xsl:choose>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"status\">\r\n		<xsl:if test=\"@display=\'yes\'\">\r\n                    <status>1</status>\r\n		</xsl:if>\r\n		<xsl:if test=\"@display=\'no\'\">\r\n                    <status>0</status>\r\n		</xsl:if>\r\n	</xsl:template>\r\n\r\n</xsl:stylesheet>'),(2,'<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:output method=\"text\"/>\r\n\r\n	<xsl:template match=\"directory\">\r\n		<xsl:apply-templates select=\"list-entry/entry\"/>\r\n		<xsl:apply-templates select=\"list-entry/status\"/>\r\n		<xsl:if test=\"count(//partialexport)=0\" >\r\n			<xsl:text>&#10;</xsl:text>\r\n		</xsl:if>\r\n		<xsl:apply-templates select=\"list-record/record\"/>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"record\">\r\n		<xsl:apply-templates select=\"list-entry/entry/list-record-field\"/>\r\n		<xsl:if test=\"status = true()\">\r\n			<xsl:text>;\"</xsl:text>\r\n			<xsl:value-of disable-output-escaping=\"yes\" select=\"status\"/>\r\n			<xsl:text>\"</xsl:text>\r\n		</xsl:if>\r\n		<xsl:if test=\"count(//partialexport)=0\" >\r\n			<xsl:text>&#10;</xsl:text>\r\n		</xsl:if>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"list-record-field\">\r\n		<xsl:text>\"</xsl:text>\r\n		<xsl:apply-templates select=\"record-field\"/>\r\n		<xsl:text>\"</xsl:text>\r\n		<xsl:if test=\"position()!=last()\">\r\n			<xsl:text>;</xsl:text>\r\n		</xsl:if>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"entry\">\r\n		<xsl:text>\"</xsl:text>\r\n		<xsl:if test=\"@showxy = \'true\'\">\r\n			<xsl:value-of select=\"title\"/>\r\n			<xsl:text>_X</xsl:text>\r\n			<xsl:text>,</xsl:text>\r\n			<xsl:value-of select=\"title\"/>\r\n			<xsl:text>_Y,</xsl:text>\r\n			<xsl:value-of select=\"title\"/>\r\n			<xsl:text>_provider,</xsl:text>\r\n		</xsl:if>\r\n		<xsl:value-of select=\"title\"/>\r\n		<xsl:if test=\"@showxy = \'true\'\">\r\n			<xsl:text>_address</xsl:text>\r\n		</xsl:if>\r\n		<xsl:text>\"</xsl:text>\r\n		<xsl:if test=\"position()!=last()\">\r\n			<xsl:text>;</xsl:text>\r\n		</xsl:if>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"status\">\r\n		<xsl:if test=\"@display=\'yes\'\">\r\n            <xsl:text>;\"status\";</xsl:text>\r\n		</xsl:if>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"record-field\">\r\n		<xsl:choose>\r\n			<xsl:when test=\"../@geolocation = \'true\'\">\r\n				<xsl:if test=\"../../@showxy = \'true\'\">\r\n					<xsl:if test=\"@title = \'X\'\">\r\n						<xsl:value-of disable-output-escaping=\"yes\" select=\"record-field-value\"/>\r\n						<xsl:text>,</xsl:text>\r\n					</xsl:if>\r\n					<xsl:if test=\"@title = \'Y\'\">\r\n						<xsl:value-of disable-output-escaping=\"yes\" select=\"record-field-value\"/>\r\n						<xsl:text>,</xsl:text>\r\n					</xsl:if>\r\n					<xsl:if test=\"@title = \'provider\'\">\r\n						<xsl:value-of disable-output-escaping=\"yes\" select=\"record-field-value\"/>\r\n						<xsl:text>,</xsl:text>\r\n					</xsl:if>\r\n				</xsl:if>\r\n				<xsl:if test=\"@title = \'address\'\">\r\n					<xsl:value-of disable-output-escaping=\"yes\" select=\"record-field-value\"/>\r\n				</xsl:if>\r\n			</xsl:when>\r\n			<xsl:otherwise>\r\n				<xsl:value-of disable-output-escaping=\"yes\" select=\"record-field-value\"/>\r\n				<xsl:if test=\"position()!=last()\">\r\n					<xsl:text>,</xsl:text>\r\n				</xsl:if>\r\n			</xsl:otherwise>\r\n		</xsl:choose>\r\n	</xsl:template>\r\n	\r\n</xsl:stylesheet>\r\n'),(3,'<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\"\r\n	xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:output method=\"html\" indent=\"yes\" />\r\n	 <xsl:template match=\"directory-form-search\">\r\n		<xsl:value-of disable-output-escaping=\"yes\" select=\".\" />\r\n	</xsl:template>\r\n</xsl:stylesheet>'),(4,'<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\"\r\n	xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	\r\n	<xsl:param name=\"title-descriptive\" />\r\n	<xsl:param name=\"title-sort-asc\" />\r\n	<xsl:param name=\"title-sort-desc\" />\r\n	\r\n	<xsl:output method=\"html\" indent=\"yes\" />\r\n\r\n	<xsl:template match=\"directory\">\r\n	\r\n		<table class=\"table table-striped\" name=\"results_list\" id=\"results_list\">\r\n			<tr>\r\n				<th>&#160;</th>\r\n				<xsl:apply-templates select=\"list-entry/entry\" />\r\n				<xsl:apply-templates select=\"list-entry/status\" />\r\n			</tr>\r\n			\r\n			<xsl:apply-templates select=\"list-record/record\"/>\r\n		</table>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"record\">\r\n		<tr>\r\n			<td class=\"link-directory-record\">\r\n				<a class=\"btn btn-primary btn-small\" href=\"jsp/site/Portal.jsp?page=directory&amp;id_directory_record={@id}&amp;view_directory_record=1\" title=\"{$title-descriptive}\">\r\n					<i class=\"icon-eye-open icon-white\"> </i> <span class=\"glyphicon glyphicon-search\"></span>\r\n				</a>\r\n			</td>\r\n			<xsl:apply-templates select=\"list-entry/entry/list-record-field\" />\r\n			<td><xsl:value-of disable-output-escaping=\"yes\"	select=\"status\" /></td>\r\n		</tr>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"list-record-field\">\r\n		<xsl:choose>\r\n			<xsl:when test=\"position()=1\">\r\n				<td class=\"first-record-field\">\r\n					<xsl:choose>\r\n						<xsl:when test=\"@geolocation = \'true\'\">\r\n							<xsl:call-template name=\"field-geolocalisation\" />\r\n						</xsl:when>\r\n						<xsl:otherwise>\r\n							<xsl:apply-templates select=\"record-field\" />\r\n						</xsl:otherwise>\r\n					</xsl:choose>\r\n				</td>\r\n			</xsl:when>\r\n			<xsl:otherwise>  \r\n				<td>\r\n					<xsl:choose>\r\n						<xsl:when test=\"@geolocation = \'true\'\">\r\n							<xsl:call-template name=\"field-geolocalisation\" />\r\n						</xsl:when>\r\n						<xsl:otherwise>\r\n							<xsl:apply-templates select=\"record-field\" />\r\n						</xsl:otherwise>\r\n					</xsl:choose>\r\n				</td>\r\n			</xsl:otherwise>\r\n		</xsl:choose>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"entry\">\r\n		<xsl:variable name=\"id-directory\" select=\"../../@id\" />\r\n		<th>\r\n			<xsl:if test=\"@is-sortable = \'true\'\">\r\n				<a class=\"sort\" id=\"sort\" href=\"jsp/site/Portal.jsp?page=directory&amp;id_directory={$id-directory}&amp;sorted_attribute_name={@id}&amp;asc_sort=true#sort\" title=\"{$title-sort-asc}\" >\r\n					<i class=\"icon-chevron-up\"> </i>\r\n				</a>\r\n				<a class=\"sort\" href=\"jsp/site/Portal.jsp?page=directory&amp;id_directory={$id-directory}&amp;sorted_attribute_name={@id}&amp;asc_sort=false#sort\" title=\"{$title-sort-desc}\" >\r\n	    			<i class=\"icon-chevron-down\"> </i>\r\n	    		</a>\r\n	    	 </xsl:if>\r\n	    	 <span><xsl:value-of select=\"title\" /></span>\r\n		</th>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"record-field\">	\r\n	\r\n		<xsl:variable name=\"type-recordfield\" select=\"@type-entry\" />\r\n		<xsl:variable name=\"show\" select=\"@isShownInList\" />\r\n		<xsl:choose>\r\n			<xsl:when test=\"$type-recordfield=\'10\'\">\r\n				<xsl:text>&#160;</xsl:text>\r\n			</xsl:when>\r\n			<xsl:when test=\"not(string(record-field-value)=\'\')\">					\r\n					<xsl:value-of disable-output-escaping=\"yes\"\r\n						select=\"record-field-value\" />\r\n			</xsl:when>		\r\n			<xsl:otherwise>\r\n				<xsl:text>&#160;</xsl:text>\r\n			</xsl:otherwise>\r\n		</xsl:choose>		\r\n		<xsl:choose>\r\n			<xsl:when test=\"$type-recordfield=\'10\' and $show=\'false\'\">				\r\n				<xsl:text>&#160;</xsl:text>\r\n			</xsl:when>\r\n			<xsl:otherwise>				\r\n				<xsl:apply-templates select=\"file\" />\r\n			</xsl:otherwise>\r\n		</xsl:choose>		\r\n		<br />\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"file\">\r\n		<xsl:variable name=\"id\" select=\"@id\" />\r\n		<xsl:variable name=\"type\" select=\"@type-entry\" />\r\n		<xsl:variable name=\"height\" select=\"./height\" />\r\n		<xsl:variable name=\"width\" select=\"./width\" />\r\n		<xsl:if test=\"child::node()\">\r\n			<xsl:choose>				\r\n				<xsl:when test=\"$type=\'10\'\">\r\n					<xsl:choose>\r\n						<xsl:when test=\"$height!=\'-1\' and $width!=\'-1\' \">\r\n							<img src=\"image?resource_type=directory_entry_img&amp;id={$id}\" height=\"{$height}\" width=\"{$width}\"  />\r\n						</xsl:when>\r\n						<xsl:when test=\"$height=\'-1\' and $width!=\'-1\'\">\r\n							<img src=\"image?resource_type=directory_entry_img&amp;id={$id}\" width=\"{$width}\"  />\r\n						</xsl:when>\r\n						<xsl:when test=\"$height!=\'-1\' and $width=\'-1\'\">\r\n							<img src=\"image?resource_type=directory_entry_img&amp;id={$id}\" height=\"{$height}\" />\r\n						</xsl:when>\r\n						<xsl:otherwise>\r\n							<img src=\"image?resource_type=directory_entry_img&amp;id={$id}\"/>\r\n						</xsl:otherwise>\r\n					</xsl:choose>\r\n				</xsl:when>\r\n				<xsl:otherwise>\r\n					\r\n					<a  href=\"jsp/site/plugins/directory/DoDownloadFile.jsp?id_file={$id}\">\r\n					<xsl:value-of disable-output-escaping=\"yes\"\r\n						select=\"title\" />( <xsl:value-of disable-output-escaping=\"yes\"\r\n						select=\"size\" /> O)\r\n					</a>\r\n				</xsl:otherwise>\r\n			</xsl:choose>\r\n		</xsl:if>\r\n		<br />\r\n	</xsl:template>\r\n	<xsl:template match=\"status\">\r\n		<xsl:choose>\r\n			<xsl:when test=\"@display=\'yes\'\">\r\n				<th>Statut</th>\r\n			</xsl:when>\r\n			<xsl:otherwise>\r\n				<th>&#160;</th>\r\n			</xsl:otherwise>\r\n		</xsl:choose>\r\n		\r\n	</xsl:template>\r\n	\r\n	<xsl:template name=\"field-geolocalisation\">\r\n		<input type=\"hidden\" name=\"record_id\">\r\n			<xsl:attribute name=\"value\"><xsl:value-of disable-output-escaping=\"yes\" select=\"../../../@id\"/></xsl:attribute>\r\n		</input>\r\n		<xsl:if test=\"../../../status/@icon &gt; 0\">\r\n			<input type=\"hidden\" name=\"state_icon\">\r\n				<xsl:attribute name=\"value\">image?resource_type=workflow_icon_img&amp;id=<xsl:value-of disable-output-escaping=\"yes\" select=\"../../../status/@icon\"/></xsl:attribute> \r\n			</input>\r\n		</xsl:if>\r\n		<input type=\"hidden\" name=\"geolocation\">\r\n			<xsl:attribute name=\"value\"><xsl:value-of disable-output-escaping=\"yes\" select=\"../@id\" /></xsl:attribute>\r\n		</input>\r\n		\r\n		<input type=\"hidden\" name=\"title\">\r\n			<xsl:attribute name=\"value\"><xsl:value-of disable-output-escaping=\"yes\" select=\"../../entry[position()=1]/list-record-field/record-field[position()=1]/record-field-value\" /></xsl:attribute>\r\n		</input>\r\n		\r\n		<input type=\"hidden\">\r\n			<xsl:attribute name=\"name\">x</xsl:attribute>\r\n			<xsl:attribute name=\"id\">x</xsl:attribute>\r\n			<xsl:attribute name=\"value\"><xsl:value-of disable-output-escaping=\"yes\" select=\"record-field[@title=\'X\']\" /></xsl:attribute>\r\n		</input>\r\n		\r\n		<input type=\"hidden\">\r\n			<xsl:attribute name=\"name\">y</xsl:attribute>\r\n			<xsl:attribute name=\"id\">y</xsl:attribute>\r\n			<xsl:attribute name=\"value\"><xsl:value-of disable-output-escaping=\"yes\" select=\"record-field[@title=\'Y\']\" /></xsl:attribute>\r\n		</input>\r\n		<xsl:value-of disable-output-escaping=\"yes\" select=\"record-field[@title=\'address\']\" />\r\n	</xsl:template>\r\n</xsl:stylesheet>\r\n\r\n\r\n'),(5,'<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	\r\n	<xsl:param name=\"title-back-search\" />\r\n	<xsl:param name=\"label-back-search\" />\r\n	<xsl:param name=\"id-directory\" />>\r\n	<xsl:param name=\"isExtendInstalled\" />\r\n	<xsl:output method=\"html\" indent=\"yes\" />\r\n\r\n	<xsl:template match=\"directory\">\r\n		<xsl:if test=\"$isExtendInstalled = \'true\'\">\r\n				<![CDATA[@ExtenderParameter[]]><xsl:value-of select=\"//list-record/record/@id\" /><![CDATA[,DIRECTORY_RECORD,opengraph]@]]>\r\n		   		<![CDATA[@Extender[]]><xsl:value-of select=\"//list-record/record/@id\" /><![CDATA[,DIRECTORY_RECORD,actionbar]@]]>\r\n				<![CDATA[@Extender[]]><xsl:value-of select=\"//list-record/record/@id\" /><![CDATA[,DIRECTORY_RECORD,hit,{show:true}]@]]>\r\n				<![CDATA[@Extender[]]><xsl:value-of select=\"//list-record/record/@id\" /><![CDATA[,DIRECTORY_RECORD,rating,{show:\"all\"}]@]]>\r\n				<![CDATA[@Extender[]]><xsl:value-of select=\"//list-record/record/@id\" /><![CDATA[,DIRECTORY_RECORD,opengraph,{footer:false, header:false}]@]]>\r\n		</xsl:if>\r\n		<div>\r\n			<xsl:apply-templates select=\"list-entry/entry\" />\r\n		</div>\r\n		<div id=\"back-search\">\r\n			<a href=\"jsp/site/Portal.jsp?page=directory&amp;id_directory={$id-directory}\"\r\n							title=\"{$title-back-search}\" alt=\"{$title-back-search}\">\r\n						\r\n					<xsl:value-of select=\"$label-back-search\" />\r\n			</a>\r\n		</div>\r\n		<xsl:if test=\"$isExtendInstalled = \'true\'\">\r\n			<![CDATA[@Extender[]]><xsl:value-of select=\"//list-record/record/@id\" /><![CDATA[,DIRECTORY_RECORD,comment]@]]>\r\n	   		<![CDATA[@Extender[]]><xsl:value-of select=\"//list-record/record/@id\" /><![CDATA[,DIRECTORY_RECORD,feedback]@]]>\r\n	   		<![CDATA[@Extender[]]><xsl:value-of select=\"//list-record/record/@id\" /><![CDATA[,DIRECTORY_RECORD,opengraph,{footer:true}]@]]>\r\n		</xsl:if>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"list-record-field\">\r\n		<xsl:apply-templates select=\"record-field\" />\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"entry\">\r\n    <xsl:choose>\r\n	   <xsl:when test=\"not(count(./list-entry)=0)\">\r\n		 <div class=\"prepend-1 append-1\">  \r\n		    \r\n		    <fieldset class=\"form-fieldset\"> \r\n	    					 <legend class=\"form-legend\"> <xsl:value-of select=\"title\" /> </legend>\r\n			   <xsl:apply-templates select=\"./list-entry/entry\" />\r\n		    </fieldset> \r\n		   </div> \r\n		</xsl:when>\r\n    	<xsl:otherwise> \r\n			<div class=\"entry-element\">\r\n   		    	<span class=\"entry-label\">\r\n   					<label>\r\n   					 	<xsl:value-of select=\"title\" />:\r\n   					</label>\r\n   				</span>\r\n   				<div class=\"entry-value\">\r\n   					<xsl:apply-templates select=\"//list-record/record/list-entry/entry[@id=current()/@id]/list-record-field\" />\r\n				</div>\r\n	   	   	</div>\r\n		</xsl:otherwise>\r\n	</xsl:choose>  \r\n</xsl:template>\r\n\r\n	<xsl:template match=\"record-field\">\r\n		<xsl:variable name=\"type-recordfield\" select=\"@type-entry\" />\r\n		<xsl:variable name=\"show\" select=\"@isShownInRecord\" />\r\n		<span>\r\n			<xsl:choose>\r\n				<xsl:when test=\"$type-recordfield=\'10\'\">\r\n					<xsl:text>&#160;</xsl:text>\r\n				</xsl:when>\r\n				<xsl:when test=\"not(string(record-field-value)=\'\')\">					\r\n						<xsl:value-of disable-output-escaping=\"yes\"\r\n							select=\"record-field-value\" />\r\n				</xsl:when>		\r\n				<xsl:otherwise>\r\n					<xsl:text>&#160;</xsl:text>\r\n				</xsl:otherwise>\r\n			</xsl:choose>\r\n			<xsl:choose>\r\n				<xsl:when test=\"$type-recordfield=\'10\' and $show=\'false\'\">\r\n					<xsl:text>&#160;</xsl:text>\r\n				</xsl:when>\r\n				<xsl:otherwise>\r\n					<xsl:apply-templates select=\"file\" />\r\n				</xsl:otherwise>\r\n			</xsl:choose>\r\n			\r\n		</span>\r\n	</xsl:template>\r\n	\r\n	<xsl:template match=\"list-record-field[@geolocation=\'true\']\">\r\n		<input type=\"hidden\">\r\n			<xsl:attribute name=\"name\"><xsl:value-of select=\"../@id\" />_x</xsl:attribute>\r\n			<xsl:attribute name=\"id\"><xsl:value-of select=\"../@id\" />_x</xsl:attribute>\r\n			<xsl:attribute name=\"value\"><xsl:value-of disable-output-escaping=\"yes\" select=\"record-field[@title=\'X\']\" /></xsl:attribute>\r\n		</input>\r\n		\r\n		<input type=\"hidden\">\r\n			<xsl:attribute name=\"name\"><xsl:value-of select=\"../@id\" />_y</xsl:attribute>\r\n			<xsl:attribute name=\"id\"><xsl:value-of select=\"../@id\" />_y</xsl:attribute>\r\n			<xsl:attribute name=\"value\"><xsl:value-of disable-output-escaping=\"yes\" select=\"record-field[@title=\'Y\']\" /></xsl:attribute>\r\n		</input>\r\n		\r\n		<!-- if x and y should be displayed : \r\n			X : <xsl:value-of select=\"record-field[@title=\'X\']\" />\r\n			Y : <xsl:value-of select=\"record-field[@title=\'Y\']\" />\r\n		 -->\r\n		Adresse : <xsl:value-of select=\"record-field[@title=\'address\']\" />\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"file\">\r\n		<xsl:variable name=\"id\" select=\"@id\" />\r\n		<xsl:variable name=\"type\" select=\"@type-entry\" />\r\n		<xsl:variable name=\"height\" select=\"./height\" />\r\n		<xsl:variable name=\"width\" select=\"./width\" />\r\n		<xsl:if test=\"child::node()\">\r\n			<xsl:choose>\r\n				<xsl:when test=\"$type=\'10\'\">\r\n					<xsl:choose>\r\n						<xsl:when test=\"$height!=\'-1\' and $width!=\'-1\' \">\r\n							<img src=\"image?resource_type=directory_entry_img&amp;id={$id}\" height=\"{$height}\" width=\"{$width}\"  />\r\n						</xsl:when>\r\n						<xsl:when test=\"$height=\'-1\' and $width!=\'-1\'\">\r\n							<img src=\"image?resource_type=directory_entry_img&amp;id={$id}\" width=\"{$width}\"  />\r\n						</xsl:when>\r\n						<xsl:when test=\"$height!=\'-1\' and $width=\'-1\'\">\r\n							<img src=\"image?resource_type=directory_entry_img&amp;id={$id}\" height=\"{$height}\" />\r\n						</xsl:when>\r\n						<xsl:otherwise>\r\n							<img src=\"image?resource_type=directory_entry_img&amp;id={$id}\"/>\r\n						</xsl:otherwise>\r\n					</xsl:choose>\r\n				</xsl:when>\r\n				<xsl:otherwise>\r\n					<a  href=\"jsp/site/plugins/directory/DoDownloadFile.jsp?id_file={$id}\">\r\n					<xsl:value-of disable-output-escaping=\"yes\"\r\n						select=\"title\" />( <xsl:value-of disable-output-escaping=\"yes\"\r\n						select=\"size\" /> O)\r\n					</a>\r\n				</xsl:otherwise>\r\n			</xsl:choose>\r\n		</xsl:if>\r\n		<br />\r\n	</xsl:template>\r\n</xsl:stylesheet>\r\n\r\n\r\n');
/*!40000 ALTER TABLE `directory_physical_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_record`
--

DROP TABLE IF EXISTS `directory_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directory_record` (
  `id_record` int(11) NOT NULL DEFAULT '0',
  `date_creation` timestamp NULL DEFAULT NULL,
  `date_modification` timestamp NULL DEFAULT NULL,
  `id_directory` int(11) DEFAULT NULL,
  `is_enabled` smallint(6) DEFAULT '0',
  `role_key` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `workgroup_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_record`),
  KEY `id_directory_fk_re` (`id_directory`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directory_record`
--

LOCK TABLES `directory_record` WRITE;
/*!40000 ALTER TABLE `directory_record` DISABLE KEYS */;
INSERT INTO `directory_record` VALUES (1,'2015-06-17 16:44:24','2015-06-17 16:44:24',3,1,NULL,NULL),(2,'2015-06-17 16:47:47','2015-06-17 16:47:47',3,1,NULL,NULL),(4,'2015-06-18 16:11:42','2015-06-18 16:11:42',4,1,NULL,NULL),(3,'2015-06-18 15:56:14','2015-06-18 15:56:14',4,1,NULL,NULL),(5,'2015-06-18 16:17:45','2015-06-18 16:17:45',4,1,NULL,NULL),(6,'2015-06-18 16:46:58','2015-06-18 16:46:59',4,1,NULL,NULL);
/*!40000 ALTER TABLE `directory_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_record_action`
--

DROP TABLE IF EXISTS `directory_record_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directory_record_action` (
  `id_action` int(11) NOT NULL DEFAULT '0',
  `name_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_permission` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `directory_state` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id_action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directory_record_action`
--

LOCK TABLES `directory_record_action` WRITE;
/*!40000 ALTER TABLE `directory_record_action` DISABLE KEYS */;
INSERT INTO `directory_record_action` VALUES (1,'directory.action.modify.name','directory.action.modify.description.record','jsp/admin/plugins/directory/ModifyDirectoryRecord.jsp','icon-edit','MODIFY_RECORD',0),(2,'directory.action.modify.name','directory.action.modify.description.record','jsp/admin/plugins/directory/ModifyDirectoryRecord.jsp','icon-edit','MODIFY_RECORD',1),(3,'directory.action.copy.name','directory.action.copy.description','jsp/admin/plugins/directory/DoCopyDirectoryRecord.jsp','icon-plus-sign','COPY_RECORD',0),(4,'directory.action.copy.name','directory.action.copy.description','jsp/admin/plugins/directory/DoCopyDirectoryRecord.jsp','icon-plus-sign','COPY_RECORD',1),(5,'directory.action.delete.name','directory.action.delete.description','jsp/admin/plugins/directory/ConfirmRemoveDirectoryRecord.jsp','icon-trash','DELETE_RECORD',0),(6,'directory.action.disable.name','directory.action.disable.description','jsp/admin/plugins/directory/ConfirmDisableDirectoryRecord.jsp','icon-remove','CHANGE_STATE_RECORD',1),(7,'directory.action.enable.name','directory.action.enable.description','jsp/admin/plugins/directory/DoEnableDirectoryRecord.jsp','icon-ok','CHANGE_STATE_RECORD',0),(8,'directory.action.delete.name','directory.action.delete.description','jsp/admin/plugins/directory/ConfirmRemoveDirectoryRecord.jsp','icon-trash','DELETE_RECORD',1),(9,'directory.action.history.name','directory.action.history.description','jsp/admin/plugins/directory/ResourceHistory.jsp','icon-list','HISTORY_RECORD',0),(10,'directory.action.history.name','directory.action.history.description','jsp/admin/plugins/directory/ResourceHistory.jsp','icon-list','HISTORY_RECORD',1),(11,'directory.actions.title.visualisation','directory.actions.title.visualisation','jsp/admin/plugins/directory/DoVisualisationRecord.jsp','icon-eye-open','VISUALISATION_RECORD',0),(12,'directory.actions.title.visualisation','directory.actions.title.visualisation','jsp/admin/plugins/directory/DoVisualisationRecord.jsp','icon-eye-open','VISUALISATION_RECORD',1),(20,'module.directory.pdfproducer.actions.extractpdf.name','module.directory.pdfproducer.actions.extractpdf.description','jsp/admin/plugins/directory/modules/pdfproducer/action/DoDownloadPDF.jsp','icon-file','PDFPRODUCER',1),(21,'module.directory.pdfproducer.actions.extractpdf.name','module.directory.pdfproducer.actions.extractpdf.description','jsp/admin/plugins/directory/modules/pdfproducer/action/DoDownloadPDF.jsp','icon-file','PDFPRODUCER',0),(22,'module.directory.pdfproducerarchive.actions.extractzip.name','module.directory.pdfproducerarchive.actions.extractzip.description','jsp/admin/plugins/directory/modules/pdfproducer/archive/basket/ConfirmAddZipToBasket.jsp','icon-shopping-cart','ADDZIPBASKET',1),(23,'module.directory.pdfproducerarchive.actions.extractzip.name','module.directory.pdfproducerarchive.actions.extractzip.description','jsp/admin/plugins/directory/modules/pdfproducer/archive/basket/ConfirmAddZipToBasket.jsp','icon-shopping-cart','ADDZIPBASKET',0);
/*!40000 ALTER TABLE `directory_record_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_record_field`
--

DROP TABLE IF EXISTS `directory_record_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directory_record_field` (
  `id_record_field` int(11) NOT NULL DEFAULT '0',
  `id_record` int(11) DEFAULT NULL,
  `record_field_value` mediumtext COLLATE utf8_unicode_ci,
  `id_entry` int(11) DEFAULT NULL,
  `id_field` int(11) DEFAULT NULL,
  `id_file` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_record_field`),
  KEY `id_entry_fk_ref` (`id_entry`),
  KEY `id_record` (`id_record`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directory_record_field`
--

LOCK TABLES `directory_record_field` WRITE;
/*!40000 ALTER TABLE `directory_record_field` DISABLE KEYS */;
INSERT INTO `directory_record_field` VALUES (6,1,'/jsp/site/plugins/workflow/modules/createpdf/DoDownloadPDF.jsp?signature=ae8017fb104d10f217fa7769f515cbf285e948fc&timestamp=1434622611428&id_directory_record=1&id_task=125',2,NULL,NULL),(2,1,'1',1,NULL,NULL),(5,2,'/jsp/site/plugins/workflow/modules/createpdf/DoDownloadPDF.jsp?signature=c4dbef01cee88f087fda0b878a3d56a474a1e646&timestamp=1434559667058&id_directory_record=2&id_task=125',2,NULL,NULL),(4,2,'2',1,NULL,NULL),(29,5,'francoiseric.merlin@paris.fr',8,NULL,NULL),(28,5,'Francois',7,NULL,NULL),(27,5,'merlin',6,NULL,NULL),(26,5,'merlin',5,NULL,NULL),(25,5,'Mr',4,NULL,NULL),(24,4,'https://dev.lutece.paris.fr/hackathon-dev/jsp/site/plugins/workflow/modules/createpdf/DoDownloadPDF.jsp?signature=d5ddd890c4ceb081b7737aaf4fe59f650b8f4f82&timestamp=1434643903094&id_directory_record=4&id_task=127',28,NULL,NULL),(23,4,'2',3,NULL,NULL),(22,4,'2',10,NULL,NULL),(21,4,'12',9,NULL,NULL),(20,4,'francoiseric.merlin@paris.fr',8,NULL,NULL),(19,4,'Francois',7,NULL,NULL),(7,3,'Mr',4,NULL,NULL),(8,3,'merlin',5,NULL,NULL),(9,3,'merlin',6,NULL,NULL),(10,3,'Francois',7,NULL,NULL),(11,3,'francoiseric.merlin@paris.fr',8,NULL,NULL),(12,3,'12',9,NULL,NULL),(13,3,'2',10,NULL,NULL),(14,3,'1',3,NULL,NULL),(15,3,'http://dev.lutece.paris.fr/hackathon-dev/jsp/site/plugins/workflow/modules/createpdf/DoDownloadPDF.jsp?signature=1b1cb3eaa082fe6722aac2419ea2ffd0ea869cc7&timestamp=1434642974687&id_directory_record=3&id_task=127',28,NULL,NULL),(16,4,'Mr',4,NULL,NULL),(17,4,'merlin',5,NULL,NULL),(18,4,'merlin',6,NULL,NULL),(30,5,'12',9,NULL,NULL),(31,5,'2',10,NULL,NULL),(32,5,'3',3,NULL,NULL),(33,5,'https://dev.lutece.paris.fr/hackathon-dev/jsp/site/plugins/workflow/modules/createpdf/DoDownloadPDF.jsp?signature=4d4631d9fa3a1b02fcf833b2adf8292f83144e18&timestamp=1434644265606&id_directory_record=5&id_task=127',28,NULL,NULL),(34,6,'Mr',4,NULL,NULL),(35,6,'merlin',5,NULL,NULL),(36,6,'merlin',6,NULL,NULL),(37,6,'Francois',7,NULL,NULL),(38,6,'francoiseric.merlin@paris.fr',8,NULL,NULL),(39,6,'12',9,NULL,NULL),(40,6,'2',10,NULL,NULL),(41,6,'1',11,NULL,NULL),(42,6,'palyma@palyma.fr',12,NULL,NULL),(43,6,'4',3,NULL,NULL),(44,6,'https://dev.lutece.paris.fr/hackathon-dev/jsp/site/plugins/workflow/modules/createpdf/DoDownloadPDF.jsp?signature=6aa6994539c5345b2ceb3eba8cb3c9aca210030a&timestamp=1434646019569&id_directory_record=6&id_task=127',28,NULL,NULL);
/*!40000 ALTER TABLE `directory_record_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_rss_cf`
--

DROP TABLE IF EXISTS `directory_rss_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directory_rss_cf` (
  `id_rss` int(11) NOT NULL DEFAULT '0',
  `id_directory` int(11) NOT NULL DEFAULT '0',
  `id_entry_title` int(11) NOT NULL DEFAULT '0',
  `id_entry_description` int(11) NOT NULL DEFAULT '0',
  `id_entry_image` int(11) NOT NULL DEFAULT '-1',
  `id_entry_link` int(11) NOT NULL DEFAULT '-1',
  `id_entry_filter_1` int(11) NOT NULL DEFAULT '-1',
  `value_filter_1` mediumtext COLLATE utf8_unicode_ci,
  `id_entry_filter_2` int(11) NOT NULL DEFAULT '-1',
  `value_filter_2` mediumtext COLLATE utf8_unicode_ci,
  `id_workflow_state` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id_rss`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directory_rss_cf`
--

LOCK TABLES `directory_rss_cf` WRITE;
/*!40000 ALTER TABLE `directory_rss_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `directory_rss_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_verify_by`
--

DROP TABLE IF EXISTS `directory_verify_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directory_verify_by` (
  `id_field` int(11) NOT NULL DEFAULT '0',
  `id_expression` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_field`,`id_expression`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directory_verify_by`
--

LOCK TABLES `directory_verify_by` WRITE;
/*!40000 ALTER TABLE `directory_verify_by` DISABLE KEYS */;
/*!40000 ALTER TABLE `directory_verify_by` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_xsl`
--

DROP TABLE IF EXISTS `directory_xsl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directory_xsl` (
  `id_directory_xsl` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_file` int(11) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_directory_xsl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directory_xsl`
--

LOCK TABLES `directory_xsl` WRITE;
/*!40000 ALTER TABLE `directory_xsl` DISABLE KEYS */;
INSERT INTO `directory_xsl` VALUES (1,'Export XML','Permet  un export des résultats au format xml','xml',1,1),(2,'Export CSV','Permet  un export des résultats au format csv','csv',2,1),(3,'Style du formulaire de recherche','Style appliqué au formulaire de recherche','',3,2),(4,'Style de la liste résultats','Style appliqué à la liste résultats','',4,3),(5,'Style de la fiche résultat','Style appliqué à la fiche résultat','',5,4);
/*!40000 ALTER TABLE `directory_xsl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_xsl_action`
--

DROP TABLE IF EXISTS `directory_xsl_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directory_xsl_action` (
  `id_action` int(11) NOT NULL DEFAULT '0',
  `name_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_permission` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directory_xsl_action`
--

LOCK TABLES `directory_xsl_action` WRITE;
/*!40000 ALTER TABLE `directory_xsl_action` DISABLE KEYS */;
INSERT INTO `directory_xsl_action` VALUES (2,'directory.manage_directory_xsl.title_modify','directory.manage_directory_xsl.title_modify','jsp/admin/plugins/directory/ModifyDirectoryXsl.jsp','icon-edit','MODIFY'),(1,'directory.manage_directory_xsl.title_delete','directory.manage_directory_xsl.title_delete','jsp/admin/plugins/directory/ConfirmRemoveDirectoryXsl.jsp','icon-trash','DELETE');
/*!40000 ALTER TABLE `directory_xsl_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_zip_basket`
--

DROP TABLE IF EXISTS `directory_zip_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directory_zip_basket` (
  `id_zip_basket` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip_state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_directory` int(11) NOT NULL,
  `id_record` int(11) DEFAULT NULL,
  `archive_item_key` int(11) DEFAULT NULL,
  `date_creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_zip_basket`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directory_zip_basket`
--

LOCK TABLES `directory_zip_basket` WRITE;
/*!40000 ALTER TABLE `directory_zip_basket` DISABLE KEYS */;
/*!40000 ALTER TABLE `directory_zip_basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory_zip_basket_action`
--

DROP TABLE IF EXISTS `directory_zip_basket_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directory_zip_basket_action` (
  `id_action` int(11) NOT NULL DEFAULT '0',
  `name_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_permission` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `directory_state` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id_action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directory_zip_basket_action`
--

LOCK TABLES `directory_zip_basket_action` WRITE;
/*!40000 ALTER TABLE `directory_zip_basket_action` DISABLE KEYS */;
INSERT INTO `directory_zip_basket_action` VALUES (1,'module.directory.pdfproducerarchive.actions.title.visualisation','module.directory.pdfproducerarchive.actions.title.visualisation','jsp/admin/plugins/directory/DoVisualisationRecord.jsp','icon-search','VISUALISATION_RECORD',0),(2,'module.directory.pdfproducerarchive.actions.title.visualisation','module.directory.pdfproducerarchive.actions.title.visualisation','jsp/admin/plugins/directory/DoVisualisationRecord.jsp','icon-search','VISUALISATION_RECORD',1),(3,'module.directory.pdfproducerarchive.actions.title.visualisation','module.directory.pdfproducerarchive.actions.title.visualisation','jsp/admin/plugins/directory/DoVisualisationRecord.jsp','icon-search','VISUALISATION_RECORD',2),(4,'module.directory.pdfproducerarchive.actions.title.visualisation','module.directory.pdfproducerarchive.actions.title.visualisation','jsp/admin/plugins/directory/DoVisualisationRecord.jsp','icon-search','VISUALISATION_RECORD',3),(5,'module.directory.pdfproducerarchive.actions.zipbasket.download.zip.name','module.directory.pdfproducerarchive.actions.zipbasket.download.zip.description','jsp/admin/plugins/directory/modules/pdfproducer/archive/basket/DoDownloadZipBasket.jsp','icon-download','DOWNLOAD_ZIP',2),(6,'module.directory.pdfproducerarchive.actions.zipbasket.delete.zip.name','module.directory.pdfproducerarchive.actions.zipbasket.delete.zip.description','jsp/admin/plugins/directory/modules/pdfproducer/archive/basket/ConfirmDoRemoveZipBasket.jsp','icon-trash','DELETE_ZIP',0),(7,'module.directory.pdfproducerarchive.actions.zipbasket.delete.zip.name','module.directory.pdfproducerarchive.actions.zipbasket.delete.zip.description','jsp/admin/plugins/directory/modules/pdfproducer/archive/basket/ConfirmDoRemoveZipBasket.jsp','icon-trash','DELETE_ZIP',2),(8,'module.directory.pdfproducerarchive.actions.zipbasket.delete.zip.name','module.directory.pdfproducerarchive.actions.zipbasket.delete.zip.description','jsp/admin/plugins/directory/modules/pdfproducer/archive/basket/ConfirmDoRemoveZipBasket.jsp','icon-trash','DELETE_ZIP',3);
/*!40000 ALTER TABLE `directory_zip_basket_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document` (
  `id_document` int(11) NOT NULL DEFAULT '0',
  `code_document_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modification` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_space` int(11) DEFAULT NULL,
  `id_state` int(11) DEFAULT NULL,
  `xml_working_content` mediumtext COLLATE utf8_unicode_ci,
  `xml_validated_content` mediumtext COLLATE utf8_unicode_ci,
  `document_summary` mediumtext COLLATE utf8_unicode_ci,
  `document_comment` mediumtext COLLATE utf8_unicode_ci,
  `date_validity_begin` timestamp NULL DEFAULT NULL,
  `date_validity_end` timestamp NULL DEFAULT NULL,
  `xml_metadata` mediumtext COLLATE utf8_unicode_ci,
  `id_creator` int(11) DEFAULT NULL,
  `id_mailinglist` int(11) NOT NULL DEFAULT '0',
  `id_page_template_document` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_document`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

LOCK TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
INSERT INTO `document` VALUES (9,'image','2009-05-20 03:03:00','2009-05-20 03:03:00','Bobigny',6,3,'<image>\r\n<document-id>9</document-id>\r\n<document-title>Bobigny</document-title>\r\n<document-summary>Bobigny</document-summary>\r\n<document-date-begin></document-date-begin>\r\n<document-date-end></document-date-end>\r\n<image-file><file-resource>\r\n<resource-document-id>9</resource-document-id>\r\n<resource-attribute-id>43</resource-attribute-id>\r\n<resource-content-type>image/png</resource-content-type>\r\n</file-resource>\r\n<file-size>147561</file-size>\r\n</image-file>\r\n<image-credits>0</image-credits>\r\n<image-titrehtml><![CDATA[Bobigny]]></image-titrehtml>\r\n</image>\r\n','<image>\r\n<document-id>9</document-id>\r\n<document-title>Bobigny</document-title>\r\n<document-summary>Bobigny</document-summary>\r\n<document-date-begin></document-date-begin>\r\n<document-date-end></document-date-end>\r\n<image-file><file-resource>\r\n<resource-document-id>9</resource-document-id>\r\n<resource-attribute-id>43</resource-attribute-id>\r\n<resource-content-type>image/png</resource-content-type>\r\n</file-resource>\r\n<file-size>147561</file-size>\r\n</image-file>\r\n<image-credits>0</image-credits>\r\n<image-titrehtml><![CDATA[Bobigny]]></image-titrehtml>\r\n</image>\r\n','Bobigny','',NULL,NULL,'<metadata>\r\n<creator>Mairie de Paris</creator>\r\n<subject>lutece;portal;xml;java</subject>\r\n<publisher>Mairie de Paris</publisher>\r\n<format>text/html</format>\r\n<language>fr</language>\r\n<rights>Copyrights (c) Mairie de Paris</rights>\r\n</metadata>\r\n',1,0,0),(11,'image','2009-05-20 03:03:56','2009-05-20 03:03:56','Mairie 11',6,3,'<image>\r\n<document-id>11</document-id>\r\n<document-title>Mairie 11</document-title>\r\n<document-summary>Mairie 11</document-summary>\r\n<document-date-begin></document-date-begin>\r\n<document-date-end></document-date-end>\r\n<image-file><file-resource>\r\n<resource-document-id>11</resource-document-id>\r\n<resource-attribute-id>43</resource-attribute-id>\r\n<resource-content-type>image/png</resource-content-type>\r\n</file-resource>\r\n<file-size>279636</file-size>\r\n</image-file>\r\n<image-credits>0</image-credits>\r\n<image-titrehtml><![CDATA[Mairie 11]]></image-titrehtml>\r\n</image>\r\n','<image>\r\n<document-id>11</document-id>\r\n<document-title>Mairie 11</document-title>\r\n<document-summary>Mairie 11</document-summary>\r\n<document-date-begin></document-date-begin>\r\n<document-date-end></document-date-end>\r\n<image-file><file-resource>\r\n<resource-document-id>11</resource-document-id>\r\n<resource-attribute-id>43</resource-attribute-id>\r\n<resource-content-type>image/png</resource-content-type>\r\n</file-resource>\r\n<file-size>279636</file-size>\r\n</image-file>\r\n<image-credits>0</image-credits>\r\n<image-titrehtml><![CDATA[Mairie 11]]></image-titrehtml>\r\n</image>\r\n','Mairie 11','',NULL,NULL,'<metadata>\r\n<creator>Mairie de Paris</creator>\r\n<subject>lutece;portal;xml;java</subject>\r\n<publisher>Mairie de Paris</publisher>\r\n<format>text/html</format>\r\n<language>fr</language>\r\n<rights>Copyrights (c) Mairie de Paris</rights>\r\n</metadata>\r\n',1,0,0),(12,'image','2009-05-20 03:04:58','2009-05-20 03:04:58','Marseille',6,3,'<image>\r\n<document-id>12</document-id>\r\n<document-title>Marseille</document-title>\r\n<document-summary>Marseille</document-summary>\r\n<document-date-begin></document-date-begin>\r\n<document-date-end></document-date-end>\r\n<image-file><file-resource>\r\n<resource-document-id>12</resource-document-id>\r\n<resource-attribute-id>43</resource-attribute-id>\r\n<resource-content-type>image/png</resource-content-type>\r\n</file-resource>\r\n<file-size>238439</file-size>\r\n</image-file>\r\n<image-credits>0</image-credits>\r\n<image-titrehtml><![CDATA[Marseille]]></image-titrehtml>\r\n</image>\r\n','<image>\r\n<document-id>12</document-id>\r\n<document-title>Marseille</document-title>\r\n<document-summary>Marseille</document-summary>\r\n<document-date-begin></document-date-begin>\r\n<document-date-end></document-date-end>\r\n<image-file><file-resource>\r\n<resource-document-id>12</resource-document-id>\r\n<resource-attribute-id>43</resource-attribute-id>\r\n<resource-content-type>image/png</resource-content-type>\r\n</file-resource>\r\n<file-size>238439</file-size>\r\n</image-file>\r\n<image-credits>0</image-credits>\r\n<image-titrehtml><![CDATA[Marseille]]></image-titrehtml>\r\n</image>\r\n','Marseille','',NULL,NULL,'<metadata>\r\n<creator>Mairie de Paris</creator>\r\n<subject>lutece;portal;xml;java</subject>\r\n<publisher>Mairie de Paris</publisher>\r\n<format>text/html</format>\r\n<language>fr</language>\r\n<rights>Copyrights (c) Mairie de Paris</rights>\r\n</metadata>\r\n',1,0,0),(13,'image','2009-08-14 03:27:35','2009-08-14 03:27:35','Thalys card',6,3,'<image><document-id>13</document-id><document-title><![CDATA[Thalys card]]></document-title><document-summary><![CDATA[Thalys card]]></document-summary><document-date-begin></document-date-begin><document-date-end></document-date-end><document-categories></document-categories><image-file><file-resource><resource-document-id>13</resource-document-id><resource-attribute-id>43</resource-attribute-id><resource-content-type>image/png</resource-content-type></file-resource><file-size>254497</file-size></image-file><image-credits>0</image-credits><image-htmltitle><![CDATA[Thalys card]]></image-htmltitle></image>','<image><document-id>13</document-id><document-title><![CDATA[Thalys card]]></document-title><document-summary><![CDATA[Thalys card]]></document-summary><document-date-begin></document-date-begin><document-date-end></document-date-end><document-categories></document-categories><image-file><file-resource><resource-document-id>13</resource-document-id><resource-attribute-id>43</resource-attribute-id><resource-content-type>image/png</resource-content-type></file-resource><file-size>254497</file-size></image-file><image-credits>0</image-credits><image-htmltitle><![CDATA[Thalys card]]></image-htmltitle></image>','Thalys card','',NULL,NULL,'<metadata><creator>Mairie de Paris</creator><subject>lutece;portal;xml;java</subject><publisher>Mairie de Paris</publisher><format>text/html</format><language>fr</language><rights>Copyrights (c) Mairie de Paris</rights></metadata>',1,0,0),(14,'image','2009-08-14 03:28:05','2009-08-14 03:28:05','Météo France',6,3,'<image><document-id>14</document-id><document-title><![CDATA[Météo France]]></document-title><document-summary><![CDATA[Météo France]]></document-summary><document-date-begin></document-date-begin><document-date-end></document-date-end><document-categories></document-categories><image-file><file-resource><resource-document-id>14</resource-document-id><resource-attribute-id>43</resource-attribute-id><resource-content-type>image/png</resource-content-type></file-resource><file-size>281526</file-size></image-file><image-credits>0</image-credits><image-htmltitle><![CDATA[Météo France]]></image-htmltitle></image>','<image><document-id>14</document-id><document-title><![CDATA[Météo France]]></document-title><document-summary><![CDATA[Météo France]]></document-summary><document-date-begin></document-date-begin><document-date-end></document-date-end><document-categories></document-categories><image-file><file-resource><resource-document-id>14</resource-document-id><resource-attribute-id>43</resource-attribute-id><resource-content-type>image/png</resource-content-type></file-resource><file-size>281526</file-size></image-file><image-credits>0</image-credits><image-htmltitle><![CDATA[Météo France]]></image-htmltitle></image>','Météo France','',NULL,NULL,'<metadata><creator>Mairie de Paris</creator><subject>lutece;portal;xml;java</subject><publisher>Mairie de Paris</publisher><format>text/html</format><language>fr</language><rights>Copyrights (c) Mairie de Paris</rights></metadata>',1,0,0),(15,'image','2010-01-19 07:40:49','2010-01-19 07:40:49','Eau de Paris',6,3,'<image>\r\n<document-id>15</document-id>\r\n<document-title><![CDATA[Eau de Paris]]></document-title>\r\n<document-summary><![CDATA[Eau de Paris, une eau économique, écologique et équilibrée.]]></document-summary>\r\n<document-date-begin></document-date-begin>\r\n<document-date-end></document-date-end>\r\n<document-categories></document-categories>\r\n<image-file><file-resource>\r\n<resource-document-id>15</resource-document-id>\r\n<resource-attribute-id>43</resource-attribute-id>\r\n<resource-content-type>image/png</resource-content-type>\r\n</file-resource>\r\n<file-size>122690</file-size>\r\n</image-file>\r\n<image-credits>0</image-credits>\r\n<image-htmltitle><![CDATA[<em>Eau de Paris</em>, une eau économique, écologique et équilibrée.]]></image-htmltitle>\r\n</image>\r\n','<image>\r\n<document-id>15</document-id>\r\n<document-title><![CDATA[Eau de Paris]]></document-title>\r\n<document-summary><![CDATA[Eau de Paris, une eau économique, écologique et équilibrée.]]></document-summary>\r\n<document-date-begin></document-date-begin>\r\n<document-date-end></document-date-end>\r\n<document-categories></document-categories>\r\n<image-file><file-resource>\r\n<resource-document-id>15</resource-document-id>\r\n<resource-attribute-id>43</resource-attribute-id>\r\n<resource-content-type>image/png</resource-content-type>\r\n</file-resource>\r\n<file-size>122690</file-size>\r\n</image-file>\r\n<image-credits>0</image-credits>\r\n<image-htmltitle><![CDATA[<em>Eau de Paris</em>, une eau économique, écologique et équilibrée.]]></image-htmltitle>\r\n</image>\r\n','Eau de Paris, une eau économique, écologique et équilibrée.','',NULL,NULL,'<metadata>\r\n<creator>Mairie de Paris</creator>\r\n<subject>lutece;portal;xml;java</subject>\r\n<publisher>Mairie de Paris</publisher>\r\n<format>text/html</format>\r\n<language>fr</language>\r\n<rights>Copyrights (c) Mairie de Paris</rights>\r\n</metadata>\r\n',1,0,0),(17,'image','2010-01-19 07:44:11','2010-01-19 07:44:11','Notaires.fr',6,3,'<image>\r\n<document-id>17</document-id>\r\n<document-title><![CDATA[Notaires.fr]]></document-title>\r\n<document-summary><![CDATA[www.notaires.fr]]></document-summary>\r\n<document-date-begin></document-date-begin>\r\n<document-date-end></document-date-end>\r\n<document-categories></document-categories>\r\n<image-file><file-resource>\r\n<resource-document-id>17</resource-document-id>\r\n<resource-attribute-id>43</resource-attribute-id>\r\n<resource-content-type>image/png</resource-content-type>\r\n</file-resource>\r\n<file-size>187364</file-size>\r\n</image-file>\r\n<image-credits>0</image-credits>\r\n<image-htmltitle><![CDATA[www.notaires.fr]]></image-htmltitle>\r\n</image>\r\n','<image>\r\n<document-id>17</document-id>\r\n<document-title><![CDATA[Notaires.fr]]></document-title>\r\n<document-summary><![CDATA[www.notaires.fr]]></document-summary>\r\n<document-date-begin></document-date-begin>\r\n<document-date-end></document-date-end>\r\n<document-categories></document-categories>\r\n<image-file><file-resource>\r\n<resource-document-id>17</resource-document-id>\r\n<resource-attribute-id>43</resource-attribute-id>\r\n<resource-content-type>image/png</resource-content-type>\r\n</file-resource>\r\n<file-size>187364</file-size>\r\n</image-file>\r\n<image-credits>0</image-credits>\r\n<image-htmltitle><![CDATA[www.notaires.fr]]></image-htmltitle>\r\n</image>\r\n','www.notaires.fr','',NULL,NULL,'<metadata>\r\n<creator>Mairie de Paris</creator>\r\n<subject>lutece;portal;xml;java</subject>\r\n<publisher>Mairie de Paris</publisher>\r\n<format>text/html</format>\r\n<language>fr</language>\r\n<rights>Copyrights (c) Mairie de Paris</rights>\r\n</metadata>\r\n',1,0,0),(20,'image','2010-06-02 06:53:01','2010-06-02 06:53:01','e-bourgogne',6,3,'<image>\r\n<document-id>20</document-id>\r\n<document-title><![CDATA[e-bourgogne]]></document-title>\r\n<document-summary><![CDATA[e-bourgogne]]></document-summary>\r\n<document-date-begin></document-date-begin>\r\n<document-date-end></document-date-end>\r\n<document-categories></document-categories>\r\n<image-file><file-resource>\r\n<resource-document-id>20</resource-document-id>\r\n<resource-attribute-id>43</resource-attribute-id>\r\n<resource-content-type>image/png</resource-content-type>\r\n</file-resource>\r\n<file-size>107500</file-size>\r\n</image-file>\r\n<image-credits>0</image-credits>\r\n<image-htmltitle><![CDATA[e-bourgogne]]></image-htmltitle>\r\n</image>\r\n','<image>\r\n<document-id>20</document-id>\r\n<document-title><![CDATA[e-bourgogne]]></document-title>\r\n<document-summary><![CDATA[e-bourgogne]]></document-summary>\r\n<document-date-begin></document-date-begin>\r\n<document-date-end></document-date-end>\r\n<document-categories></document-categories>\r\n<image-file><file-resource>\r\n<resource-document-id>20</resource-document-id>\r\n<resource-attribute-id>43</resource-attribute-id>\r\n<resource-content-type>image/png</resource-content-type>\r\n</file-resource>\r\n<file-size>107500</file-size>\r\n</image-file>\r\n<image-credits>0</image-credits>\r\n<image-htmltitle><![CDATA[e-bourgogne]]></image-htmltitle>\r\n</image>\r\n','e-bourgogne','',NULL,NULL,'<metadata>\r\n<creator>Mairie de Paris</creator>\r\n<subject>lutece;portal;xml;java</subject>\r\n<publisher>Mairie de Paris</publisher>\r\n<format>text/html</format>\r\n<language>fr</language>\r\n<rights>Copyrights (c) Mairie de Paris</rights>\r\n</metadata>\r\n',1,0,0),(21,'image','2010-06-02 06:53:26','2010-06-02 06:53:26','Paris.fr',6,3,'<image>\r\n<document-id>21</document-id>\r\n<document-title><![CDATA[Paris.fr]]></document-title>\r\n<document-summary><![CDATA[Paris.fr]]></document-summary>\r\n<document-date-begin></document-date-begin>\r\n<document-date-end></document-date-end>\r\n<document-categories></document-categories>\r\n<image-file><file-resource>\r\n<resource-document-id>21</resource-document-id>\r\n<resource-attribute-id>43</resource-attribute-id>\r\n<resource-content-type>image/png</resource-content-type>\r\n</file-resource>\r\n<file-size>160487</file-size>\r\n</image-file>\r\n<image-credits>0</image-credits>\r\n<image-htmltitle><![CDATA[Paris.fr]]></image-htmltitle>\r\n</image>\r\n','<image>\r\n<document-id>21</document-id>\r\n<document-title><![CDATA[Paris.fr]]></document-title>\r\n<document-summary><![CDATA[Paris.fr]]></document-summary>\r\n<document-date-begin></document-date-begin>\r\n<document-date-end></document-date-end>\r\n<document-categories></document-categories>\r\n<image-file><file-resource>\r\n<resource-document-id>21</resource-document-id>\r\n<resource-attribute-id>43</resource-attribute-id>\r\n<resource-content-type>image/png</resource-content-type>\r\n</file-resource>\r\n<file-size>160487</file-size>\r\n</image-file>\r\n<image-credits>0</image-credits>\r\n<image-htmltitle><![CDATA[Paris.fr]]></image-htmltitle>\r\n</image>\r\n','Paris.fr','',NULL,NULL,'<metadata>\r\n<creator>Mairie de Paris</creator>\r\n<subject>lutece;portal;xml;java</subject>\r\n<publisher>Mairie de Paris</publisher>\r\n<format>text/html</format>\r\n<language>fr</language>\r\n<rights>Copyrights (c) Mairie de Paris</rights>\r\n</metadata>\r\n',1,0,0),(19,'image','2010-01-19 07:46:58','2010-01-19 07:46:58','Dématérialisation de la séance du conseil de Paris',6,3,'<image>\r\n<document-id>19</document-id>\r\n<document-title><![CDATA[Dématérialisation de la séance du conseil de Paris]]></document-title>\r\n<document-summary><![CDATA[Dématérialisation de la séance du conseil de Paris]]></document-summary>\r\n<document-date-begin></document-date-begin>\r\n<document-date-end></document-date-end>\r\n<document-categories></document-categories>\r\n<image-file><file-resource>\r\n<resource-document-id>19</resource-document-id>\r\n<resource-attribute-id>43</resource-attribute-id>\r\n<resource-content-type>image/png</resource-content-type>\r\n</file-resource>\r\n<file-size>133590</file-size>\r\n</image-file>\r\n<image-credits>0</image-credits>\r\n<image-htmltitle><![CDATA[Dématérialisation de la séance du conseil de Paris]]></image-htmltitle>\r\n</image>\r\n','<image>\r\n<document-id>19</document-id>\r\n<document-title><![CDATA[Dématérialisation de la séance du conseil de Paris]]></document-title>\r\n<document-summary><![CDATA[Dématérialisation de la séance du conseil de Paris]]></document-summary>\r\n<document-date-begin></document-date-begin>\r\n<document-date-end></document-date-end>\r\n<document-categories></document-categories>\r\n<image-file><file-resource>\r\n<resource-document-id>19</resource-document-id>\r\n<resource-attribute-id>43</resource-attribute-id>\r\n<resource-content-type>image/png</resource-content-type>\r\n</file-resource>\r\n<file-size>133590</file-size>\r\n</image-file>\r\n<image-credits>0</image-credits>\r\n<image-htmltitle><![CDATA[Dématérialisation de la séance du conseil de Paris]]></image-htmltitle>\r\n</image>\r\n','Dématérialisation de la séance du conseil de Paris','',NULL,NULL,'<metadata>\r\n<creator>Mairie de Paris</creator>\r\n<subject>lutece;portal;xml;java</subject>\r\n<publisher>Mairie de Paris</publisher>\r\n<format>text/html</format>\r\n<language>fr</language>\r\n<rights>Copyrights (c) Mairie de Paris</rights>\r\n</metadata>\r\n',1,0,0);
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_attr_type`
--

DROP TABLE IF EXISTS `document_attr_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_attr_type` (
  `code_attr_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manager_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`code_attr_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_attr_type`
--

LOCK TABLES `document_attr_type` WRITE;
/*!40000 ALTER TABLE `document_attr_type` DISABLE KEYS */;
INSERT INTO `document_attr_type` VALUES ('file','document.attributeType.file.name','document.attributeType.file.description','fr.paris.lutece.plugins.document.service.attributes.FileManager'),('image','document.attributeType.image.name','document.attributeType.image.description','fr.paris.lutece.plugins.document.service.attributes.ImageFileManager'),('listbox','document.attributeType.listbox.name','document.attributeType.listbox.description','fr.paris.lutece.plugins.document.service.attributes.ListBoxManager'),('multiline','document.attributeType.multiline.name','document.attributeType.multiline.description','fr.paris.lutece.plugins.document.service.attributes.MultilineManager'),('richtext','document.attributeType.richtext.name','document.attributeType.richtext.description','fr.paris.lutece.plugins.document.service.attributes.RichTextManager'),('text','document.attributeType.text.name','document.attributeType.text.description','fr.paris.lutece.plugins.document.service.attributes.TextManager'),('url','document.attributeType.url.name','document.attributeType.url.description','fr.paris.lutece.plugins.document.service.attributes.UrlManager'),('date','document.attributeType.date.name','document.attributeType.date.description','fr.paris.lutece.plugins.document.service.attributes.DateManager'),('numerictext','document.attributeType.numerictext.name','document.attributeType.numerictext.description','fr.paris.lutece.plugins.document.service.attributes.NumerictextManager'),('internallink','document.attributeType.internallink.name','document.attributeType.internallink.description','fr.paris.lutece.plugins.document.service.attributes.InternalLinkManager');
/*!40000 ALTER TABLE `document_attr_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_attr_type_parameter`
--

DROP TABLE IF EXISTS `document_attr_type_parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_attr_type_parameter` (
  `code_attr_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parameter_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter_label_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter_index` int(11) NOT NULL DEFAULT '0',
  `parameter_description_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter_default_value` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`code_attr_type`,`parameter_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_attr_type_parameter`
--

LOCK TABLES `document_attr_type_parameter` WRITE;
/*!40000 ALTER TABLE `document_attr_type_parameter` DISABLE KEYS */;
INSERT INTO `document_attr_type_parameter` VALUES ('text','size','document.attributeType.text.parameter.size.label',1,'document.attributeType.text.parameter.size.description','50'),('text','maxlength','document.attributeType.text.parameter.maxlength.label',2,'document.attributeType.text.parameter.maxlength.description','60'),('listbox','items','document.attributeType.listbox.parameter.items.label',2,'document.attributeType.listbox.parameter.items.description',''),('listbox','value','document.attributeType.listbox.parameter.defaultvalue.label',1,'document.attributeType.listbox.parameter.defaultvalue.description',''),('numerictext','size','document.attributeType.numerictext.parameter.size.label',1,'document.attributeType.numerictext.parameter.size.description','5'),('numerictext','maxlength','document.attributeType.numerictext.parameter.maxlength.label',2,'document.attributeType.numerictext.parameter.maxlength.description','5'),('date','defaultvalue','document.attributeType.date.parameter.defaultvalue.label',1,'document.attributeType.date.parameter.defaultvalue.description',''),('date','currentdate','document.attributeType.date.parameter.currentdate.label',2,'document.attributeType.date.parameter.currentdate.description',''),('file','extension','document.attributeType.file.parameter.extension.label',1,'document.attributeType.file.parameter.extension.description','docx,xlsx,pdf'),('image','extension','document.attributeType.image.parameter.extension.label',1,'document.attributeType.image.parameter.extension.description','jpg,jpeg,png');
/*!40000 ALTER TABLE `document_attr_type_parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_auto_publication`
--

DROP TABLE IF EXISTS `document_auto_publication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_auto_publication` (
  `id_portlet` int(11) NOT NULL DEFAULT '0',
  `id_space` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_portlet`,`id_space`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_auto_publication`
--

LOCK TABLES `document_auto_publication` WRITE;
/*!40000 ALTER TABLE `document_auto_publication` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_auto_publication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_category`
--

DROP TABLE IF EXISTS `document_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_category` (
  `id_category` int(11) NOT NULL,
  `document_category_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_content` mediumblob,
  `icon_mime_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `workgroup_key` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_category`
--

LOCK TABLES `document_category` WRITE;
/*!40000 ALTER TABLE `document_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_category_link`
--

DROP TABLE IF EXISTS `document_category_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_category_link` (
  `id_document` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  PRIMARY KEY (`id_document`,`id_category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_category_link`
--

LOCK TABLES `document_category_link` WRITE;
/*!40000 ALTER TABLE `document_category_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_category_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_category_list_portlet`
--

DROP TABLE IF EXISTS `document_category_list_portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_category_list_portlet` (
  `id_portlet` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  PRIMARY KEY (`id_portlet`,`id_category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_category_list_portlet`
--

LOCK TABLES `document_category_list_portlet` WRITE;
/*!40000 ALTER TABLE `document_category_list_portlet` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_category_list_portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_category_portlet`
--

DROP TABLE IF EXISTS `document_category_portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_category_portlet` (
  `id_portlet` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  PRIMARY KEY (`id_portlet`,`id_category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_category_portlet`
--

LOCK TABLES `document_category_portlet` WRITE;
/*!40000 ALTER TABLE `document_category_portlet` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_category_portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_content`
--

DROP TABLE IF EXISTS `document_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_content` (
  `id_document` int(11) NOT NULL DEFAULT '0',
  `id_document_attr` int(11) NOT NULL DEFAULT '0',
  `validated` smallint(6) NOT NULL DEFAULT '0',
  `text_value` mediumtext COLLATE utf8_unicode_ci,
  `mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `binary_value` mediumblob,
  PRIMARY KEY (`id_document`,`id_document_attr`,`validated`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_content`
--

LOCK TABLES `document_content` WRITE;
/*!40000 ALTER TABLE `document_content` DISABLE KEYS */;
INSERT INTO `document_content` VALUES (20,43,1,'www.e-bourgogne.fr screen capture 2010-6-2-9-46-50.png','image/png','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0 \0\0,\0\0\0;-�:\0\0\0sRGB\0���\0\0\0bKGD\0�\0�\0�����\0\0\0	pHYs\0\0\0\0\0��\0\0\0tIME�0+,�q�\0\0 \0IDATx��w�E�ǿ��7/9*��\0P���t�P9s��0+fϜΜE_=z<��D	���6����z���ٙͻ�°[??��z�����ԓĜE�$\n�\r�%�cH�:�-__NqEXu�����B���k�\r=c����d�HJ�4���̖[JL�ƶ۾�k\Z�.B�	�\n�#���fîY��S���Ѕ���=�e�� �\"�}J����z�V��Q8�PAAAAA��C\0nCψ}O\0�m\'��L�>C�m�\"$Uq+�e7md��ߜ}`�6�-�i��k�� \'���DM�@��n�]�lP6@U�0ҫ�u��,�)oN��e2�Q���ޤI��������CJ�d3eߋ�vf��B��5p����.�����ecZv�бم����@̴��6�.�洩��\r����i�w���P��6��ޚh5�?6\Zg�R���m��d#K���SPPPP�0t-c�\r2a~$���}XJ4MC״�UOy��i7�{\"�B@F�w�-�-1-!.C�ՀəD��x�j��\'����)��:s�̫HR6�D���KˈvH��o�rE^�ޢ�I$�eY�,iK��8O���$nZ����k�\rG\'ἓ���AD���5*+^�� Hex�����z�V�\0M�J�v\r]�a�`ۙ��V9j7_� �G�y�V�k�h�i٘���J�9�3m��6�!�]Ѥ�s[���f&eB�l���f���dR\"�TZ��^#�\ZԀ���u*(((((l�躖��gƦgK;�ړ�[R&�՚�>�mK�q)%���3��#�Ѕ�˭�	�\\�&���L�H~��\'7�\r����-M�$��M)ki�֧�:m��\'����̥�.ˑhH��-<����ʋ^AAAA��=D��r?�`�235�qo��G�3�l�Y���VRJ|>�Ó�6�h��C<k�P���	�C�����ǋ�iM��aA�����h��m�X�ݦ�4�e\0?)�-��fm�imԑi5Z+��貌n������w\'��$l� �����������Pk�C����ǴGd��+q%����_BHLS��#��^y�y���E�t�ߝ�?�������>��V��~v۾��H����{��8����c��-]KEEE��N<n%LGD���H�?4��8��|���)Z-�%��אJl�3k�D`���,s&�*$�\ZN��B\"��h�V������B�D�2�29v̯2s���详khLSbZ�i�q�:ޝ�:��3n�i����_|�_V���h4B^^.WN<�nݺs�\r�q���m��<����E 0\\.�~��\r؞P(�W_|�����:�?�(\'�q.�m���Ǖϡk�\\u���9j����O>z���ε�_D�>}9���1��M!���\n�����ۨ\0�r�Q�V<0�0��lD����DL�\0A��=��6�N�����e{���O6���ԼiV�\n\n\n\n\n^���������Nv�=�Ӓgʢ���|�m4�������w3g���ۈ$�!m��kWS(G7t����#��ˋX�������sg���_r������C��c,\\0�ò?~GJ�/���pn���_~�S�:���l�w�b��b֯[���?��̯1\\.&�6�\\!X����sg�h�<v�y��ͻmm,h+\r�M���rd]�e=�!�WO4.Ķ-2��h�����t��u��D��\Zv�s�`y�t=�ve���\\	M��������u���U�X;�Y[�W�+gfi���$B��L+��\n`������\"͟���J2��x������g��X���;�i�Ne�y躎m9�!P�:,�5\r3���NAӴ$G��c8��`e%�&��}����\'��v��L(;>��kV���v�3��f��\ro*Z���DZ���t�F˚�0E���\0�<*�,Tsv)��톡�vc���0��a@P��%/�C���hB`#щtȊ�g�8���X��*a�p�QPPPP@D����Z&F�J0���Wաv,f\"���F�����k�����t�\Z\ZZ\"�?�0��	Z�ן���?� �x�3,�DC`�6©���g�/��q�ضM�>��Ӝ����{�ge!dg�뀾<��˜u�%̚9�4�m�U�ױ�.��ի/˗���ի���-�ע�0����D���h����ɤ��.�LUY��&	5jj��N+Q�1Z5�m!Z�i����u~�5ŕ�VF�hv9���\r�\r��Rr~�������d�3@�kTx=W?�?,ZKqY$��90������چc�>mC\n�+��0�4�֕�y�q\ri��WAAA��e�<�w�o�\"��.S�q�Z�	���~�x?\0MӰ��k���r�2z��&�W�h��t���%�0`��c1JJ��ֽee���$�]�r��P(�v��t����-E7Уg/�����-��v�Ͷ۱v�j��8>��N�������z�ջ/�����s��nYu^��`����0~�QZ��v���ɷ�-G\0�Y�.b5���=�V��LK�+��-P�����\"w�x��ǻl.z4��+��+�\'<`�4-�\0�9��OY�!��i�EЉ�ἐe���>���	���=7ah�m�~x�_	��2�l-G��\n\n\n\nR�q�6\Z73\"\ZW}��u���HI8fn}	3�9������u���V�eԒN�Cb�������+Z4fk�&ˇ���w�7�\r��rT�8Nh���!��p�L�P��Lz�+֕�1t\r)er����?BtݱN�1{%Y>�]0*�dP�;���W��/�S���oR�:����\'�{�@�2�[\"�K������M�ʪ�UB4�!��n\"��h�6be+O�@�!�6�ʳf	��AB�p�	�7)9�l�֏ɴ��1k�z���\\/#v��Ё]��cCI���,f��E�\\@��)䆳�L��C/�9�hx;���E^�8�\Z$��)(((t@���3��#1*s��R2�7�H!��7�E����/����ܼ|��Jm�#����S��s��A|�B��\"�N�Ǎ����w�pn�	�vy����x4�@U��X�l\"CǠEiu�1�>X��kе��#W�Ϡ���m��9-�uAiE��4�o������A�@�}�)����R�w/��\Z\n\n\n\nj��Ȩ\\W��IS�L�/�	�3��9\r2�2��,/���y��*A7z�Y[nRQ^�d�,4Ms|3�H\\\nM��f�$Ȅ	�H$x�v�P�h�<n=�]���!�-!4��)/+���_s�#�4-��lC[�F���[Z�=/h,�<ͪ�h5q��V,\'�ƽ��:&�M�a�A,��N�+��b��˷�a����[6���,)��6�Yn�p4��9����P���&���$;��p�@��~�~� �D�����B`k:ξeI�~����l����XBG\n�������i{U�h,��E9��q�ܞ�k��1�3������E~����b��;ӫog�y�9�����zy��G�eeq�^C��Sqy�i����=`$�-]�����	ǰ��C�+(�٧c�#�{��,_����V�C��S0�n�Ι���b����1�q��е{gN�pl�V�{\'����ym��M0��:����M8�o����UgYCz��(��L���T�k��7#q��f74�8�Hj`+�U���|�N�蜍�\r��G���Ų��ڢ���6�,�-�ck�J�WP����C��mz���a�j,M���/D��Z�a�(��^+\n���g�u��K�P%�\"��kS�I�fU����f��ϴ���&��+�3�31�8B�\\.z��ł����f�_B�\\B0`���\\.lۢ���CF��\'�g��;���K�v���\\.֭Y��?��٧���g���O�������c�O`�o�������m�\\�nC���g_a�/�Y��2��f�_�}wN���~��/>��w�c�)g�݀�鞣s�q���������m��\r������U���p��u+��R��E�h���+��K<�:^� m��{\'���Gt�4~W#�����k����醁e��6}�H���	\r�ת�mY/�����������g9Έ��X��G8��YB|~?�H�I���˅�p�p�\\�\\n\0l�&����l�x,VM[���\'����u��G(��v�kZ�=\'����ôL�V�=�h�41��K8��/�V�#�҅s2d�4��Ɉ�b,�i6CG�B��s��F��_	=}���J��\Z�j�Y��@4���5���w��Y���	����h!�k���p\n��2	WT)%�<��l���f�|�����\'//?�Ь,/�@%��9���\"�<df|�SbpPZR��O�̌/>%XYAiY<�7���膁��G\"�k׬�w��ɵ���P^Z�ŗ]źukTVRPPH�����/`�o���ϋx��RQ^�&��ߦx�և!�޾yǱlD8�Zu�@<��C���m��۹\'��T\"��=��3pۂMj���k�E`\'h�ؚ���۹�n��\Z\n\n������N��?+�@ee�q.77��*�ܼd���s��4��;����2rs�ŢD���Ώ?|Ga�N���x�^��H�����ģ�ˢ�h��E�]I4��rs�>�s�������ڛog`���z��}��ضMNN.��!�4��~̛��̐�ù`��\0ĢQ��Ǳ��n���&V���O�}���y�Ï:�o�����a�x��q{<N����)/>GeeϽ���sK^̩g����Fp�����ϝ�=B�^�~Y��k���ܼ�{�\r~]�3��Nz���m�<��wM�?~g����q\'L�V\'���@9Ç\r���(\r��&����r�r4]�\"E\0��GP���GK��o�p %���#�w/<o�Z��+�q�v.�R6���c1���v���7�~���h 4A,��8��?g�A��Ǟ<��=!8�����[�c��5degs��\'�w�~w�?X�j9ݺ���m\"�0�>�/V,_��7��K�?���q��^��	��p�X4�g���#����0����{��@y�֯[����������G������2X������Dl!\'\"�+�A��Y�^u�f�e��>��< ˂T�[�A[�_�D��\"WR��R\"�d���adBR�`8�!�ÃW�Ǟ�������4z��L,��ޕ��G`n��.//�c�<��g|����W��ys8}�qL�v���3N>�,vܦ�J\rB�G���,!ؒ��ZiIrt��/�[n\'\Z�0o�,\n\n;���o���K�a�q��\0̘�CvFAA!B�9�$��!B�W_vo����x\rw��0���G_|CEy9~=�=���T���9��}x��0z� ���,�w�\ZΔ���Ɣ�y�W(//e���c�_�x辻Y�zo��\ZS���#G���9��}y���ޣ\'�e���m����\\rޙ\\t��2~�n�����r�]�!�d�=ve�}���^}�w�}Ɠ�=�E�^�Q۟�V1�W\'~_]̡���׳�D���N�a�\Zzv���v7���$eU��jb�ܹ����v:9n$�;g�zoͯ�)D�1C)Iv��N�wM�FΪ	��	M7Z���d~Z�fk��$lɜ�Rb���Wտ\r�y��r��\r=ᐮ�:R�e�iAm�D�6R�I\ZV�*����O;����{U�H�f��:i��\Z���S���k��C�55�Z�G3KlU�*����g�\'b�:��u�ۿ?�ll�s%><��t.�:)|\0Č��{����4�I�_��;������)� ���7_\'`I��7]�u�)/cII���4zw�;���>�sN=��>��s<�=�G���vs��\'\rG��\0����M�^��#���7_GNN��=��m���Y�~�q.�X�`ޜY�y�	�N(���_��A�P0�ڲ(��J��z<̛3!�eeh�z���n�v�����L���p�|�3����/����E���s�������?|�IGB� ����ۯ��?`{J��x�٧��ϼ��-e�a����w���MRR\\�Y�^�ӏ?̟����U���\'OC?]��x<L�6�+����/��{ｗ��J�nw��կc�4Ms�r��Y�qUeD�鮏�t�4:��.V�#���@���#-�����;d׷c�����~��8V���,�J�xU��2�\Z厹�m� �2-l�J{��%�i��i4��UѲ-˴�ZI�v*��k��j;�u���a�.��\"F����&��&�=�ڏD�%�s�9��!�]:s������f�G�������Tv�]�p\"�!q���4��ɽ�i��/?s�a��v��{�A\Z�+�����ƶ,��!�1��E��g�T�a��R^{�b�(���C*MX�r-��fЮC����>i���kS�eݺ\r�A����������ٻ7�}2��Nt�Ӳ�c�(���S���h���N�;������bN�D!��Lv<)�k�n���.��ǟ}������öa�矰�nÉ�b{��6l��,�\Z�BӈDc��A��Øx�Y���ms��A^y�=���WL�!y��g�~L��zr�M�q���bZ�n����܋.�W�>L{�]b�h���-�\n��8\r���Ŕ)S�>}:�&M�gϞL�:�s�=�_|��\\�B!eDi4��N4hާi���d�%��̜I�ǧ���_q �����{,⑋�>u-k�x��:�9�	!�t}JFª����.&��-e�)6�B\'Xk�dc��L��rX\0����\\^4۪!�h��8e��q��:��m\n��#�����3�� aPe��/��KN�)��hX�*��ʬ	H��*��Z�!�����S����0醛:l\0���<�>��~=���3/�r�r��0�|�3�?�ܼ<\\��Y�~��g_� �\0	̜�۶��Mᨶ�m8;oכ�N�W^s�%9jo~�m)���ENN.ӿ���e�r�)++������,v۩���` H8�އ����q���PU�4�\\{�D������{\r�~�a�%,�����ńS�`�݆!%D#��q2�ΤnA���G8�}���{���p��\'����s���P�V�X�)\'���+&1p��뾇9��1\\�������c�Ɣ�y~ʛ�bQ�R��S=qr]JKKy뭷x���ڵ+RJ�9��������9����B�<�8�j��9�z�p��ܙ��\Z/:�>�%�ɬ�]@��-֎댌�\Z6�i��J&T�R��7���:�����K��Vmy~~>�X�P0��$y��D\"b�(�˅��sr�\0���s�M7s�%�o�u��KR�L˨�=�>t�\ZN-+S�j��N:@�u7����\0��KӴ ��AE9�%��?��)ẃ�yh�<.9q(yٞ��N�KȮ|A�Z�\':��,)�Y.�hZ1c{*�Iy7Y��\nQY�o����#�8������X	��ǟz�uk�PXPȺ�\0ee�<��#<��`��2���E�PP\\TBYTRRT��@�,\")-)EKlp�F�-%/��kn��p(B4A�e��v�Y��iCii;��\0_�����:��p(�/�V9�I��w4��V���2�Pw;�To��#�AEE���G%�@�x,���|��W�q�p$��oJ�.��d�jB�0�X�N:���9���\n��L���	0	R2h�~[��H$L,\Z�{�,��/B!�Y��x+���/*�*�m[�>�/�M�\Z�a�\\.]�tI���{���o0#i[�� ���OK�nh\'���09H9KK�%�^����N��4��߷�`K��\"�	uqo��\n=�ݮ�V.\\�C��Ϳ�}���ϟ��6�p-a\ni�M��n�]׉D\"H�����CA��ӟ��_��;����o�iƉ��?j,;��W^s#K/�C�g����C��韱~]Y���cz���V�e4U���ܺe2sG���he+�����5����7�������9J�^g�r��=c����CGn���t��������:f�\"E�M��XZ\'������	Ү����;�Hd^�4XU!m�C���s�QGSR���q��h�NIqyRm^uM�u�J��t�Ҫ2M���<M�n&��X�	���̪���_��8�}=�&���r�H7O(++�E?A�J.�(-��G\0�@ ���h��Y�7k=Ƕm**ҟ_^^�w,��|(��v\'��^�	����ߞh4Jii)]�v���2}�tv�i\'�\r�p)t�1�%��X�� Xe��>���q\0\0 \0IDAT�λ�G��c���0�m�\Z1`Eb�4���H�Y?�d��0k�R��� 7��q�y��\').*�g��x<����w~��W����t�L��U\\>�z.8�4�{�-���\'v�e}:g�)�J\\n�8���a&�9�⢍l߷+��̞�=���)%��7��-dٟ�Ռ�qǭwr�ym))�a��١�����N��;�N,%5է��e��S�R�����k��V��~����Ӥ#����|Jy�\n�n����a��s�Ե]��Ժb�\r�B�L��,�E�_�rD�L%��f����Ȝ|���A�v��2�VmF�r�\'��Є��>\r���L�:��^{\r]׹�[8��S���eƌ,X���/�\\E�R������g����K��b�쉹l\r�\'��U���B�Oޟ�O�O�U�Pz�9hyZ�²��vcQ��.l$��F���\'�r��������O;�L�C�C�v;���1��y��R�bm	%�����)��|����ظa=�]y\r��+?��g�\'��T&]q���s������\n������BJ�λv�*��V�M}�^|{�G�9��/��\'}�ˮ�D0�Cjs�4tQ\nZ�J�jn:?پhiu\rK����X�%��D���z[�V�v5ShQM��a.��L��^s���������H�bh�r�x���\'�u8���\r@j�D��p��M��NCGt�����R/L�����N�K�D/^E��)hV<yҞ����R^^�D���p�ϟ4;��������zu!���x�7�hO���PQQ��I�9T���S�Z�+n�7k�2�YtN_kj0��(W\\q�/FJɥ�^JNN�<��P��Ç��(���cJ��φ�Ɨ�a��=?7�fa�X9L�j�X�D/��IG���%�_��_����:�H{7Y����_���q!� \n%�}K��x辻y��0M��z�٧�`�:�\Z�@E����mٜ�S9��Ӹ��m��&�ɤ+.���w�D�է}:waņ���)D\".��R��}������-�m��Hn�|W_{����������E:�I�dk�r*f--M:�dj8��2R�H�-k���E�҂Ϳyڹ�p:U��i�3���i�����%��>=�34]�a���S��a��^�4:Q��Nf�R0�j\\+~�켧v<�Mm֮YŎ����\'e�����%!��r���AJ���,\n\nsX��/<7��t-k׮F���a������vʡS��db��N9�\0��),�!++]�x���mp�\n;����wc:Y�Y�`:n�!�sg�NU������aт��V����.(t�躆�kt�CAa>�������4A��9	�G��{T���%�����p�]	Z�$-����ϧ���E擛�<_J��<�^�-1_�\\����\'�|����7o}����cܸqt�A���;L�6�;�Cu�Bç�4=���6���9�ͪ������X?�?­!<\Z�\'�H�C�m��F����_�ߗ�]���yWP��^�4%�JCĤd�A��o��ȡ�c��lܰ���>��������������H^y�Y¡ ��/s���W3��矿3r�!��?�E~q�b1>x�mFޅ}�h4J4A ��16nX�ϋ�2r�h�/n��jC�b�R���nxS�1���4E�\"�V��M��I�И�,���G�H�\Z��p��7b�ޑ؀��n(��N�z��	)�fO �q�9N �ՎsH�}\'b�\\Lэ�Ex|�;�mat�у}�ݟ��z����Ͷ�r�?\'�]��;�S�;��Ō�}���<��cm��\'�MvCYY	{n�RJf|7���3~ܑ��o���7x�{��(��߸\\��0iS^~�����G����N���gr�\r7���ѳ��t�>��ss.¶��#�O>fٚ\"n��H�i�͠w�>���m��6���F�u�9�>}��#�����L��nܸ�����π1xL�d���SZZ�������\n�y����K�y���m���8�v����ho�>��}��{���n�1c�����SN���f�������ǟ�?+K1W�LR�x �s�7ҹsg�;�8.���F��\"ῦL���B��?e�������.-�6�G�2�v\n���ՇyR�=�>h�Naa!��mR��v��T0%��!�	��G�\n�x,��+��˹���DL\"�0ϼ�*n�FEE˲�߷3���T����i\0���MI,f�9���).*\'`J\"��h�c�ϩ��Jyy�+\']�ͷ�J8\'\Z��%�7j{!���)~�)��N���:]�eݢ�f�%�nZ����CC�\"�M�X<M�H�B�(x��+�����Ĳ����L6����^�λM:���$6����6c�Bʮ|�y	�Xd�϶l^����w ��q�e�f��().��c����|~f���ɯѥ3�ܑ���?\'�R�w6+7l`u�F.:�,�{$+�o���fc�={�����ק����<?7���O<�/��D�6�e���S���༳N�s�����R\Zp��{ҹs��DV����Ρh�F�����Д!������Ƚ���/X����)0t���ƲJ�8�@���\\��u�E�?��t���5k�uٟ���c�מø���)++����qh���`\n;q��Ή���o&2�ox���9ŕ��qJ������e��P��G�\Z���ԩSy饗���&�\n\0�Q��\r#m�7+i:���E�\ZI���2�Bh��h��\\#����(w��q���\0�p� QV\Z��$�Fi�s�:�%�ߚ�)+\r\n��J�����\0�H� 3)-qh�c&e����]���t7���Jk��\0N\"B-e�V{KW�(R�I_Dz�-BKl]��-w�b�ە���M���!�IZ������);��CBkD\"�\\$y\r� �m$�����/�v�(��-���:�I��M����z���O��FFJɅ_\nHr��)�Lb\'N���b�hա���ɫ9�fE�S\'�\'0��#��Θ�4\'OGN���/Dx�����3y�����b��RJ��0~�y�<^ǔ�o�\"	s�M��~���w�d��)/?�g���҉���|]�/�`������~�3���8�>x)%�w���/�&0�{�ɬ�g����x��ۧ9m��x���$Ʉ~��T���������A�$����~2���DضM$C �5 B\'�tYcN%���H����=��=+�W��\Z%q]$�J[����P_����H�W���6���ZlZFzj�<��S�i(���Yցh�y�Z\rE��k���$���D�\n�wo!t�Y؄H$<hū(|p�c�!<�\"��j�|�K��Q���7o���kX�w��ױ:�E�[[~Q!��k���%�B�W3gC�d�Z�s��z�����&��-	�$W��9��P�;|��G�x&Ie�A��!<Bp�w�r����O�輳�lƷ���W.��R��b��.�,^�}�>\0G�=��ٖ��<H dź����7¡P��NfڄA�ms�Ŏ�b]	��$�Ö$��Ш�L}���b>��;.��O�\\~�$����D_T�8��x���q�5v�ig*�4M�,d���؎ЩKW~�y�<��v(l\Zs.%��Q��m�i��&%�ރq~>=/{����C���V��f��z�ۀ�	K���4M\"��@Z��E��!Z������h�y��՟ޱ�2Q�C7%b�eڒ���9�+�Q��͐�/\"���q��=�FR�����G:��}CV.XV�<R8tMw �^�g����?���O������{���&���&������\"P�0�^��p8���#���E0H�k��ɦ��2�t\r�!���FJT�t��,�p3���$5%�a��{�Db�c1�>.C\'\n���/s���g��T��R���Cee�׋a�TTT�W��U�,77��ʐ����%\n��z�F\"\0̞���y��cA����f\'i94���z�`�	���y�����\0\'\"J������q�H$R���M0��UPI�!4]o0�B���imzZoZҶ�؎1�$P^J,\Z��T�T��������B��MOIޔ9���O/��[\r~����%�,Z����2-1o�zY獴����J��-Ӕ�ܭ�*��(��f`̥DD��ݰ?�ڥ�HP\'R�%GS�$6�0���H��n��}��T���q\\��e���c��܃�E���؈é��M�S+][l���i�mF_�4$2͟EAAA�%��A����-�m��l�=p��H���Rb���U��d��� �ћ�륽�m �y?��鳪%y\r�ZO�2-�^\rHe(J$nn��!�e��=��٠�iZ��K����S��o�Fcw��\r��������K�PZ�D4�:E���	��|P��:�6ր��� [�DO�ߖ-�*Ly���v�Ր\0����V�%�.^/�֧�T�Q�\Z*�,�^\rH �<\Z��X�`��yv\"��_Oؚ���H���e�%)&�RW��A -s�g>�9p$�2�QPPP�H�O�Z���H ����ք�m����u���h�P|n+�2��ү�:귰L�J+˨5Xp{����Ǔ}�I�X���<��H�f�F�	��D�.ʯ����>HMW���B��̸H��>�r��Y})�D�B�Mr�����P۶���#�@ ��(�C�~���L��m\r_��muZ����K�!���t�f]`��o�y;�Y�Z�#R��IEr�N:�m�i���b�v(ᣯFXq�e:ɓ!i:�\0Md��i�}Ll]{�D:9�4���O%��t����EK�ӧ~�H�������H���o��oƲ--\\�~�G�fC	��Y�u�=x=:�p�x<�����5�D�)Ant]\'��!�D\"�-*���6��8��}ي�SѪ	\'\nV�&X�H�X|�G���(Z�Z�S��5���HE�Bj�B�D3��J�ೈp*���FAAAAA!���H,�����8\Z-�H������0`�^H))�����?>t�\r�%/��c�Ƕm|~/>C�X�bN��/B�n(M�j*��_�6�f�{��=n<�<�W]~����nݪ�c�̞�!��ɧ��#�?����q�����`�넮��M���we�\\�E��z��$�6�,�^d��_�+��(]�(]��a�r��n�����N�إRt(((((���d��тle}��k�&��$Un�4�[o�N>�1c���a�)�`�G�������LeE�~�a�S�D��4���駝Lqi��\'��^��f�w�r���ǝT{����A�L�k\Zz��3���\'\'�h�?����n��>6���j��Y2cq�N�*]w�ܣ?��\0L����	����CAAAA!u�����6[e6q�8��~!��v�\\̙�#��z���\'���5�G\n�\0�;g6eeeZJ���,U��$�\\�����˙g�Ýw�ʄ�#�Fض�0��L|QCy�ΟW��Rޱ�ЪO�0���~iF4�����)Z\rgB�ܧD��M��H����3w�l����B�hq����h��>���>�$Y��\'��r��.GX��ץ��6��y��t��p	����٧���6n�@�2�����F	����f��l����RZ��3R%Z�d[�t�S&�O�d�ʪ�Z՝ٺ�\Zb��ӄ6\\nk�����ײ?���5<�Dër�fR��Z��Ք{ڇ�Q�4�i�[�$��ka�S���g�1c�����?c�[op�1G�`�Q���-,�L�FhZ�kjso��Z�Q���C����RZR@8n\'��,c�1\rH�d{�e��|�͢Ӝ�P�u�f��C�6�%���WC)�L��2�x;�k�L�����[����z��|NH���|^/��,��J|>?�mcY��|,E�t�~?�%%���a�6�a�q�Frrr�z�X�Eyy9�9٘q�ۍeYT��ӹK���8�	u�ұ((((�$�h2rm�m1�s�}����~T�c!(�T��?�#�?��6�|�qӬ�\r�$Ѣ�J`}q�iRiY�+*��2�;��^�;a&�|Q3�L�\'E;�e$g`�N\r-+S���\Z1�j�(�����G\\o߃�m����:��e!�5k���㏲f�\Z&M��9sf���bn.�d\"S^}�O���\rp�],Z���b���٫\'�~�5����q�PVZʷ�~C$�ko�/g0�_��z��P�ݮ�>��p(�q�O�_�~<��c���~���G��4QPPPPh?��H�3\ZW�^�U���&�X���M8)�u�P��B���m�Wܸq#�<�T��D�y�ѣ���I����<xHr\\d��ic������`ذ�l���{.��2-1���M��-MǮh����\'o4no���[��5�0�G�y�2�?�!��y!�?�c�ɛo��K/>O�.]����x������o�={6�-����9��kV���×_����wgذ�w�Y�����n�w��������?��{�5tM�i��c�������+�m�Ǟ{��G�(/+c��۳Ͷ���/rǝw�nfH?�gv�Dӵ�?$H�m�R�^VZB�m��i\Z/�{ϞM��ۯ����=��b�/*����p�\ZnW���.�/��s7��!SﯲJ7�P�9\"����8�F��V_%���\r9`V�����ӧoC������Y�b=z�D��������²mB� ~�Ͼ�i��n<^7��Y�\\����g1b�����֬YŎ;���b�,X�n���,��p�2�ҥ3�V�`��:�Е�����B��@�hk�FuT����B��(\0�h�ɚ�wڑʄ�x8owc�N6J�`���*��< Z\n1d���SF���/�h�A��zvC�_��gD��O`�~����Y����[�\Z=�{﹓ܼ|ƌ�6}�r��W1p�@~�Q�ΙˤIWqꩧ��z٦�t�ܙn]�q��p�]��۰�&O��s�:�aÆ1v�X��ry�٧�y��@���(..&;;����9�8���j��1�+��\n�׋eZ(((((�H\Zd�Å =�j��(D�h�ph�d=�uG�q@��+-����i%L��2Ђ�1\0�(��Vϴ$�u�[V0-L��Vh��|�V�M2��܉NR�)W_OE<���e��9h��ͷL�{�؉̬RJ^y�%���?��q�Yg�רѵ��L����LAAAA��q���<vU\066R����å\\F=&X�֡�Z����׮��@���d�iG���H:�Ve�}nڲ^��ia�[�G��X4JQq1>�����Z��f���\"�n�*���B�Mq����a�:$tM�eh� �HKx�x�N˨����l�M)���SѪu��Hޭ�Gw{<�l�q��rӣGO��)(((t`�T)$�\Z\'MSd]@n�5�D��z���Pd���eJ�/Z�\rmI��A��3�+(((((�1s��3U� :tB�&ɩ�}���i����oZ�\'6�^[�bk�հ���������>������7@˨�,Iw�5�eQ�� �h��U?���g�lQ6�x܈	��s[����5�c��ٮ���YV3T��U��\rgB�J���������I��s[�� ER��e-�בh5��V\Z��(a��.�綌����z�V�D\'���UPPPPPPP�,�C�EK�Ȅ�4 ����湂�������V#���:-C�d�-��4)o�͞�����P��!\"��e���W3�Io�������Ys�4��	*;Ч���P����B��M(n��X㫶�-2�a�c�����w����[n5#[ �5\"ֈzǌs�1�i\Z�-1�8�������0�dv�zD �\0,\\�N�ϓ�:$��\0� ��ص��$�7XO\0e�\r����������	��:i��H4��ӟ�P[���:�R����4MC�2m,��WF�dr��֡�B��l���=j��Zߠ�ȯ~V��Q;s������H���Є{�p}~0�.O.����Bה>$u�r���n�̹�a.��� kX&J\0\0 \0IDAT�iw�La*n<�����z�ʱ�2�M-���ZHK�`�4���2nC\'����H��$���2�\r�{]��6�4���\r\'�5��������@Uc�h4R?����Ϫ�aS;)Cc�ӄ��s��5V4�ZCmI<���7n�������V�e����\Zy5�E��di�ئ��yW���A3�3!�!�-{�򭛓EB��6�%��nA[e�C��3���\\mAK$�:�ӄ�mk�4!p68ۮ>�KN���s\Z)K�+ ��4�k�9���h��\"q*�l�Nݔv5�%l1X��-m,�F���\r\'[X&ۜ�H��Y���8xGJ��ЀT\rS�rP������6�-�l��]�r\n.�hB$�I���S`	0M+y�!����i��E�?�\n�,��4=���ߚ��k5um[V�߉�Ii\'�m�hBC�tl;��GRV�!e}�I�J�]$�͔�uQs}J���:fl�S~��Sh��Y[�S��O~c碝h��k����۩#�N�O��v��#S��	�F4�7�\Z�M�DBB�v�<�c�F�8�U�hb��)�ߧ��v#�f]*��n-#}��z\'�J2l۪�i�H���еM�y!.)1-ms&�܌}�l��m\"��\r$����ZBH�Ķ��^�nRQ�I��@,�t�/�V�Hn�m��6�W\'��q�iܴ�.���%��h�f]l\r\Z�C9ax#%q��0d-�(˪����O�ղLGh�=qQbY�ISu-UH�)�n������m\ZR�m[��ݶ4�t�8Z��W����FM���fD��9+jв\Z��β:�n!�k*��ֵ^ E �J��\"U�u6���#I�@,�jq�z�4��Y�ϒ)�utJ�>L�VR ����q5d}\"EB���֔ZG�)�T��ۘ;��(��,��_6�\'�-�eY\r6[�S�ﰁt����.�2��s,�n����#���w��нv��l���˖)�����(�}�S�dS��H�\0���f�f�y�A�(���o�5��`[6�;�q�;�窍,�}�pӲ8k�޼���m7v��pN���J*е潥д�g�㣨�>�=3[�	���#M�(�(���^��b/����^���b�]�#���[�������1���d7QA��|�d2�3gNy~OEz-L�DVS[ݵ�Q4��umņ,_����U7ò6�X��v�_��ˊ\":�o}�>o��L�܆4mP�O��᪳�����)	� \0�0L3��44��ӎ�@J�/\n O����������ꊲ�L9�\0ƒ��{���Dc��u뛅#�����2Q�\\Y�r���M�DZ�w��u0l9	��B:�a9OF	��P�d|֊�gI)P=yd�Jت�Z0m��ǱD(�0K��Ò��R��D�u�07,gLl���t?��tǸ�-LD��	�Q�\0B:v�bR>BǵY��x����KcF�2��[��7�L��o��F:XwleDL��������(��?�sDH��!�0�C�tZ���#{���:2�C8��wt��O��(��zU�|^�ն�T$�$��x7A����*����[l�����q�lO-i��Z=!TQ�um�Q�k�r�v�./@�![RҷKK&�[m��+��e�ֿ[k^�d<�[5B�M~���~]Z2y��K��[0{�tC?$�>,�X�Ƭn|D��h�(�o&Ϗ)���iZ\\z���ܳ-%!��Ǵ ���g>bK�>N�֚�EnN6��9�@PC���w��}ʮ}�{G�v��\r3�w��:�hıs)	i���Vo������z%�xB[5��&���bė���!�{\\>�����N�֚�?\ZO�sC��u�׵o}=�������~ȕa6 6�9�G+�+ah�\'tkM��d4�p��YKד���K�Tu�G����{�����w����k�&��_Ĕ����^�_�}.DhwE�];�w�0��όz��ߑ����2µF��Hd��p���!m�yUt\Z�����v�ԉ�<g�^%1��.�D��Ue(�-��Ü��e������:�cQ�?��X��U����2+�y�rV�������\Z�Qj=��	��&O���a�P�6Sᭃ�q�8��(�X�ꁱ�����i���XV��K\0~�J���<���\\n&�Ij�E.؍\r��0a�*����K�v��x���ч�>�����o�`�-\\ˌ��h\\�W�ч�V3n�\nT�Ɇm{(	��p^�tjA����v�\"���NA ��c�歯�R��-r�0tP~�����U{dl��nXTH,GK���Z:^��tj��I=�2�)�/,q�� �q�Z��Ғ��~�}�I�y9o`72���ጅ��C:���^�ʛ\\��c�3��)�tݨ6\0�,��{0���x��\0%�}$�}4ϩ���=�8{S���$O�|O��������b8A�V��W��|>~K�lE\"I�������j�6mߋ��>�ԍ���uƲh��X��lK�욌�q�%�ͩÅ��`�ܕ$%��q�b�7ʦ]nC6l������kߐ���e��ƣ����7�x��!�0u	M���4-~�m	�)Y�)����``�v�<�o}�[w�sB��tl�Ü�	�4����i�w�I1	tk{}:�2�˩�!h�(��O��Ĺ+�:M��~�)��y=��W����Z�M3x��s��d6����K�`�f�/Z@�i���h���\0M7\\����|�v�!�0IOMb�Y}���Y�ؽ��K�&��_\'>7�%k�U��N܀a�¥��Z&<~�������6�HKƣ*timϓ���eɚmde�q�Ex��I��М/��sd,A�n��ө�}?����bII���\\u�q��|\n��H)��|��K70s�z[��:�*�ѯ3�a���E\0�Վ�M�1y�*�umŨ��ҦY}��6��c������rs����y�۲�N�\ZsR�6��j*� O�tO���S�t�sgMtoߔ�][�zS��Y�e�%�I�:�\\1�X���/3�a9Z��][Ѥ~�0õXtnݘ3�w��q�X�f��m;.ʻ��5�e:ٰ�Z���a�|�d�>)���w�aDM\n3B�-R�RKA��-��m��&ݵ9��R71�p��[n|xe�DQxU�$�������**N�p|��	\'\\1?DC�hH����Fe@IE�$\"�Gd>+#>#s	�Q���p��~ ��Ye�H�E<;�$�� ������*v܏iJ���\n�$d�CO��4@��)��﹖�u�P�h)%x���GX��R�t�O��e\r�v��i\Z���?��sT�Z|;is�n ��Nf\Z�ap�����2�[��D˜ڤ��l()�>,Ӥe��x��ithшڙi %C�D0��������\Z�A��ѢqR��R^�I�N͹��c��L��G��\n�(�Ǯ;KJ��߅��`�f5,,)����1\"��t��[4���O -�ϛ\\�ϣ�m���mٸ}��j�ѤAm�-XKIH�]Z\0Ӱ�@LA���ۈZ��X�Ӵ��#�w�~��ٙLy\'c_�����Ε�:!���\0i1�_\'Z6��n4mX�g��\\z�o��n?KZԫ���tGJ��W�J�\Z����ۏ�N�t���\\�R��d���ҢqN�ֆ+�u�a`�&�i�iW�y<g�Ѕ-\Z2��a�i׼�܍����HK⿷�K����pPw��mDqI	{��q�Z�6��a�9PTLǖ9�~����؜KO���^m�4�VM��:C�v`�}Bp�)ݱ,��Ytoߔ!};p��\'�̭�rJ�v�v�I�<�(��q,��Ɍ~�r<�@ɿ�� ҷ���uכa�4mX����ѯk+n��d�7�&P��Q��yT4M�]nC��Jw-�O�t6�:4�k�`�&��^ҶY^�¨�.�fF\n/�q~�J�5���S0L���VF\n�aT�GJ=��Y�S���#�dp�������7n�]�z�����+a�&C��v�<*�lR�{�D�������N���9���x<\n�]w�i�����{������[�B`����|�2�2�zjOzuh�����f�&O�|�[�У}3��TLàA�\Z��؜�N�E�&�������6}��C��u9��.��Ha_~rr����u)>U��u�6���[�5������L�2R��*��][��{?�էy�lB��_&U��nm��*-�q���һMd�޿�DJI��5���A��E�t\'�F���գ�����t����3�;���a�;#������v~B!\rS�1\rݾW7�\r���l�n��0���:�u�Ċ�oξk����r��\nY~�:�`8�~=�߸s�t���]�a��_�|/gϏ�i\Z�n�x�2<��)�_�R*���a���l��h~f�3��v���N{ӌ��f$����e�T�����˴7��ӣƯt�Mgn醁���@Z&H�*�H����Q@Z�<�\r˝#�a�m*�	9����D[��G9�[��[������5�BA���*�X��2���0L*�/��tN�Ӂ�����1��C�܆L������8��g���IHӹ�����;���Pa��Vز,JB\Z���5Ǵ=����d�6����abI�(\n���ƍ��[��AMg�Ȼ�/P+#\r�6�\Z�h�f�(&9��K���u[�|�j��D׫�e|v[i)�{�}W�Jq0���{�&�������4\rELà�1-��c��s��~�qqѱ,���s�����Od�u�v�g�973˲ؽ���^���V�i��II��򇿲d�VT�]�G�&��|�ҭ$�<�ۼ�����^siݴ>I^�V��\0p���дa6\n�i�]�$����!h�ۀ�`�PX�8�g[ξ�\n�K���;����\n��?4\n���d��}\\����޷���	�4��K�s��г-%Aۭl��S�~�B^��\":�l�\'c��q����n�����t[�)*	r�}#���������=�k��G~A��.����zt�F�^��]�\nHMN��ƱdM�\\\rg�ڰu7�>��ԍ�>��<�!�@FJ�;��{�#���7/��d2�3��cE3\r��o����|�&��kL�+��N`�=*�������}�2o�}7�UH�HM�;�K�O\'�i�7�h��o���̇O]˓o}Ǭ%kY�i�vnI���a�g��̾E���4ȮIH�9�{����H���pr���<m1�aeI��Fuk�n�Y5R1L˲�_`��ߡkۣx�����?�s�S��t&�^���]ʢU[xd��C\Z��wi�u�f-w��f|����[dI�|dtiV&KbX&���N�^3���7bZ�ב=�I���,I�\Z���_�����Έ�&�q�n<�#kQd�G��<�3�5�12�t��j:~_U\'���-��QeY�̘nW��K� M����>�Ƕ���Q�^�\\@y��U�LB���WDX!dB�w(3��P�v�FD<Ed�wPa^CQ�CY{�{-*�At�hi�rY�J�!z��}��EQ�*Ճ����-�2b�S�g�YQ�GQf�\'��C���*c,�$�^��M_G\0/Qf!�����4QZ~�Զ\"|����D�VA�U�3\"�E3t<հ�$�T��o��K1M��?\'vo��Y˜�ĠE�l��/bw�[�	�DXi��M8�@���n�;_%���p��0f:�TQI\0� ����붳s�\'��$\n1��Q4k��s�_��/&�����rò]�,�=I�^�iI,KRP��vW~y{�~�n`�����,b��HO������$��,ڷh����k�����z�$��$��AԖ	���1 ճ�YR��&k��r��UU<��M��<s����o|1~�#�y	:1#��ӼQ6/�5���{�[���a�C��ҹUc�/^KP��L_�)%i)I�v̕[,���$B�`H�t�]E�Ғ��;PH�&u)	��:�4P��K�d��݌���=ۺ�7MӰL�����t-r:��»_�q�,�{|8Cn~�u�����4�{��5�v�}W>[X�B\Z�M�Fux�����t��07\n���B�$�W��[�)!��,�)�~g�m@\0ҝC�aRX��[0D��M�4w%y{p�m/Ѹ^��{	w��c���^R�4��aT+��n�H))(.aݶ]����@�����^�]/|�\0\0���ٍ���߭\r����w�����&���!5:�i��K((.A��lW/[)b39c5c�ZL�\"���T�o���v�ߣ$���RJ���h����޴�uӝ�!G)�u;�7�@0�ϩ�aI{?����S�{�<��K7������o��$�*�a�k_g��2��g��=sϋ��d���I�tb@�rn;ա@P��d�Q宙��jR*N�]��;�ЖY*�[&F%IFJ��\n���o^aO$%��mJ	֟�z$�d�$��{m�� �{&9p&�Fe���NR�t\\�e��R���Y�&�R?��O���5w^�=d)Q��1u�^K��!�~�*��3PZ�\0��q5<%˱֞Q-��eJ��Ƕ��f��muT#B�γ������d?�=q\r�a0y�Jƽy7Bnx�=�b׾&�����|��ӗ��=���7�l+�>{�F�,[����}�6���r�}��ܻ?���縼��X����Q�VB�l��ɋ���Y��Z�6i��uj2e�}.@�u�c<>�[^��R:�j��۟��a\0�6�d̏3��?׺@mK�>z�K;}�#d�Nj�$���c[[*x���Q�u���i�֯��#�����O3��ԫ]!�6�p�����5���w��zY�\0�}�N�؈i�,Y�G0�����c�&��`o~;���]\0��b#�a�A��O3x���\0��/d��]dg��­n�y>�y6g�؍�#�e֒u�1�z=\\{�	(��Z-|M�0��oI4G���~]���ug\"�d��݄tSږ/-,�cE���?��[�w���Y����Q?;!+7�@�\r7>GJIӆٌw�����S�q�\"����W$`���;\0��l��,\'&���6�ә�����:c	uj���#W�����Ů�\\�ձ�H�tƠ\Z\0��S��ȩ�ut��-O��Ōz�J|^Ӳ�۳�j�_?3\0_M�R�U2�S���;ؒ�]7�|�l.rG�Ö�}�8e!�g-��Kq�	� ���I�1\r]	a�,Y��!�:�ks�.�t�I�lʜe�y��!JBXV����ɑ��rĺ���]��O^����wPPp׹nv�\'gC!^��rZ6���%�\'�*���eC��\0裟g�U#���\n�׃eI���G3�R��-pڙ�,,,�BZ��D�k��cH�t��N��\"��W�(:Ni��h�F��\ZyO�v��~F�B!\"~��dZ�`P\nY!��Nm+5^��1��O\0G\n��(�dé���-E�1�ika��1�<�������8��]�\"���%Kk�8�#b�%�i�k5������	q� ��Sf>�^�� Ī���l*b�[^a̱h�.Y֠��WQv���%xE��4�s�:�5����=oU$X(-Ad�d�^4kyO�v����k~�Z3!��2���6l�9��\Z[--z���i�]��~[�ܾ`P/��0���ӫCv��j�TU�Q�Ztnӄ	��c�\'�h˂�����(Vo�c��<\Z֭E�f��e�bN�ޖ�s�s�����a\Z����4-f,Z��:�	��Q\\�yNZ6���ٱ;UU�HKf@��,^�������Q9�X�q��bTU�ܦ	���rW����GUhR�6G��a���l�ۋ7R��6�nV\r�Ӛ�뷳b�Vg㶸��c�r�rs�ҬQ�����.2e)\'�!�6n����S�&�D�#��My�ܸ���dN�َ�k��zS�%����x�toߜ�K׻�u��F$�},_���\r�d�f�>���c�\r�9P�\"���ҵmS4�`��ͮ\0\'#��������4�RR7+��[����x<*g�ؕ�Y��4u!��5����p�m/��bϕYK����fL���{�c�Mlޱ��iMHי�p\r\r���?�\0�E�zth��Ĺ+�_PL�f\rɩ��7�q�i}�~�|��Τ}���0UQh֨���g��l۝�GUHOIf@��,[��՛vy�>{�E$\'y���K��۲�|\'to˒�[��\"���w�zSg��w�СE���G\"i۬!��g���y\\rZ����@P#���혾��(\0\0 \0IDAT`\r�� �V}�i���kٺk_��eZ��Ս��f�s{��X�N�u4���4�0u�*��]��׬%kٺs��e���2���>7���׻|z��ea���\06l�EFj2���e����!���?�;�`��,^��B��GU�Ԫ	�ʢU�(	�ݢ�jg�˴�����έ�t�,2�R8��,^����Q1w�wn6iP��ss��r#[���*\n�F��	W=鬉uH	�\ZաM�|;q>�\"�׭\r��s�m 9��ɽڳa�n�����٭��O��L��D~AB�k�s�1���d=[v��{X&=�weڌ9����zxG��s�VF��O�2��rc��%n檲s����2�3Q�����d߁BT��$��n�7�h!�p\"��.�5���\"��y�M�iN�pK�_��T��h��V�2Ӫ��ZF��	!�����W��m<���M��!��p��}b>s��](�rP2`�	\"��V�_T21�z-�+v;ô�ܶ�@v���t=J�7�W�.\0����l�1�o~�%�](���sHмi��n��B��\Z���7�f��fæjǀD�e�(�����M�b���r�y��䋰�F���\Z������Mӆ�����>b��Ux��sfK)y��H�{�Ȩjg*�+Ȳ,��݃IS�����;�lWz�I�l�<}=ξ���䃘K���!�%�d��������\'��_B�<��=�ck0ce�\r��۳�������?���e��6��Eޛ�󑞒T�\'1��qQ.S�x���Wl	N��E%v����,N\"v��rc�b���d��a�y�`���RZ(�|z3!d����Q|�@Dߢ�������qi})�vf�S�PV	���ْv�p�f���̘�p�(o���	]����c��;c���VW���\'��Dj*��r�����];�DuGmF�%�{���ݖ���i//\0�5D�a\"�?�%p���®n�ѢU9��W�;���g���w���g���NL`Y����X�	x�������\0����Xq�]Ǹ&]e�����׶�����F���n��2�UW����>8b��,��t��C��CG�=>\Z���ּC���B�e��FI�2bl\\��e�(;é�.�R�*�]�\\0-�|*%���Ie9>Ѻ��5!�i��������@Ќ.�WƳ��D����p�U���b[b���\Z�M�PˌQ���߄����e�q�\\����MDA\0ˉ�(oA�p2.��	��3-L�����4�`���#��V%���>�<�O���pPqÃA?�5�y�SK@`~�!�T?��P���,8(�U:���nھ�G8�C��j�:R���?�H��WU�w�zE4g�ZG �k�ǎ��ر{�_��G��}�/$K�nF.EQ��Xµc�Tv͊�f�0o�����@i��PQ�lw\rypiͫA�nM�2�đY�Di<\'�7�^;IB\0P<ZNf5�D#\n�E�R�S\0/�p4��4�-�	�K��Ӧƃ$[�2�%�ٮ,�tҧS�\Z$⺮��\"���[�\"����\"�=�fDm����W�bF�3����b��Y��{���9C���J�r���qQ��)A������ ��[ѿm�R��J&�܃�Ox\"-��#�rM&xE_;��k�}Q����E����U_t�v�w��{=�2������O�\"��hg,��6����\0Ĳk��Qmw�Ò��=1��e�^G�e�Ȗ��<\"���4�[%c�\r<,+������I���B�(K�DJ\'�8\"�%©�n�XNT���)v\'H!P���@EZnA<�!-!]=�e�\"$~�JAq0�-�-O\"#��2c\"\"��2�uRT����JY�o(��2v%�;�*{4�u!B�8�OA�!���*vqJ$��PŊ�⸠IY�4����\"$�,���	�r���+�eV��EB�=X^���$���\r���	b];��+��?��*[�TzA��b�u�2+E��/+�h\r��L^{!��c2�!S�5���	�&)-U����\ne�C���E�a�����4U�ͫ�}8��G5Vi��2�DH��u)��(��a���,=�+4A�R)Z )(���z�,���G������I�$��a����������Rb:1���)(o`#\0#\"�S�w��AZ�PeAԶ)�U������sʊ��#�]�\\w&Qa>`)�Dk��@<2����=)��)ˀ����h,g�ŌBR\\T���B8��U�q�nٙÜ��B�&޵�,f�	w)ª\'��²,Qᩛ�s��GD%�L�s�����4��6畢zTU�	�t\n��ev\n�H<�����K���y��bb�8,]���\"�U��	�q8��ÅT~;���2�ԥɶ�ĸ&�\0�8BEi�VEn]���	G�\Z�+,0V�G�	w=R����#���DX�\\EAY#)����3�qI��l[��ʚQ���g\n��R�T��HE8n��%�*�T,w�gYVi�(ͭ����P\\���=��%-T!�Q�]�#����)\n�b8#9������o�EW+��BT0�[��#���A�e��QF#�U��@�,-��6\'�W�޲)���]\nF�Eɨ>��\Z�b@\'�\n751p����YK��(�k.J�P��.F)�\'���D�l�*�>�\"2�=�&U�����=�2�/!�V��X�r��>��\n�$x�\"Ӕtj[\'�vP��T���%(A	JP��Z�|��+!�J^J2�e�r�U�h���b���.����b�%>��%(A	JP�/�Z���}��P*������rY;�+A	JP���%(AG80Iȹ1�UA�D����$l$�U	&V�/~\'�%(A	JP����$�X/����d�A�;^q��y�d���%(A	JP�td��SH�o$��)�|�kA��*�Q�{)/���U�O�HOP��gPb�IP�r�p�&dNP�&U���㿓l����e�y�.�X���\'�%�^ULK��o���b~���&6�%�o �;�;�}1�d��w����e�yi���i�ݚ^�4	��,�`0H(��+�\'(A�@�($%%���\nD[�\0&�y�i�N*`3�,��,Yfa�I$���B������T[�@JO�r\0��=�G��O��V/	i���$�PIOIN8l%(A�3/���_�������0y�&�/���8�>B��@ �^FB\'��?�[�E  �����(՚JJJ���}�d`1��/ u�.�7�Q��������uYV�o��i9/���R�?�v��KT�!B���S3#����%�����dN�i�1�J��¢b�6o��;HJJ*�b�R���JH3(�*�4S���x�S��>�i�#A�Q󽰰�����G��ܿOVVu�V0��BȈZ�	�ߑ9�P �k��ڗT|o,�qB��]�<�~����̫�s���KIKI�0��ΐ���\0�DJ0C�����I\\2�+?L]��;�]6�X��>�KweO~�|?�\nVT����pT���z�`0��!I�aAa7��@����\\M����`�n���0�����f��qB��yy\n�*��O��4ìЏ�0-L������\n��t�|�*C�/x�����f�\\�Z�tPۺ�4#�[�!�rӒ��o�\"�$��S㴕�J濢�j�>I�h�������|^�.XO��Z�����\Z�Q���X�eyC\Z�|5	��\'���i)%!���VM��<A�\ri�V-\0\"��R}EB�R{��,B��#��Ж�\0D$��?��\'����!E@��C]Jɿ�u�k�&<����f��^��<�|��J�U7+�;.�\rOBJ�������[����~�d���f��5�Q��\0\0�������9�@��*�:�B��eY�\\���\0.��mӺ��$�]GB�.ߌi�\"\ZթA�:5�U�`��]�+T_xA��:q0�P��o>��~����g�؍�.D7R�̔�eY����֝{����L~�Q��-�2j�!sX���$��	:<��U=@`�G�!�{�Q���d�w�H^���f�T����|��S�JX��x^q�i���ݯ���m�c�~rf�xͶ(@�u\0��iY�:��Z��s������H2����:���(�;��Eu�%�$���y=�U��8�����9�{���g�O(�@/#<h�d��t?�)VK��\r;0M�,2�ڸ��][Ƶ���/\"�i1]�����(;�p�&�����\"�!�D�t<1, B@�߇��v�4�j�Тq]��V��Gd�&���i�:\0�mր��\n�J�~Kd��%��FJJJ�����AI����\\�DR:\"����6(s���6!��#�� \r�jn��r�{B�=�����y�W�#�WE3�B����j�5/�����ם��G�&�Wj��B�#�iH)�ߵ5�\r�Faq���?���܅+�P�#g��_(a�C��a�n6���i�u��o�1{���4kT�k�9�5�w��ϳ).	%v�Ť�sWr\\��(�\Z�@������ݱg?;��fzy7	M7X�aG\\��`0�ʍ�i� ���TEa��Qk\'�BR�`�&:�nRN��*\n�OY���oiɨ5֮yUA��CAq��o}��M� �d���\n53k�Rڠ�,/\0\r���7i�ӈ��\Z\\��H�Iɤ�$���_RZ�%$ܯ���Ea�-���y�e!�A��aY�\n!0L�����0H�t�;��a��Q�OQ%!�P�$#�W�_H3�y7E�aZ���?2�](\n��q(5�!�B(���udh5��AJDJWD�� s\0J�~X�>��J�ʅ�Ln�	9���$�J��IH�����0a�r��� 3=�E�n �0��tzu�弁�x��oi׬w^~\nW=�Ɏ���X@���Ǒ`TG�\ni:��N��T~���������q�^��/���r�K��]3�!�:2ꫩ%�%��O�v�e��һ}ԡ\n��/s�*񣞺`\rg��n��(x=*��0ML+~�¢�ۨ�U����YK���\\�~�o�CfzJ9W��y�0���[��-l=�D��@P筇.%%9����_�t\'�g��U�t�P��z\"��������b��nd��>�q\Zw\r��/��\"�^m��o�=/}����(^�a��.�$3=	(�����c�_�AB5�z<*i�~���@0����z��t��\\r��h�Q.�TzjJ��k!�߯�p��JJ�\r@��bj�U!?g3o��ç��ω�b��ݼ���uj[F�?�\'^��b�	-mLUx��i��z�]\Z�p�V^~p �i��w3�wY��5��������Y7����?*M��z�!�9Xk�\"���p�*،lB���uo@i��h&r�Oq Dx�,{PBV>�䑉J���/�aƎq��3�+�|<��j3s�:N�ٖ~�P(@4��\\��;8�s.[6&%�G0BqLǺQz��c3�r5\r�dՆ�_���@��/\0ҢVF\n�e��q���u�M�Tv���$�7o�\n�B�{�]����?�)mKF�lW�ڶc��+-^+%,]��έ���!�`�ν�f�\0b��<\Zd�p��\"X�vK�qZ��ǒ2j́����_У}.����Ĺ�Y��y�ד�S��~�E�ڵ��\0HY^HX�<���w3i�\n��o��/&ѻKk�l۹7jԥ���d�HK!�땤$��5�U��쪩��Bz���Iɼ�(�z���(|?y!�>6\Z����wѤA혀N�\r��ߙ�>=ۑ]3=\Z�xTz\r}�-y{����_�����ܝIU����%K\"���\"��/M���x�y���*:��2�A�1_-�}��ti_�q��0�_.�d�?7�\r������(���V3{����B���H�SP���v�d�>L��\"2�\n�aQ��d�z���rJë�b�n���j��Ɲ�%{��?�(Z�h�6J� V�x���@�BIBR�C\0��	Tw�\0�0Ѵ�1 [�\0p�\'�ז��F r+�k�c�4��O��߱i�^n��$B��Z*��{�i?SJIZ�����0�L\\�i�U��x��d?��p������0-E��w��*�o&�� �d���/���{����Ϫ�ǣ��\ng�p�*�ek�Ѥ^i�I���?���ݒ���y{�����&/� <h=���׎��<���ٸ}.~�J�N�ؗ_H��|י�Kֲ|��r�iˊ���Q�߭-;�`֒u��֖�ʢU[X�jK���ݹ�X��0�0�,+f?2�SHN�(�$������+RJTU��Q1M�I�!�$9��.�(�׋i��Wr��l�ea&����z�~\'k`IPC[8�xl��ȾJ)ݸ����w\\�A��C:~�I��YJ��(��S����+B����1�/����aY����kf�(�_g,e�����WaWȴ�d��8^U�y:y�*>g���o���{Ļ�l%t,����\0t]2i�z�؎��k\"B!���cЉ�Y�l+���d��|��9)��^|�7�M�co1�ʤ����%��-j������\\�����۾��1���K��*7���~����n�n����Bi�Pr��ǚ��J���KAn�\n�!��@�8�̟_CT���|�HbL�t�p\\2L#�vU\0g�����q3��?��go$�怒8��� Ҩ�U�d��6Gգ}�F@��8����ݲ�Ǯ?��k��*\n�vn�W�\"-�\rNB�F(��\0d��\0\\z���<v�샯|�׫&�m������ ;�3O��K�%�iU�P���п[f,\\���q��Ƣ	s�s��X�nAG@�*������vƒ�E1�fU�C\Z^Ol\0U�f:�j��S���k�����U/i��}^TU%7�B��Ǵ擱sc�J����n��G�1c�����t����KO�[CDQ�y�F5���>���@0�j�{���8e�[4b�9�9�W{<�J�>�R;3���?òu[x�3�z|G^{�2jw=Y�i���|0�ŋc~����=W��S��\'���EqP����я3ع������Or3����x��q<y���§X�EѼwi��Z�KB<�P~�K�S�x���iմ>�\"x�_���YX��Szp��˽��(<��O���Xn�x U�p\\}^#>���麟�@�ԍ�/���)7/\n�J�_���z3y�J�.����D0���_�-�Տ�3w�z�uk�c7�M�&�\\У&�߾!^���w�ƞ���2��r�ZG\Zl%tǔY���.&%�Ka@�_��|3a=-��f�{��oXw�,܎iY9�-5|~\"=:5�nV\n����]��h����}%<>r&�X�x����_�ȣ�����ey�-��������\nkZO�f����g2�Z��%�ݳ�@�>�(Z\0!�:�a����\0�R /cH�2��\\�k	^q�U0�u�$���KWU���L��2JП�x�wm�gcg�*��6����TӤw���ɯ�h|9�j�}�~�M疧�g`�����[��/\'0o�F�D�\rB�AH�]_���SP\\�Ew��#ןͶ]����_cI���ȉ������w��JN�Z�_�����Vn�Nۦ�Y�q{��ӕQqI�=�\nX�q;�A�ܶs/E��������M���\0�-;�q��EQ��p���2˻H��t��+��������ˀ�O��Ì�z&�˂��|7y!Ͽ�3߽r53R9����*���;D:Qڣ�/8�-s���߭\r�M���G�2a�r���\0�O^�5���בw���d�&����Ķ6d�&��-i�d����w�(�iW��cy뱫hӬ�~<�f�Wl�?�.#�q]���<\r�3���c��Ō�l?sujf����|\'NBQh\\?���=@ϋ噷��go��g�Ҙ_����IM����\'�Һ1���s�_X�r�}2�Q�^E�܆��z��v��Y�xr�|���i٤=/~��M�q��^�%(|VL_������srw:�n�bݖ]�ԭU��N��~��o!9�O�!ws�/����]�7!E� ^��ӣ��יK���#���H&i�\"��)Ϥ)�8�2�o����熳�����oMc��=�MO0,��h�?t�W>[L�)\\|N,�D�a�>2ғ8�s}n~2�.�ʫ���� �,�-�N0d0�[#�l/`��m�?�z�o�} \r��N���)r�`�^�\0\0 \0IDAT,P=`����n$ֲ�����pv�x(����!��+P띃��=�g�R�(e��+!�*^��e����u-[J$2��.��b^�@L�tݨʊCnz�ܦ��[�\"xT�\"�u��$��L\Z�};�w���ǣ2�ڧ�i�@���Y|��׼o�T�{���ۀϣ���m�\0Ea��|�x�\r���GE$��T�4�[�z��g�WL��2���?�>�u�]<� 4��,w���Dn�*M�_��029礮�r�`��fo=�L�m	�4�e\\��S����[�w������eZhļ�Y���ף2�	�&\'��O3���+��܁=��[���iI��L�[\r���.������r\n/�=��&/�~�\Z�أϼ�#����ӷ]P ��������_M��U9���d����V�\n��^��ɽ�&-ŏiY���8��\"#>���*ץ%~�ݰ�j��I���ߤ�L_���ψO\'���g���HM��Ҙ_9�OGN�EQx���x=��ڊ���R��(��bi)I|3q�\"H�zx�)\\q��B�wLKN敏���zx���Izj2ϼ�#�=pYT2EQ�9�a^�t|?���$��6:C��(�����N���/#3=5��G���c���굳,D,]7Y�\"��/�Jf��¢�NY�ˏ�(\n�I�1s�&�s�)<��l�mW���k3�V�8���/��F���\\�ﱼp�I\\��Otl_��g��(1�VRS|\Z0~�ZzP�۞�RJ��lP�a��C��� �\r.E�0\nې��!׌��+�͕��j�<]^@x�A��k�*��$��C�˃�nx���n�Z��\Z�.ֵ���*B��d�Q1�&%Q5<���O\0�a�\n;�oL��3K,�$��G���u����jP�ᆞ��HP��������;��+c����ڇA�����-@��<��M�3��IX2���ڷ_�/\'�s�%�J�?�K (,.AU�lډiY��mD ����Ӵ�x=*�iq�e��vK!B@a�$J�N��p�H][��O��Rږ!�w��&����	7��$BPTt�H�.a�X\"\0ka h��杘����21s�{���e�AQ ��(�ݼ)%m�7��8X��k6�y�^�>�L[l�	�²u[)��P���~��ص��	o�K��;H*S�V���b�.=���ݰP<�{ؑB��S}��}.��L�\0���{N�ؽ�M���,.r�}o�`Ȁ�t8�~y�B�i�MNÚ���\\jש��E[����4��ݩ<\nc���w/�,����ؐ��$F}<����^�0u쑏@,DFG�_�(,�Z��d�lE�6E�����(\r/D�M�e�A���	T/��>\r��#|u���e�\n- �Lȹ�����^�ɫ*>\0��\nS�&(A	:�5z�۔FH��ڃ�|\Z���ZSt=&�7?��TI@����X@4����g0��Q�z��ԫ]��z��N�CqQ�o^�?�8UN�,Gp��[��	5�:�/AM���;1v�\n\n�X���@	W��˴h\\��%!Ea��q�۴$��=�+\Zż�9�a6��`�&�&�^2��x�iV�۸. ����()r�E\'q��p�&R��x=J����y`��?�6o<x9Y�i�x�S\\yf?7H=ܯ.<��|�y�7ЦY�_�H��+O���_��n�Mӆ���?�ץ�y�ñ��L���.%=%	�YK��߷`隭tm�4�[�]��v�j��c�t�?:���bf.Y�7���A��s�k}9�*)�p�Tj�|r�ֱY^�������:���\0An�t�s�e!-Ђ:��ԇ��|*˴x�ӹd���낎�.�e�腥J�\r?_G�G�s�mNk��*�\n�����@��ȝ���2vo)`惈���!%�,Ad��~_A�N��r�㠂P�=R�^�h]k\"�MрTVR$!+r�T&\ZWe���q��+����J�	JP��d\0b�h�Y�u+�%�Gd��=���b@�d@��?�?���<��⼁=||G4ݠi��B�^�J ���\n���_O�ϰO�������A��9@�s�I�,�s���o����\\8�Ͻ�ξ��t#�鮀_��t����ֆ����»^�s��`Ŵ$\'�l��\r��W>ga���v�A�(	i<�g�Ɛ���KO����$��Ȣi��L]����3���e��=\\pJ�!*vò,�vmͅ�{q�ݯs��^�t���\r��܊;/?�K���\ry�ѿC�G��1L���HOK�M�nv�Z�i����L_��^s�6��p�����dμ�.>�X��8�{��怗�[v�x�����y������p%%9�����X �r��vc^�~{�h���w|��ǿ�{jN\Z	�@ 	]�@\0P�\"(��x�^�*��zPTlt���赁R�+X*�k ����ݝ�������@(�y�쇜ݙggfgg�<�i=�7�§&x6w�%(BAP\\�c���4N��m����&�˦�9��]{\n��vоM,�@jP�<XJrb.�B^���)	N�6��J�R�0)�Uk��<�q��;\n��)�c�&�,���i�nHl��9e�ܝ�\"�uJ���a��[�ZY��n+g�nȎ]y��:I����@)~�Aۦq��~?�!��1�4���Yv�yغ� ��N2[���Վh>&�j,��S1ꘊܲ�ـ�nb>� �$h{\'�̻��E�6Q�tw9[e�x5k`��=/�f�Y�%��Ū-Exf��%��&Uym��s����R�P�NC2�d�s�r���I掉׳#�;�	⎑���������6��w���\Z��w�u��0$UEQD�Q��B�����Z���膎\"�J������E	��-�Q�Y-f��`����h�.�ϯ����̼�a e�|)��jQ����׋�q�a\0����\'vW�gpj�Ðhz����XU�a�j����� ̐���\Z���Ư騪�\04�sCJ3WE�m ��MB����}|?݅P�����i�Q���?\"x���g��J�熔4�3��2/6�Jq�!�O\\���c���y{�]b��Ծ	+߹�<�p��.��n��6��:\r�_��o�������E\\�v�n?�ye,�w;�������Ԕ8\Z$��e�䦇�����~�9���Yv�p?���b!�������o����\\��8�LV�����f��V�NM�~ƍh^���o=��j��G�t�zs\0Z���놡am�0l����\n@��(C7��0�Y��x��5�u�k�\r��9�?��\r{�6��JV��@UE��1��L貊\Z�&\\jX�O��pN�u��H��.�0��������$%�5Jd����9����ڸ>����$W`�`����2�\n�U܀�a��o��2�y���F��o\0����������\n�G<�.o/��o���G�\r^}l�e�Jm��[Q��+��V޿P�Ê��Z���u�ƪ�@�T�~Zm�|x�n�ٶm�*�:��B�33V���?�߸K�����:�3n6��x��4LPFOB���Ӳi=���M�?���/�ԏ�1��%���w]}&�����wΥ�����kM�IiH]7ʹ�n�������ݽ�\Z��,��%/.嬶�|��l�_B��owEٖS�\rw���[2c���>P�e������o�����H~���.�^���Ǉ6�C�o�G���p����]l�Y@�]��\'��w�t�{�j�|��a>��O�q�����\0�ꃧB�ݏ8g(�c��1��Pm�/E����#w���*��T��!+��I�z\'��ơ�dk��Ǣ�j�ɚ����Ŷ�\Z^G\Z���ٰ�0�q3B:M��K��ꈗ4$�2|4�����L��:z�ۖ�-��������Ү�~x�j�_��p�E�Lxu>~Mg��at8#M?\r\"B�I��j/|��/��	�,�v;q�ԄX�Y�C��MX�x��l$-9�}E��	�qN�7\rh-$Fqq�d���{��~r1_m-bޗ��s0�w3�U��\Z�뢖���N�善\0�r�x#��3�A~�W��h��z��2�uoF�h�I\rh�&����7�o\0oN��$C�05�>��2��M��~��ڋբp�E�H�H���-�h�!���]�ы<�^:��ك���.Ǉ߯ӹs*߬���-�n;��(\r�_?�&�Dz7���Pn��Y�p>B!��\"�o\"�{��\n+��)������T���D�����󲄉gG�slJ�Fԋ����OӘ0�ȗ!B��	#�_c�D_���\Zu:��o>J4�Z�`V�;�ɥ�g\0�/)#�EV2<J����.�]E�r&t)%>����g�\'k��T,B����M|��Qc>�獁w�yz���g@2$�/����\r��74?%e\Z6��M�rmIB�=`2���E�r�mHLkD�P�Ĥ�h�Њ���q�k:��\0�d��\\\0�J��0P�$5%��=:���A����U/��h�)�r�n�_P\n��˷�q�A���sFۆHM?bEm�2l�\\���A�҆D$�[��B��������JA�[ArD4�z2?�\n�5�XX;��Ex�R�Qݹ�jyA\0��ӈP�\"t�ɯ�Z{��r}�t�\"��gD���8�>�A��B��FѬY���n4iÒ���UH�3�s������~���/���ǾR/�.��l�{�d�4t���Yl�.�s�x���=���q%pw���\r�r��8�\r��Al�\r�M�ӟ�qc&����ˣ@�u�o��O7�̧��ʳ�4���n%!!\n�\"h����n>��g4d��+��W���Ca���׹�}C\0����؁�%^>�~\'�8�	>ߑC���Rd�:���9/��CӐ���O��=���V��U\n����ҫA��G�L�!~<G�e8����;�2�_�WDȈP�\"�E��HR�U��H�y>s����osY��|��F2�j�u��آB[i\0��\"/�\r�I�6����m\\ګ%�-��\\ʛ��������|�s6�sJ�n�ͨ��9I1\0�6�sڷM�;�hӴH����d�:����4�|:%�>R����W�Εm�8�&�����˶�o_	���bW��lޚ��~�^�ӪW�=��ŕΤ	�4HR�������}���m��q�����l�]�h�?�r�}�v�����$𔔛>Z�Ǒq�������÷ዀ&����\Z���m|\\�w\r{`\\dI9������]U^[�e�Z�D)B��	#��SX�A��Z�s��߇�2$���pԸ���R����\Z7��}���BEHiHI�P���6�}��+���Ҙzwl�� H�9ztl�?.i�o;rY��<�������)����`	g�Nd�#��� \Z]JR�\\���)�5�H���;���¥�5�^��}���*��;66� ��\ri�QD[-����,]����b��~.�7�m�@aOq�.+��ݕ�}�@�i$6�s�\rgb�k\\zA*c�?�W��������䕐�事���:En�Q6.9�	�6�[�?��R?��Kh��k���ܦ��6�UF�,\r,��������>��@\n���ԏ�q��Q�_A�Vy%�JU>���e���E���5�rk(��*�@y���_���KڝѠ�\Z�}�3.;72+#��0*u�ع/�3��._M��F(B\'J\09axݟ�\nax��hHY�aq��ܟ���������R2n�C��Nֿ�bR�2_#-5����]����g�Bp��e�=g�O����?������/a�[Wri�FhF��L�q	�]��	�)G�;�Y�G/@�\\���L�� n��<�2���̸� KڥX[�����\r9(jm׺f��,�%TnKV}����#�\"X�P�\"��d2�^ܫW�:���~�Q)\n�Awm����V�{4���kZ����t:\0�h/�!�Ro�Y��|u�������]���Q���5��jN�F\r�4�N�y8�,~��7!�Z��a�͇!k;�(J�0ʝ�@�K�q�]0v��w�J��V�*ת˄.�V*sx�4�e	s|��(�f�:gT1�\"��>���E�4 UU#&X:e��sQ��k/|@X��?ͻ\n�6�|�{g����jWh���㯔�*응��Y7�EPP�����ʶ�3���*��_���z�N7@�m�s=r᳈����.h�����FCT4��w|��()E(����H�L�Fͪ-<v��\nh@�(���&VY�	iG�*���=6^�����\"\Z�E(B�E̯\"�W��R7@��m$��p��Hp�zk�k�eMp���B�\0�8	�����q5Z�:P\Z��x.�ߏI���z6�h&ޟ6���Q�X�ɌFu\ZNklZI0�{�\ny~��,Hfz�Ç�U�5��^�sa����8xE4 \'������E����G���2d�R+ax<���31^X��:(����w��֙�b?�����@��@2D�\0*+¢����8��\"$a���Ħe���uy�r(����;�8�t�|��z5�U�\r���=i��:����E(B���p�^���d\'W�(������Pչ����쀇�;�_��x��\0��?�:���\0)��Mk���2@��%4_dMY�b�֚�8�yE䏓�fG4P�P�\"�W\'��ûe�3Ϭ�7D7����	��5��6�\rTX[4�\rV\'���8�z���(�E#,v*��\0��@���b8l�h�0���h����߃440�H_)�_\n��-͍������A�K��F\Z~�}A	�\\R��?Y��\Z4(�έc�bԔ}M��#���K��P�\"��LRl�Z\0�:�L�d$��X��Dt2JL��!\"�JT��\0�Z�ȷ�Ợ�ȭ\",�ɱ\"eځ�7- ���e1J�#K�a�@�퇲��)������U<9�����=���%��f������4�W�բ.yE(B���D(B:�ֵ���%%Hih(\'\"�)Jl*Jl\n\".�j�p�\"����Q�*�Փ��V\'|��W�P�58q��aE��fEs#=EHoFQ6F�d�n��Ȓ��7��Q�r�:�\Z�l�l<V�4�e�L`QE͊�j����8���8>���￣(\nu¯�����lt]�u��X,�Î��?�SO=����IMM=e����(�R���2��(\nRJ֬Y��n�M�6\'�ݛ6m���p��gG�#����n7�˗קO�*��K��n���ZVJL2J��Q�@mxf�\\�h�G��V\r�+�Vg�p�C5�]�����s7a��Dl�(܅�)�/��M3��\Z�#h@&X\'O�ӌ��擨��\"���+�9�련*�\nBHff���c���233ٳg\0����aÆU��ҥK�6m\Z���ԫW>���}��`�bcc�-�����꫙>}:�\Z5BJI���iҤ	�v�:!��ׯ[�l���`��#/s�Ni�Z����S����Y{�#(��F��\0]CD7@Mi��4�#T[@ 	�h!������w��pf���(\Ze`��%1܅��]6��]�Q�#���Xʝ�k8�u�\Z��տ�f|��qb��p\n�^�_I����Ԧ��Ξ={x�W�RV)|�v�޽J��H�\r�,W�6��=\\�������_U#�ݻw��O?��t��Ȁ�X����	�����_��>��ԒY�V����#���?�R�V[\0�t�REaÆ\r̛7�ƚ�U�V�2k��fc���U��O>���vL����;�Vk��{ٲeL�6��𮳵O����Y�z�������\"�Q�9ֳ����9������p,i�Qb���Z�E�?G%��O�V�F��5�Ҥ3��7��\\���yٳ�2�$wG\"�a��{14-��8du&X�Z�By���q�������<x���~\Z!B.\\X	<!h۶-��r\0Æ\r#--�+��!۶m�cǎL�0�4q�6m\ZBz�!\n����,.��B���\Z����{+�Bjj��;X�s��!(**2����!������1��?�<B&M����aǎlذ���(ƍ���˛o�I�\rB��s�QVVFnn.+V�\0 ))��Ç���7o�پ��y�,w�u���7�m�=}�t��1����*磔�d\0\0 \0IDAT���<�J����������C=T	�O�6\r������O���p8��;p8����L�4�|��%`�GGG������[p|,RJTU5�^�Z��\\.�}�Y,�~�)w�y\'N�����ʫ}��a׃eW>h���*��~�k�ZM>���r��w*t�TU����r�ݻ��i�^|�E�Ng����%���kU=�`��v��m�݆^�e�*�U=�J���iӣЀ��Q\\I�;�JԵSq^��7�6h�P���:\"h�����آP�����8.~������]��&����k�`�aG�T��u`!bN|�ߘ��$уC�5�j�_EC���EZZ\Z�>�(�\'O&;;��������<8��}��ǒ%K�={6�����.c�ܹ\0�3����o\\t�E\0�s�9���2�|�5k�޽{�������}��t�ޝ��;��#G�����Ujg�9���.��͛7���O�d��6mʾ}�����R�jՊx��{�-[��ꫯҨQ#���˘1c�ѣ��Ѹqc�<������cٲe̙3���tv����ѣ�����o��gϞ\\r�%��?�a���$\'\'�q�FZ�nm���?�A�V�7n�Ǐg�ʕ,_��R_=�Z�\"&&��C���{zi���ia�\"]���|�N�v���rѰaCLaa!/������)%�}���.111��~�Λo�Ɉ#HHH�b6���z\n���ܹsٺu+����\\.t]�K.a�ĉ<���H)>|8[�l�/�0��O<a�r8<���<��PRR��?���o�w���!���{�x<L�8ќ����:���dee1k�,��.�-��~;˖-��/�$==���EAUU���Ν˚5kHIIAQ�|�IS2r�Hbcc),,d���������ү_?#G�$&&���=����ٳ:t(���?�x����?!0��]�ҳgO\0������ӑR2e���2���X|>�F���^c׮]$\'\'�p8x��G����������~�3f�s�N����p��7��C�r�(((���/n��ăףX㭭.���:,�-@X��0^���ה��I)Pb��6�z�eHOz�6�����^�,؀�yk�	=Bu��-����B��\Z����*Hi���-dB��ɇ�$2��S��Rš[���Sx�JMM5w�t]GUU��yn���J�m�݆�je�����ٓ�C�2k�,\0n��v�w���+X�j�-�_�~�~����Ʋp�B���ϴi�\0L�&��[����kײl�2^{�5��ȑ#�Z�̛7�[o��,�ꫯ`����z�@�\rF\\\\\0,�\'��0i�$,X��j�y���ر��C�Ҹq�J�歷�`֬YԫW��ҨQ#f͚Ř1c�rS�L�Q�F\0L�:������͚5���<~��W���0�O>�������͔�뮻��~�k���ݎ��]�v!�֭�z�����������B��HJijH:t��ĉM0={�l�,Y��(t��\r]�9���Z�<��S|�����?3z�h����\'� 33��\'2i�$TUe	�X����h~��gF�I�F����L�<��͛3n�8^z�%��\\7n������y��W�x<���o�߿�0x��׈����tRZZ�W_}E~~>RJ^�u�v;111�\0b�Z���aԨQ�z�4jԈ��xH~~�9�W�\\�����xS#�4�\r322��+8��q�n�JTTO=�T�\0r�7ҩS\'�L���3ظq#K�,����0x�7PU���D&L��/����ٳ�8q\"��E�1c�\n\n\nHOO���b�X2d}����p�p�(+��믉�ׯV���둪>\Z���)�r+>\Z���$K�L��Q�m�r�J�{��S\n�U�h�\Z�q�c8���Y��?�	��	H\r�\"M��̊�\nnCC x	�1G~�A�A\n�40�D74�.����V�!5��h�.ʝ\n+��������n�����0\rBm�U�V��s��`�ĉ��ݛ���0v�X `��>�u�^�d	\0���\n�{���+��\011156�3�^x�:аa�Z9�Θ1��uINN���+t`�n�4�����f���Y�+�Uk�jK��W��\rè4�As���\n\n\"�����a71�����BPZZjj%4M�w�g��~~��F�Miiiص��B8��e˘?>���5/UU�馛X�~=[�n��W&���i�\\����xBPVV6����������g�}��κu��u`��ݬ\\���^z����~��j%|T����qĿ�/����(1\r���[�5Gz��{xY�<��\'k5�#�d\r�O�t\0<)T��\r�=�+;s�S�!3CU�(*N��}HU�\n�hR`��8��J?���\0\r�8�t\Z������HLL�O>���;��l(@	�2��k:O����ܑU�ƦB�;���|>�n7n��^�z��z�\n0�Nff&k׮e�̙�����u�Q|��5iO�vM��4`TC�VJ�=��C�>}�0a۷o�����;���o�>:v���_�֭[i޼9M�4aٲe��Ęc[��}��,^���F�\\�#%%��˗�t:�ҥKXMӐR���ӷo_�,YBJJ\n+V� &&�R���,��cǎ|��7�y�lذ���;�������l233��~���v�\\.Z�n������c�[���t���/s��#�d���4mڔ��XZ�n�/�@AAAXccc;^��^��z��q�=�лw�0!~͚5,Z��<w���p8X�v-�۷�P������t��һwon��Fn��V����!�$==���(&L��w�}��ŋ�ҥK��b��O]G���Z��I*��OJY��Hާy��|eH͋�{@�c����]T^�@%�<��l.)щ�\\\ZV{ Lp0˺�[y���l���>:�=�c(�Đ\"�s똗X�)7��O �AF�U^{�ӟpٹ�A:���yU��WH����:y++Wv�����:.j��$�m�Z�a�I?��� ��BE5vV*~tՂn�M1�uM�aU��TYd��)~��>|8o��67�tS��g̘�-�����?ψ#�ѣK�.e�޽������J�N���O��ˀ����Q��0a�<�O<�R��v�E��W���n�y9##��k�RXXȾ}�hӦ\rӦM���oڔ�C��N��z.33���������(--%::���V�^\rl��~?RJ�w�η�~Kvv�i���*iii�ر���_���;&�аaCƍ�رc�x)%%�={�T9�s�����;;w�$55]�iѢ;w����0z�h�L�������ڟ��G}4lLjJ�n;��qf��Z�;x�`�\"KI))**�����\r��*���㕗�Gbb����ݻ��ELL�w��n�ӠAE1}a�V+���8p���\02��c�E!**�z��<�����|(���fc׮]�Azz:�a���C���)..&::�5,�k�.t]7��߿���$JKK���25\Z���{�`�ڵ��JÆ\rq����vTU�Ԯ�ӧ3d����h֬YX�JKK)(( 11��Ann.B�����x��+�����IKK����O��*���$&&�t:���������~��������a��^/������m>���t4M������b���p�\\$&&�v�)((8�u�6\Z\\iH�%$�݉�6��A���@ߟ��oz���Ȓ\\��|е@~i@�\n�d��&��yI	ɾܖV�\nB$\":a���r\"�QRQ�G!��DMl����XOK��*Z�1\'��8�E���)j�]�&�\"��|.B�G�SCJi`�\ZW�S��B7�d&�βR~�.���y<�p�(��8/�I��zd6r�,�J�S`�ʐ�\rh���\r����BpJ-�?~{���+�`������1�|\Z6l������>;v�}��>�;v��W_�(\n�F���n��\'���+���+�`ժUa�-ZD�nݸ�;�ҥ�ׯ\'++˼޺uk.��BƏ�����������֨}��{�aڴi<���XZ�j����y������HOOg���\0�t�M|���L�>�;３���0~��w�a�����ۗ>�������W_Mll,={�4�077׼~�}�1e��y����öm���ON�]Ƹ�8��&Ƃ�¢XY�&M����)))a�C�t0�Z�\n��By͢Byw܃��~C���u�ƍ��OJJ��L�JB�4=��]g�u�a��gh�\\.Wؽ*����:��6K)�r�l߾�q������4���B�a�	�ㄆ����/�\\t=��k��0\r\ZT���KEAG�#,�ߋ��=\'-�w���Ǿm%����(��]A�{�7�v�7��(w���aG�%��4F�ODm��^c�Fi��$��Fg�#��B���Dpn��P�j[*����UyE�-� $��#Ba{��^/���f*ܜ�A���9����-����c��Vm>�+�����D�,�uF:W��ұe2g�J�bJY�WE8]����k>t�U����ۤ�\0R�vP�ɀ�Ix��0�Aa�����ܩy��lذ�k����{��>����,����i۶mqx�ܪ>�+W�dΜ90�A��q�F�edd�n�:��ŋ�3g���\rp��d�z������4i?��+W�4�/]��p���r��׳iӦ0�z$\Z6l?��#<�\0_|1;v�~`ԨQ>�w�y�g�}���D�̙�m��Ə?�Ș1c�ݻ7�;w�#��]z��ٳ�)S������m�6�5kV�H�#��V+[�ne���L�:��^{ʹ���M�6ѧO&N�ȴi�hݺu�5:��[�n�T{RSSy�7��9��Ś���O�PGt����/�$�\\�Xg�F�V���gxW,Ļf)����,�b�<`]��Ղ��ƒ��������:K��p�`�hb���u�k�;�J���s��k�$�T�ݫt�hy��;\ry�R��:b�u�>*RG���ZQ��0�)_m��4����3�C�8U�\n|���La[n����2���;���~;���z�1��k_m¦�|<��7T\0`ǐ���J\\E\Z`X�J�y>&*��b�J�TD���.u�E	~ؔZ��ՙ�����֭�^���X�V�U1�dU>�2FG���i{j�׺6�;�&XRJ���5w�\n\n���l�J�a���@~~~���\\.JJJ�j��+�~��+Hv�������\Z�J�aCII�9_֮]{X���{DEE���T�kK\\\\\\��r�M��\r�QW�?��p/���*������^\0\ZS{��	����A���~\n�3����k�X\Z�#짮�dͦTU���O�yՑ`��m��*�T�;�Õ���8�B�DD]r\\I���#��f�ͮR�|���kE��D��	�0�B�PdH�ˀ��^FFc��4ѥ���<��-E�{R&��K��r7�^J�\'7�EӶE�v�EA����Eqc,�\0a�\0,��Q�\Z~���CJ�Q>?P�H@�*�����^RP9�u�u�W�\'Ԉj��K{js���9^�~2(&&��TU%%%���,����4\r���ܹs�߿���03�R0�@0ٟa<��ӧ�v�MA\"���� 4	���,_��ƍ��.���j.\\HQQ���tW��`?��S�u�y����c�Z�4�|>�6�&>��$�Wlk����*111(���르�4lL*&����gϞ,X��z�ꑖ���͛)++��zX��N\'w�u�\'O{U�;xOUU��w�6XWӴJ���<X�A���呗�W��^\Z�ۍ\Zb�vT���m������Y�\0�KP˟��/�7�gE\r$���t����s(�Ԅ�XZ����R�gt��,�V;����j�ik�\'O&����G�K����a�j~�h��%/�����TH!\Z��s���4N���4�W�ƪ��;>��@?�D7$Bw��Q�j*�4ʤF�ӠoJ,�_ԔG{���N��-��U<�q.f,ˢ��;h>v-m�Z�?�����ދR��*���<�(�hB�\"AZ�(���>��|�(�K��>UC��w�~03�G��$�0p�\\����h��L(��n���7#=C/Y����,222xꩧB��v`�֭���1g�ڷo�����\0}BB͚5��/$!!����ӣG��$�<!!���TZ�li�k�ر�}�����<cbb��K=z47�tV���JBB���$$$`�ׯ�]�v����&���t���LM�o�A�v�X�j���IMM%###��(::�^�z��K/��XXX�Yg�Ń>�!>!!�ƍS\\\\l�m����l6V�^͏?�H^^.��=zT�.�Á�(�w�}�y��p8�ѣ�������q�\\���O8��~s�gr����(\n�������A�$$$p�UW1q�D�$$$ТERSSIHH **��S������_~Ɏ;���gРA�G�y��P���� ��s�q�o�0�E�$\"��&�P�U�@/:����(�� y����m808����S�p*����N�:��Ħ\'�+�rI������W����@CA�j������&]�L�U��t?���[-H��gD%���\Z��``W$͏\rI���f���0��6���ιi�\ZҘ�����;[1�x��*��1�n�vc���~a���|����R7���PJ���������(W�K!�J(��(�v�	6�/=e4���߾}5��`�>��s��>�(�z�ΝͰ����xE�ԣ`�U���믿NNN�]wRJrrr���y��ؿ?ݻw���f�q�Wp�%����Ell,RJ�lق�baϞ=���;�����w߱c��y���\\.�<x�~��iӦ�d�~����HK�����8����7�^/g�q�v����3UU�駟���5j6l **�s�9��oF�z���عs\'n���J������#??�[n���AVV;w�dĈ�Ƨ�����,S؀@T��?����$TU��pЦMv��M���)..6A]�6m())aРA��ƚǶl����_O�&M���ٹs\'IIIt���lW۶mM�\\XXH�=��Φy��DEE�z�j����裏�?>^������~�lْ��lz��Maa!�������׋��3gҴiS4M�_�~���PPP@rr2��ѣG����+��B�v�HOO��7�<.�S�*�\n%j��	!����!��|0��k�0�:\"x�0\"D�;�����\"���p;����r���? ��g��f��mHO�IЁDpn��*/c	�v�0M��ڎ�:̹�丂c�~/������vN43�q�T\"QЅ(����!�Z�@�]�p�I=�QB�H��%��#��(\nJ�H݆�j��)�&\\tK��\'݉͢Q���U�l�~�l�0q�4D�~ڥ����i/Y��F��ܖ.���cO	�%\Z;�5��hd疱��K�G\'�ȃ�`�^��cڴi�?��	�*�5�\\CTT���\\s�5u��U��\"t|�Laa!���L�2��kFO��̤k׮lذ������y.�����J�!���y��z�����̜9������Պa����t:+�\n4k�̌D5h� l6�/殻���_\rs��X,dff�t�R���q��,^����QRR����X,�΃>Ȋ+�̤���x�x��M�o��(�N~~ :��j�������s�7�]��+j ..)%|��ʓ�;��\'�i\Zg�}6�{.cǎ�>��n3�}��=/��KIIIX��k���͛7c�Z��|,Z�(,����7۵s�NJKK���O�@�����|ӦM�Z�!Lߔ����ffw8q�x\0{������\"��+j5�����9��6:�㚁*@\r�3ھ,�������XP�7���g�b�����j����:�U^�R9O}�\n�^:�[�R	�0�����΃�c�]<qm�J@()$(*��`�:E�*���x��a(����u��P1;�b`��1�\r!\r�����\'Cϫ\Z������>?˶��m�f��Ǿ�2rK�|�}=��)U�R!1�JbL-��\n��\r�ǝuT��#9O�\"=d��&h�~8Gl!\'N4�`ն���Q���5\0\0 \0IDATX��+�����j�Cy��X�\n�w�^���{3oGh?�n7qqq�OBU@��[oe�����{x<���1�G��(66��O�Ν;MG��3g��:�>�(����j����M�@�4v�؁��3�\nRtt4��z+����z�ԩf��͛��p�������o����4i�YfذaL�0��_0�F�����M�.�c�1?�0���\n~���￟��:�v�2�4��j�mf]B��?�����i��v&L��̙3��;�n7[�l13�ns ;;�L����VY.�=u=����Z	�ϛ�\Z�v�pa$�j~�=[�vm�t�t����;��v\r��X\Z��XXTY�fs�A\"8��y)�49N�Q;7���i�C��G�K����а\n�E�3U>�z�k�RCC���\r\rM��i�������t�_�h���k���p�&04t\r]3Ф�ah膆���1t�2�N�� �D#ף�d׹2��s}l,֔�G��C�\0��3���/���j�/��a���Y9�K�݌w�����x�����<�E�I�&&���B��{�-���1�|3��y�L`P\\\\��3�8�Gy�6mژu���g��\n!X�|97�tB���X�t�Y���3�T�!X�j]�vE��ٳk����ϧo߾�iӆ~�!�0e�p�\\,_���9n�8�f����~!O?�4999!�ԩ�F�\"==�x,�f�1h� s�UU5�geeq���#��o߾�[�.�]{����o&%%��>��:vX��0aB�̙���󉊊\"--�_~�%̙}ѢEX�VZ�nmJ� )���A;��λ��4mڔnݺ�&S����s��A��-[B`��L톔���Z�li:U���R�<(!!���L����V����~�����b����O#�`Ŋ���}��l<��#�\Z5�֭[��A��%%%����`0r�H���m�p���l6E�^�z���0y�d�̋/�h���k��cǎ�#���1��<`���Ҝc��ҨQ#t]\';;!�[�����G}��b���yϻ��Ը���1w�\\����x�^��,Z����;����\nMӘ2e�, //��+W\"���{��n���Q�y5H\0.4�}�}���	�ݎ��ƍs���/�D�hoj��Z\"�)!�(aU0����B�\Zā�-��\r�w��[��\n��\0��o�o����� ��N�nsh&���٪�z��x��������5\r�kF%s�����\"�a��/�2;�^X��Ǌ��|\nn�Xt�~��q��G����\"�B�J�.%�� �@�����EV^!��Ga�:�n�0tF��Q�D7	���>iV�-ضm����n`߾}����v�m����\0�oߞ͛7���/c�Z���;IOOg͚5KBB�?�8-Z�0ͨ���>}:�]w��>#G���_��p��\'�0u�TV�XA�.]BT\nyZո.[���.����]�r�-�ЧO�͛wĝ�;�ӌ�3s�L/^L�޽)++�~�����2q�D�n��C=Ĉ#x��4icƌ��?��k�\r�������<y2��׿HJJ�aÆ�?���4����رc�0acǎ�M�6̛7�>�\0��IYY?���;w檫���o��?d�̙|��W���Mӈ���iӦf��|�I�������W^�G�}��8�6m���O�b�\n�n�J�f͸뮻x���y��)((`��Ѽ����N�x���FEE�ї�N��5�!>!��t�(\neee�9SP����fԬ`�� /!��4\n]�|�fO���t:)--5��`�`����0[y�%>>>���0p��x<��(��A_\r��g\n��C���z�HS�m\r}O�N��;��Á��E����f�a�X��c��M�����E����2�`d�/�����Z�li�I֮����4M����g�?(d���H�o�2�k\Z�}���$U�	��\"P�#Y�OY\\ %P���������:��q���M٧�)]4\r��5D_/qw>[%ϵ�rQ\"8��e\0K�u��m��Ή\Z��ɹ����cT+J�⢟�6M��� F���~v��X2����g�ߏ�*��P0�e] U>+i�(�@~%C�f5��XM�M��nP,$�ł�DEA�@�t�V;>C�,�2e\n-[�`Μ9|������m�6V�^͘1c̝��{����~�z3�qRRC�	3��n:�x㍦}���iӦL�:��cǚ��5�3f\00y�d\0�͛��NAA���K/���(\\{��̜9���~�޽{�����v��5k�����[o���nÚP�ƍ��;L!s����0n�8\0�?��0-J0��[o�E�z��ӧ3g�d�ܹ��ٓ�3gRVV�g�}Fzz:RJ�}�]��㏰��~����t~~>+V�`֬Y�{�|��dff2d�\0F��G}t�؏�.e��xp�x<����C���`����B���g�7�/�kE���O�م�� � �j+�&���3�3��;x�о\Z�Q�_���\\����+�MP��l�	!���as=8���gPk����b�0��\n!�ׯ��W�B����C�:�\Z��g��DX,�>\"�\'Ќ�������	��P�� Q�\"����6�F��;�������թ\\\"8��y)ᕏ�Qr��²�s�\"/qyE��;��lC��<xr�o�tA#:�HB�~�߇TlU\n�1��ǁ��-|���C���DH\'�@�Y�����������{����]�.I$\"�E��\ZP�#(��(��WED0�0\\T>E�	fɒ��0;����c���e������gwj�ޮ���>�Nx�e\nT��.t�\"�\Z%*���DXa��=d�W����U�����o���ƥ[ҨQ#���R.�k�J�?��q�G�Z�8���q#o��\0͚5�q��|���~�zfϞM�F�hܸ1�7���3�-�\0���{���z\n�&9[��^/˗/�S��\'w������Oq1����W^ ==���ڟ~��qB<�==\\5j԰�\'+���p���e�hҤ	M�6��>H��FQ����\\��U��r���\\��(>�͑��׮�p*�[(}�Iv�jN��WamC8���ʎT}�@��#+�bF�\0�ӣ�^�f���MD�;�eV;�<��Ѻ���vme�<v+�R\Z�ǯ[��wqȘRe�L� %F�e2��5�c!Ƈ�P	I���\'�aWd�\r���R��q����0���E7q�\rEj���h�zUu��)A�\"�U�AD�Q&��_Z��;��\Z(�Re�h��Cq�J�X�ٳgs�)�p�\'��/��~��C�����~��mۖ����޽{���FII	�W�fժU�Z�*��j�9Z8��_���|\rX��{�Un۟��qRQ�8���̨d�|�U>����dN=�TڴiC�~��(�Ge�������Ϗ�`���&����U~w����:��?ƁȺu��裏�������]TTD8f̘1všJaa�^�o���^���Θ�xH����2���@8-�|ЅM�I��S�X��t��\rV��\"��/���b���T�&�;�K\0V�l��L�.�՝L\"�Ds\"F��7�`�x�� �:)�a�A�&L!bei\r�X;f��GV�SÐ�� �V�1gy��/�Cr��B���aB��5���k�Η@�]F9J@GB���S80�ђ�RFsALM(HC QA�5e�ﾳ����ӨQ#|>�s@\\�ϯ��\n@�.]��k��!Su��e���4�;���L�8�H$�����\\v�e�B!�u�y��[倭Xr+l顇��o��!%%%�l�Ҏ/��Y���-[�� kӦ\r�p�6�,Y�g��q�ڱc\0��~;\0w�}w��D())9�uJJJ�iӦ�����;�0q�DƍǺu뎸���]TT�ʕ+mO�\nYym�v)%����Z�-��_ECQ�4������9������.�[���r�-���yE���u\\� �>��������b�̙{|V�I�2v���;n��V�9����\Z�Z��iq��9%%%Q�~}�~�m;�\n���a����P� �n�|�^/�\Z5��H�>������\\n�ˑV��X�h���X�#�x�>0~��Ē�K��뤪|�g˾�%����;D1��@5(�E�Pu]C(A�!7R��(nL�VP40USF���3���CN\Z8��.T�0�Ԑ�D1(�IX	��y�ܤ�@U��\\�߄h}\\�OM#P��p1�a�{]��E(���_U��{�GuM���_gҤI�B!~��\'�}�Y\\.�\Z5�[�n<��s�t:3fW^y%\r6���m�F�شi��9�^z)���:u��+�$\'\'��ӧ��x���ߗ\\w�u<��t�ڕf͚1i�$��N;eo��<�\0���!`D�^z)������/���g����^��Q�F�i\Z��vC��駟��fÆ\rlذa���۷/����{��ddd���\\��<��\\t�Et���fy������ꫩ_�>�{.={�d����:9�N�������ׯ�H]�휔#E�N\'�\r\"%%��K�ҿV�^���E!��SO�Dp���u�]vŪs�9�#F�v�)**b�����|���ΠA�x��پ};��_&33���ry���^ƍ�+���֭[hٲ%˖-cΜ98�p8̚5k�裏�è������6֐!Cp:�ӠA�ΝK߾}���������/#F��I�&v�w�֭�hi�6m�p�\'�J��>H^^�������dffҬY3�@}��w���Oy��h׮k֬a���L�2��+W��g�q��7�6m\Z��z+yyy�N�=���c�ҥ|��8�N�|�I�\0���<�䓶!߳gO���Y����|ꩧ��ݺu+��o�����SRR���ۙ4i�A�ZϏH��ڵ��4�>L��������w۳Lv�$�������xν-���>%�`|8��{�\0v���~���4q����(��>�_����\0F�Vʿ~��{�\"C��E�g0\n6!�1��*AȄ�[�X�n��X��v }XU���u,t�AH�qD��HXTn����~|	#gm�4L�a����Gt�A&�&(\n�P0�\0T��h(���Cz��0��A����8�v%���������}mFM�z���VL��{Se���,~�!M�6e�ܹ���/����.��̂���gܸqL�6�ɓ\'ۊ���s�����i̘1�.��o���o��������;N=�T����h�BVV��s�7C�U�V���ń	�裏9r�^w�JB��~����$֬Y�I\'�DC�֭[�رc�={6?��?��3w�u\0���l߾���ԩS�߿?C�!++ˮ���������ۗ�s���?r��\'3q�D�3a)�~��^�z1q�D�;�86n�h+����O�>�\\��g�y�ν�p����;��e�KJɀX�|9s��aժU,^��Ν;q�رcy���9r$���z�j���*��nF�m綸\\.V�X�������K	�4jԈ[o�5NɕR���>|8�۷\'`�&��\'�p�}�C��Y�f�n��M�0�p��w��G1x�`:w�l{֬YC�~�5j��(��\'�p�-�؊}�͂s�9�`0Ȏ;��曙2eJ\\Orr2;v�{���~={��aÆ���ȑ#����v���X�`�V���SOe	!h׮�w���̟?���\\`�y˖-L�<��#G2k�,��mӦ\r�ڵc�ȑ���x�\rV�^��ѣ9r$��s\0�\rB�uTUe����|>.��2\0JJJx���y���Y�d	S�N=:w��j5>,̤Ko�wã8�?	�:�o\n��ԹH��H��7B���h��ؽ!��W�_�#Nm��d�ӍHJ����+)~�PP�r@(�/��P�Dr: �����\r�#z��e <�{x`���E�c��}��d�0ߍCAO�q��&x/�\r���>�\Z�_�	��㘔��[�XZ���h��;wEX����ì*�Y�qg5Lgڒ��k5x���,-�����d�zHI��d��nr��}j�4��\\d�x���В44�#��?�QR��6Y�F�:�p͎>Bza�lc�g�Ẏu����3�ĩj����4�!P�ᗌ������������Ӿ}{>���=���d�����X��VȐ��;�3�v��Νkn)_V)��`�eff�I�{�W`ܸq{���u�ޝ�ݻ�񹔒������8승\n�ӪpԶm[�4ib�<������$s�$��p��]t���̙3�V�KJJhذ!^��{��V-�֭�]*��jڴ)k֬��Z	F��%R��K��n�:���[�jR�s�B�֮]ˢE�����qU�𔕕��R�4~��JJJ1b�>+��1lҤ�m�T��m��BU^��F�����O��{�o߾L�0a���\r����g���<��,X��-Z���ϨQ���S�\\��Z��J���~��0s��aƌq����]�v�����<��}������b��.�C������\Zu)~�N�.�Oxxo�[!m��$]t3��U��}��L\\��S����H�W�ծK���$��o^Ͷ�\ZQs�v��-(i5�~m}����x��������\ZjNjL\\���O�L�d�������,�W�@�k�(y�����F���~7�����3�_�g]|$u�5;�m�g\"��8����ՙU�BnnW�:K$JJ&F��]	ճ�%�Q*Y*J�ˡ�%��l���e��zb�����mc�/���U]�>��2B�sjsV�d�;�&�\n!�d�r�]U�������i�*.xy)\'=���!sI��?<���	.yu׾����nGQh��1T;�;�Ϣ4���2��d��Xn	��J��[�;+��\"1q�*SF=9�2����e���XV���/�΁����۶�s8΀�]��cN?�t�͛g�{۶m�馛����iX�cǎe�֭��n�����\'��9iƇa�oߞ3f�;����x<����۷�m��Avv6�����_D�4rrrHJJ���+�PRR�k���ƍm�$n�f͘3g���qI�-[�DQ���3f\0K�.�����L-Z��ٳmc�SN��p�x��8#ڒ�y@\0���ԨQ�E���}�&Mشi5k�$##�ŋ�B�}�����p��8����:u*�����s�%--\r!�������ܹ�p8L�V�غu���שS���w�q�}����+���Ӈ��\"���~�m����v��Gy��[���SSS9��s),,���/�À<j���Z�i��N�Į�w��ދnF$�/�od��Y�?&d���(\Z֝���`;F���v��������H���S��^�ؼ��[�c����qS������.:SpG{J�z���Ka��|��x�\0Roy���N	��S�����e\r2Fͭ�d�5�Ty�uWH�,����Q���~$�ܿK,_]��PT�������lJZ4�kD�˶�0g�.��͡A�F�0q(&�8nʤ�C3�J\"��h��PL\"��TU���,B~I\00̺2�\r�:E��hՠO^����:�xD���\Zr~�M�Ǩ`�\rPU0��ĐtŁ����%�$��GF(��%��������n?���w�8�)G�x7����A������RNS�>�A�۱c��S�V�\\�пu��4	����`�&>���{@!u���D(++#،�K�Y�w���ƍB�ae[�n�0�ԩc�X����B���lމ`0H͚5��MKK#%%�e˖�D��Ƞ�����d[�޾}�m��w�}�;�p8����BP�n]�`ӦMԩS�^�[�b�&��R�F\rL�d۶mx<;�j���c���8�NRSSٲe�kצ��EQ���x<<���dffRRR��i�����zq�\\����}���ٵk�M��Mii)���dee�p8����N$��p���BQQ���lݺ���\\�؂����v�y�f��Zaa!�k׶y��� ;w��KJJP�^O�����!??���\\\"�;w���������d�%\"<T��0��!�S:!C��Z��q\Z�ֵ��x;���=G��<A��o�:�|�wo���.d>�07\0\0 \0IDAT5�\r-u�Ưe����ߓ��P��s�I���>�F�Jh��Ԙ��M�\n�o�}H�&��.F�}<R�I��e�8�_@h�Lj~����_P<��=�w���/&���I�q(����A͏G_�+E�� ��֮��sW>R���\Z��I��٪u�U��H�Ռ���Z��Mk/��_�F�Sȫ��R��5�K���pk\Za-	CJº��E�H3����T�K��*�P���6��A����\r��;n�g�@���ݾ6���P�F՜���\"t�TBE�D3M�⨶eD9L0L��8����[i�,�+����Q��� My@����<\'\'����61k�,�� 7�pC��\"��v��h�\".\\H�.]hذ���=�U �b�F��yEa��������kץ����g�ԬY�V�+z�\\.��ddd�\n��իiii��}rr�����}]i�Fǎm�<���5.///.|ʚW���5j���Ivv��n��B�*zl,�?%% >�ڬ9X8>�/.��:׊b�Wծ]ۮ�U��s�Z�쾵jՊ3r�nw������R�m��i������P���exc�Ei�HJԌ�ν�g� \r5�I�n���1\n6���hDr�>	ᆝ#z�>�+��NF$�(����{F���$I�ςi�������!JJf������Z�5j�z������^r�槡�fU��R>m����z�s���d�#x:t��?V�X-؅�)9���{;���{�X	:��Q�:fI!�$�R�UU0���91t?Bє���F=J̧��(\Z���klA�� �P)(qu�L���A�lK�?��CZ�I���j�[A�)[��7P�E�`�\ZM���Q�%	(R\"����h�3y-�a���ȰND�8�I�D���)�ׯ�N�:��Ջx��9�D\"��ݛ{����0m�4��.�\\��&��?L\\L�(�@�aÆU��PQ!�h(S�Ν��*�5���(�zl��rU��a���+�7�fר��|7�Fނ�M\'d0B�mm��6�?el�l77X�\Z\ZfN ��<��B`�GC��>��w����^���`���usS����x/��ӗ�zW�z8g�3��2̒�ݼa��A�6v�j\Z-���q����qS+���J\'��	9[d���=��퍫���s%��\Zg&��bV bP�`*\nR�h�@���kh�NDN0���6�@�ff�h)��^-VU*�*��a�.wb�\r<�����j���,�����u�j��gerI���D0p��h�{O��H�3mU�K^��G.i���`��ĩ�7=�)�މ��u4��j���]��G}D���y�7�ӧ�!a�]���\rһwo�|�M���*i�*�aÆ1t�P>�����*�ƽ{o���C�6*&���Տ�;C�d͒��QU��*++����q�������|\'�{2{�lTU��΋3V</����v��f�&��������z���ddd��z��G���x��JOO������,����{MY�|eeex<��`�|���k�ҥ�j�jOE<�a�/��Pf2�����SO=���-K�&RŽ�kE�$�[���-�P�\n2l\"�hi��(I1�]\"u��0Z������Hӌb\'U173�/�D���)�P��:�S��~\Z�H#:�*l�e��K���(ޣ/{_!X��*@��{B��>,E�Ӹ�^�d%�ȬBIJ`��:TI�)[3�a�P�\05H�eVB�0E@H��b*H#Jx&*2�K�qDܘa\'ΰ�$S�֝HÍ���ٮ)�\ru�\\�,�\r��㑫��~��+_^�����E��A���ť��#�q��f[�TbW�2F��k�A!��*�OW���ߙٔ�\nT���$�%%�w\r>�*oWD�{|�6j���x��Z����?�۷/B���$�b��~��K/�!Ç�#y]Aff�]I�o߾v)���|F�a�3�������\'� ���;�S�Nt����z뭷lr4!.�C�!1bD\\�ҽ)�C�Aa�2X�z�jz�!�������͛BФI���un�.�������ӳgO��|�Ɍ7�Vu]筷ޢY�f!�ׯ��Ϗ3,�{�={ͦL��a�?)�\n��xΊ���{׮]iР:t�w���w�s�N{\r+bT$��x<4nܘ�Ç��7���O?��7o��΋K�R��ʊK���̤q���|>���!���+���?D�u;�b���L�p�x����(\nYYYv59 �<��,��N�:��*C�ݣ_E��׶�\\!\Z�v�I\'Ѯ]���Y��W����\"�Hiak� ��:h�c�׹��Ƈ���{!�KA�������BUl�A�p((�ň.=�m|쭏P�*��3�bG(��6ǩT����c��sG�8&���\0<}�@��:�\"�����_U������U\r7���l(N�Ӆ*TL���.CšHLa`HS���Pc�D�e�.\"����c:B�SVu4�c\Z&ŉ7d��:�l�����f�=���Ҥ&�}�\'�=��~V�p�.��1��M̐�40t�aDnQ�bD� ���@�2BfS��y`zK�y���x4��]EW���*U0�Go�SS���PME�R�b�iD	\Z�Ҍ�{J�����D����4h@ii)K�.eժUԭ[w��O>aذa���2�ѣG���7����0p�@�,Y������1n�8�N�ʔ)S�ի��Rn�S]�`?�0O<��&M�L�q�ʕ+i߾=��v\Z���+�Ǐ�E��<�#Fp����/�ТE:t���m�4nܘv�ڱd�fΜ�s�=gsT��Ċ�W��+Wr�g�r����6l�{�f���\0<�����ӇW_}����08��3Y�x1RJ���G߾}�2e\n���\nW\\q�F���w�7r�}��c��\'R�n]�Νk\'�?���8�Á��������Kvv6.��Q�F�,�RJ����ׯ��/������O�^��O?�^�zL�2��]�ұcGRSSY�f\r�?�8,���x<t�҅!C�����;���4�z�|���t����Mjj���a]/7n�N�:ddd ��^�E��Y��4�8\\L�d׮]4mڔA��1�gddP�fM��a���/��t�p�B���7n���ddd����i�,^���-[������p8��⋙;w.�a��c���*����i���Azz:iii|��8\\.)))�oߞz�ꑑ�AJJ\n7�p]�v�\'�H�H�?VDL�J�Ջ�XA9���c�+��W	��bU�O���Ya�BX��BX��ㄨ0sa�����+�JR1Pg��jF�/]���Ԃ�=���Í�}~.����~�Z��[L�\'�����QT�A4�DST\'�\"��J���a\\��*�\0�@�.���ă���*�ya�:.n�Å�|�Bν*�q/E`HE8p�Q�E���:��<���\\���K�(RGQԸ����`�á���D��[�h�k��F8�9:,�{�С�x�v^��RQZ�lI�z�$Ƽ�<Z�n�\'�|B8��W_��N�k׮t�ԉ�K�RTTd�=���9�shѢ������A�6m\0?~<e`nժ��rk׮e���{=���ӥKZ�n�UW]��o�����4M�v��I\'�D���mó��[bUV��K�R��/0r�H�S�n]�z�-���m�]����oiذ!]�v�k���p0k�,ߪ��O�y��q�w�L�~���=z�!}���!B6lॗ^bÆ\r�w���O˖-Y�|9�<�ӦMc͚54oޜ�={��O?ѣG��ٴi�[�&??�Ν;�j�n�%K���石c�TU�K����O>�Į���k��`�F�͏?�H �\r��{���b�>�lE��r�q�F�u����v�i֬[�l��϶9M�4nܘ��rn��&RRR0�G}��~�\r!%%%�NYYg�u�M�����?̆\rX�|�mD!���?Y�|9�UUY�v-�\\s��M2�6m�P^^N0����ꫯ�h�\"��i\Z�}��&M\"777Γt,�R���	�:!���s���X!\'��%���>��Q�,Q�Q�0ɲS��^��:%*9^\\T��COfޝ�����?v��u}��&����on���k����l+8����V)\0px@�����A��\\�Gx��EY�0\rTB{�Ȋ�]=F&�0N�$��0�iD�ٜ�D\rGp&.��PA�`��}�h��Ç�CJJ���?��SՂ��k�ظ�aQTTĆ\r���%�<��HII��DJ�7�|��1��sE�:k������}��v���\Z�/���K���iѢB~��\'��9s�\0p�W����g�a��E\"V�X��AJJ\n���D\">��s{|^^�a�����֭[s��g��*\r6�F�\ZL�0���<rss�߿����t2l�0rss9��ӁhxT�.]X�t�m�A�O�⠰ֿ���1��\'O�l�iӆ�m��\\+��V���IhҤ	N���ͮ]��ӧ�]~����B�u�BՐ!Cp8lܸ�ʵ�B8��M���T��|��G����5����3m�4��-���p�ꫯƍ���<���\0:��atn�)%_�u\\����b׮]�a�hթS����>?�*Q�n|g��Э�_����s�\Z��GCTL\Z�X{�2n��׶������q���b�Bh��h̫�,E\Z>\"?����� B����r��0��\Z�׼�\nu~۶�/WD�\n�I�J�{���IM\'-��h��p\\�TRSR��0AC���A�\"�<~Y6u2����`(��*AGCx�Y����EA.n�C����*Ij9N5	È�����,\\������nz�s�~0ҤIV�\\ɽ��k�t���VY��P��*Z9�^UՃ*�۠A֭[�C=�����r��x8�����J�k޼9���̟?��m��2c�����ɤI��9s&�����s��r�	\'���ϳ�>�ڵk�?>^��իW������$--��n��Nn���q��wޏU	��y�|��$\'\'s�wҭ[7\nپ};�<���Ϸ�G\"��n\n\n\nlE~�ҥlݺ���?�ׁ��K҆�a�x�	���Z����ә7oeee4m�t�XO�ƍ	���|>���+.���*��g�y�x�ѣGW�{�z�����bŊ8�I�訜OR^^����T�m׮��=ӧO߫�b���<��C�3�΁B0d�Z�l��>�UU�jpx<���Q�	�	�Z�g?��	I��8�ɽ�;\Z�˶R\"$Ŀ?�6�ώ,��`q�\'�9`�1�HEE(N�c(I�8�`�$�ХY\Zkn���O��㒘ٯ)�=Ԇ�Cڱ��V�q]=�uFmr�MVm�3v�6����s_���,�惋4u���;�����>��U��!?M��nU��\"$\n��ĉ��/�]�lR7����b&���)�mbښ]|�xSmf]!D\'N�6��:�V�A�n�6lW_}5����Z�x뭷�yL�d�ƍddd��*�x\0�&�6�48p�~ѫ���6o�L���i�vϪr֎{aa���s��݊�i����ꪫ?~��R=`�\0��q�\\�1�ɓ\'3n�8 \Z��p8hժ)))2�aÆq�}�����}��ݧ2},INNu��%99�^x�ڵk3r�H�y�|>7�t�m�Z��?�0���v��M�r�72x�`�����y�oRR�P�o���q��Q�vm�ΝKӦMQ%��S�N�y晌3&��CJi{L����0�SN9�:u�p�m����ˊ+�D\"vߊ��ޢE���m|�Tp��!<x�}\rJ)�����s-**b�ڵ!��KPU5�k��x(--e��������Dv�HJJBJ�alٲEQhҤ	;w�#G\n��c��Ӈz��ٿ	�8�;�릛n:h���q:����R�� �^P���5�R\"\\p��>:�$�qڸp\'��\"���\Z�g�g��j;��Orla�����Q���im�:�����9��X�)i~|f��x^���h�����Ӷߣ������$��`\Z:�*q*\nUA15BF\"D�a[@g�� �\n�,�TF��^������Z�\n�?��!�$�+a���Y*1k۔SJ􈟵E!���,Qd��Ij~-+�����T\Z:Z���#LL��� ��5�sO8�2��۷��?���3�dѢE4j���I�������*��;�ЫW/F��=��@ǎ�3g]t�P��3g�ނ�>���]��裏�	�;v찓wǏO�Ν)**�N�:ԩS�-Z���s�m�1jԨ=�PU�	&p�������s�wҸqc�l��E]��ANN���CJɺu�8��hժ\r\Z4`�֭�ر���׳b�\nrrr8�Sرc;v����ٳg��W_ѹsg�̙�y�Ǚg�INN?��\0?��#���|��G����62f͚�̙3����2����r����u�t:�t���&����:n�����������A�����:�a�t:	���n�H$���`��ٻ��by��~���R�#��m�X�.��P(���D�4B��a���������R^^��(��nðkN^oT��u�p87�r�h�f��@ `�m$���:�@ ���a�KUU���j\"��@���z+�����ޗ���4\r�0��?= ��	�2�2_�K���q�p��E߲\"�3Vn7l\"#�+��������e�xc�q=�:�,��R\"�F�&o� �@� � ˣc�CAFLL?(I�j[�0����hQ\0�oڥ��p�b���b�\rd���2������[���l�Ѕ��|	z���H�J���9z���U��G�\rܧ^����ٹ����Dx�wN�Z��d�exW�Z��Ǌnz��J\\`��\"X�@�u\\ucq�`U�ϯ�2S!a���3ћ���\0QO�PLi\"TCB�����$��눈��4JU9��4�>+��Wϓd3��f��^��Z �_�`J���Q�˲\ZL$BH����</��[�\"ի���iR��l�s\Z�ѻ���Դ����\'BD�(����ֺ��!�}����3�����3}�t�|�ׯO�֭��ԫW�&M�T����A�֭�X�gΜ��ٳq8�t�R;�+%%�֭[�1L������_�v��JG�ܹ�^�z�|�r>��CF�\ZU��^�F\rZ�nMjj�ݖ��n���p�b�\n\r\ZĊ+x�7�ꫯ���c���4hЀ�k��r����`�ĉt�ޝ�͛�r�HKKcժU���k�X��Z�j�t�R:w�:�f�\Z�=�\\�-[�]w�Ųe��<��ݻ�q�F���v��o��y<�ի����(�xyyy���m�����B�r�1M�6,�%�x�E0�K�Z��i��B!t]��Y�-��7��Q`)�V��@ `�Ul��laZ�\n(�bGJI �C���@ g,Ys��\\�c[�`��5���X1�̚W8�/�`ƌ̛7���{��\Zgͷ\"��Uy~G���\0%3fT^��}P3jR>}��H��9��y��E���B\Z&)�\'c���-�x��׉�R����|�dĤ����K���f�N$�����(�;���Bj~����<��K�G��K�\r�g���v;2b��c\0�����4L<�����Sc�O8\Z���&9o-����I���I��A��Y\"1Kj|�;9o�@�Q�s�5}����\\m. ��`@�#oSc�o��y8��#���Rk�&<{\"M�z=����C���==L�)�zހ����{\Z��7���\'Ԟ&}��(i9Q�����s�G��.�XS ���}Y,�\nh�8�H�:���e����5\"BSJ̣1�KƖET�<�.S,��RA`�*0��*v9Z�U�X��c^U�3ʨ;9Z�7z\\aG*Z��fԐ:�C�M�)�;���{UWů}������g�@0�������틈�pWT;��$����9jNv�|I\\K��)y�Q�W�ŶK�q�nG�����ZP�W���&�����\"��w�r���_���A�1�cԌZo\n�K0K�H��^v������!���6֮o\'�p*5�_ώ~\'���O�[Q3kQ8�I�ߎ������\r�~��Y^\nR����(;n>���%[:�Ԟi��� ���[p�>��oR��0jYƶ�u���F\nu\"����|7�^��~C#���v��������7�\"T\0\0 \0IDAT��[�ͫ��>\'\r_�A�n~an�\\����(E�Hl��	�\\\rQ��ԣt�C�Nzf�ޘ}{@\n�r$���X�D���\Z��ƐJmb?mGG�_�hn�1����ّ*�����?lQ��g�){�T��v���j�����lo}����W?�߸�%�W��&$!	��ʬ�޴	W��ՂW2�������V�;��	��nO�G=YVؔ,/%��(z�k��� \Z#���\Z�_�Ip�hu����<��,�a9D�[&\r��|Fm�{t#��,��J_Lr��I��\n�鄰�ϩZՊ����\'���a8�6���8��,) 0�}\"k~F��d�]̶�3H����׫$;<���$����]3��.�-�c��+2��1oE(�X�\0�������C���C��\ndUc�t�T�X������`�w�1�ʾ���XU�;����B�	IHB�����8�֭6��ʟ�9�_��	P�ƃf�G�-�F(QE^_����G��r�$��$S<��\'���¦�Q@Q��Q��Ի��lz*��M����\r/]I��n��CR<�^d0�Y���1�#�%��q����ڳ�)|�KԐz�qj�,�,��TPU��tj�`��(��kl��i��\Z��w�������>���uD��%m�k�}�z�q�����~O��N��͐��Q��ܗ!�\0s�XD�����0%o>t�K�H��1�����+��{g�L*�>��8WKk_m�i��$�$$!	�.I�`%�X���e+d��F���D$R%IAɨ��Cw��M��6e���`l��!^��K�d4��?�\0N�������S1ˌ���h\"���\"u#:W,)݌�kS�m�//@x��ޣ\"�h�Al���(�	B�ǎ-v\'�� (�Xr�	�S����/�ܧ]J`�G���/�n�>���~��cd�W�X�r ��R����(\'E������=±���|u!J\\�A�����X1���*ւ��}�j�0�:��Վ%VB���$$!	9�b��S2gi1^�j1�T%Z����w���-�}�2�5P���Y%����,�])t5�ūķ!���2b���A|[�-��ŧT9g*��U��`��pV��K��e8H`�ѵ�H�>��a�W���xD���M��?�_�#��e\Z2�E�����rT�>Hp��quc�W�X��\ZK���o+Wj��>�Z���b�aqX����$�X)%�ItÈ�k&�n\r�4�8U�4q��&iu����NÌ�5LR\nK�T�r(�G��W��#K��������i�8�����JRR�\Z��a�@8�$�P��0�Rn��?��)u�pJJr�+Ȉ��ܹ\nroF����I��Ӑe:2dF?��ED���y�\Z�p�����gqz��u��׏�,��`ɿK�h�V��[�MTѦčH`�+�v���$�X��p���dgeqƃ_���E��g���I�W�\'+3��_����1kY!;�����9ˋp\'%��ԕdefr˫��ʤ��3��AVV&}�F�^�|���K�/l-1����\'��_�&33�[cX\r�Ǻ��\Z�z��$yS�����r���o�؉����iQ��^[Ú�54��{��23y�?HJNa�o��M�؉��e��kⰺİΌau�a��r����^_\n_�Z@QPaS���+v�t{ú���Q�\'�ƺ)��lkگ�6�2��r��W�G���ź���Cg���I��ߑ��Ɉ)�INI�_��RذS���8\\I�:c-����ia=Y	���dgerc�O��KIe��;�RٰSg��b4WR�c�ɆA$?�c��&���ù���hz*��O�6K�&�槡֨��\rTΖg�h~\Z(*JFM���B��\0g�q��	%-��\r�&����(Q�D_��cG:\"�T�v���7%�\"3\r�\\G	����W�&��O�!�/���]<x������BYU�HU_�<Ķc\r�@/ت�C�,����$���#DJ��L���\"Z�@J[}kw���ƪ����kX�n��v�&DJ��PҰ�[��v��p*Q�P,tI(�dyҌ�gh��%�\'6�\02$�n\"B�哘�3��h,�p0dtw?�`(2�5��gc)y����	�\Z��Rx�9��\\����}I�oS6y$�=ȿ�=ٯ,a���!<<H�$��uh�� WOD(���.M���!�&�J���B��\"�3��o]G��h����l�^?��p�9 k\nQ���?U?>,�ص]q>>Y�\"s�S�*���	X�/`%������U<��/Y,	K1X2�UmX��$�8h�c_�L�ȯ�=�υQ��!�>t�LD$�>ۅ�Y�y��=���B$��~�2���nSr^������[ Qk�%o��sAjL^���Gݦd�D���jq:�6�x�]rg�����۽�/M0\r��Ǒ���d���H#������Ⱥ�)?��{�#�ި�\'%2\"�ljZ6Bs���4��[���+$����\\�A4Y_��$�D�n����r8�-Ⱦ\0��1�E�]i�r����2�AX����K��ﭭ��AV����:2!	IHB����o�,/�d�,�.��z��@ƶ?	�|��Nב��:[�w�z.ڧ���!��<A�}o���O��[1��~y�)c.������>�������,���I�����S���j�z-¥�F�,/��{�w�?�Z6�*)��5C�,�:�D���\'z��֨G�_%�F�G���/�R�v�\0Y��5&��ke�����@䞏�}¿�IgD$\0��a5�dzn�bi2N3�j�U�r�j��QW�0��o�DHB���$$!�U���j3>*��i\0[+d=�6��?�4{F�&o*jZ6���:�BP53\'!\\Ih�\ZT\r�9	.���/���;�-NGIs���L\n�<��T�� 0�SB��\"��p��bW���<��P����J��EP!��ر�m�ԏV�R��K���ք���g��܋�����@����;��(���g�%�ި?DzTQA:���T��&\n�\"ҕ��tE�@轉\n�J�=!e�l��μlf�M6!������{��s�ܹ{�-�9��ځ��[2Ȭ���������d!�\0��e(��[����%kk \Z4hРA��	Y���Vt���\"OJ���@������,�~s�8�RR�f`��[�)���\rߐ<s8Q�CJ�\'u�x��E���+������׵s�vqkP#�\'l\'��ĿS���#��w�nv~p_?��� a��D}KP���u{\\u��N���6ň��+Hnn�/��쓸��E���}��5��A�����A��[/���F��&Cג3Sd�x8�i�x�	�!�~^v����y��./�E� ������%�8��i��nI�B)��\r\Z���D�:����@���n��rݳ��F���w�ɕe���P,���&�h4���IKK�G�k�7 χ��n����<��!t��у3�vY��\r�`z�Y\"?]��V�����A����.O:��n�>���c�j ��K@� tI��<�=/����t���Լ]�m�\n���}I�e�{JbFy���\Z�.���gT�җ5L�)��Z;����倀䓛a��ȷN�#5��o���t\'�{H;~��ѝ|�s>���N�����^�РA�\r��8�c�qV}���EJ?������g���v��k�Q�zu�����t��n��=݂ ���E�өzV2H��zGr�\\j���D��#N��������?3b�\\.�$��u:���,��F�/Ο��^��n�c4\Z�e�˅�`P�J��*t:��^�����v���P�K��(���n5oY���t���}�?�ݻw�f�\Zn�[m�,J��N����d�)�(��_�<z�����Oe�z)��n�����nDQ�h4�u{P\"A�˳񑳼L�GEQ�1��u\'W�!e������v�{�{���y:�8�M�2�;�9~&��W~e���H/b��-A�� ��䫞�	��`��pf�\0�΀Q��?�/o��õ�M�8��È�i��\0�@.�	��d�(K��V��Pem��Q�y٧��F�4���z��/5j�j��^��_e��ɜ?^U�]._~�%\r\Z4��ѣȲ̑#GhР�}��W�fɒ%�AҵkWRRR�2e\n��� >>��g���g����̛7�ɳY~֬Yt�ܙY�f�g�\0���p�\\<�쳄��ҧOƍ��je���jՊK�.��$I,]��z��s�N����W���իWӦMf̘A�N��?���^�g߾}<��>�\0`ҤI8p\0AHJJbĈ̚5��D߾}3fF��ڵk�v�y�X�f\r���\\�z��ӧ3e��t��lf���4i҄��DA��ѣ̟?�޽{3q�Dڶm˜9s�7o{��E��s��Y�ԩ������L��V�֮�?��ADΙ|P=q�P1���\r���HI��z\"�\\��`I_�Q5�F�vB����:����Y?m���MϽ�2��Z���wX����\rEMV�4D��Ę1c��l� �����/���Pi߾�:۪�̙3�����6\Z1b��Q��.X2ǜ� �+O�^ϴiӘ={6�Ν�f�!I�*Ubذa*��ʕ+9t�?���Ny�FDD0�|Μ9áC��={66��3g�P�tiV�ZE�Z��[�.�V�B�el6����F:w���\0��tb���С�ǏW��V�Gr8�$�)S�P�pafϞ�ɓ\'��<��ǎc�̙�[���W�b��մ.��͆��DE:u��q��qF�\Z�/��BϞ=�۳r-t�҅O?���ŨQ��ݻ7.\\`Ϟ=8�N��=$6�\rY��X,4oޜ��HƏϫ��JZZ\Z���b�\n�-[�����e��>��֭[�e���8Z�h�ȑ#q8��у0d�.]�����f3�M�ܗ����$�a\'dY�ƅ<�#	���#Wj6\\9�n\0�҅���/��Rs�׃đm�n�G�s�]��.�y����ؔ9L�Fa�,�t\Z4�G�=:K��j�b�xȯ�V-$I�b�`��T�KAZZ���Y,Y��0r�H*U���t�\\����p8|�Ă���?��V�$�n7���;W�^�1T,�O�J���HIIQ�8�:z�KMM������e��b!%%�\'oE�TY��S��x�W�x�����췽2�Q)Wzz�}7��� �ٰH��d�����w��t�֍R�J!�2111�t:���ՙ�\r\ZP�`AZ�h���>}:�O�&,,�ƍ�c�.\\H�6m�;w.aaa������_�+��*�l��6����������J_U�۾}{�?Λo��n�([�,\r6�Y�f\\�p!�UA|�0���/���s�=��`�b�`�Z���뉊�\">>��͞={\r\r%<<��=#�2��z��߯��ҥK���$((�#G�\0p��\"##1\Zo�����t:���IHH@����s���Ç��Q�e�|<{$�2�\r�! ��W�e�o�RgĀ u�{����7x����`�̹�6�!0�Fy!�\'�jU�L�Y���3��!�<�rd�]Q�߮���0W�C�e��`��c��|:Ǒݤ,��s	r�G�)�K��\09�\"B�e�,\Z����y_a���{\"K�pS�]���tb\r#�>}:6l�y��>da/��2�ׯ���?�j�ҧO5]ɒ%�֭�ׯg�$&&2m�4���KnݺŊ+���e�ƍt��	A�ԩ������K�+%%A8���ݸq�m۶�g�6nܨ�i�Сlٲ�-[���Gлwo\0�ի�S���P�JZZ\ZS�NU��3f�~�-\'O�d����\\�����׫������=z4n��U�V�h�\"���1l�0�sHH���c˖-lܸ�o�����(R�\0-[�dӦM,Y�������L�B�ڵٵk:t@:t�@ll,|�\0�?��\Z�aÆ\0�cǎ��!�zݬ��td���d2�+	�p��Ez�!bccY�t)�9CR�vm\\..���ݻ3y�d~��g~�a�t�B\\\\qqq���+�Q�N����x\n,����@XXV��Á(��8q�W_}��3g��wߩ�&11���Tv����M��q��J���r�m�5j���r�m�6�x�	����駟8p�\0:�������)X� z��z����ڵ+eʔ��pp���,�Hzz:�>�,7o�$>>Y�i׮���Z�j\0�*U��W��FOf����v�ٸq#U�T�z���̺��f|��c���u��$�����mC���{o:Aͺ��.Ds(�V��i�)�CZ]��k����,˄��E`�׈����/v�/�0�#VԪ7�m��#j�VLO�H�nݟ�k�	~���\r$��7DOݏ�B\rb����e�L�5IJV&r���j��*LԸ-�x����W\'!%A��#�����k-��7}����ç X������\"�9�ܠ�8�!e�����D~�=�����d�Y���P�t�{s�=A\Z4�w`������-[�5k��ܻq��K��F�\Z��f�YQE1�q��[�F�]�F�ʕiР��R��/�[o��\Z%K�䥗^R�����?�ev�A�T�XQ�Q1b{��%**�/����;�Q.�mcƌ�ƍ�t:ʖ-�Z�=�C��������q��e�5kF���7�C�c�́p�ݴoߞM�6Q�jU��ۇ �\Z5\nAhѢ�,S�dIƏ@�=hӦ��P+��.^�H�r�p��<��c>J��ݻx��78}�4���\Z���k�:*��N���u�/)N)+l�i�Y��f*W�L�6m���{����c6�	�lٲ���N��jժ\\�r�N�:1q�Dt:Æ\rcƌ-Z���Phݺ55k��]�v,\\���L�&MX�v-�J��H�\"��ft:���������7nT�P��H߾}Y�f\re˖%&&�z��1c�V�\\ɨQ�p�\\�t:�+F˖-iժ�F��@�\Z4�u��Q�\\9N�>M��III�1�*T��ĉi߾=��.�����@�2e���e���L&�ʜ9shܸ1O=�eʔ��o��@��+W��@�\nT��Ν;�k�.BBB����jժ���[,X��ѣG����߿?;w��`0F�R�����`0P�|y��Ù3g���㥗^�X�bX���<���c,Z4����������찁 b(�$r���.�H#m�7D��YnܕK��~����#�ۑ]N��\0ǯ���ܰ#	�;��+:=13aݼ��y�Pt�LZ�,L�ks��:�H�l�\\�N�x��Ŷs	�2�{o*������Ǐ�Ǥ��:w���W �_�}�*�Y���~�W��V�vp�#��q�?����W�?/�׃���	y{4BÞ0�+\\�R ݦ\Zz�D���û���\na�>��%��޳� h����6%=�	4���e���`��5�\'I?��#Ǐg����m���d����r�8{�,�,�j�*N�8���Ù8qb�g��w�ΐ!C���T=#�J�]���4:����p�y���G�-Z�?���G�R���(b�?��f��}��,+7yſBkr�o~���߼yS��ȑ#E��}� �\"/���O?��Ç����\rj������M�|�\0�X�BM��yA���_W�Y,�v;�,�+l�(��k�e�g��ͪ,��A�2N�2�ɓ\'g)�?�� ���kY�CEu`fygΜQ�-%|߾}̜9S��s�NDQ��7�DEZ�l�Z\'11���\05��D�e�V+���ܼy���8�?>���CE�5k�zњ>}:cǎ%66��y�$����;	�XY��H�a\Z�2ո�r	\n��d	95I�~(� ����z<�ݺ��p��\"Xf\r\"��\0�	}��Yt_Dp]���G\nCv:H��.�u^A_�!��AvX�e	] �;��.�ϟ\0�ު�����Y�E�2�!�E�2g(�v�]�(\\�O��\0�ސ�]�/R�N��i�o�$����:�&BzF�4@p�$a�4ˬ�,	��w;�ɠ����\0�ֈe?\nrn��6�Q��� \Z�#�N\'���#55��A�nݸz�*۶mc͚5�[�NU�\Z7nL�&M�v�\Zz��=�\0\0 \0IDAT�g�y��ӧc6����E�e���*T�������?�w�^���C�j�شi���g�ܹ���ԭ[7˲�r�cǎ̘1�[�n��BfΜ���G���e����6A�:u*ǎ�[���@�_�������v�)U����#44T5l\Z6l�ƍ9s�cǎe��Ք,Y���dգ�rnF1�^�ufΜ�$IԩS�^ϩS��1c7o��y��4j���F���}V�6mJ�-�С\0�*Ub�ԩ*/F��͙9s��rUQ���x��GY�|��r�\'��o�H�7]600ߌA��\\M��Mb&o\"qx+dI�u�8�,��u�9��!�rk��}�f��D_F��n8~ގ��aB���}�jd���dp�2w�}g�  ݺNښ��\0B{~ɭσNO�خ�v�`0\"Y-X�~�����$l{V��͎�����a�p�]�]u8O��u�7ȶt�����q�����1�C�b߷\Zׅ?=g���������H��n$��F��\r0�����C����y���6�S>x@4�6�e	\'�ݒ}Z9{^���J:�S�$�Ly��P�}Bf�7�^�r(�A��*�d�{Jz%L�$$IR�*�I��\n_�r�]q��}�W���Qd��n5��U�ۻJ>�u�.�RGE�\"S��w�(�����:�f�K��w�����<����`0�<�����|��p��5h�W�i^���*c����\'<��﻿���x�l{V�8�Md{�o<���6���SRWM�2�?�+���Hi��Q�J}1We�k�\r�S��R�����U�:M��O@/d�Q�����6�U�\r��<��;��ԙ�g����e\'�;��@�SR��e�g�2)ye.�?9ٕ+����m�S�2�+�x��ן,e5�`0��hР�/*�N\'�s�([6_��܆gˑ#D���C��9:���WLv�H�?��#�A�U�\0b��װ���tݿ�)�����g:=\Zi����&РAO<��\Z4�]ʫ���Ƈ�_���R����2	,䍜XЋs�$e�|�q��1>�٭�(�@���A��ަ�n����s��Q/�5�ۍN�S��ܿ��CI�_��[���l����_��>���e��S�����:ޏ~�O�\Z4h�a��H��\'B�ֽgﭱ���y���_# \"��8�����%e�0�{V��i�;ʭ��!Y��K[5ꂹi7�<�`�/�A����}8D!��߰�\\�,!d�˫�1s��o�n�i���ޤC�a���˕+�*9������s���ٕ�_r*���y)WN2sj�ڵk���w����n�ʮ]�8y�zO��]y�v;/���ʕcÆ\ryz^�}����QH�xIII,X� �m\'�2�(�����5r3g(Y��_��̙3T�Z��>cI�P�Bj[Κ5�Gy��ŋgk|����o�[�V֯_ϡC�8u�T���n�In��R�.]��r��7o^�|�g������d���ʟ��x��d2e��2�;\'�K�Ȳ�^��`0`0|�)HHH��ŋy6<�����Q�	�7�C�e��+b(�8�K�X�>�j������5H]�)�y�0V���DeG����v0�0V���b\r1�$!�Faz�1B`0�K����芔B�8���Õ�`A��ċ����@�����f�>+���T#ĨqF�0Tx\Z�#��%	1�0�*u�)���`qD�U�`�iI�;�t�K�/^Y�����U0V}N�pĈ���j�Y�_;Fe5?��	�A��.e�2ʿ�?��a~��\"ݿY��?��k˛����%�2ӧOG�~�i���Obb\"� P�P!���5{��7��S�x��)W��zoڴi\\�t�K�.Q�fM5<222�pTT.T��?���*{��o�\Z58q�O�z�-�F#.\\@\n.���ܷoO=�� �^�@@@\0G�A�$UNDD� p��q~��wYJ��>�,�+W�w��~�CF���hd߾}<��Y?E���>�@ppp�g��N�����s��	\Z5j��~�k���G�gϞ>i%I�����G!�2���Y�`� ��`@*W��S�ҥKS�N��ػl\n��m�0�͌7AT�X�F����9w�Z��hڴ)=��������͛7s��Q.\\�����;wr��uA�`������m)�2���T�V��e˪�q��u��a4h�/�o&YV��e˖!+VT�����������(\\�0���\'44��;\"ժU�b�˲̑#G�����+K��CDDD��C�b���\n�,#��w�w�&&&Fe2��� ((��Ǐg����Y�jU�V~���U.��_{��͋/�H�ƍ�޽�O{�L&�̙��lγ�%)))<xP� �t���� �A��M�.������MĠ���F�Y�az�E�F�C0b(]�зG#�DPp�	�n���S @��A����.��}���	B:\'��LX�/p����i���a�G���8l��sJ=������W1� !mcz�!��#%^G_�8a��!��=a;��� f���+MԨuD��H�m0=^���,�{o*btQ\n~wǁM\\|	C��ĳ��s����B�̋����Y�s� ����8�,����0�,˔*UJ�9}饗\0W\0x<Ք(Q��3gr��QڵkG͚5��O>��5d����M��~�����jE�e^y���M�e�6m�\ZOq�\Z���ݺu˧<���֭[�e��_��N�ڵIOO�reϠ��1�$����q�N�BEz�!�v;͚5CE:w�,�$&&2y�d�)�[��]�vq��!J�.�$I4i�Dm�%J\00v�X���iԨ�������)�{��H���?��2_y�5\\�ף�����4h�O�={�p���U�F�v�TUE6l؀�f#$$AHLL�b�ʲL�V�0�L�ٳ�}���l:s�˖-#>>^��rOi�!C�`�Z��.���s�R6�~�B�\n��/f��$��/�y�f�	Z�CӦM�x�V��C����O-CѢE��o8q�o��^�j(�2���G�e._��ɓ\'�z�*&L 99٧�\Z4h��n�iӦ>����.e�By��Qw��-\Z7n�*�6l����4h�\0A�_��*�\\�r\\�v�^�za�ZY�b?���7o�10���ׯ��nWy��yY�!p|���^�e.]�Ĳe���?�z#��>���,[��N����je	*T���dƍ�?���f�R�J����ł$I�?��;w�<Ce� ))I]1IMMeĈ\\�r�NGzz:�g�櫯��ygA`��݌9���=.S-۶m#!!���IJJ��_U]?\'%%!�2���2c�֯_�O?���h�СC|���8�N�n7�ƍ�֭[lذ�S�NQ�xq��}�z=�.]��O?����!9X���$�á���\ru\'�fh���`0��l����������@�+}�	�9	���&��� �}�1{\Z憝n;���=�m�2��8B^H��c�mRJ\"��}N䧫H]<��cD���z�1U{޳���� ��-�.���X]�\"��ϑ%H�o�Fv9�R�(i��\'z��UjԢ� �_%���D�XNꢑ��> + ����Y�����]�\'�	�d���{0i��z0$$$���2l�0bcc7n����T��L�2\0t���3X���kIb̘1ꌥ�>::�gV�f�ѠA�;r�����;���8��l됖��o�Ajj*g�zȓ�}�]A�\0|��7j����r̿dɒ�K��y*3���R�I�&���A�T�Rj|Ũ�6G�\ZŨQ�|�~�aiii̛7��� �դ���O�4g�u6844�G6��(P\0��ŬY���ٿ?� 0v�X�Y}����E�T�B�b�԰޽{�F�R���t�Ν볒S�tiF��֭[�8q\"�C�J=ڷo�*����$%%Q�@����+W\"�~��O��\\.5�¿�n��\Z5j��f0HII��S��\"C1\Ziii���`6�������h�ڵ��>_oYe�p(�h4��t��g\rC�	�[���ѷo_���hܸ1�z�b�Ν̞=�\'�|�ҥKE�^��W�S�L���*[��ի�1c;v�\0<[+U���o�M�ʕ�X,���;+V��%K2p�@<��?�@�R��裏�Y�&v��Ν;��\\�r��%KҺukDQ�V�Z�iӆz��q��5�¡C��Y�&ǎ�k׮�������Ȳ�g�}�͛7���ٵkf��F�\Z���J�j�?~<�ڵc�֭�ep��`�L��V�7y��B0�1/�q��*�.\'�Z��t\"��v��P���d,��ܺ�3�X�C�)���~\\�m�<tEJ�|c���.AҸw���j	f��!���n�S��H�ޏ�#�����jQ\n��S�m�.�$��d�{V\"荞����L��r���_\'�v�.\'u�D��H��pB�&��&����c�\n����Y���\"�T��W>/��/Lȼ[��E^e�kY�\re�<̾�ʨ��s��l��R-�2�˗Ϣ y��S������6@����Q�ۦ�\reۖ��2��,�T�X����3x�`\0���KdYVrev�E���n�n���gVϞ=Kzz��Nʌs�����\"�S�N�Q�N�>����?��_�x�G��-:uꔥ�3+�\0�����0eU�u�ֹΧz��Ȳ�ʕ+�����?�;��s�r���N\']�taڴi\\�~]U�G�\Z�:S��9u�OXǎն|�7|�EDDp��M��b$,Y�Y��m`�3T�QY}Sfѽ���ڇ����s�T�*UR�;���V+qqqȲ��~-�-B�eJ�.�E�#�<����J��ʡ��n��T,��ܼt�;�w��ԪU�*U�`2��ҥN�S�n��w�1v�X<�;Ｃ�����)Q��Z�R�������ŋy�\'x�wX�p!�VWAZ�j���ٳg�Z�m۶Q�zu���H��CQ�P!�]�Fzz:�ϟg�С���2e�u�G�$�Bbb\"}�{��U��լY���\0��߯>c�N�3�<CѢE�ݻ7u�сh\r�W@R�)�䥭�L���B\"H��\r��f�Zt%u�8R�M�>�w.%qtG�O�B���CF0skPC�qW�Ѯ4�F��������/��mN\"!\0�&vC���8�e�W\"m�d��bݴ�����j/n�QA�q�.9��&�]�zT���FR�L�u�$b`�3��Ǐ$��`Yrc���c;�<s���I\Z��٣$~ܚ�1��m�ۦEX�,�T��#�\"�$x�iߗ��Up�������}��A��`�R��eD�3�����w3�f��\r���y�%�,9�SZ>�����ɗ[�R�Te�̙3����`Pg�oܸAtt��ܽ��9rY�9p�@����H��R��/�$nL�2��@``�����z\n*��˗�2u�֍bŊa�Z�mT�v�\"22I�x���}~�(P���\0~��z��͉\'�$	Y�1����b�\n\"##����x�\'�e���8\"##ٷo�\Z_1/^̣�>Jݺu9z�(E��i�J�*��3�P�n]DQd�ڵ�L&�N���(���z�GT�\\�?j�(DQ$88���\0�xR�EQ]��s�=����}H�\0U����^�dI\0���-Pg��~��Wxx8��=�<�իW�ȑ#�¥�2��jPae�fܸqDGG3l�0\0u�GE�x�\r����RA׮]X�~=��*U�P�Jv�ڥn��R�\n���L�0��\rZ�l�*�J�Ν�(����FZZ\Z!!!S�X1�N\'�&..�˅$It�ڕ��Hz������̙�#`���ꊜw�(hذ!U�T�E�4jԈm۶a4\ZUCWi�ѣGӲeKdY�V�Z����l6OVݻw\'22�=z �2[�n��%�2U�V%::Z5tV1�J�(��\'��{����iƆ�|(�2o���tҿ\r\ZDϞ=�ٳ��d�b�X�r%III껪��y���Z�Y&;V�X��S�����֭[�iӆ%K�кuk<Hjj*�z�����4n�X5�\n,��f�!��v��7�V��̙3+V��\'��k׮MJJ\nk֬����Y�@EQTW��z=ӧOGE�x�	t:��8��ޮ�?�T�twA\0ɍ���\0X�x&P���b�v6����[�l�ߖ��⯐�b��Qĺv�o^Fk���kk�Wj8����\'(�=yf�\'m��*���.Aq_>���I����m)���p�?��ղ�\"������\r��t���_���o� �+}�7�e��-�v}��,�R�ɳ	r��y�τ}氜�	���>ɒ$�r�\"�v��2�gvkꭼ��9,����s�F6�4���.����Kﯾ����{tt��\n�}��&�ʒS�ߩ]2��M[��9��)MNm���S���ٵ��dn����%/m��������-7�pW3���	]F@��R�G���)�M�x���x衇p��̞=��\r�o�>.]�D�>}(\\�0ӦM�f�Q�n].]�ĩS��4iW�\\a�ҥ����+�]�v孷ޢE�H����ә?>%J�`�ԩ=z�=z`�ۙ0a�>�,n�����Ӿ}{���Oǎ9u�`�ҥ\\�z��/b4\Z)Y�$k֬!((��ƒ%K��o\r\re�����\'�УG$I��O?e���>��-[R�`AdY�X�b�/_��;2r�H~��G���+F�\Z�SO=ŤI��]��pg#��fB���ENL�\'�& �¿_7������s	�+\'w���/Lc��o���k������D����8t���\Z\Z�n}\r\r��v��\"���IJJB�f��E�Gy\n��pN\\\\���� ��ӱ�l����JIIQW�A 88��AHH			���v~ I���DGG�^�\'((��EZZ\ZQQQ����+�&���� ,.�KM����f�Lrr2����P�v;��ɴi�F��\"��X$�V�� 5�@A{FdY&��	����\\��\0��\r��c��&����tw����M���/�i0U����ߟ���� ����;!44���i�\rw�;�g�@W()9^k���1�@�����\r ������k��{W~�w���&���l۶-��3��{��z���>}�j�t��1W��%�3 w�O?���S��1������_|�E�{.�\"g׮]���_3>4��^Opp�vesi����������<�i3\0ܲր��a��Z�r����n��\'jo����e�a����`0�~�-�C�����BHHV��˅�d�d2���Dxx���۟�B���y�f����r�ԭ�(�p@�l6�N\'&�ɯ,@-_jj*�����������\"���UH��,�7k֌�2a���S.�PP�\0�,��N@@\0N�S�\n0\Z�b��T�&%%����d��v�OSSSq��j�H���j%$$$K]��� I��FaQ7>���[�׫�@2���v�YSSS}\\�&\'\'��M�a�X\r\r%((���4*W����NRR�(��۾{��|���Aa�[,���E��+������vg�P���������=BY,���q88�2+�Dy���x�1�,��`��v���	�=y�����K��{��qD�edk\n7;U�}�f,>Ƈ[\"�uºO�6��s��πh�7�r9�vݧ+����7mڔ͛73k�,���?~�\ZG��\n\nb���7�g�}��{���[o���+W�T��Ȏ;غu+&LPظ�8���k6o�LӦM�u��,�����v�Zu|РA�ر�m۶��R�*�K����ׯ�*��ŋ̟?��>�����_͖-[رc��.۷o�ƍlذ�cǎ���̬Y��ry� ����`�&L����`���ԯ_��M�֭ٸq#�}���襗^b���ԩS�+V0t�PA��^\0����f˖-l޼����L�B�8z�(:t`ǎlܸ��}��C�X�b۷o�g�AZ�lɦM��8q\"v��?�����g��֭��ŋ5j�$1j�(�m�Ǝ;�vz��7q�\\DDD�k�.^y��5{۶m�^��}���eذa�֭��w�U���3gҠAv��ɺu�شiW�^e�ܹ�=\Z����ӧٴi�j��ĉ*9eXX��1*99�Ç��믳y�f֭[�ƍ���������=q�����{�!���S���ɓ��gϞ�D��ݻWu��f�\Z���Ù3gX�h[�n�I�+�8�\0\0 \0IDAT&t���\'�v�ڱc�֭[����9w�*�I�&j}&M�ļy�|�2[�l!66�;vh��5h��c�A�DO܉�`qd�����Uÿ��ed���\"��ºO�ѽ��p�]�z���\n�\Z�[��0�t�R�����|\Z�l��ڵkٱcV����2\\�F\r:u�ĠA�عs\'\0o��\0G��{��̝;��;wҡC$I��Se)�K�*Ell,QQQ����x饗x�7صk\0[�n���=��&pe%A�\r|����dj֬�c�y�~��7�t��d�_�~L�4��E�ҺukΝ;���(��F��޽;���W~*D_{��a���jY�v����O>�C�:��Űi�&����f�ﾣiӦ,\\��\Z5jЬY3Hjj����f�H�\"�[ƶm��G}đ#Gp�\\��v5M�>}�ڵ+�\'OF�e>�����CTT#F��1>�O�N�f��ٳ\'�q�;b�nܸ��K��2�>}�nݺ��k����_�}b�ƍ�޽Q����)^�8իW�z�ꪑؤI>��s*V���hd֬YȲ̛o�	x�7?��c�����G�����ÇiР�ϳ��ʳoٲ%���:6x�=n߾���z��Ŋ+�ի��c�a�*T�@���q�\\�����?@�:u�P��Z�RW+ʕ+�͛7	c���$%%q��ʔ)����X�\"-Z�\0<�����X,�?������E�\r$��Խ{	}��<+��\"�(��9��fcݱ�rKk��Ի���J��6�C��ʭp�=�iNz�=��ǫ�2n�3)���j�W�JzA����@��7lxS�,�{�L&QQQ|��W��\ZMRR��Ԭ@��s���l�5�r\Z죢��Z�>|�o�;����s{��^�\'**��0�ٲ�+m����\'�|��nWI�{���}��ij֬ɹs�0\Z��*U�3gΠ�鈊��K�.�䝙3������{DEE�lw�xRʠ(�9�� <��#lڴ	A8r�H�~x���q:�~]�*�W8@��c���U���a����ݯ3��[�n\\�xQ��]��e���Ht:���\r\Z��:h``����c��Q̍�h��/Fn�تD{�n�Y�A��vL1���5%x�e�&zo-�\'���/�Yx�\'�7s���L�:���D�T�BժU�<y2AAA��a�Z�(|\n[�*Uذa�f��ټ���,_�\\Uĕ������?���d֯_�ڵk�e�.��y[�l��/�Tg�_y��O��,�4l����x�N�ʙ3g�*�QQQ̟?�E��駟R�vmV�^�N���?���/�T��׬YC�=�p�)))j�\\�v�ѣG����N�S��\0^x�֯_��ӧ�0a��=��CD!|�7X�l�z6�Q�F��о}{�/_����X�b4o��Ç�e��f��rܬY3bcc�x�\"#F���\\��+W���ի}ܖ*eU����S�N�X�����O?M�\Z5�g<m�4���}���u�v�ZV�^MӦM	g���,_���Ç��7ߨi�N\'�kצU�Vj$Ib۶mt�ؑe˖�r�(_�<O=�������\0r��S�b6�U�J�*��WX�l�*�G��g%������\n��w߱m�6ڷo�����C�,_���I�r�(Q�DY�a\'I�$Q�bE�lق�hd�Ν>+�\Z4hx@O���˗1e�j�o\"7�Z�|�:`�V�ϲr�k��N{B��d��L�\Z�&˯,�,Q��_?���;UB�aaE�R��n7:�N�P�x��WVAP�+��T	EQ��|�_��:���,oFa�yCa	�.�w�\\.��V�����{@)X� 7n�P�����(�އ�3�M�t���=s�����9Mn��nC%��=Y���號}ve��\\].z�^-�w�{��+���&��y>y�$���>�V3��N��=C���������x~��^z�%�}0���df~Dh��5<(�d^��#ՠ�N�KD��zN:`N�c^��T��\'P�lvye�/L1g����l��,�_:�*� dQ6���,x{6�)���|�|z��yGY����s��r�D��O�g�}�S���w:m�9]Nm�S9���m��a������2x�U�P��]�2�����9&&&�7��e�S���s�s��e�����w��)(\Z4<��\r��X��dO�w�������uÛ[F��XH�,����YѠA�������A1(�Ąn���ca�\Zi��!G�<���4=7�e���B6��Efw�_���.�ʇ������(�LON��Uy򂼔�_\\���[�r�����v�{2ْ�m�A�\r\ZnC4�5�CC.�[٣�izn��o��h�����L���|�s�w�l��R��E���@�Jzn�{����@��J�Çs����̟EQ�\'����P�U�PAm��B�\Z5([����v�<��#�m�I��q�*T�t��?~�G�w��ڵ˒� 4m��N�����#�zݩޙ����z�o>��S^\Z4�]�>��]��W�|�n7N/+\r\Zr֤�+�/}�F��ZKN4Y�e��� |���7�˗/P�lYN�:��QQQ4l���̊+\0���}���Kձ�����+�;��={����3o�<����!�2f�������m�f1h\0:w�̱c�T>%N��z�*v���Ŵi�x�w?~<]�t!**��M��j�*�[a�		`�ȑ|��\'l޼Y%��٬�8��[b߾}�}Y��۷/7o�d����vF����	@�%8w�� P�@n޼�իWIHH�ڵk\0̘1�>}��x�b�7o��˗Uސ�?�����]��\ZLZZ��A1b�|�	K�.�y��>�%I�b�p��)ڶm�\ZG.\\\0P��_z�%bcc;v�zơ|��?~��m۲f�\Z�-�\r��C����5Ҡ!�p:�X���w!���1s���ɋ�WF�=Yz��](�r�i�����t<�䓜;w�e˖Ʊc�0�~��--Z��?�L||<�|�	n���*�6�M%&t�\\|����`/�2-[��]�v��������o0{�l�֭˔)STy�:uR�|���)R�ۍ,�t�ؑ�s�r����͛7)P�\0� ���O#�2#G�T\r�Á�n�Z�j��믪bc�ZiӦ��\n����U���[��W�?��曜<y�%K�гgOn��J�ݻ���̙3|�:uE�A���8}�4\'N����\'55�{sYL�0��I���iѢ����N���ǘ1c�ԩǏW˫�̇�� �2۷o�ڵk��`@-�%Kp:�ږ-\r���f��l��e\r\Z�:�f2���� --\r�ÑoF� �\Z4��]�y�������?3���a���njժE||<F����`�Ca�\r\r%**J��f��p����>����\'55U%���^>f�u����U7�f��0g�5��,n�9s����q��@�4d��{�9��J��\'�d�����md�\\���c��-Ǐ�̙3=z4~��\Z���#BBFe9w�C�Uχd�2вeK�6��_|��UΕ�3��*Ɲ�n����駟�bXi��p���`   ��ׯ���uH���%���\"\"\"HOOϷ��jŲu+�M�j\r�!7&���Q�=���u.�����T�,�$x��7n`2��eY%���8o���`6��e���~[�!P�oW��,��/�(S!1T�>�\n�ɇ~�,�|���w��z����޽�\Z�lG2\Z�Ȳ��N\0$$$�����?Y�p�O���0k֬둔���db�ʕ�jO��\0�	�v�СC���\n���$I~���m\r\Z�.��f,iii~�okА+�/��$$$�p8�ɘ|Q~�f��АcX���D�C�N�_���0MVva��C\\�LU�\n\n�^੧�\"00��K�P�zu�u�ƢE����fҤI���M�j�\06l111��C=�桬j(�V+� 0s�L���d�����Ĩ�؊�i�&���\"\"\"T�\"55���0\r\Z��zȲ�O?���` &&�G}Y���6l�P5J*t�m�Ν;ٶm�=�E�<g(\"\"\"رcAAA̛7���`t:���Y��Mav��t���0d��sn��GaܸqȲLpp0mڴ�p�´lْB�\n�����۷/���߇�o�ܹ�~e�Yf��vBCC�:u*E�a̘1DFFMժU(V��Y=Ҕ=\r���N�#))I�\Z����l�z�H�$�))Z�j�s�ÿ��]ꎚ��0zNJrs�N,$���2z�)ᷓ���|�?׳�^����;�����g��ۺ�T�ܦ�)<sٲs՛��9�yvi��oݺ5K�,�u��͛G�*UT#7��NeԠ��D�$����x���;��(���3[��jBT�ADT:\"�\"* ŗ\"*(\n6P^T@�R�H�\"])A�R$�PC\r��d���G�C6�4	�ss��̙ߜsvv�y��|�zV��H`` ����o����(8Ћ��\\8y6�m�[��g���ZrZ4C$P��Uye5-¡[���J���l��NK���|i�۠�Fh��{ZF�SZv��ϑ���k�fW��:2��ɭl�=�<�mvm�W}UUݜ����?��O�#��!�2\nw�,��p��	E��~�kW�ʸ<w~�6��İf�\Z���e�M�6q�ԩlϩ���P�;�$�����b)X�]K�����ii>A>��I�..OF���-\r�iRF(�Z��������ݻ�C hF�ɲe˰��>\\[ �n��&\'\'�aÆ|���=�СC=�Y���b����Z�*�s�[��m~�/Ug@�3m^�\r������w ��ފ�mz3O��r.C�Z�ͮ5��sJ�K���&��?~���~���_�|��>����HV�^�\r�JHH�������t:�N\'~�!f��y��j�*Ea޼y|��$f���e�V���tL�>�-[��p�B\"##����aÆ�3�ݮ�|�rf̘��M�0�LDFF���okÃ�T�¨Q�HMME�ӱu�V���+ m!��c�ҲeK�V+&L�ڵk,[�Y�?~<����Ν�w�aϞ=���,��<s�\n�z�o=*`��yT�Y\\Ly�NOB�܃�Tl8+�bCQ���{�vn�k�7��HY�yJ�K����@ ܹ~�::t`Μ9���K<xP�w��UfΜIHHÆ\rc����l6Z�jE׮]iӦ\r/^��t��O?a2�X�p!�7o��?$66��_~��Çkˎ��z���O6m�D�&M�2e\n&��Y�f�|�rڷoO�=�\\�25j���Gu�X�j˖-�]�v�>}�v��1n�8\Z5jDRR�Νc�������~�z���Cݺu�9s&���L�<���pl6s����t2i�$~��G&M��[o��O<��?�����ٵk��7�������fP+��6n%��\".�<:j�� ����\n)�h�[��R�_D���Z�?\\M��Ք�\\O=D�=Z8#��νZ\"h@\\��@ ���l�G�bŊ2�z��e�S�V-\0.\\�@\\\\qqq4hЀ���,s� m2|ӦM�7o�f���ڒ�^^^�1��իS�V-�L��\r�\n��Ϗ��8dYFQ���]Ό�1x��ׁ��&���#GR�F\rj֬�g�}�qXV������\"\"\"Bڨ(\n͛7�bŊ��?��Q�F�%ʃ�����R�)�)� Y��ŔW�N�׮��!I��\r�Q�$�&�r�#!mȜ��m6g\"��D��#�~�́�z�&����o��;�u;e�[��@���d��?�t��<���T�T����gq(��n	t:)))X,�6m���tjNC�ƍY�nǏ�?���\"99���K/�DRR)))�k�N���y	m�Ñc��ʕ+�m�6�m�F�J�4��n�ӷo_�<�;w���n����Ÿq�(]�4�<�eʔ�{�����Vl��@����u)��^��\\��T$�~��#n��|\n�j!�r�3� S\r���=q�܇�i�\0r�-c�6�\nHK����x�\n���%��;wҸqc�t�B�-�5�m6>>>|��wt�ڕQ�F��c�����֭�&M\"))	�ł��`ذa�1��\'j�v���r��E���K>���Vk�r����_Ͷm�p8Zzjj���f�رV�\\��[b��<x0̘1��c�b�XHMMՂ����*���<������8p�ƍӾ}�,Y��C��aW�EII!~ݺ��q}�7,Ǹ�zEUPTg>7�[�ֳ���P�>�[�\n��N�����^�ݤ�TTjT.�q_^�AAQ�q@TU%  \0�͆�b!((�7n`0����b�h�M!mr���7n� ((���T�V+z��Ʉ�f�f�!I&�	UU1\Z�8�NRRR���A�ד�����p���\n����\\111����|}}�$I��n4\Z���%99��Ixx8C�����$%%a6��$I;O`` ��ժ�\'  \0��AJJ\n���8�N\'���X�V�y*�t��$�z�멇=�jWQQ�I^���l΄l\r5I����8:� nLw\'��@����[�>�^��C�U\'��v��-�rC c$IҌy@3(qqqY_�8��|���xM��tj�.���d��p�ɘ�������r��dLw-͛Q�n���M�>|8���)))\0n΃$IZ=2����d�<������H :�\0�$������&��<�I��W�����5$��aQ��ԓ���#\Z���Ӑ7IN����[�>�^RНAh�&�2������r��U�8j9��Z9h)��\\Z�yoGKPx��SO=��ӧIMM��t�!5w�we�c={S�\Z���=tq	�)�U�M�JVn�Y�xJ#)fN\\Y��/��lPM�-g�Xi1)�9}�,zA�ܗ�`s��`�D��(�W3�g����?Cع��	]rEwE3T3DI����Z�j\0����jw�Μ��$�N�A�%�\rZ�,KT~�\'dY��7~A�%��I�3o\'�������XT,K�Gb�;yw�N$)-�\'-��g>L�zw��X�N�l��XT,G�� ,<����yiZ�ӵ\\�Ȭ����H��;sҴ~�v��b9r����\"��ཟv!I�N�Y���I�n����i�=�/lv\'������8\"��`�S�Z��s��s�k\rN���:Y���4���ҴF��6���[Np�b��ư��ӤX�K�z���ȲD�LZu.D�%:�[�$I���/��� �R<���a�ߧI���`�n$I����ZC�i=0 M���iZ#g���T���qN]��Й�����;.H���I�V�l��z/Mk��8�\n?�k<}��;ϐ�jg��=H�D�O�!�eҪ���H����8�\n?m>��+	8}�U�Β�j�EiZ�?M�\Z�I��4��cӴ�;#��0w�1�\\M`��k��}��T��I����zdY��K2i-@�%ڌ�\rI�x��8�9�r�j�D^c͞s$���$]���4�F�ܵj�k=9�7dIb���Q���r.:�}\'��}�9�Sl|�x�$�k�7�*�~N�z-]��4���mCQU~\\��щ�=ͺ��O��ْ4�ޓ6 K��sӪ�����ȒĐ��PU�Y�u-�=\'��~�y⒭��(��Wό�(�����+�ᖝ��\'&��E��$ũ��6EU(�ߌ���ԯЋ��+t\'�T�Ӓ�X�[�K�c�V�[�x��<Y{�D�D��rzA��[�ZҩsqbݷBDQU��z�z+s@\\7ļ�ZBKh?��(�9 ��P�s@��T�v����\'�U��ģ$�^�z���H9���=H��-���,�[e��t�fOƬ��Lt����V�i�:_����ʴ�N~��z4���*r���D/�@�׷�:�Eh��Q��|�npy�+����*~Z���lη���0��@��<NՁ�a�������ߥ��p*�L�{Y�)n�?�4��2\'�m�F�vٹ+���+l�<��Ȟ��l]C��;���k	�@ ����t/�\0I��(��m��i��P:W���H$�v-�,�ӎ^6��.D��z����M�|ۀ9��+�4DJoZ	U���9�4\\i�{�[Ң�i%߬��T�����Q�{W����S;D;�w��r��a��\n�f#���|gw�\\9ͨ�áXq*6ms(t98���դ(���X�?Sytbz��D�����/�6�����ɻ]K�5-Y�����@ֹ&9�e�k�o-��V���v�o^�v�J͚5݆p���n��$�i���\0\0 \0IDAT��ϨQ��l�fN�$�f͚Ѿ}{.\\������)\n\'%-��e��,�nm䩭<�1::��s�f�W�$����2e\n�$�r��<��ҥK�4�k+I��T��\r�`00m�4<�ٳg�c8@�z�D��@ (V�F#�\rޖF��\ZłC�i���d��e�3�K	{�zL2�T�����C�i�ۋ�hw����l��u�=Ks0҄�{�>@NZ�ǆ��5��V���$�KAR\\�Q��N�^�wK{�����t�ܙ+V�����n�S�N̞=[��\n�����t���2p�@z���ŋ݌�%K�мys>�$I�k�UU�={6Æ\r�K�.S�bE^x�-p�V�زe���\n��+�vk�t�4�D�~��t��]�w��a:w�LLL�VGEQ�;w.�{�&44�A���f�C�̟??K[:�N�~�iʗ/OLLݺuc������!I�S�NDFFҧO�u�F�N��3g#F�@�$ڷo��b�ĉ�iӆ�?�UU1(�B���ٱc\r6䩧�B�$.^�Ȋ+8uꔘG ���J�Ν��Q��AJ�k`s&aw��P,�.��ݰ�d�۝��4E���~8e}���9>�����2p�@\0�U����~�j�L=������[f͚��-[r�Ȭ�����D=\n�Kv��Js@\\�q�٥e�Jr�����\n�5$=�3%)׬˗/GQV�ZE�N�����[�nL�6��K��u�V�����|�\r�}����:M�4��-[��>}����?�ƍؽ{7����W�&11�ҥK3x�`�N\'u��a͚5t�҅�G��Q,�p|7���s�q�CQ��ӹs�x��Y�h�˗�ꨪ*{��eǎ�lْ����\0:u�ĬY��9s&���[ݒ��X�z5�\Z5b����T�\\�v��q��z�!V�^�3�<Â\0X�z5�7ofժU\0�_�^s�6m��ڵky�7�e����Y��֭\0���7nܠB�\nlݺ��ի-,�@Pl������ܺ�G��R��3<܇�:�4t��\n��$���p,���9.�Ê�B��ǳu^2>{���\0���FUUBCC���?�ݻ7�ϟ��p��;�еkWN�8�k��7nS�L�^�z=z���P�^�ʯ��J�ƍ�e����:�q�F$Ibٲe<��s���[�۷��K�2�|TU��_`���<��|��wȲL�F���o�С�W����wޡ[�nȲL�\nP�J�*N���9s���2n�8�{*��綩Z4Zr�*�����wZK�G�\n����D�\r$G��i]�#+W��y��������nyl6�{���^�b�p��m_�F��U�>>>���ٞ�n��(\n���ATTu��!66�q���KU�j��hSr���͛���?>>>X��,ъ]Ί��|�ƍ4i҄m۶i7��@�z��0a\0{��a�ܹ�-[��G�f{�E�>x� �g���ˋ}����qEWNHH�n�U�T`ݺu�\"n�\0u��ߤN�˒OQ������L�<�������M��hp�f�+��Y��8��F�I����bʹ�iT~\0�$�R9���y�\'���c޼y�����߿@{��k�.6m�ěo����7:��E���/?��3.��ߟ�Çc�X��ϏN�:��C\Z\ZJ�6m�!���!C����a�,X���/*T`޼y|��Y�l6�������O�G���	\r\reڴi:�����^O�^���-؃y�\'�Z��ђU��h=m���t���V���aI�3Q���d���_�����v��DEEq��Id�����O�J��С%K��rc��/�|�2C��b�hᔔ����N�N��d2q��9v����ٳ�ޢ8���r����@ǎILL�,���UU�}�Ţ�sժU�����ѣ�ڵ+[�֭[ӿ|}�րo۶-			\0,^��-o�ҥ��\0{yy1a�^y��Fc���`0P�bE\0Μ9úu��ٳ��&�|���O�F����ܹsٺu+��b2�0�ͨ�������G��a4\Z1�L̚5�ш����f-oF��h4@�R�(Q��v����n�b!鯿\n�	���t(V\\���*n�>��T��>��> O�P��6����p]�,c�Z������g�ҥ�X�����YVU___$IҞ%��ޔ(Q�ŋ���?c2�1b�}�ӧOgƌ8����׋K�á���[�V��Vͩ�Ԇ�z<�����,_����)���ؓ�Q�&�g	f�zJ�S�4Uh�E���oJA�/���ٰ��DDD���$)�7kk׮�g�a��nN��f#..���p�L�¡C�܎\n\nb߾}0u�TL&_�5C�A��a�Z���$%%�{�n~���z=���4mڔٳgkoD\n����?��nv�]�ոqc�̙ÓO>ɟ�	�ԩS�:Z,�/_Nxx8)))lذ��;2|�p�����ҥ	F�~�8s�\0͛7���?G�$-��/�̄	x���R�\n�Ν�n�}�ݺu#&&�ݮ�;�Nnܸ��+�8q\"U�Ta͚5�����?�h]�� \\�x�����?�Ǐ��������z���{�H���	\r\r�ƍȲL�2e		!$$�ҥKk�N��k׮����٬EV		�E��F����l2�۬Y���\\�ۅ͑�6�\\[�ʊ�>�:���<�x���T�Z�f͚1u�T�9�zF���0u�TΟ?O�6m��{>���t�ڕɓ\'#�2)))|��gt�҅��h�v;]�v�{��<��c�K6^x�*V�H�>}�8q\"�\"\"\"�ӉN�c�ܹ4nܘ޽{���j#TU�f���ѣ�����///֮]�eB����b�0q�Dl6O<�D��S���[�Z�t:*NM�E�L}%����[IZ��U*�H�¢E�����c\\\\AAA����M��e�٬Mw��f�n�c2���l���p��\rm�(�ш��7����l6�����!z�^�ᤤ����KBB:��ٌ��$>>��ӧ�5�~��Q�LE�z8�F#F�QB�������������$I��f��P(W[Z�V���`0�������ˋ��X�������p�)�Z��������E6\Z���z�պ�v;^^^����(\nF����d�z=���X�Vnܸ��y�UR��o???���ŋy�����/ٱce˖�Q�F�(QI��X,�+W�3g�Bdd$o��6��9-Z���ɓ\04k�L��u��e.\\�@�j�hܸ16�M�19x� �N�⡇*6�i�GB�ٰ;�w���*���]x�ɲ|���8��U Iz�W}?S�~{ٽ˼/�|.x��̙�6�ӱy���1			�ݻ�֭[h=\n���/i^}��}���!˒�sX+�5θ0�����9�����sڭhm������ݛ޽{�+m6gΜbQO�\Z�@�?�V+�64*11I��Y�&�j�\">>>ˊ�����^8\0T�XQs,^x�7��f��6t�`0��*k֬��Fc���[%6�����d/7#,�;$�·��y�wnF~�9�ٝ#�!e�ϗ1ݓ����z���p�ɜm�{WK�&�������9�M�ty�����[�*b��)�L\\A�a�X�3g�J���5kְg�fϞ��\\�s��i=�>>>Z��(�L&����XD�>�Vpop#���p[r��H�f�N�}�8p ���Z����>|x���[=oϞ=��!q��M�0A[A�v��\Z~|��ebcc�e��\"�\'s�i�]-Y�҃�䶑�4����@ ��N\'+V�U�VT�XI�����k׮<��DEEQ�n]l6u����ph�ʗ/����ȑ#R�D	����iKŊ�?>�kצ|��ܸq���hJ�.ͫ��J�:u�p(��$l�\\(���q8�8�Vm�9-�A��w��Ο?����C=��n�ȑ#\\�z���\'�\'&&r��RSS=^���ؑ��DGGs��1���9|���`Ljj*p�\r��_`08|�0			�>}\Z���3�<��n�m۶8:DLL\0\'N���ٳ\\�z�K�.q��I�9BLLqqq�8qB���crr2M�4aɒ%2i�$�r��A\\\\G�)����d\n�9�M���xrq��J�Iy8Nhe��=Orr2cƌAQ�w�N�R��_�>��ɬ\\��޽{�r�J�]����󉋋��O?EUU��j��ŋ<x����s��e������믿f���lڴ���d���ػw/���w�%�?�ٌ��Oʹ�Lp8-�?�7�\rU���%K�����ٹs\'={�$<<�ŋs��	m��n�o߾T�Z��}�fY�2))��ݻ0z�h�.]�k����ի����w�цlW�^�^�zi���Ш(\n]�v%!!��?��e˖���^�Lq̘1��vF���k�>|8.��Ǉ3f0v�XJ�(��O?ͥK�X�t)��=˗/\'((�#F��_���K`` 111<��S\0����^�\r\'�ݻ7�b߾}��R�;����,n�\'�//�᭦G-�@ d�������me���h4�t�҂}3�a���)x�k ��U�����+���Ϭ�y����\n�������]�<�v;�ӧ�\\%}�c�\'�pڴ�jO���o������c�Z����tx{{3a��ԩC�2e����			|��W�h�\"�7��w\r�e��e�R�fM6n�HDD׮]㫯��}��nk3.@Q�B���رcz�^[�7,,�F�\Z������N��T�R�ҿf����`���Q�%K�d��մj�J��cǀ��5UUE��ATT����������_ȲLhh(�*U����\r��Wع�%�H������lB�ӆg/Y��ul��O����\'N�����	��\nI�ظi3�V�f��E?�E�ǘ��N�m,I��ǰ;�Z�����0���6�?��s�;��d��055�w�}�.p��U ��BUU�}�]V�ZE�R��S��6<�`0P�dI�N��ju.�Y��S�vm#G�$,,��*c\'�g�N[�n͕+W������/��f�u��rM�<����f3:]���u�����W[���G�R��ҩS�q�Ӧ:;������+qE�n�����3�e� /��je��D0[�@ �Y�1yya��h�T;j֨A�Z5s<�`0�j�*>�o�����6�cƌX,\"\"\"�?>_~�%V����:�����i��G�v��c���ѣ�[���Tf̘��Q�hܸ1;v�l63p�@ƍG`` f���kײe��{�9�5kFjj*�W��dɒ�h�����Çٲeo��f���Ϝ8q­~�~�-���\Z}���A���i�4C�d21x�`-��^�g�ر�F&O�Lll�V�P�zuN�:ŏ?���;%%�iӦ��*���\\���;���k��U�����O�>T�R���x>��mu/���_|��!��*O�kK���iؠ~z�m=����¤u�q�>3��EJ�֠n�n�T�/���u�֡(\n����-[�Z�jѢE֬YC�\r=z4%J�`ѢE�зo_�|f��Y�f�v�Z^�u*U�Dpp0>� ~~~���{��z�/_Β%KX�`!!7{lƍ�$I|��\0t��E6\\�L$Ib��鄅���GQ�J\r\ZDhh(���dwܸq��z�7oN�\n�ر#k׮ $$�����f�\ZE����^(,_��e˖���3f%K��h42j�(�ׯ�Ν;�ZI�[��ޓn�vZ� ���So����3�ي�d���Z��|j9U�������r��e�N��W�����h6l�����(T�c~�1�m�6L&ׯ_����xyyQ�vm�_�NBBk׮e���\\�v���xz�������?�@�֭Q����k\Z!!!$\'\'��;�0f����QU���D�]�Fɒ%)S�[�l�&�o۶�ʕ+���FPPW�^e�����ۗ��D\Z4h����1�L4i҄u��Q�lY�>���g���Z�WEQ����d2ѠA֬Y�^�\'88�s��im\Z��ɵRP�ڵY�b?�0׮]#  \0I����gΜ�^��OTTK�.e����-[��W�2m�4�v�ʨQ�X�b���DGG�}�v�F#�=�!!!Z\\�Çg�6���S̜�#o\Z��C�r�п��&�f�\\�����B�-t옯��V�d�tla.)��yP�����T�^]�9�9}>Y\'�\r��=�gc��ג��7�M]�)�1��/�=O�!F����%��\0{^��6t���`�a�~�޽{���?9p�\0�w�O�>n�=����z mB�?��ìY��?>&�	UU9v��֭�V�IHH�`0p��%\"##�v�\Zqqq���駟�\r59z�(,`����۷��;w2i�$,AAAL�6�3f�a�HŊ��ԫW�3g�ə3g���N\'3f�ȱ����_N�>ͺu�v�f\\v�ڕ��HN�<�����fHrILLIII����4i҄�\'O�w�^jԨ�^�g͚5̜9��g���o��-�j��W��-�d���I�Q���,�Y4�do�|;�C�yBW�#�������Y��)TU�u�օ�|F�<ѰaC|}}��R�ڀ9iI�E�倸�i��a�&-��MB���ܦ�Z����s��)\"#OZ�}���r�*ԫW�^�zP�T�l��?>�L&\0����|��F��Q�dI���}޷o���:�Z�b�֭���h��\\C�\\��$	�ݎ,������㣕�W�^���onA����@�2e�Z�Ԯ]���������t�ؑm۶1v�X^~�e�Vk#���x{{��燯�/���@��3g�ts2S�lY|||x�G��/�	�,���???Z�lI�ʕ݌aW����y��7�����ߟ޽{S�|yRRR7n���*��ެ[����\0�\Z��-zBQjת�K/��l�24���t��_?_�=|���S��N\'�+W\n�G���o3oGV�ƜmO~bJ��;��8{�,�*��^�t�ܑ�%\n�޹}s��{j&[1\'{�ע �@�6FI�hd�{.nK�f�o�%�V��{E����%�exA�F��3�\"�z=�Z�dæM4y�QRRR��8B��mi��1�o/[�h����u�7o�;w�\r�R��7of����|��K��d��N\';v�M�69��СC������6�BUU~�����-o�Z�\0HHH@�$._��6��d��nW�V���d|||<\Za<�\0�-�����e�ѣG3}��l�\Z���\'O���g�%>>�Ν;3l�0:w��ȑ#�溜<y���mV�Z�ػw/�N���/��\'�`�����у�;r��)�~�iʕ+G�v퀴���񨪚�����\r�عkm�<ɩS��r�\n=�wc��0�����8-��G���u�9�G�@\'��ǿ��O5��=(a��Z�E:�d|g>ƓFXX�w�&,,,�s�ո/W�?��C�\Z�W��k�r��p������V���Hr6�����I+�Z�*�@P�q8t����u�`0\Z�[��V+%K��Y�&8�N�FH�v�7n|�>>>L�6��u�R�zu\0J�(�^�׆�����/�Я_?������O<���\Z9���h�\"�v;V����_K�R��[�DÆ\r�[�.Æ\r�^�zl۶�g�}�ٜ�����e����*Acǎ��׹sg��!^Ųe����\"::���`�0T�V���z�Ν;s���0]�`�����ѣ�9s&&L`��ќ;w��~��D�.]���A����6	���f�1t��\\��:vl����׬	ժU%�z�k��g;S�\\� ��M)IH��;�S��\nU��;38��̿��@��s5�%IbРAX,�̙C�r�x�\"����X��I�&1z�h\Z5j��9v���аaC�{�9&L����qqq�?���Pv����������߿�VI�hժ�Z�BUU|||�ݻ7-[�����4mڔ��z��c�2x�`Ο?���7\r6d�|���$\'\'�t�R�?�<���cڴi|���lْ)S�p��e�ƍ�`0 I%K�����n�\\�z �T�d�����@p\'�S�\0���Y�r�~~\\�r�m۶S�zuʗ/��8///���Kǎq8lܸ�\Z5jhC�2��ݽ{7����7UU���4k��ͨ�x�,��t:&N��t��O0\Z��܏O>���7j�֬YäI��2e\n������[��^��`�X�^OLL�\'O��1~�x�l�,3k֬,=6��~��7@ڪX۶m#))	����{�Wذa_~�%�=��H�\0\0 \0IDATz��O>�D��رc�ׯf����{�A�1r�H�������?~<3g���o��]�v\\I��Qcذa�: �$�w�?lذ��+r��\"��V��4n�ȭN����B���>�L!9 E��gٗl����D�K��fm��P=ooo~�a�����_4$..�U�V��жm[6m���͛�k��ɓ�����Hf���/�w���K�r�x�嗩_�>����������c�Ѻuk���ˇ~�W_}ŉ\'1b���ڵky�������e˖�={�ٳgs��Aڵk��ŋy��QU�-��]�~�@��]�\'���Μ�iU��Ҋ�V^��M���A�HMM����ш�l�ѐ���l۶\rH[��tb4\Z�r�6�駟�ʕ+X,�?�b3>|���T\0����r�\nqqqH�Ā2d���.]����Ǳ����vJ�*ŕ+W�!ZN��1c�0n�8�v;��ͱ�:u*�,����e�ɜ9s��O�p�Vv��I�jոr�\n��������\\�r��`LMM�n���(X�V���+���t:���r���7�gϞ����áͅ���b����t:l6�[�3:z˕�����lƠ�c�Zq:l6�6��0�����\00�	�%!5\Z)ChEu�\0Y�[\\�r��q��	G�����T��~�-��W_}�O?����d�������^�:!!!�w���\'I��C��v;�[��G����p��i-N	����\Z\Z���Dݺu�:�=��cǺ�;**2/�t;6���o�ѣ����W��d]o+/iB+s�@ \\FM�\Z5�b�g��v(]�d����=�Z���t:5�#���r>\\e�x����2O��<d>W�󻜓�F�k�{����2�ϥ�\Z����tOѭ��զ2�/㼊�uϘ��tf�#�V>Ou�T��T)�>/�\"$$�^={��e��8����S��$t�o����f�Ŋ�q(6�*���}��y�4h�|�	�v�҆V�ZH[����O�ۺuk��}�^��ԩS	\n\nb�ܹ�mۖ	& I_}����:=z��R�JQ�����\n*�$IT�ZF��{�G�\n����r�ʘL&�F���Ahh(:��ɓ\'k=d�|�\r�W��bŊ@ڊuaaa�mۖ)S���Ci�=v�X�LZ��Q�����iIg/ĩ��]�&�2�9�Z���U��MQ�q��阿pG�����Y���r�#҆�g���<�T;Z?�*_�GA�Q%1]>߰�n�T[<{N�DL�Yj�oG����y�x��I�3	=㾼h䷜9��$��“��G���[�Zz�Ĭ~]�o%�n���w-\\-��@ d��tҶ͓�/_�jժ���PU�\'�h��l���5˗�qG\"Yη�q������u��j�礑۾��y���n��9��8��.�z�~�٦�kk�Y-9��ͨ��-��w�w��@ o�dɒ�h�<˜����zyyѲ���t�\"P�BII!nժ�w|���v�v�T�˴�m{��Qʴ/s[(yLs;VZ���@��a&���ߢ��{��^w4$a�����zՓ������	��i�D �\"EUUT��h�!�����-w��c1�һ9%R&�œ���E��V�Z��@ E�Ӊ3&��t\'��ɣ�wK�d1��g��׸�y�#��!$����I��p>yu>$a���,�,�@ �	%%���kECE�>sp���������@ ��7:���	UvnAk�3��K���t�ܪ���@ ��ޠ8ئwږϜ�����{YK A���Xϝ�T�z�;=����s�Z�#�@��M��\0�lIf���[�mj����0���nykU�E�v�\0p1�s6ΡE��|�e����E[q4�C�L�ҕ����3��ԮX�v�CB�4�-���a6T|��ʕ��A��0L/�m�,�$k���Y�m1�A�tl��N���ح��c>�A�<�H�4�K�8q��[�%?��H��۴`�g\Z\"����X�W �\"E2���p���Z�nE�\n��a����6#��%_Ĺ#��[ͩT����tnҙoN`��u���`sظ\Z{�nͻҿ�+9�G�?F��j|��{��{�	}�gѿ��C&�\'\0�N�a��Cu*��R�%\Zڈ��I�$�d���zs&\0G���F��b�\nħ$��c�����Y�cbxtx�^�6f������\0�G�7��`�j�1w�<�����kQ<:�	%�J�bMeᖅ,������\\\"�����M�-GCJ����[pZz��qYj�2g��4��&<�@P\\(ʷ����:*���Jj*I����ER��a��U�&����f��#x�Uo�����}�r\nzYϡi�����1wz��j��	-�#�}���;����\0L]�\r%�Jrp�~��YC����J�W�\\6�M�����|�2�`ω=������ڭ����g�ph#�|�M�\\�)�ME�u�~�������G��\rjW���?c�L��Ea[i�j�U�_!<b-�5g�_˹s��%1\\�q�j�Tgױ]<V�1���NBJ��_����T{�:����z�jL^�%s6�a������\n��--YBEFEBER��j����w�hq�����E�$E!  �@\rFA�v@L&���4e��Ȝ�S�OaЧA�\\�\n^/�E��%߬�3��W���hb�޵Z�\0L_�Wb����_jiN�G��:�Q�&f�����f�_�g\r�}�MF�~���K1��`��ͨ��N��@�0�X�ke�c���IY5�\\��ͺ�ؘ�c��r�\r,�^g`Ix\0+w��l4S5�*����0i�D\\�ѫW�h�b������\'��]��=\r�{R����a	]g��v����Z�)-�@ ��INN&  \0�n��P��%Kb2�HNN�o�u����t��Cge���6���,��F6�Cs��R�=�m^k�*%�Jh=���UU0�\r�}��,����s�ݲs�Ϧפ8y)���n��EQ0\Z��߷�������[R�˵9���^���\n���;Ӝ���ֻ��\Z�V�Z\r�s���V�K*F��5��Pʿ$/�|�1=ߥ�M��J�ۓ�������\\�ܞy=Nh	�}�$I8�V+���$\'\'c�ZE�n	ooo��(�!}�͆��Q�4(�z9g�����Ǟ����O�\'��:=v�M�?s�L��y��Xw-gV-���!͎���j�`��� >Z�?����iǄ�=�����Ǯ�{�h�\'�?��N�-C�\\���7Y�{\r���ո+\rF������iǘ��¥�F�A�q�O�����#1�\r��V|L>�}�ETU��&��0Oa�����$�L�z^���H+�Z�@p��r<�f3��ޢA�FUU���nh�Fc�9�$�h�GH��hf��i��\n���n���Ĵ5ә��t�}ڝQ]Gi��ga���0\'�?ſg��t,6�[��R��_gަ�\0��:t��c�kNF��_�˨�jMeس�\0��x/�F߬��wC��������,�o\\�k>\\ŀo6f	�I�<��y\0��<�i��k�-6�tH���u����>�����1��y�[f�{�Q��[�Zz��?�Iv���@ \\=!����1r=�=i���?�M�I}������\0<}�ĔD�T����?����\'��铍�u�o�=q�U�p5�*�$S-�Z�j��8x:mH���IJM�q�FY�5�ݔ�6�Lbj\"�_$)%�ɯ~@�\Z�X\Z��T[*;\"v`�Zi�`K\0�l�ͮ����F�>��C�аj�,�_�k���q��C\\�~�߶�`�˟Т^������N]>�bwЦaڐ�%ۗ�v�zv��cQ�ضo?��WD�M��n�\'�u�]�qGv�ETy�v7h���\"�^�@ ��e9׷�b,Aa��j��\\�_��ȜI�����y꽧0?�C���}�j|L>Y�ڜv�ElC�d �L%~3�2�ePU���\"p8�u�-������c{�v��Lؘ0}���޼?m���/����Ϙ^cy�nTU�?O�D��0*��D�o SCH���r9��=�\\�+�ӻ?k����7yy�O�?�:)�{�G튵QU����S���Πzx����R5���g����:�P�_\r���2��de=IM��p�ٓ���~�R��ُ��ըH��xJZ9k�\nT.��k�Ч�#�i\"\n��T�ܠN��|�����fN��p@�f3f����k��.��d�m�W�$N�����;�q�����ث�vs\"b��M����d�+����kQ��/���7[���tp��%|M����<PT��7.�g����_�P�S�2�?!%�K1)P�R���8A�q�x��� I���\\�q�2�e(�W�:�_Ҽ����^�G��->�`;z�\'���5S�R6}\'���\'�c����IK�#�L&6�M4��ȑ$	�ɔ�c�r�ˈ�������?�i��{z A��ٞG\'�\\�r��.�:=�JW�O�dʗ,�Q#�re���퇿wm��$I�lPY���	����+�\"e�3��y����q3-}�1A��ɿ�0?D�ҖP˘�Sڽ���q��1�@ ܋���^������*zAEz-���j�\n�z-�,����w�=�������7�YsZn���JS�4�Yʔ澲ֽ�%���\"���q�����^��j��p8D��Аe�^��d�`0h�e^)�ex���)Ͱ��=��ٓ���{XK�qʈJV7\'/i���Kh�&����兗��h�����2��{��/��o�n;_-�$���\'-�[ ��^��ī�G��k��o\'Mh�&��0QRSI��o�[��!�Uع��O���f�t;��VN�	�C ��E6���!�3��	;� ����ہ�/\n-�@ w�ݎ��9Lի����}���$�܂��Kbd[����\"A�ڔ�p>y�@��\\�Ȟ�b5��s^Ҋ��z�Z�6����FBr*�,\ZB <��9P��jɐ /���������V���[��H����<���$�L�u�,%|D��JJ\n�k���IUq:�(������J||��/�\\�~=_��N\'6�-�<7n�@UU�4�͆���׹�]��1=&&&_:v���~�_,ҝ�%������R���ʝ�s�j,)[�T1^K �	�CM[V22�\Zv���3doo:t(8U��ԩ�<��$!I+V���7�� 1���d����+���rv��������{:��fC�$��´����,E��2~�W<�<xp�zy�q��ToO��,�c&�B{[#��Ւ=y,��9-WO\'��V����ֻ}co�ǩױ9�AA�j��o�%v>K�6�����;�/_.P͑#G2j�(���h����\0�ݻ��k���/�w�^�}�]�l��K/�ą8t�d���\0Ztw�����A�1j�(dY���G�$�Ν�9;`��Ѩ��ȑ#8p ���g�Сlذ���$&N�Ȑ!C���_�\'�^��ٳ0`\0s��AQƎ˫��ʆ\r���aȐ!0���H�F�v|tt4���gժU��f�=ʀ6l����c�����\"I�1�$1p���w��QT{����L2��L+wsy���Rא\\�Px���\"��*��,reKK�j�\"�R�pk/����\rY`�҈�@ܬ&j <T^>!	a�L&�g�Hf2	��L2$~j`����=ݧO�O�����ZΝ;�֭[Y�l6l��~��\\�p�w�}7o���<��/����_�J\'�&>7\"�P��f|�\']�U�u�����أ�l�����m>�4Y4w\ZGO}�;������A���w�ŭdO�%��fH�\"ܜ�l�n�-�������yyy�ٳ���l>��sl6���l߾�Y�f����}����ٳY�|9\'N�����5W�Z����X�����p�<���7����f�q��I\\./��S�LaΜ9m��4Y�n�7on{\n��555lڴ��^z	���#�<BZZ\Z\r\r\r���S]]��n\'??���<�m�6�l���]�x�嗩��`���>�W^y���v������t�uF�ɡC�X�~}����/!!˲ظq#\0O=���n�����������a<avz:O�:V�a��V��|�YK����� LJŤ�Qr����XL� �L(�P-����9s�y��QPP�a���3c�v����իq�\\8\ny��ijj��ŋ���W��1~�x�?��o��eY��n\0>��#{�1�Rh�q:�|����w����w��x�+���x�^����fǎ466RRR��Çy���:�477�����~��GJJJ\08{�,.������۟���\Zh{�c��)))a�ڵ�Z�ʿqqq���\\�$�&��(ݖ�4JYt,KӠ��O�4����=i�ѡN� �e��f�jl�nϞk�}��/^�ʕ+Y�b�����Ɋ+7n\\�t��s�2y�d�y������� 77�#Ftz�q��qƍ��O?M]]���*S�La���m�l6z�!rrr��ˣ���41͎vf�w��֩p�\\dff����̙3IHH`Æ\rL�>���l�2fΜ�g#�֋/�Hff&��ɸ�nJJJHOO\'++���$X�f\r���8��Nrrr�:u*J)<����,������=���ҥKy���q8�~GL��0�j����׳�%-�:��e�� _�B�5-XK~8�D��4ɣn��_A�������k�S��>����d�Z����SPP�_\'�A���뿡��[��S�p5��u]���{9p�@�:��Co~G$<�&3S�.���\\�L[o1���2���k##�uD+�:� � ڲ�\Z\Z�%$\\���L�ԩS;��MtW#��`�2���Z\'��f�u��8p����>��wD�L�ύ����|��#� 3@]�R���[=O>�$���c��Ač��S�k�?F@��x��r�4��4�h��%� �c��vKt�C���SZZ��Ç���oٻw/\r\r\r\0�۷���\"\0���K��ʀ�ѣv���Ik�ƍ������b��9u�\0�~�)\0��_KF����F[��#Z�&��P|itJ�ݤ]�O��h	� �0�\\��З,YBRR�O��w?���a�ʕ�8q��\'2�|���HIIaƌ,Z��|�y��u\Z�v��٤��SVV���a�Νx�^Z[[�ꫯ�0a���\';;[����F_��O�����i�\"M�AAP��ayyQ�?~<cǎ���ڟf�۱,���v������ٿ?k֬i��`۶m477����)_��O�W�f���TUUQUU�{ｇ���瞓��\\5����>k=��p��C�ͨ%� �@���j�O#Z;v�cǎ�����F}}=���\'O����������fȐ!h�q8<��,\\��?�0�~���SUUEqq16����<-Zĺu��d�O��e-T��X�!�c��4���X(�߾|�vف����AAX,om-Fbb�$SSS�x<�����bΜ9TWW�v�Z�N\'�?���bΜ9Cee%�6m�O>�0�}�Y���ѣQJ1t�PL��\'�\0 11��\'RYYɹs�(..�	E�1\n�R��i�]_(?�?��Z�����2A�=�ӣ�:�N���˔��ȧFKFX׳�%Q� � ���ٰG1�\0HII!--Ϳ���DRR�9##��}̘1�3�Y�f]��t:���`ԨQ\0L�4	�����\"��5E+��*�ߣ�W�\'{�7��S������S��h]��$�A��jl�������I՚��|y\Zq#����FW��r��y�D�y|��U�3�C�X�/��Uj\0���PC����9�}������_���)�\Z�z-9�B7EO?$�	)I$�>\"*e�j����(�}�W����4f����O�U�3�Ψ��!�_��(���{-�Sx���1���N�c%v���_�L�Є��\0��9�o�u�}���KQ	����i��\'�U���ł�����z_�*E��B�[�0��	��{ڋ}�\\b�-��v�Ӑr&�WK�ύ����$���Z���P)ŕ���oX��r�a\r\0���7���[�a{D-��u����׷�\'1vS�v�3m6����p{Z�_�h��^K�.ܕ��O\0\0�IDATD��r`���=e�9��b��mdOBZ[i9{�]wE��X�-�����s�Ҹ�`�M|n���4���=T��C��DK��P���{}9ʔ�C�ŵm7p��W<�EtsTJq����7��l�!�`��������>�g5��.�g�!��Ћz�f�9���lde�n�8�\0H\Z�+\\-?�wf��:7m�����`԰��kF�	�E�}9��G���$���=�����*A���8�7�>�|.�_�q9�B����៶�8�������O�f,��?E��jj��}oj¨��e������)Ƞ\r=t[ ��\'�j=��]$�\'�\'Z]�`�zy��i��[�����i0�B�����\"�l�~��!eO�6��ة����A�S_�(���Ȫʸ8n���#��P�HFƏ����I�c	qI�k�j5���#�����٭NV;->�oi�\\6�u��\"Z��\0��V�����M��n�2�5ڭQ���S��D>����\rY�<�^�^�݆�0��	A˞�Ӌ�t貇��6\"�a%eO���z����e�_1涙T�{�S?���Z/\'aPa0�9��IM��?`(�c`��ʘ��cj��8(�\'�`�;����\"j_�X2D�\rq�~�~�G.��hw�u���O<8���GP�?�x~�V�������`�0#>ϙ2ܥk�Q�ji���q���\0����]´�K�`b�\rM�y������𕜅m\0\0\0\0IEND�B`�'),(19,43,0,'demo-parisODS.png','image/png','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0 \0\0,\0\0\0;-�:\0\0\0sRGB\0���\0\0\0bKGD\0�\0�\0�����\0\0\0	pHYs\0\0\0\0\0��\0\0\0tIME��vN�\0\0\0tEXtComment\0Created with GIMPW�\0\0 \0IDATx��I�mٙ��[�^�;�m޽���2󥤔T%�T*ȥ�0��+�#@0fFf `�0�&pv\0�rQv�m	���e*�e�{���n����187_f�\n���A��g����{5�����������Q��od���O��wD:��1BJT���&ۃ�R	�>D��ۣ(������g�*D!�!\"D���B\\	!���]JF���}��B�H�\'\"�Rc�eK� ���C@���\"�@��c ����/$	�O�D����!Z���!1no���~����Q e$� Fb�Hy}P�x���G*�P���B�D\\�1\"�k_���3#���������F�]e������(��\Z-;����p! �w�����i�!l�}J��֤Y����\n�1�p> ����-BH$�H������\Z!J*��H)Z�\'��s��q����E�S��gk#!F!�>%����\'=�\'�J��6�H�Nd�7u�\"�@�@���C�*����rC��T\"b$\n���D\nIT[�\ZO�H���Z�����ö\"Jn�$^W��X��\n��V�l���J$D!I��g��t�9�� ��d��S5�A/���9Y�&\n���	-�$\'u-s[#TB��D������@��ˆ�;}Dnx~2�^�\"�%FP*a <�O\Z�5\n:RR��	M�jt>��c��!C���D�����4�\"x��`����1P����#X:�҆���֍	�2a��rt��DV�`:�1��`o�cӬp:#4� �`%B��b�F��	�Y:O���� hl$�+�*:�@�f�-q�\0�A���y�N1�0��ZK<�N�>�DIZ\'P�c�@6E��U���[=#�\"D�^����EL�l-.�Hu���t~��GL�	��$ZB D({D�65�c���$�#�Z-!B��j!H������h��R\nh��s�4��󶋤�$DIge���D���s/5�:B� �VK�]5*�j;ǝ�xPJ�\'����G+$Ql�3�AI��v\r�։�\r��&�W��u�c��:���O���\"��A�X�\\h%i��\'	��_�Ās!>�Y��:j��[}$���M1�q��H!��m���\'�O�M\"qQ�����k=�\"Q��v�UR�خ1|�v!?��?��W�\"#$æ�?G�����/۹]������(>�­����m��۞2�~����x\r0���g^-��(P\"����2�iy�����<���I�Rn�#ZF<��wo�и�Rib�/�3*S�����_�^����\"�l@�������U�V�$���~z�?e���I�`��Rő���Y0�z�\n���c�8Ъ#����\"J8��ؐD��DG�������a��$�k[r���9Y*�6bT��:�.�i�ow�� �K\Zۡ�>�5��G�Xf�{�#.�3��è%E��I�����st>@�\ZG�u���t� ����_�d|ī~�;��*+�m(���	Qn��+NN;N�[ƻ���\0�#hI���4J\n�֑\'-�m����\0A�{*?�J<imd\rȜh7�L��\"�z����%j�8A�s��и�Zn�̡shm�\"Cұ�$=�\"px=D�-\r!zB���Ï\"O>\n�X�<�x/>�D�N~���=\Z\'02���h.?`�i�F���x�������Z\n����k��S\Z�����o��<��y��{��aJ\nU�o?�����h��RϫY��A�V\Z>h��HB�����B페��t��t�Za�afK=�>�	��_�+��_��v�\r�D\'4M�t=E�9�� �>18 �UB�fh)�\0�\Z���X�O�Ň��=������C����\"�9����³���p��FyG�HTip>�8A/Z�Sz�b4��:�H�H�\"v�P�UdU	.�64~|R\Z6�o���;�;��)�$�<�d3�Ҵ��(�p5Ri��&w��p{w����q|��;��g��z���ٵ�*U�k�*顺�V��r��>�����\Z#*V����y���A�rF�cص��y��1�8B�H�[T��3���*:ڑ�]f��A02�N�J\"�k.fs\\��G�J��F]E���EB�-��C��a?���OȚ~l���0_V�N��65�{C��RGKڮQ��v9E^�l;d�Ʉ��d�#�w{H���\',�s��A$%Y\\Q�4�\r�mHz{�Y�s�2Kɝ�^~��iZLZ��+꾤H<�Z��>N�qZ�W�L�\\�sj]P��n�@rcȋ�M��\0t\r��6}C�#�����N&l��T�Lx�4��Ѷ)���<|�m���h���MeQ���)�]!A�����L9��ȥ�([�J�BȭA�G�$�.�����B�UI�k�����I���{d��|� 4)Zd4d\n�LjJnmX-��e!3��$	[�\"��\rN4�<�u%mw��%���vA.4:Q,TJUu(mx��ϡ�{8��uS�&M��;%4m��H|t����$tU��\"���cWs�O�p~����pw����{?a�RD|&H�i�\'�%�Ǐ�X�B�(G/8���}ŭ۷x|����\Z�B^�� #�ܾI�\n�����jK��魡ӟ��uX���ӆ <AX���G^}��LR�n|���+x��70Jqcg�*2�Rtu�6	R+��(� ��02G\nI����l��!�ڂ��b�\'���O���B�峐��3@|����$�@\ZM���G��������\Z��&����z��$OP�h>\n�Ҏ��x�՗1Dd�Aj������n����5|�ڿHY���Ѡ�Z�nkܥ��=XG�A&��`QGv\n�e�0��PՌ���,p�\r2QH�q�c�:�I�ڐ��u�����y-�Y��5]zȠz�\"(-�}�p��\nt��ٵ\\����k�yw�\'�i�#`z����A�H���ay��O-������,��=ND�R3�N���W)�IE�)R�8�X�	����K���F2��� ZG�\r�|�p2��Sx_!�H�i�R{F�+�>ä�Id\Z�JG���)�Ȋ��C,.�!��xPc�c��C���z1��gtWK�O���9�{�����ڰ\rL$\n-:�L�y���!�=���֋%BG��@K�\n����]\rM�M#�o�*�E%�1�\"��BH�O\'gO({7�� ���T��jk���V.��j�I+Ί�_����e\r]I�l[#U$8���/g�z�o��\"�(<�58�c�*R��s�H��� ��:x���W[/��Q����a�3����o~�_j������6�d�u縺z��b�\\09�=���Oyxz������Aٛ,�3�\r�T��S|H�kaH�-y��R��͚�����{B\"ݚUz�;����x��N>|�/�����U��;X/�! � /2��!�c��i�INj,�m�,GΆ��XJ������`y�pPpp�O�Xq�欃 [ol	x�Ƀ`��K�d_��f)g��ޚ����*J��bvKϋ�fOw�D�����)4NH�.��佄����h���l!���q��m��}�-�d�L�vJ��1���ƿ��������?�,S~��gN~�A��;����g�{��q�p�[�`+\n�p>�\Z��8�_��������g��|���)[��.������OW͸���n2i$G�-��DK��ℏ�}�n�.gܞpG�Cd�h��2vvQB\"/ϙu}|T(��i���#���sjNd������f�⠖�N�O�p�9u�YO�������[��5~���L���/��G����3~��1/�<f,Ι�#�ь�b�N(��r�z���+��G��%z�Sd_��h¼����wY_�������+T�O�6�8#�\r��_����$ـ��Ƽ��8{���vc���\\�l���c�����\\6�!/�/H���ң���������K����\\�4|�������Ϟ��J���\r�SKzC�^F��z��\nA/�dlhWK�*��=������ާ]{���1+n;�Y\r�+��d�(����	�~���M�&MU#LN�,�bƱ����!�\nѶt>�m�;��)����?�=�-Uu���yٱ?�q�$���E�\n��\'��?�W��]#َ��t6�F\n�N���Ç�I��/r�ګ��h�]ut����Մy��ջ���!��CJ��xj�bd�R��h��#�=Z_��.Z�L��W����&����/�,BY�%C)�4��z@FD���Q{(�����	!gt�C\'�u\'�2b~\'6���n��\"������f��\\@( 3	�|t����J���d�0�ye?�s0sw������o���7����^F�ܠ��\"y�G�B���#�D���o>	B �F*�m-}ߡ�C��\"ӟ���##�8�S�]��u�2Bq#ky^����$AFn�j�F����F�\r2���?|��|���քۻ��7�j:�4:���>jvJHD`���I(��L$\"Ѵ�\"3��^���Ғ\Z�I\r\"B�0����3H�>��5iQ@=�@������}&�!f�qT ��1��ZS&l�7%�ڰׇK9�H5Ĉ7L�!�t.�M�8�x�Z���\"��y��\\�!����kC�O��?6�ϺHE��_$���l����]ď�6H��g��3�(�b������EO��\"�KЩ�\ZB�*-���Q�G�>��N��\0ݚ��1R\n�����N��(BB�[\nH���m��щ@*�ҞAOg/�K�yF̗\\N`o&Q�!3˰ӄ�BdlR���.���,��[�2�0<����AJT\\#\\��\Z%-WǏy��)N��7{��,�d���lۖ�E\0E�����$!^��;\r������=1H�`I��x+�e|\rI��St��_�o�]�˅\\����0��6���~;��!�]l�*��t(WLȖ+�b�Fu�<�F����p����Hf)8�RLt��!�6\r��ղ��I�W��ǯ�W�G�S�j���������C$|��k�.��C��>`V|��.?�$�iK�u�0�y����)߉�/�\n�r�� #eŗo@a,�^��i��nE2η�+~���e����a�����m�JJb���	 ȃ�n��\r\n�&�pH��GI��qœ?���Ϝ�M�/Z�\n�\"E�8\Z�(	M���#���Ps���E�=�ղO���Ȟ�lX�,�.�e����\r�u�;0Z�\"�Z&�A��p�9(#��dNS����1���\\�xDw�!;`^�A!���c����������F�%!���+��5��72�����\r��	ä���1�=#U��������	��gޠ(r������8��[=z��I󝧴U�i��\"J��8e0:`��8�V�R/�X�k��R�l]�M$IⱳKVs��⊑<b��b��0���ϏYgp<��R��ن���-{w\n��O�b�i퐕�S9�[����n����� �U��/_���������T���^��t�k�!w6\r&�r��!~�v��q���M�?a�q|��P�zD�n��w��%>ɱQ�FK���+���6���>�蛈�Y֑�����1��ސ�N������撳�/4��\r����>p�j�}N�\r_�s�[r�·$���\r�J\"���;x�G�5�Ք�X��z�D�=�z�$����i��b��~��D]S�}D^S�����{�&�f�s�\\�:U��c�j:��\n	��f|���)	1Q���;.�.�>�p�i�����d� �u�Ll�{a������t�3�ӧSn˚�+�a��s�@��#�ί�h47{%ZDS�[	����c<�8�=�xE�k��1�)�ĸ�RF:��yd���0���S���m�x��f�jS�P�h��\\�U%�Ji}u\r���;�Y�0[H\n�!e�c�{���u� �6���%��Q�M�#I�.�I%U�ɲ�~�O:9@�K&i��l�BԨ�!�[瘼&�>�ކ��cXn�j} :���k����Ҵ�vn�V\'��R����p����ϐ\"�%�#ٰ��\ZL�oa�V$ ���5F��i�12Å� �)>Z��Fe	MШ<{I-����!Ƹ�_��>p�Ht�\'�nB ��hg� �%����jI�#�����!;i��>ۧ�W���c���i��q$�+���~o�(�HD��b��3,pM�TWw�AF�)#�}*�csv�p��?���H�h@��I��q$��b�u.�;C;〇��u�b͕l��;g���b�C�HL��oO9��Ln=`�:� �i9�\'\\���-���k\Zt�I=S&�Ò+5�vn٣*��\\��θ�4���6g�����!���l���q�l���u��4?�g��)YvLWKt���͕�<��ŚNDzkO�F�)}u�0�%��[���ȤUh�I��Q�Cu-A����G��\"x�j��!�fI��U*(�z�Q� �_k�*P�%�$�������}�kY��P���)Y�Y���A�b�C���{l6�x�wHC�;?y��z�A7\"��H���jT��Ram�8��W$���p�и��\\RA�ė��������K6�\Z!m���\r�]A���e��\Z�=Ql�a�^�ㄋ�U2�����~�*�L�����@%U�h�$G�JO4���t!Ҧ�I�@�`�8)	B!%4Aa�B5���p���-C��K��nCÉ�v\rJi����`���7.\nu��z���&&psXR�}&r�n\"8}2�0iƏ�kN�}�pgHV�����}�x�7�)�����9⋿��s��W�U��,��Hp�Y6�%����;O�\r4M�W�IR�T����<}�p����*����\Z�M�+eH��\nϽ#�b)xm�2�	��ȉ��#c��]��$%M\"źe�5FI�0�\"�l�z���������$yƲ	��&A\'��L�+Yل�㓷��|��~Ad�M3�a�g�\'m{,ju�n�^y��ܿ}@�O�����=���������Jy�l�;)�l;�\r?X ,��`҈��Qj�� \0�#^�+�:$�E��P2]{�\Z:Qڲ�+���lJ6���!ǾO�**e>���2=@�9\\��W�0��Q\'}�o��b�_X��!a�44jCt���]�_+��y�����l��;�.�H�����u�{�=��c:��/�٤��ga�\r����UX!I̘_��h�5��U^�{�f�����������Q)�t\ZEJj�XY�z�rc��t\r��{��&�JV/j�e��� ��S1%��p��q(*�n��w�\r��Ѣż�!��p��;G��8~{���>:\'�}�������G��\r�wHe��ws��Kzu���j���}�sYO��r@b4��)��u)��	��\0eX��qސ�+�DrS��pi-yq�b=�%QkV����g�����בu?0Bp\'�xI��dYZqV����������Dd5�޾M�������\r+��;�ȝ�Q��T\rm��4O���-�{��ci,���\r9m�.ra#S%�;h�\"��M��+�ZD�+�$R�W��M��d,\ZžX��E����%�ȷNI4״�%���/�K\rI��H�Q\Z޼Q3w��\\�Zx�Ip�@�5�����-}$�T�:O��X��;�)��At�\\@��]daƔI���Ɯ\"::_ҕ�AJ#蕊MQfu��<�\'�V�+Ů��\"*ū}�(�P�B�9E�^��I)_\Z�6\Z:ߢe�T9��e��	]h����Ө�6�%�g�#��L����H%_\Z�T�	�)Dn�U��ST����yJ2K�UGR�tˊ$�L]¡��K��ٝ�3�Y����r�7������\nɽ_d�\\�z|�]���{L��T�<�H�(��Qȴ�M.���|xHm\r.d�	m����,8T�8�(	}� �ST���x�\'/>��/t�>��<\\��\"	��`�%i�Ǉ�~J��_\0�]��+��mfUƮ�1�}���-��tvM\0v��s��D�quÎi�]��=���3>��zNp-OO��������\'��I��qr�ϙ��6ۄ_g��S��gJb,S��N�>N�Rprd�ɯ�UIV�cd��XtC\nX�e$R �N�dD��v�N�FR�4�L&�:���Ƭ�	.\ZB���\r�7L���j�0\0e�J�Lˢ�a6v�\0���K��C�T=��>����p��uH� �\ZD�Ũ��̉McCz���9:���@3\r\0\0 \0IDAT+1^�IAX�N�HP)�\0��t�yf1�6,�A��^X2O-e��&ӊAu�\\��=��ǌ�\nm=[C�-.l���v�M�3K{D�l���5+��*%K**���\Z�x�@Dd��\'5]#hr�m@�H0Sh\r[m��kI�@y����d�$��uۄ����ْj~E/D�b|i�D[K0�L���k �>F�z�y#�u�W��b�CԚA��EAh�3��#��3�\\<|�0]px�c$Z�rpį����;��m�=\"z�:��W�f�������	�V\\c��D�ʒ^�Đ��)�.{<��y~1�ͯ|���=n�70��e�R3*���X�]�ޡg�RvR�f	\"F^�Z*%�m���Ud-5�e��x�Ґ��̾�_p���x�6��_��{�W�1�� �[�r�A(4�wD���(v��y�ŋ��cA�YV�+b�#\0��YJ�Hҽ�����q���r�oV������%�m#�.��jѐ�s�4g2]3�ﳩ;F����!���y���\"2�#j�J�y5�&����~�>>��W�v����,6��\Z���qUs�J�Ҳ!Ҵ5Ntt�dQ\rx=MX_,�y����UW��9{��̰w0���O���]VӧdY�2;�{�Q�[����֎g#�9�>+_b�;l�B��xI�������pg�q������b��c���%�����s9~mj˲np͔��+�����묟|�䑡�s�j�T�o?9g�\n�r���9��\r��e���9���U%gE�k\Z=�!���e���T$�GR���~��|�����gz��y�bzQP%�����7p�5M��4\r}�����V��!��<z�.�ڀ�TԻ�w�5�c�����Ք.kh{k|*qJ���vÉh�s����g�����,�A���S�yE�<�f�ӑ@--~���S;��RN�%o<&O�!�y\"��R���sBϯ\"Y��WsLi襖����\ZK���W��u�,\"���Y���\"2��ESSIE�z��/��(����3��G�i��ıD��	Iv��5B��\\�c#�v��d�2Z|��K��\"Mj�DzR0(3�ӄ.j�^A�M����\"m��\n�~JԒY(�z�f���%�D$�9[����|���n�O��K9JFHݱ���#&���|���tR���E����vc�(�1��$-\r޷����J��v�*SP�^�\"�H%�m\"�`��e`�-u�bH��ls��g��m�YO\"�20m�i����r0p|�7��{/<�1�z���)����G|^O�v�j1���~��ߪy��=<Uhd�l7��(��\r�\'�4|��7���l��#�7�����ұ���i�7);J0[�l�	:8V� l�\\�8�˿�g	&c����Bd�;�b@z��]p��o��-~q�y�����8�3ŹN��s����]o1�ǂz���ˌ�,p�1�kBL��\'t���q����������pj-\n���_�#d�O)�􀟣����]|�O\r�?:p\r;�e�7L��!c����CŎ>g,�I�XUn0��kd��No7�����1�ΈR\"lKLrD�NRE��8�(Z�m4$Z��^�X7�;��ŕ��#Q�l�2�a�b#�j��a\"��D7�r��bu��5ݎdez�1C�+z���\"��F�_���9�����L�<��7_G�	�x�/��hib�H���@H\nT�q1Ctה��d�i\"�L�h��dF%QG�lQ]D���	�W��jT�0l+�|9Amf�|H�5q�Cn�(�G,�	�b�@pI-LOW-ih�\"*�$q��M��$��aۈ�[\n��\Z�]�zO�\r��*��FT��	�2�J��]~���yO^��c����	6�H�Y��\"B4��Si��,\\�̧�gG�q��n�s����9��l�$�]a�+2-iD�O.�9�o�����~�;��x��v���T�6���#�\Z�������2�^���bƬ���b��?~��w���^���wx������/|��OP�bRHR\r�	�fܵ<OR��J0�-�c��]v�E-Ǎ\"\0��2����������O?��[|��p�K���F)j��Vs貄/Rn�9�W\\=���r�bsA�#��+�~�t��rEQB�8L9@�]f�\';,6�%J���kds�j��\n���YI��.\\�[G�%u���/���0�:��?�`b�����ClO��&��K|�wظ���W��	E\ZH�e�E�����q9��)�Yp�\"0�ּ[vƑِ�zXh�\Z�\r��P��L��K������}���=��W�D\"i��D�K���Dh�����wI�VzTQ❦���zM��$I2��5�%�zZ���e�^R-f4�=z�T��:2Vl./8>�cb��W,x�9-35���.��ߠZ��2�6ru�࠿�bZ\"�N��[����%��\r��&D�`��\'#�aM�gp�m騪���s^��8�2��s六{o(ԡc��\Z��-���>��n�-<v�\"�o��6 �`��`=��\'�Qb4Ҵx�P�I�Jz;,�+z]D�U�ģ��_I�Y��8��y�Ւ�~Cc�vS��\ZK[n7��N��bFp#�1U�X8v�9�γ�j�,苚U����e�\'�6	U��u���Ն�Pq)=�4!�ŵ�kO�$���:��]\Z��#\"�Č5*Z\\V���(S|�P�?C�(�_�r���\rJ+����=vGbM����<ҵ�U�Ŏ���kG*@mG�2j�u��W�T\"GcҠ�.#�~M2\n�5�t��]���_xv��NIA���K���d\'�L���NYȄ��9���0�+&�!F��opq��۷����gv}H\"-5.t$B���hi��E˄��������R|���W�4�JQٖ.��u���@�,���eI����>���E \n�&�غE���D����zYqt�\n&{N��xr�&=�w��,[�Q����$������#�3��.��Y\\q��aJ��\':˗|�z6��G������pv�Y���}G#:�\Z�6\ZT�����l6$�v���W��^@���[����)_��Mn�<��?�\\�ns6����3�.!H�=6�l��_ĽY�f�y���i��|��:5wW5���Q�$J%��0�d@d��ľ���$028F�\"��$�\r[��(�\r!�#Ed�R��8�l6�=W�\\g��=�!�TqjQ+���?��g���}����Ƣ��Y�١R9mW!���ִ(F��:�����\0�����O��,\n|���V���=����w$��W����h�3�S���Gg՟�	��^������\r߉�z����\\��^>��C���L�/�w��3T�x�%�v������KWGq*�#�G��\r�X�LY���RlfdiA�:\"Q�FcL�������-���Jn95X�$�qC��\ni@�_�=��D̗5����\rj�F�[Ҹ��7lwv���u	�����qC<�OGP-��@�6+f��hm��2\rƠ�Cd���G݂�2��l7���-�k*d���o�U��6��ғEP�wk\"*!��h��\n#D(��9��N!]G�6��T�!��Ut����C��\"~�`�\0�Xm�s֭f4qlW��+�-e���ۀ�	�j����ԃ���C���V�H-I$��{\Z�K�,�-��}��OH�@�������1��MGݶ�(\'����)]W��<���p���ek��-JGg#z�$д�W7-Ih0�ʀ�#6~�kk$�u�0�g�_���_�c?�c��!�C�~�>s1R:��\"�GV���9B��dR�cz/�DJ�;^�����3����\\�`d(����x���#�F�4�1Ǧ��cMh+q)n9,y���*�������I�(ցc�׿��if#�` MM��4���֑����HA�%E���\n%�آdʚ��`�bU�>$�BGX�4���M�nL����y����=K��:�i���4g�=�0�l��ȢE���gk�e<�{:o1f�Ic�}6ņD�Yg�bA��4�#��ٔ��8�1l�	q��coIJ8�w�\"NO�L��fLr�IeKk=��1�wTw%���d�6\nINRn�Gc� �`p�aޯ��p�|�~�zx�����D�	��9��G{z���r�O%�����jJi\n����fү�@Wx\Z������lj�h����%�[��>a=��D�(��t,Ӕ\\����CV?`�q=��i��N�k�	���n�����0�\ZŔ�m��9n�o���~��$gs|L���.��)���^~?�#�o�|ǃ�G�5{{�[�	6\Z�!%)7K��Hj6N�����̲@�n B�H[����<5T)��#�ڵ�N`��d��w���F���NoL��a�F�}���r��x�,�԰�~Ȍ�3_�EeJ�jEր(,�D�YO�4��\"tZ7���(�B���3�Q���$Z2L�m`���)��ӫi.�\'m7���lM(�%T��8u���Ѯ~����,^gY���H8\'��/[���i�`�#�PP�#x�V\"#���&��K!blP���3�~��0ÌdyAa5,C@D�o�m`(�����x+\'G6\Z��1��e0��u������M\"����U�\0;�>�~�ᕷ?O##\\�O�񮵴�=���3�p��c(=�&Ǽ�^�KSF��m�s��7Զ�?��x�Y3T���\r/�l�\"� d)�8dW�,��\n��E��?7��r�5�\"j64�`Q��b�?w��Z��,��B�	S��L����CKL�����o}��s�ۖo|��ț�����{�!�G+M�m٪\'\rfr���9����`�Qy��A ^b�v����^�\ZW���ܞ~8q�1ۣ�w삵\Z ���]����Vw8q1:��S�a� �=��1�IMĮ�s6\Z=��KK����{������?D�\\�����2bu؛���EH`�G�a�&쾧��t���8�e+|�f����쀰���w�n�{��m�uhB@��; #X�[���?�4+8z�AJ��(&�/L�������k�ݷ\"��1az�!��{��q�\Za�@��}O�R��e�ѽ�(��l�k��PG瑛�M=a0�P�#\"j�I014�B�D�\0��׸:`�8��)\ZA�\nDn�r=A*��x= 4E����$�d�:ړ78=>���?C�4B�A=W\\ϐi�f[q�_@�%۲��\Z��7�!���\Z�I{٥��&��X�ta�IL�1u��㌦X��\r����]�E����(Y������������)&�r϶����DnYn��#��S�cu�U�z;��K��vle��$A*l��@�4eG�Xlא]�c�U�=7<�A���G0�-M�QC\'\'�f�V;ML��_|��]�\n!Mtv�f[Rn���q&%p��7��	I�`]��R�d��NS�9�?@%\"�$���8]J#l�\r�3q��T��E1�G�6L���VjF�G\'�\\�v�����2��,קx+	�h�\"(p]��� Jb��]��^>\Z�t1^5�Ƿc�t�:|ȽW���/re6@\r2�B�:G�6J�\'�`ہ��h�I�D(��;s�0�,t�vpRH.j��U��w�j�im�nˎ|��$��u�����������}��{>J�$�\n:+�ڀT��a�%m��l�16�IC���&9U�Ⴀ\r��qԭ8ی�a����f2� ��e�Ȅdur��{*�@��Y�IG��s�<S��#�\rS�-t��p��U��A��jQC�V_d�Z\"�Y9Il;��0q�u5���Ś�El���$Bz�k��ғ�+*�9-s�bM>V�ӚhG��,����$�*c��8ƨ���qa*	I��Lm���[v5IS�� but���3�+l1 ��	�X�.E��J(�1y��\"P[�F��\ZK�b�\\R�]w~�x�p��!�z@�5�Y�3P�xaY�6��]s�;��΄ۇk\\Y�~��2��&/����N��\0U3t�ږK۔ӺD\n���%��O��8��Q�7_a�ZT�+�e�W#�,�8���]B�d���z��pHa�!�\n��	�+�)Rl��\nK�-a�K�BH}D�4��#���Xa�@�~ӱ���J�j=��f������%H�骂|���谣˷�C�H�wLE�6vĕ�\r�l�U*�h�d���ad\"@�[:�p4i/Ǎ��D��=m$m�c5J[�(��e� ��(��\',��% {�ɡ�\"����R��L�#l�bE,���Po����fk�m���c�� �G�!jw�\'6\rpx0(J6Q��Q(���xѐ�\n�\Z}f��@ B�@�tX��B���2�Z�銂��K�ͨ�ٝ�\\D�仞��H��=B�L0B�\n)z?傓�/�&�-ZD��ϊI;�����TW>�~���pNJ��{N}�Z�ΒI����*��� �H�R�\0mK[���rA{��\\}�9.tԛ+ܹ�Y~����������<:~�����9\\o�7���)sg ����g.�x�H��gtN��,�<�N�|��_����pm������u�.$�m���\"N\Z&gO�BRJ�F�b��oo�mG�\n��e#HsGv�2W�=���;�O�D���1�b��S��;�7�Y����QȜ��h�\0I�fA���ud��h��hB�@��}���_��\'���?�0.$�\'~��av�I���pz��/�s���S��U����p��=#�$��8����b��)>�r��\rx����	&�]J�&t��?�X?|�@\0a�\'�\n���ã����Sx�?�gatT�������K���#��/އ�G,�Z������������!�W��p�q:��o	M�;���;��_����C�-f��������U�(�!w����p�>&���ȮiM�0�����W�d���Y�6��\Z-ZJr�\0	�i+2YR��6�Ѧ�aM$\'(5f-���s̓W_�D����(�E���}�\"C�SB�f]z.<5D��,V_⸸������f�@5xJ��.�9?Z�	b�N�LD6J9-��p�2;YL�\rVeD�D�)�,�N� ��%	�g�pN|����,���\"�]|��\0���&�c/%]U����/�o�A��%�R0�7�a@YM�G4fCbt�Ek��\nk5JՔ6e0,(ݔ8�	-�4G��Z�G�cE\\�P��JPy�O΂Eϩ�ֽ룡e�0V�z�s#ZV]����6�Yݢ��Tm����B��p�Q��AagL��fB�:��ζ5�Dض!�L��G4M�ӗ��Ŋ7�%Q��������Nrp�\n���K<�>�5u�IԊ�z�V?�\\�4-R:P	�\n6u��4�8ı��/�H��������%n��ģ!�w�^r\\m��eG����i-�I��8	�q@�@3�lv4Zv�`\'s������NH����,��\"J��������L�I�s��_�ů�Ƈ?���ɟcSj�m�e�2�d I3��H�h�-���2�+-�m�7\\j\\]a]¢�4��2B�C�60�6�3��cr�v��u�0l��.�F#����8�� ��6Ge6�P=�A�&�vǔ�@�;�4-�Y\\Ҁϡ�Y�QF���6ຂ �T�a�\r��el����P�j�qY��Cip����42\"(ƌ(��9@�~���iv�>d5�G4�������/�z�P,���2R6�1����#�\"�^�F}��>+\\�m���ön���\Z�@�	�n)��H�H9$����Ɲ��Q��W�.�����S�l���[��qӘ8����\"I��U��H���)��y�UtH�a��P0����)\n��fq�D�\"n��zʛ���1�)���� mEj;V\"�{���w��Pt	�nXY�Jk��!����Kl�M-�V�#�Ѫ>�iw�pBG]��`1[�Q��8�Q�G[�ڵ(!pm���Uղ5ú���Mp�0 �*\"���o����]P.�\0�sX]툥\"�4��q��6��*Lғ�ʐ��bl�O?Z��6�@����H	\rH��G����>û\'�J9Tr@�58�a��z�mn�+PR��^a�ߵ� 0�5@�Q8����y��N�hWa����֝&Q�$�����L�r�����A��@D��0�7�B����U\Z��������IF[N:�\0\0 \0IDAT\n��\'����H���_G��	M�P�>���\'�  Ȥ���p�C	���8�����������<}%c��CX�R�Sj��\"�\r�ΐm�8��zr]�M��$џ���xG�>s�����\\�9�J�����B~���k��b�+\\��4������!���a@�S�\\����%��0�,7����L�-2�>��3f&f:�	�Rf��������a�P3�\r΍8\\)��C�x�`�Y����e�C���e��H;�9��\\.�/s\"��bC�3Q40�5k3�7��p�:b�\'��	�f��S�Xt�m�v/cv_@��O�\0���[�焟�O?��)�k����e������ .������~��@���&!!x�]#���x�Ь�� n�-��7~\n!���>\r�(h��ß�o��]h\nx�U8y�`��w�Z}o�p\0�\"��D��������o�`f�/���5��3}a��`q�z��]C�>M�^F�¯�gg��A<\"\\� D9,@uJP�0���fO�wo\"O_A�u&�z�q(����x�����}�7�j�%�ĸ�2Lq6�%)Y���1 �q�6�4t��$35������Ŋ�\r��I�C����	&��o=�ĳ��{I�z��_�\r���A��ܺ����wy��y.�qk�\Z��Q-\'��-��y�5��ϢŒ��S���dz��ރ�ڪ\"K�=ɹj�·ܸr��3�-d9drAF���`\"KU5}�o��G�w���_�\'W�yAC���;or��=�H�֫�����c��<K!x��W\'{7~�B24��%A�t�f�5��#�5ە#���6�2g��Ncؠ�\'��x��t��C��Ք�w4Y�m%F9�Z#�@�4Q�n	���$J��StYЭ��wxDma<�q��=T�+��\ng����\Z�c��?��\0u��7�(�gn��x�T�<���q�l6`~�eY�y�����ƏU�W�8u��ƌS��8뉴��*>O�::=D�\\]�C�?|h��ݼC�X�6�T�$uGl?�9��\r�Έ�_�-x�ųFG�A�\\Fuv�E8�v�,k��jAG���ܶ��a�\r�4�E��Ŗ�뿆\\}7h8�������[o��ݎ���A�O�+�];������Nl�\'}�g�A���<�cݦ��(J�⚲�QRG(ߠ����C\"�G���1U�\\������̶KT���\Z�V�1Tۍ`�CS����e���6��ߙ��h�p�*�p���q�bc4m���\"��������$�5e6�@75�s�l��}z�I3���u�J*B]�e7w�a ��F�FJɥ�!�L�,��se8D����3�h耾�\ZИ���Ϡ���]�5֤x[!�R��Z�8	d�!�i�L�u��.�a�NiۚN��Ն�j��\"+�L���)��MfX}��>O��4g4��W+����g�D����SF��us>�pD�+|<fR�r�.�M@M]���!�H�ܮ��`oC�y/f؄��;�wl̈��!h�X.��\'�f]�\Z���|`�\rmPTA��#�l��\Z�lT 4\ZN��!�~H�@>�k�Җ�O�������$���4�`s�O�w�=�Flւ��I��F|��-�z�ƅ���E�i�3Ux5��ˌ��l����S��)QI���ۉ&)4i�B!�\0�]��b��l��������[���B�y� ���\"B�<�+1*f�� �&R�h~�QZS�+�4�ZC�\"��縶AiK28?D�\Z!�A��)�c��X��Q����|��x���<*�P�ûe�ݡq:niK8�wTf���DV\r.2��sy���$������ɦ|�qT���5�B�4��s�(�X�43���̋6��\'؇)zé}0k��\\�\Z��[��?^p��\'�G|U���>ܵ���D\r\'>G��L�?y,����6onRDc�\n�/~�_���������dy�ko�?��԰�jW҄���FV�f��b1][p竟��f�b§JBl��/�]��	I:���*\Z���Հ:�^�xi���U%�C�Ӛ��\r��`��Y���Ӛ���u-�1e�l�۬69M�#����u6϶\\����cb#���������:۫H��J{�\r\"��`�����E���ʿ��k��ލa/���[�������?�	���x�i�#���%��_��]�����֋�Z�P��?�_��\r�����૿�G�pB��xD��\n��$}~�#^��~���ޟE��_z���}	�.}��o!l\r������-�^&6>�˩�קI\'o �\raxN�&��_D����%5��)�\'�K��\r���\"�����=���?yt���!�G���O ?�w	����cy������z��+!|�o\".}������w�~����n]�)E�\re,h�����I�F	�i+�\"��D��V���Bd�֊(uH���\"�\Za�0���������b��q$U�6)B\'4u����et%G\'��QM�x������IE�����C�\n^��3�R��|�EGcS\"9�w���N�xoiږ�S�Y#�)S<��ќ.:�)�0�:a�G�Rĺ#�]aBD��\r���6�\';�b6͆b���o�B$	FKV�G̗\'��b���ȹ��5vv���Bhp*_`�Ç�&�g�U7\"�����G��9���@�\r)qSc�\"Z�F�cRD���@��ф�>5]��.ŀkN+��]X56����2�k7l�5�g�|���)����m�Ȥl��w�,�PJ��1�% y�}A���Ό?�[��pp��Zq����>Q�ni��Qܯ:������?`�w�&�\n�0�-]�h���-��)�+���� �6�4��	M8�u��2���\\�cU�_�r<J��^⦤ N5ނ��YL(<Fj/p���;�F�%���\Z��AKR���K�ێ���Λ_�Nz.�ǌ�������80Qʽw�������Sl�j�R����mpt.AeCD���\'[����.\"\Z�X4�-y��ײ���|��-�oG�tB�E�L|h�hh��[�m��i`�Ҹ��[&g���ز�jn\\\n�n�vSpX�(��ߞrb�=!Z� k������q�i���k�Ҳp#�\"�\\�p�����F>�k`x9�-G���TNx�QJ��`:�D��16�𞙚e�QG<�,�\r� x�?��K&�5�>V�7[�bU\n��ml[���$ơE��R��hp��͑���d#�)\\���J�Vpzg�0��dzے�X�t���s��a�ݵ��\Zٍ8z�BjՓ�@�����x�[EBf\0�<$�#l.��\0�0ӄ(�`�4AⰠ4F�\\3�`<�[��\ri���bEg�Q@\'	�kzE�������$Hh��QXg��\r�$-\"H�7��B�;Ɠ)�y|w����\0��:/P�\'\0za8�=ߡD�#��%��\"&�C���9�U��1�.�l��U૎A�)�R3i�q�DP�?�3tL\'	12�h֧�;\Z�Lh}��ɻ��\0%���B�!|�ǡ��e0�8=���f��h�tX�x[�]@\'���V�{\Z#�|��}K��P��!���F��1�w(�`UJ�U8ۑ*E�Zj���\'4Q�	-��CW>GG%��2֭	v�#��3xh�!��0�M���Y�ں�H%��ٚ���BKC�j�]������J��,ק�h��+�rCt�~.]8`]�t:a�(�m��q:E��[�S\n#��-O�\'!�����)����M�8\n<z�q�)�W��4p���V�H��gU0�4�fH�����G\r��[|�_�Ps�	����:=d;�Kt����~��cqr�y�8v�}Vo?�l>\Z�Ѵv�����?��k�Ѵ5n|��Q��W?E�\\R�{��5�9?��?ý������̇�V|�k�����*8���mR����4a��HzD���cRj�hH@R�\r���w5����\\Rp|��~���������#�RxO�\'��/\"LF����Ƨ���!�����y��x�_\'��ۈr�=� �z�{?F���#�5����~���q�*��<�@��e0i/�Zކf�/����S��k���>�6�l�3��_���o~\n��o���p�\n���!����/�A��?�g>�0��8�E\n��������O>����=Ѩ����$�� �Xr^��->��f6���+�����7o^#YW[���;aS�ЉF��	� 6�Y��tk�b�a�~��\'AY� |�� \r��G�5���{vB���O�c<�Q�>���.��]�H%���MђF.\r~��dMZoЃ1�rM<��EM�?D51BVT���V[D�Y�*�D8$�Ӓ�]�	U�4�\\�ڬ\'qA�*\\H����a�ҎoR�\\�ɻ#\n�Z� �Hr|�<��Gx�}�g_�ÊXFx�C�\nhih;G緔~�@n�j�S*�0�t��z����2�O�D���D�K3�,��F�3`�ȧ�d�h��zd�q��S�O�W+�mIYn)��Y1J�pp�A��IG�#l���J�S*�w�Ν��=�y\Zt]�v]��,��G�^cv�˗�s��.�Ŗ��5����)Q�G�NhC����uxi�T^���W0&a�Bh=[�RQ���� �-��e�B�mzt�%)�d�,���Ô�gp=��D���l�Z�%fHO��Z!|@����x�2L5g��*�B`A�R\n���=��g���!7�{�ɅKl�1�e�����櫷z��c(��r�Q��A0{R�PBYŲU�0�\'c\n�ˊ�B�0\Z�v��������F��xx0�x��KDW����Pb�&��\"T6e@������L-�tJ�LShJ$o�n�O:���Z�4eH�8�2\Z�S�������:VDJbIU�w&�ђrQa�\'�Q��#ñvl������n�8��Y���p��[e�Dò�qnԒG��b%�s���u�0���Cɒ������zGb`�k8�K�%��O�:3_����k��A�@�8c�Ęx�4M��`�i�@(�O-�*�>lG%㢦���%���vIM��$�fkź>��e^*n�;Nq��Wx�CO4���v��d [&Ä�y6d��M��G�і�\Z�\"Ul&	!�L3�K�����F@��4.L\rW���qq�;G���[D�F���Q�%�H�A�*P��THK��8&��,s�~��Xs>aC`v����k���W�Nar>������p�CZ���fM�¤�uLf4ZJ\Zk��]�AZKD,)�#X����	%�}N<M�a$��x�6��aOEDyJ2�ΐ�}��w���y\"u|�!������e��72è\nI&��t�\0Q%lgY�{ҁ%u�4���\'�!�V�^f\'5>8����=������b��J%�ڃ���SO�	\Z�O}/>5���c��^���y�K�`�����nJ���	B�=T~� ��gR_G�B�!uk����%A@����\\M���g���;+����X=�l$����\\`<�m�	��Cm�р�x�q! \\��h�f�����lh�1;Ұ��Q�Y�`�4_n���!Ԕ,q\\:���7�ܘ�Eg�c��-���b�Kӆa�y󨣴5�$b^�����ە��M�����S�&��KZBh�8=��v[���gC�kX6��,���eԖ��>My�X�K|��s������,�xgq�e8���}��������_��&N,�]��4��@�Sa���Z	��%O$�A��O�D>����(�2�_e��s��io��/@�3��yx�\'�˄{_B��!���xH����^�s��?��]������R�\0���������6I�x����ѡ�WIX�[�>�O�7����	�w�~Ӡ.ē��Z��s�o�u����W��͖�x�\'mUKh�o�� b���y;OC6��-a>�IX�Ѵ�������_~�]�I�u\Z���c�������[�O��?B]��JS��]V�o�ʗ��|��f����}&��ܬaQmٴS�����	�\nt�&E�0�u�i\ZA)wuk\"\r�6t���HP*�4h�{,��6{���o��h*:jDQ���t�V��<Y��Ըl�kW$��E��A�	q�Ad�l�\\��z���7\\�9d�y�����+\rj�O0��h��d�%ɏ��y\n%`ޝ�����M�����[/��?NgXu�I��\"�eT\'�H�\\�UI<hi|K&@�O�u�QQ�!�\rN&t(:��\'=����������T��>������͆�~�7����9J���~���|����l��HMEĉd�;\"��N ��썦�|�F�1�߹�$xJߐ$ݶa����$֒�<�{�������ޛ73�2�&V�E�CI$ŦZjI�\r54xX4�m��݋v��aol�+��p\rw7Эn��$��(�8�\\�U9w�|b�\'/έ\")N�Xw{ωDĉ���{�獚D����\Z�l���=���㣻��5�� L),fc�L魷9,�`�����c�����t��V�|� ���:���%VH%��&��8V\Z�0&�Qh�AQr\\U|0_�js��*�i6�n6HR�KC��WMa�=A�A�Jt!P��m݆��~S�UsY�QK�i�ޟ|����|�K@g�:���Ő���t��!��X�q�-��lox��Z�~g5��i���RxE>mҷ�<�mr�d��9��Y�I�u>��|���I/�xUu�x�29=��3&唦�r��z�QŬ�:C(G4{�os�Ư_��B%xg�y��(2\\��w\n��=��d�qO8����9�\rB����̼Gʄ��W�&�ɽG�*��Z�͘��OAP���|%�k�\\�O<�k��ē�w>X��ٍ)��.�M���,6���79~��U�4�����!�mF	JJ�z+@�\r?; �QV�J���J��3�a�q!�5q�a(=�.��éd4��uE�\rU��[�$@�S{\n�\";CL��J�BhG������4�	K����Q��9��ҬuΨ��9��vܽ�EL�yHzA�~Zҏ-�f��\Z0�c�!5��T˒���,d$#�䘉��A(��e+�4�����惣��)���E�@HT&(��O��ۿ�q��Bvn�p����(FeKR���x�r�N��0�4O�\n�Ԓ��H‷��U%�T��Y���C���4�4���� ��\"\'�Em��*r�X�5�8�8%�m�[d`ِ4+i7$�~@����Bƍ�Y���+���E�9�id)xz	��P�E�@\n�u�PFse�Q}d��9�QQ�Cm��>ҟ072��\Z�H�Ġ0i�0,)3(�������Z@ ��d�����Br��(0+�K�\"7GA).�}��i,¥xW��z� �����ߧ*`^A�ݤ.���#Q�A����(�h��Jh�g�v����)\Z�>-)0άHY2�:�����>�rbɵk�<��}j�K�������G(��6K+O?6,�PzIF%��,�%\n\Z�y�hG��=�����>��6I|�����|��语�\nh��t���&��`��8��1ۗ��D$��*��QY�(k��V��R{�:��]!��ܵ>Wv�9>=�p�[��U�!�W����� �%|vJKk��\Z\n�����)�9;ÄF#es�&���8��y���mdc�����|���G\\i�)�7�	E���.n3�\r�$D�#C�R[�F��9�R�LYnr�0�d� ��J�Ժ����#A4����\0�D緡�D��Ŋ>��FTDc\r� ~��{|k���j�y~��O\'R�*Td\0������������_������+�ֿ���o��{Pe�)�/��Wp�Ǜ�3`ؕ\'��^ ut�Uvt�\'��C���#�.~�l>k�A��]\\�8W������s:\Zr��n�>�rºv�ZX_0��~��|��/s���7ᥝuֻ��UP�C��E�4�4��J�+\"O�@iO�k\Z��-��$�~�(ա@U^��.֓�!�D[&g��K�\0jRBSS���l�����X��$M�k�M��$(�:���,�Ǵ��*�T�����2[�\\��U�P��\0\0 \0IDAT�=�ҭ�\n� d4HM��@	�u�p$���<gF`%��#��s���Q+��\n	��d�������)J[t6Ew����j�40�2�A�!	5NK�ҤV��U ]+uDx�4\"�O	�kRdH���_�sF��.�nnR������W��gL�|�߹�F�2����-�K��lw��K�qJ��3تdc�\Z�k�g�Dl���0l��x�\'������1w�SL�ot\"NՈf�F�u�&e~��m�[���.OY�\rYlprr��� �j����xg�ի���T\\m\nE%�]Dgm[V�������[baX,3��v�UBH��\\�t-,�����f�$�GH�$-�Z+#�F�2!�x�ғtU��Պd3�d��GG��N��v�kWw�.a�g��7�Х�n>à���~\'*)��n�\r$R��b]�Ph����{�#�ǜ�U���#+�Q`�0!�֢��#�=\\���	��#�w�?���>Y6��&�\r��B����\Z�T�YVP�qr:��;wx����}�cĦ����^�.�f@c�͓��IN�\"4KF�9����wX؀(��=1�}M|\'��3/b��\Z�c�J�^�w\nCi 7�P4��ń~$�R����wNʱ�Vs���*Γ&������~�R)�!�7ZD�d.�DŌJ9��{t]@�:\\Ɔ�)E�0T��W�(���/\'d������}~�W�/�N��UA+i�y�2\'\'���$ze.�\Z��\'2�r��HE-�ճSwR\Z��X�0%��ϻ�\06#I]�	�\n׮�w�c\\e��a�c]0��M�\"\n��e�DaB��!xp��2�gKL�K�h�;���ԕ!	:���,�tUD�Y��b�\nB��n����M��\01�w�d�c<;�R�F��*U����(\\���*�ᡶ)EbI�m�5a��6e�8�щ�Դ�&�?>��*\"W3����i\r�y��X�8_�\"�S��8��*�@��c[�;K$Ft\\�(j��v+EW%qCҏ;L��d�B\"_��%��P��2��w!r�]^����)��p¯R�Y�UV�F�ɬ��50K�RTZy�p� ����2d��i�^��s�AHB�3%����)5\'�e�q!�XRiMUi��@$)��8�Y�a\"����<ٛ3~��[֕%�3��m�Q�#�| jd������1@i3Z���XD�̔X���V��\rB(I�E#Q��<���[$q�+O�D�C���*^co�ǈ�PJ�����\0�LQbU�FR༤�s�ҏc��>bq�hV19?g��#Nz$�I2��w�bY�tbC^i��5¤�S�{k�b�=���\Z_-�c��>�4�\r�7,��L��\r�n�K�m���e�g�y���ż�ptB��s�R�h �-&Ω��7.�0�XX�n���.�}.o���3��Ӕ^���ǟ!����l��˟�x?��]�Σ1O]�)�����&���P�Ы|��X��F����Ex���[ԷA�s�b�r�+�7;@����z�Q�0�O/�%��c��A�+�/bU�\rh��Yѡ~����l�9��?`�,�k�=~~���!.����/��ޟ���\'��ݟ�\"��\'���_�B�z�����|4����������M|҃�X�@]�Y�%��~���O�EJ��T�)K�ؽr�F��bQ��*��[�\n\'4����V����.��8=�5�i�\n/<�Zd,��A�#�.�B�)��Z�չ�<p(+�Q]9BY�K��R\'\Z�av����{h=�)�E�/	)F/Y�������C:�c��e����&�\'��F�26t����y�%j=�lRszv�\'��X�`������o�I�1��tk��e�dt�s�]�	8t� �!	%>*��1��0:\Za�D[���lv#��uνGP��[)�H0)�I��P��\nAV�R���$H\n}�8/-�HR�і�F�\0�R��f����2޺�2��O���f4!�l�\r�\"�\n�o��ցlo\\\"ϡ�-���T5\"$���$i��X��T���&Wo��:x���{�\"_��AӂӂQ���Q�-y�seУIZ�!L&�����u�-2L� \n\"H��e�z�^H\Zrm(�FQ�f�ŕ�.��0-KT��r��$�1�9�UA���&uYa�#.rTCI, �#L3���R�7���3��&/X\n����U�u�B���MaQ8dl�\'(�D�Hl�N�j��E��#Nj��!M�I�\\q���vZb��kW�����s�JB��O�*A$\"���l�-�JS3���sz.cn<��\"/���h(FӚe�q��)��?�+^�\r�%!o��u�F�\\O��5A,5���Fm-+@�,����A/JFw����]b��c���-��q�АͧDAM�l��iJl����2�G�B2-V�.7��gQA][�ZFc��6���%$Z*f�/�M��(��a��^)I�.��8�{b���3�Q�R�x4�iMk&6cgQ�����cUAc{��fT�9������%����\'\"�6�MnݹG�c���t�89�5Z���=�r��v�.2,�@B%\"	�8$�%�\n)�,����`�C�P��.TLK�v=ȧ4)�P�4�f�bk\r�[2k)�4L��%�h�E1F\nI�B&�M<����5=3��22�=�4\ZCI�)�\'�H�$i �D�0�@�ڂDD�>\"�;<�Zn��$̨bC�ݡ��)��Z)���F���Xٖ(��\nd��5�m5� \"T�Ɇ�̕\'�3=��<Q!����j�)Wa�!T|��RD+�DS�%RHB�X\"���ւ�7H��*�Z�K��t4������!V�#��(�[\0RH�T�zD#�L�1\n����I��^�e\na��FDm�C\\H��JQʭ2L����ι��#�V��OpF�8�.\r������sO1عĭ�nS�R����0Pԥ��<�������T�a̔f\0��t6�ٹ�ڷyt�I�\\�m�/�|�vZ`���*�Ji?��46H\Z��\r S�Xw��$Wh��Ջ�x�~uD C�3H\\H�.�U��H$e-I{�ؾ���h5��z�&G#��<�aJ,%�:�(��E�6/Cʺ��4��13g�t���e>�2��r6��.��䀍a���%\n%Y��6����	���kk�4���}\\�i��5��\'�|΋�7�z�\Z�ȸs�>��U���-/�x��\r>�K�/�2x���\r��E�xQ�otع�I\Z݊��]�>:&����}�<9z�����e�Χ�\Z	J/ȋ�<��nF��ӳ)�v4�)g�}l��|��g��w4��ńN����=�j�҄\nK/\n�*�ʆ��#��������[M@d�gO�6��\")�\'U\"j���u��E��մ��U�a��9��+zR�L�_���&�\nķ���?�_@|�?����g�>~��\'�X�^t��gP���~�Yf�C��\n~\n~دdhR^��+g�{ye`�w�O^G��?Ɵ�E�s��q����y�A�{��f�vZ��o��S�_}�[���F�*Xg[��ڭ5��bo�$j�DiH�\\g�GH/VLxV�`�=Z@�-Ư�R`\rXc�\"G%=a\0��ɱJƞȭ����T�B�)��޿���m�zY��I���x�$t<\n�b-��|�\Z	2�`l���x�W/�32QS���dZ\"��X��ј{���>��,�\Z����q3!;\\��+_S�)��2��q~v�btD�4X����}��\Z������X���H�ܹ�*m��◐ڐ�3D��2�����O���|I;I(�ĭ�.��e���D�I)������� f4�S�K�4$�K�p~e���=qB�8\"���JdS���2rx8#Q (�\0a+o���K|���W�����Z�#��`��v���.��]>����p��z����o�|�6��\'|��+��k�������O0�=+Iμ���	�B��zʋ�c����ԒĊ�[1����t�	BB)Qo6���Cb))�tD�LI�	�	���]O+�c �ݕH*4b����Ҳ�Q�\'=*��uDCb�Y����}����w�����9��!2^�{���%�����_�a(����{��)8ܻG�D�m�$	B\\>��KM���J���a�N�ܺs�KE@=���\0)��RW%W.+n��Ev�j.3Oڀ2����i���.�_t��5X.�Xk��<�g�ꜰҍ$���갾���<Ɵ�Iֻ��C��Cӭ����]D+ڕ0t\Zm�A�=�e��,g����tE�1�A��1��Mvo(t�B?dwc�������<`Pf�=x�Q�9u�JCa�\r9T����T�:���}����4�c^V�X�t�9Ox��뚓��4�װ�1����S�<��T�SL9b��Gc���\rO�q#�gttFo�y�bNxjg�Ӛ��Xʊ�)2`�\Z�yA(*$嬆\Z���{�eIm4����yG�\"�z�#��j�zX��D�K�f�Li�Z�$5�h,�`��ƺFf-ڑC.*�v��)�H`���92 $MU\"�Z4i*Ia���ΣE��J*�����BY֣�!	��Kɸ㉬$s�\r��d9u�w��xv�M5�8�[�qxD�Rz�@i��aeM�=F(�,��\r)��x�1�\"���.��)�T��p��XRY�F���Z�-Y��}�O�Lg9�+j���-Br�.���&�Π�Eɐ�H����,�v�*a;Ya�KMT��:EX��;LX����|�]��V\n������%����������ޝ�������=<���\\�(�I���2&\\�b>�R�N�Q;�\r�I\rUA�j!bE{����}�z��o��8Gl�tcphf�%�#6�[,K�b�_|�M�u�����iw�H1b`�zG��D2D����!��yC��-J(�����#<�[���R�x�A����a:)���5^}�Uz\r�k]!�J�Q�k(�Q:�R�T�P�[�69��(��+7�tk������eɕ���ڲ��*��*6�k�b�R+|��;��\"BŒW��������D���Th��ӊ�X${�� �F��K��\r71�PA���YKS6�\Z��L\ZdxB;�P�\r�(�p���ٌ����Ǟe���V�\rW�cQ:(s2j �b<٣�gl�B~��-��:��_\r(�9�͛DuNۍ(���dL\']5�Y�Z4h5$Bxr��c��6��O��p\"0��?�8`v��b�o�<��\'dX[���Z���0?Z�|�h|���J���jE�w�\"����XQ����C<܇�����YL~��)q�6�}���k������?�G������J����醺�����@�r�H>�7�������F����\Z;�#�s���_�̙�^s��o���-���gh6k�s˭G����F\nE�ωֺ��u��5���th����0�BI���*$N\n�	<�I�\n���+�O\"�\ZjN���\'���Z�RO�ܛ��v��/oQ�x	UY�@��;��ǜu{�r���#>�L�& @�T�r9g~t��̙��H;=N��	���s�ҘY�C���u�b���.��Opz��nb�\'����m�RlY5�R읕�3>�\'s��5�\Z1_��Ml�qmK��ђY3޻O����{��+��׹�쯣�A\r�1vu�\r��&�p^\"n�Z�\"AQ���6���e�����\'\r\Z$bN?+\"���-����	PILiLUc݌��Q��?�(Y3�a����EEeq�c��Z3~�F�g#���;}�[N26���۲�9�v��u���M��%�y�����@�������E��F����\n)!\nC�0$#�f�F�G���\nO?�Y���q?�O�y����S��j�T�s%�i��@�4��@юSq��i������a�N�C�`g3\\�p�D>��\"Ŋ\0ekEY{��^/`Q:�h��Ο3�����+8\'97�ƀ�,i�{�l&|�,��� �����U��A��(P\nȑ�s��	��6~�y��2$��e��SS1�`��P������1��U�d�.7�Ҋ����z�Ǉ3���v������l�,h�����&��<g/�9\\HR��rN��.�q�Zs��-k�+�6�ޥ��4(�W\'h!�䔤��}�i��\r��3n<}��^��o|�43|����w`�K,C�����IӀD�qI��S9�#+�M�nd�,g,J��CN����7��Hh�Ü�8\"�\nR����-�=�*�6#�ܧ(�l�3��C����͙�O(*A��	�h���(�}���9��Q��BZ\"ᨽenJ\\�B�Z�$�E�kM�o�:̦wHm�,���C��E��Y�+拜{6��Y���vihv#�fʨZҦ�Hkb�V�i 9��X�`��7-�|��,rD�i	��-:�P���{^�ϲ�yt<eYyT �M�ܠ���\nTH+��4g@(�7�h� D�ZC&Jr���@�k�L�,]���ӈ�i����l��3!�\\I)2�0�&�D~N,c�:A��.q�\\��������aBj�s�^@�����i�V≣��7D�$HH+�uM~��kd{��`���;�|�k���ݘ�k��[������ϸ� �i�\'�CN�����/o\'�6��\Z/u�D9Edf\\[�\'<zt]�R�HRU��2�^�f�fQ�35&w� b�)^����e>�\"#A��0�Rd�q���5����K�?8��;�q�&��9s�\nb�[���� ��w>��Z��y��\\�����7o��\"\'nLpB��1���,��5iZ7%��V}�\nv��4���O�P�Oy�or���؟M�<<�/��L稰d�<��t��s����z��\nØ����\'���v�+��G�&5o��6���ϲ>\\���)q?&nt���7ϖ���ԎY���~����\'?�qrS�g�os����lty��:�^½���X벳5d9~�d:e��S�/%��%��<��hD #�f�+���Y�h:��Hh�%�yM��i7#zU���}��]��}z×�v���z���w�r9!��4<�@�h�^{K����.��5&����k<~c�����q��k=����D��9�F��q�����$~���6e���a���7C�����������\'�v?\r��GL�4�?R��l#��>L�o�lo�yp�ބ�?�K��U8xk��|�wV��\'�;/#n\r?B�����GM���J\0���_�|���o��lu�ؾ]4�Z�����y�b�����y��Y�ϗ�}Ԁ���\n�\nI\\���Vd�Cׇ��	W>��<��\nA�ű~H�@hz%�$)n7�F�����؎���$��\\�n���G�s8g]<����M�JY��9�(Y\ZT��+�Q��Vx!}�p%[�^Ǖ�\"BJ��E��#A�@�@:�\rѵ��Q��²X:w����F�M��`���^euX�? ?�c6�PdO��QzOC������&\n ����uƙF�rd$Hy�S��	�Md�ţ���������y�����Zk6}>���!/#�*׻�zY0�x��{�ł[G3�]�%�u�܂J%t�&g�%~�1N3~�������dB�B����F+�B�\\�\r�R`\"GW4����	ޕv��B*JPVP;���pV�l�hV��r9�٫W��-�����\0cj�*A��%��h#���|9��û\\�-h��N\'�qD�U��\rb%X�Zl��7��3�N��ۈaL+ؠ��O5�bѱL>x�wn�\"\r�|��_�?��/qp6�p��^�����`��I��`�\n��uzi�M��f�A=#�N��Q`5�-Heį�0a�֛<x��dǧ��j�h�\Z#\r�Qc��5ZHځ �\r�)���,gXk���OIT�:g�u��?��r�ݦDX�㜧�gT�ߠ����F�w�k/1)����w~�w����0��bF�cJ,�� �8`�$v% \n\Z��C�=r{H�\\���`r�F3!v�{�\'$��M��u��3�1�lm$��MN)�%*�S�E��\n�b��U<���,v{�M���3�Ře�D .q����i�9=s����kZ�N%_�>T3�wx�х_QS��<*ቹO> -VǼs���͘�����x�)�GhB�Bf�I��XG�/i\r׈{k���v�Go����Ĵ6�\\$c~���s�d�|���kTˌbw�۷�!�f|�s_`X���ａGӐ���k�g��\r����,J��G�\0\0 \0IDAT�t�\rN�?`>;#T�lQ!UH(��H��F���԰���m��\0�X<�آ�\"Qa\'dU�N��t�VJ�Q035]��җ5�ф����K����q����V���vx��1?s��(�C�Vd��p`p;m�!�@|8q������@kCa6�!nQ	I\n�JK~Aw����<2�BTt<�k,,ҁ6!A��m�Ic���h!�*�<�IÔe����y�4\Z+b��\"�B�17cH/<�X� U͙���7+o�7����-=�H%��S	h4�눃�\'��-.R�1\'sǩ��[K7�e��KbY39_�<9�ӓ}._���N�x�w�Tӥ�����@)E���y�_��wY[�B�qx�H�	�Q4XI�s��ڐ[OJ�l�s3��(G$\r��Ҏk�j@h���\\^OY�����&������\\ۤ1�b1?%/gD����6��QJ�*$�5�{r�@�\nn���7��Db�ٌ���d2%V\nQL8����th6�\\��pV�x�~�\'�%*���X���O��-��;FE���e6ևH)/j1��bH��t�#�D	ó76)��IΖ	���WX�����S�|��3�L�Ԅb���&/_�E�۷�q��Tk|c@G��ix677���HCBRz��k뒹��ѓ3F����9���\"�����RG	��tRC���H���?�9�+����� �����3$a����hD�|:�YM�\Z���L�������Fg����f����b��C�]�°�y�䄇�_���=�EA#X�d:��������\r�}�Ϭ�׾��ɘ���e�z��p�2*\r����y�s��9#��7H�!C\"n�[�.�b����P��8_���6H�pi�Y�fs��C�T�\r�\r\n��������K�%b�Y�������~��g�W�g�>\\�,,�������/��7������������j�q�O᥿��z����ǈ\'o�ᦅRp�s�.��P{�Z���7��\n̎���j>T��`9A����t��%�>�ő�Q�z%h���Ӎ���F�H�D���tՐ�if>��4���y��l��_�\Z��{���|���)ns�G���m��-�}�r^S5����f\'��K@���Xlm(�%jx�U!fx��2@�ձX_ �2$D�K���)��\Z�:g���0u��!s���=�{�m>6�S�:-+�������?����>%P*%	gL�8��>s\'I\\�1�|�	��pg9\"\\��ps�O�Z���E���O>���ɉ$p\Z�B���V�H\nV��Ͽ�U>�w3�2���2%�%���s��D��lyJڌ�{p�8H1�@/ΐi�2�Щ�� B`}���s`������r�� #\"!D��g�(�{OC�8�D[��K EK	a)b�(�DD��Ӹ<��X\Z@!��M��CW�(�F+A���xJ\Zht	����G�c�$a2�p93�m�<[0�����ZZp�\\����޼�����io�[/\\�^����իWn^gm��=�.�II�\\���ӄ��!!I�!�9I�Q	G9_�luyfk����h|�����`Ya+��$*�1eE��4�-4a$I+�����&������)��9B�J0^Zک��,����*湣�Ѳ��γ,����W.q��3�;�<��?�>������\\ggs��-.ri�$2�[:�f�����p�S_\\���TE�L8ZI@��8�TΥV�;\'\'��6�;[p\".�%o=<��9~�������{�5}+q^��]�5E���o�ίӏ	G��:��sl]�%p\n=I���/n:���oq�����\'?M3�|���,�gb%2Z�\\L����ٯe�}��Yk����;��n�U,�(��HI�lM-+nw�҈dF�? yH\Zy��F�t��a$Hǭ�gɲ�)�\"��C�5Wݡ�|�����)�RL	�<\\�ܽ�km�����������M\0�U�?ޙ��¡,s��]��u��9d�d�r_s�y�tV�ѕ�*���`�5<}���2��ӧ�t��TW��Oo⚊��;�/����|�KM�����lԢ��䚈���\r�&9�\'�4\"�h�Y��QA��ף&<ʢGv�K1>�,Z(�2���)CV<#�:�\Z��&G;�`D3�faT7�L��6.9�C��يi	��9��J��\n9�XF\"7��,�;dT��\r]�4\'� ���A���� jQ�KbUR�5���	�	���ĩ��s�A`��!�\Zi%��ƒ:>��&)�T3�uf�s�|I-0����V��\n(b�jJe��k%��(� }�*�����f�\Z{�F#��>֔�U�q����T�bl�$�I��Z�\n$�uq�\n��$�b�\n��\n�*�G�s�6��D�>3kI���Q�1\\]�n���þ\"S�q�IZ#8�?F�)JHf��>��Q��z���!�zq�D-!�M��6Y��1!55�iA����a��`g:��;���p:A%\"��o�͙��|�hm�X^�d:BWc<:��v����p�޻,1a= jX��pg���.ͅ��35��ak\r�>GY���b8�����J`�S��jx��&FH���\"��a�H���繵#��{\\\\���y�?���?F�/�ҧ���:�`6�\"*h�!�q�p��tz�VS0\Z�SfK�-tY��-/����$����l���U����Ͻ|�Nw�����W��!�p��ƙ\r��h�\n�cV6�j�x\"a��i�mZ�����\ZQ�����*��qp[g	<�t��ݻh�ӥ��?��ք��ƚG�.KKܺwD�=&:��/��YYZ�d\\������ \n�\Z��o�U&�AD�OXو�8>G�wQj�]k�\"�\\0�$t\Z�G6�a2>a�V,�� ��S���Ps+����_c��2?h-1�{H+�?�w���ר�+Tj�4�z]^�=jNLVTdS�f�9]�EL��b�W	����׾��&�r����Y�_t���Y���~���籿�Oo���O \\�^�\n��_������}Ԍ�sդ�<��x�6�R�m}��?�-\\�2�����<X�4�\n�M����\Z�<�C��y������g�sؿ�\'�l<�ȟz��&d#x���VX�|���*��EP�y��ȧ��k�X7�3T>��3@����������3켉�b���t�rm>D�z��[�5<r��]�<���qI�/YZm��&�\Z2�g���4.aؠ�*L�\rN������)�	1����\Z��ȧ�c3�ۚ��XA�\\�)��(��F�r��ms��=޽������\'����R�F��(.�;?�	�s�b�:J\"_����8FӋ\\�t��CA6�I�h�z\\y�<���Y���c��c��%�=�e53~ؠ��(��y��9Y1b{��BV�7BI����X�4��r��Di�w^}���DmV�?8��Y�Jv)�G�q���X�ԝ�8E��_�2�ȵȩ 	RB��º\nG�+�Q���IʔR[�`��!J\n����o�\r�B^�˸��Gi|��K�$T��>�g�(��\r8�I����1[�%�ͅ�E��ĭ70����&��	C�}�S^�V�778�y�KӔ��1]S���Q��X�\n�~���6oܦ0�g��#�t�UB����ԕ��BJS��5;��Z���G��3�*$n�-�{�#F������FT��P/3_;OhL5z1BH���]Sd�S�z�\'��4�#�$��p�LO����w�h��fpo���3��v�ծ���W_}��aB5�J�����g�%+-�(�і������\'��J���\Za�E�%���8�8)J�ϊoyb��)�9�{��,-o��z�dHM�(���H��va���ht��(=E�9�^�7Tv�_��r���1x|���1x<x�5?e<\Z�s\n��ݤ���+��[ap\\�1�\Z�\nt�2(G�*�������Xp}\"G�Q!����HrM���\\or3;��#2���k�YJ�]C����M�2�3=�a�{��U�\nڭ�z[�����V�x���vI�Àng�D��#�,FMqKg�d%I���NE��ű�B�x$F�̎ޟ2���ULepI��,�qHU7\0�|�Ly�����*qJ�.J��pP�k�ĥ%,Rto�j?%l�9����AJ=�]�YAsԠ^	�YN�B�4��Y�Z�VH!\r���JQ/\r%���%��)Tİ04�!\r���%)J��:FHI��J��Mi�)�8K�������Ek�ۜn;�(S�bD1Ϯ��F�)J�%��!�-������S���8�>�Ki�#m(���R����8H§��!��3H�e�Q�)�@\Z���4�$3L�<�zH��Nw�2�}�\'��9�tw��B@�fX_���\Z��}�ǽ��|�*ڽ5F��k9�/_��ަY�S�RLM��I�O���vR�����F*���=��ﳷ������\'���i�:��+�qL�,g2��c�\Z�u���t��a��w�w�����-��69Uu��>�P�yz��+iE[�p�.|b���)*�9w��Wk��xʟ����͛<w�I���jj\\����n0t�x�ϻ��fܟR�	����6��8�ݡ,rF��z�ur��#����uW�j��*��3�ݒ�|La%+g��V�\Z�Zg�h��L�biK\n\rg�{�Aĥ���&^Pǝ���7�ܐx6���uR�FWf�C��\\Z�L�QV%[��U���e���y�:����R��0*@kC�U��i�v���<�=���]!�e��:{O1�X?�c�V����S2�n^��\\�&��&n�H���(;o�%+,��N7���z���}�f%a�E|�0��\\�\\���d�.���S�����\rR�N�? X�J�5��x�ŃoP\"�^�@z��[x�>����~9`�྿�p%7��5|�Oa�y(�tR��L����w�	E�Q�B��aϼU	���ȧ�G����|��[s�ȩg��YE�x���s��M05d��.��v�%x�.b����+�휁ӟ�ӟz*�\0z�a�������}{���\r���&��>xc�N>�\"��a��c��F���Y6�C1�\"����q�;��?���`�����7�[Ĉ�����O��x^��\\�����;��R�cH�-��V��p�e��XY]�i���2��,c0	\r�91>R�T6�r\"���5�F��B�jh*[� DkI),��v�0xVc�d8<$K\'H:�bo\r���L�j�A�0�!\r!\\\"�\'ktX�+N���PeA�yܻ��D5;�YLǑx��U��n����y���w¬�q�\"�x�2;@c�eN%@\'�I?�*JT4\'i;B���$��6�Opfԧ9�T��eKV�\Z��(�A�ӎs.��������g��	��`L@�̐��Yk���0v�7~������#\\w���qܹ��*=��BT6��h�B����ݖH�Y����S�{�*\r��A�%=:N��r\n]��!���\na��X2+�+�}9�e�p���P��T�������J�����{�&����n��?�t��<�<7���[��j�z]���^=q�? yx���g)_�4M%�ԛ����ϩʜ3kt;m�qɃ�CF���+l�ߠ�z�ʧ�������ĩE�H���Y%i��QͥLKFy��x�烊�z�}���Ҍ�6�7BI�[��ş�<x���Gos�{�x4��R��Z�`p��*�No,r��\Z�vb�2C\n���U�N!�S�<����Ts&�[���V�ܵk�AH�\r�4��25-�v��`��\'wj�V\Z���>K�\n�󜵥�<��[�p�Gsa7l����vQPofܻ��<uz+<�?�p�-��dƋW������w���7�x�fz0dT�|�%e��D	�9��hiA{��%n�I��!ʊi%iֻ��y��y�\\��GJІ�����xFqY��; l6�x���=� ���C�y8\"3��HJnX�	\\�\\��\0�3Z��Km���3�LP�@!���N���3����� �٧�L	����-R�RP�a�\n��)��!�dJUU$RRhMB��ƒ\'9�(����\"��<cT����z��C��s<:��K��0��j��\n��gL�O����C�a���F-�kz(i1�fj\\��ڈR\Z�܂LM�K���J\Z�V��!I5��R��K=ȈTN>�x��Ce5�\ni%Ӭ$�?w�;��JQ>B����v�E;3�\'s�5Oe(��=�)p\\��\n�B\'\Z�`oR�*C�k,�4�\ZJm�\\��\r���0�D��f8�*\n�1o�wQ�p�-�NId|O�\nK)$~�c5���o��C�H����ڹ�Sl3�����(&����#&��5i_����	�S�Ϸ�9����$G����S�M�82e��L��+��y{\r|�%�߻���w�;�S��9�Vl�RF����a�fpK�Dd�g<���\ZC�5 r��nrZO8�Xp���_C����͛�lWcT��RX˝��5�<���\'�S>�K�ҔV�e<�x�3����a{��wo�O���v���6B:�3�.I^|v���9~�����l6������c�ԌG)�X޿���㿤�z��~�3�������=.��⨫�ʐfX�>�o����vv���\\�|\r]f�{|���΀��ˣ�;��\r�Jp�Z��v�I2%HF|����59E؀����;�	��Q��������Ȓ	ˋ5��1\r>{�K����pv�<��%���4��吕^����?sX�.s��y�r�u�\rs\\G��Tc�4Z-���y�ʧ(z}��!4�kԚ�����<N�������k:�,ձBs��i��\r�R���WŁ�?!�Ƽ���(�]v���7~�V7`{w�?����po���Y��e�N��<�����;����\n��>6�o�F��\'p�>���wj]�3��C��񝹫?�*%�ƿAܘ�+���:�!�O����w����+������y�Wsd�`-�\'�?�o`�*݃����J ��v��e�\Z����Yv\n�yʇ�Ygp%��w����N]�7��W����\Z��:�\'�q4)���������������������P>vz�m�������=���?6�Bpr��`<ce�M\'f�$��]&��Q�]ns��%��L�c�m?�gJf��3�]��p��&�UY��&C��򱎠�5����R��VТ2�lN������I��i(dF��kK#Mi�\Z�.��=����\"gu��J�!��i9�@�ߏ�}��S��f��8�����H��v�˙�6�\"f�Ly�N�k��cO-�Z�\"׸amn:�r*R��Y(���J�4AT󛂖�ql(�%�j,��`2�NJ�B;W�\\O���=�P~׀�\nc4?����I���o�٦3ι��\"rx�{���J�	��Q�	�ಳu�G���9�\'�SK�T�b��W��\r�mq�Ě��@xmt�#lI�R|�ǡ�YŴ\Z!\rߧ©h��eD#���*�,i�\r�N��z���H�P-��3�F����\'?�`&���q��!�^�Z^ǻp��L��߷�8Ť����jx��b�W�(�:��/0U2=d��.�۷�[�������ѹ�����J�4�]_���e�r���	�Y��0,W�qC\"Fj�<�7��y\0�X�&�F4/�LK\'�L������]���?g6����i��>K�.�gD���R�?L������pw7��[w�U���%*p�����\'F�����(8OYh�	Z+d���D�2S�P�tm��Q[<M1�e��\r%��ʲ$�Y��\\��K:a�F����k��^�ng�L�3��^㲧8)n늗�-�e�M��#+��^�ۆ`*��R�c���q�b����ӗO!��\r�_�$������e�qR�Hc��Iα.)\r(%)+KZhn=)�v�|��M�xw��4!i.���`�Jf���j5S����K�}N��8�m�@	y)񃀠ݡ*|�(��ta	\\��zH,�x���29F��.Pd3���I��C�xJ%,~�#�e�2���O��G���[�$/hXtF]$L27-�*Jbߧ2����O*d>���`}���-�U�4Q]���0�#���p�S�N�|8�֚�<��j�ɼ�Hif�%ז��I����PX�Z!��aZ@�q�E.�r�iT+b�\0\0 \0IDATFØI2EW����~j������tP@�\Z�.1F�*����pXP��G�$�x¢XQ��y& �,�()���	�Rr\\�8�\"b����#)s��iU����I�	p���<��F\0֑dVP䆚#���C��$VWs�x()}��1��j ��1���l�����/��ޥ��z����I�cf��k/���Oq��?�p�*��Gy����!h�:\Z���F�m>��XZ�����+W�AW	�������!�`�[[C�p8.}��ä�Y�XZ���W)<��h4e8�b�.U�dV%��Y�ԭd�=�}�ds%�Ub���h,��ݸ Tp�wĤ(�,8���v�\r2��\'4��<i���� �s��o���ȅcC���sg����</�\rxw��b������\Z�[Y#����8�c��Ox�s�lpLgy�̙�;t���p�)�eI:��ZL���j]�w��1�l�i��������z]�rΎ�$���ŋ�}��4D�j��1�,ƫ5�#�O!i\Z�w����*bdHl��c�4ca�K^osp2$7��\\ؠF�=�W�c��!�S��\"�Q�b3�b��u]ꭜ�Oݙ�����.U>#>��%���gE�Ro��m�����|q�4�(�X�����	9���kh�y���Ǒ%3ӣ�C�\\Qk�B�t�������+g�\'��QN�w�\"���GY`\'���������?\"x�@��.a���Ët\\|�#���W��|P�����%H����\r���h��<D��A���t���p%g\'p�O����>WU�y����Gs��sbv����C���t���-��?����Z\n����Q���\\��\\�p�\'o�bs!b����5ܨ��*>��Mz�:�^������\'/&ĩ�_��+GO���!��\"~3$�4&O����d2%ˏ�f��\"�69NR�{�&-���g_�q��gz��9͆�J�B�]z����h�g�����=�I�y���;��Y�m�v\r�9���\0]xD5�_|���y�O3�kə����Ɉ}%p+3�	C��`��b���N=$�;�> �F�Lp��!���u%J)�v�\\���i��]g�\'Pd�$M���4��W?G�?���(�G�\\xf�/]��SF\rA9=!Z<��\Z+���:���+�=��{�m��d�Fl�t�L�ȫ�c<\"����)o���������\\s��:ڵ<�֦�عC��yb�����T�����K.�#.%�h�I�J�!t�����Ԛ�А��B2˦�=9\"�(�k<�����8Y_�ܩsT��ǗP��{C�h��VC`����K_\'8�B��J��~Y��Eu~i����W%%!M�q��׾b�G[w<��A�˅��L�ν{?eo2`���s�[|��\Z�ݘ��1�Z�C���we�`�����=��\r2�(	�G\'|�����e:��5`���T�ńg�<�+\'�wx����Y���*��g��WZ,�����]���[����+�8�Woa|�k\r.\Z�x ����>�����4&�<��hx�P	�<V�̦\'��	��c��9�q�yo�@�(te��� J��O#�pn�Óq��W\\m�ܚ*���i��$����XP�2�uB�r�u]�RQ��\ry����`1B8.V<�e��9CH+\"�bw<���m�I6F�9�`2%�c��(9�@y\Z�t���t�K�����w�nȗza<����8�%?�0O�܆��~��t�\'�^f�u��q��J�v��6��z�lZ0�fD�� )x��׸|~\rU�����]�����\"T�6)��QjMj<ti���ro�t�I��P~P7-�64��T��Eɤ��]h�Lb�6�F�o���,������.�����z����#�Q�$Kh�/�H§�.)Q��7�h�)�d���S�8Ͱ:��%Z+r .-~h�D�y�f�=��2\Z�2�3<�DSU��e�&T�KQ9H�c-����Kl+�i�%�����!���0:�ӎ���ۡ(�Ԛd�z�q�J�91S?$�s��$*��)�:����@;���X�5ԝ�����\r�R�� �-�z!+â`�(�jH<�������|���l��<{�KgN�X��{���ǜ^�ʯ��o�z��kX�jgV���Y�2d{+ 15N-�0|2a��%��nM1����e��`ok�t�<�q|�!�	ǉG�^�@��Yn+�&UeC\\\n|\'�4��ծ��)��~�@fd.�>��g���i6�R�,�}�:O\n��o������9~�\"�r���x�P�F��nǊZ�e	s��\\����u/>w�v�A�^Q\Z0iN���Y��$��\\�8�]dkp̣�)�e�v����i\'�t��g����9(J�5�������]N�#����x�x���-&)H��f\\>{�^����>�.�\'�����E#�Il���}��a:KYiZ�=�bLE0(����T�a�V���|?��!�I�!yU���q���\n��iA;cxE����2E[�����)�b�-&LS�㓌�2�p��!w��Q����<Q�$���3-�(��N07�F�87Dd,o^�N�Ė��:�����_DJ�rC�tG�X�j���}\0f�O];��~�� �B�)�e8�\0+��v�Vv|J�B`3�O{���1��>�6}�?�O��P	1�ou�E���c9[����c|���A�5��+�P���>��������F���ǬK\n0�	�R�}��O�D\Z���1�OpZL�)�0BZ��F�\nk\n>{q�gg%�B�֑Z����mO���]���᧯�ύ�/���1��Ņ��YN�N�Cs�,�u���E���]��H/*�g#&��g�\Zea8���K/�CO�\\;�r��G7���u�A�?{�V�Q�\r7�\Z���m��.���)R\ZM���\'/P�|��jF�xJ&S��#�e_{�:.ݕ.6h`l	a�	脒K�Q����~8�0Hɭ�o���.���C:��g;��!����(<��q�����-dU�����!I!����IB��Xlװ�08�Ag3�w޿��Sn����~�O��!��\'�D�B׻L2M��=�G�@Eʂ�Z�R\nꮋhDG@��\n�<�͐�<�&����K\\_�X�Ո(��S�GE�B*���+PP=}�KG��S�-#[�m�\rt���;wcŹ^�N�pn8s�ݣ=n���h��N�cS���~���9������$��q0��\r&uI#���ԥ���h-����d8��)�/�̳Wyx���q�{q�a�ϕ��[�Ѫ�q;-)�qP9����3��O�A�86�`�C�Sx�	��������8n��R�KW8�4-9dv�Y�Y��@צ�v����ʸ�|B�{��������,_�l����=����%��y�W��R\n\\IUX� �ԛ|�_�k��������k��)^w�Fw�\Z��!��!2��}�#Ei}����\\J5�,\n��R�\0��H�E�_A�\'?9�S�rf%a�E��6�K_�5x���b���N�*���k�g���]�x��\'�����S�V0z�E?�Q�4�Sr���Vl�,V���iJ=�5��ʙ[JKg�_qus�_�ʧ�e���O)&�I�ӊ~6�us��y*q���2�6ϟa�p�������?>!���[��R�\n�^D����Oٲ�!��3�@<�fww�(�XX�N˜�؊���H�ǐ�����Ȧ1�g���}���^�/w�X޼Hd����ќ�.-�T�bR�D�����(�\'5�\Z�`��#�Bl^�yڲlR�r�jR ��JAF0�8Y\nX�\Z5�e�k\\�-�z����\Z����E[C�\'*)��2E\"���U�DB���LN<�t�1s�,�5Rk|o^r=�>�L(���\Z)f^E��TEʥS\rL�u�S�¢L�E\'.i2@I�K�����\\��,�����f�l����TKܪ$w�B�T�Jh\\�#H���Bi,\'� ��p�lI>��)V�MF����3ZL��Y��Ɣ%6�M��-�(�L�|�/r�u�����+<z|���s�e9j�ӟ�M��	[���]�|��$\Z�N�^?˥�.Q�E\ZO�j�8R��Z����{����7xrp��q��Y�l]��%��	��Q�T����W\"r%}�\"g4�*���97ws�^z�(�{h8�X�eJqr\\c�������Ϟ�Ү�s%u�G=Z�@�C��㾤����Ҁ����#��8�W>�_��dT�?~����y�)��ԍύ<IX��6�ET[ ��4��_�L\'�jB�s\'He\0���\"^��t:a9Z��,��\n�U$��z�γׯ�N�99�f��E��M1+1�3WV�ܿ��K�������͛,--����h�����go�W)Νm�=v�ǖz]�Ь㩈�����Ҭ���:�������G��\n�Z�\'G}�|B�&h�\rL2aז�TEs��1�d��.�D��F���蘣����!I!(���;��	B�i�].]��ݛo�r�<��\"r[TzȰ�D���+ٔ(�!#\ZQ�ׂ�L��2�h�ŕ\Z�H����;f:3�󏎿���>�\n:��5�TOb�<k!]�)>jX���j�� �)��n��#0���_=mbL��F҅��ILZ}���Ri���NJd�`r��a9�L��Sd�����}0_{�?#�#�r�q�`	�k�1�t��p$&�h]8Si�\"�g����?y��\r�ߨ����I�}���J��\\��8�ˁ�]X�OH�������G1��}\ZӜ~���W����>B{ u�����C��z=��|I���:��}Tc��\"���[dy@FX��x8��K/�A\'�s��.��˨��P�Jc��hf9I )�n.P�����_��#�{L\0DN��;|�K_���X��x���	�ذ�ܢѨq����o�ynQs���\"�NX��_��Kx�\"T�$������e�����eE�����0+�Ҍ�-9�3(�ON��N��\'V{�qI]�<���7�~��kK�N��Båʟ`��]9Oiٌ��y��u�%�R�Sv�{�YI�P����`��6\Z��d<2�\n�3�q�ǊwB�V��nUyΕ �BھORY���S\n��5��\Z)��X7`��4,�(�����=�o�4��=�\\�k1m�<|�M{��8/�-,��z��d��N����,�T�($U�̩��J����u�@{MB���G�4��46j)��\n�\'tϜ����r�Ep�o��ho���k\\kK֞�qo���7�q&(+=���\n�)�Ʉ������M�Nx��k�?����C�<~�Ս3(Sc����r��o2�Ƹ������t�J������������	�tD+Z�4]��0�r��s��;���1����;��ɟ�����#��\"ak��\r�B�;�\n�����_@N��{�	ՌVMr��.���Ћ\0�ͫ����|�S/�-n�x���z����6A��xg�A\0�G#6�\\���6�z�\'d�1��&��$������C���Vzďv���G���T(G �DU)g\Z~��OrSCa����{K��gzϟޔ7ǻ�>mgz�{fz�\01\0$A�\r�d���.e����+)��B{���Jbp��\r.� E$Ax��X�t�i�}��:�+��篋j��D)t�ؼ��HS��������b2	V3�!�\\�8\n9jth�>�F6��Eh�i�혧N�XX��ln�ȪE��c}��[��g%��fc�8K96�̼�N�OW(rDA�*=t�&K3���j\nEץZ_����<�ۛM��r���/`�.jҥ{ئR��\'>ƹ�\"W�}���nrr�>��3c�騐J�0�F��N,4�b�d�I\ZM$KcK���d�\0�)�Y�0��4[Ժ�?\n0�~`F>�H�4\r�DS���\0��Z�U�2*R��DK$A��$\naBU�E�*�{��C�(�M,C�L�� 	��;�QA�F�&D\"E�G�̲_\n�$D�TLW%�&86�*<2Wf�x�nh��Z����Xsy�W���	#Rՠ���i�n����ɪ���\n��ǤR�f)�)��HU��T	�PBM��iC�*y�fC���=\Z�ڤ�b�rH>R68������kGŊ��v��!H�J~�H��N�.���)�V�ݸLN�����R&�ȜS���L���?�1s��[��Z���՟��O�R-(��[Y�@����L�}��VBf�:�S%L��jH��u�ķ�H���Ȭ�1�c% 1b���ʖN_�T��|���\'�R�@74�W�bܼM=�x����Θ���;��~�����¼��U>��*ˮ��S�!���f��z��9���:hD	�q��4N.Aq�s:h6E5�,.srutMW(קA�tZ�ex��L��gi~�a��c\ZDi72�����]��A�l�p�*{;��},O3_+0��4�zh������Mrn���&A���˵wQ��}j�jy���6����]|�J�����q���,�����	7�n3���k���,�kܺ{���9�;U#�t�nl�D1��t�*Enܠs����,\'+��K���a�IF�(�,B��6Ug���/��\ZnaL�ꡤ\Z���y	sUU�͝!���kP��tZ����p���.��0N@��9��)������]�p��	K��L�/�q�۟T����x���\r��?���?��P44Z��ɧWx��9�sy��7�=r�N�o��� ^<b�Z@%_ W���<��)-��q	��d�C��v�xz��3�o�1Q3X��P*P�86U��cⱏeZ�I��	V˨J��K1T�Ĩq��0�ט-�h3�j�97�Po��\\eTp�z\n3seN��i���i��\Z�\Z G!UEb�Ⰱ?5K���%�?�������!I�H�������id#tW��ecʶI��i�sQ���P[���!����	����5�*�Q$�\n�w_�9w�������iH���k\r���A�/�ܸ1ij�n��%y���8��)l�����\nE*�2q�F�jpЊ�r�7w���/�8���\nv��4Z�|�~UeUDV�l�d}_rI:�C�eQ@Y���V\\\"5���15�PA���J+��e�F��a�f!25�bF���}-ˈb;4��1�j��H�+�\\f�N����g��r�O��>�Z������Ry�3ϳvw��3K�i���Rm�� $xf=M0�&\n�.A��$�p���!9�!�+(i�HQU��>�K�YX�����T�$��v��ܪ�<�2�Lm���9�$����Ў3�qF�P	;\\~�|�{�����9��*�>5�����ll�E���\n#yȌ}�Q/��v�\r�2*S#�AeH\Z���.VΥVq9<8`�`��ӳa��\n��$-���:X��]�,[��9�p�]��8� �3�a��ۇs%f������?ϕ�Ho�e��ndУR�aZ~�p�:B�O�D4{����U�_���{���;>�S�;c��ۋ.UM��Z��?G+��,X_o�k�S�]agc����(�\")\Zu\'���xaH*{�dN���\"4�Ǘj�U���[kc�)�D7�2c��ڵm^��G�Afnl\\\'��0D�t�,����P	�=�7�|b���\0�\Z2>:dGQ�s�����Z*�V�8�)X.�Jk0��g�2��ԧx���r�_�����/�DǏy�!�S�8�D!�j@E��P1ؽ�kk(j\n2B*	���}�!j����\Z�)�9�cd�O\"TR)\"(A/�H�\n�������R>J@�G����9�B��<��\'��)cE���	5��R)b����)c52��T�Xb�n^%G�1�%ff��ی�R\n4M�i&���&�=���\ZRSPR��%�T\'IcǤ��HS��\n9���Q,乹���2��H鍺DH9��֦	ℱ7dG,�r9Oe�F&�n�0MQ����0���)2	��c��f�l^c�j���~�7�A���ct&��Q���噚�2�\'�qk���]Bgc�NiB:^���{\\�P���-��-޽�����)�������R.��n�޾Bhµ��ި�Z��ΕWyb���=�����c��Hm�\'��X�A1��UNT�鐫L��E��G�\'	��#1�\"aУя�Ǜ���t�a�p�����z\ZE��Ο\';s�����X�}č�S5�,��B�\0\0 \0IDAT�q,\'*ӕ���hY�L|RMŋT���\"�>�\n�h��͛llC�9�G�!���H7]\n�:�aiI&Q�J���c��J�j�g��T�x���!�M��s������]bj�N��H�qs�~��6\"�s��s�;��1S�*a���E�*��g��C�s�������4�ao@\Z�䌀�;K0\"�b/!�CTScFdd��8��2a��{#\Z��1/���7`M��\n��g$��|�ri��G]��Z��������n��Kj�Y��,a�>�����]y���sp�S�켋\"�u��\r��ڡ����\'O�`Z�(�2SDs�L�&�]�np���<�1h��RN**���L��C\'�Ij�eJٽ���h)�\r� N�I�P(ئN�9�B�(X�J\"\'�T\nU��u�,%NRMCW%A�eDqJ��H�a�\Z��D�\"0t�G�(���^⬂��؆��ÌI\Z����؆�J�TTABv���Ue2Z� Ib�Qro 1�o�d$��LUA׵&qD��dB�1u�� �Y�m[����Q��0JH�������N���\'���g�rn9�\Z��P��������W�#�n���8�f�4�?M�w���]�2\\y�$�}�l�q��S2�*c��B���`���$\r#\n�ùc(��;Wo�::\"�RJ��=ǃ�6�a�7<Z��n۩ri���y�}ĝ�=�J��Ɋ�\"PJ.)\Zۍ65ǥ�G|�vݲy`i=�yg�A�5d������$�1F&��P��q֏n��������Q�\\2ή.��N�V{�su�y�XW�2����1�d���@26�T�qU�x��ވ�F��gVɋ9q��Fb���r�����0e2\Zż��U�?�H�ģ��ɩ3�����������������4���^g�7f�0,�<q�}\n9��vY�L�[ӱm!3ӠP�S���VH�A�p\n��=���X����T�d]�Џ��N��E)Q.E�r�3�q8���dI����i��z�]�4����+�1S����������4[۷𥅛3��ոyk�Q(��D��@��N3w���#\nn���@�D��m�P�P�<����(*1*���Ȍ�y�~�q�������$+&ϫ$͸s8b���|}�j��=�;\Z�)UW�H\n�ሷ^�\Z?x�U.�l�`P.��������s���[Xa��Cs���&��-޸��~�8�Ѝ�Bs\'7�P)��z3kS���rl��s��,.�A�9h�$�HR)��#��`�ϗ��e~�×\r~�3?������7�����^�c|��_�6�?�˔]���[ԟz���\\�z�#�\"\"s����?��M���=�},ϥ�ϰ�v���O�vx���G�[�$R��żqХ�lr��qܲM�q@�p�Q�p��	{#K�)�+;H)h�*��#K|U#��(S��^H�(�7\Z�1�Șu�L��4�1�T0DƊm`ZWk�����1���SS�u���8����޾�����3�O^<�W��{4Ĭ�h�ű���hhj���0,������{��a�ʫ����o��c���2_�ؿ�*�}�,�\\Μ�8V}���Un޸N0D�>��PL3j>xJ�D).A\n�a�u� u��Y�A#1��8\'���)i08�J��-(XE�A�b���8��)Ȣ�Q��)�i��|������t�aLW&H� <�P\"���h���(��OQUU�(\n�iđ �8��HIAK�\r��\n %�2P\"�`an\ZԈ���D����LJ)��Q�`:_��G�vă�.2J~ 	�U���!K��0���^�3E�l�>C^�`9e���i�\\�y� c�*M@f�3�4#@p���^G��D��jhX��Ȩ�r��?8�y��Mn���Q���eھFIx(��i���EO����$H�*�1��BS�0�^fI\\�H�X(=�7h�,Σ2�K����J��}����\r�k����0S�rl�KF>Oɲ)+�K:�kSȥ(Z�8���C�P�S5�PG��A���\0�Y��V��!=�����Uc����2;^��w[}�a0��=�~S�L*�!۝��(Z�z�&�_���y��6~u���.��\n�i\'�hdBx1S�S���#ɰ� Ju�0&�b��g���#N��@�P��˥�S�=���&-��#���ʌ�x^�k�JS3\\�dz~���7�N�eff���-tݤX.�Z6�^���㡋˜9s�7^y��޾ID�/}�Q�0@�5B?��2D���.��.i��1F�P,��iE���}\n�%*��8h�ؖ��DG(*B�P,�0��+��B\'�/�X\n�Y�4���� 3� 4��M�lll��o�\rB2i��\r��6���q��ҠT0��Opx�=�p���.0��F�Η����a��S�Ns:9����7n�t[]�y���\r�6�(�?�D!!��~T�:\"E!c �k>�,L�c���W�G\rv������g�����!^���@u���<����{�G+QY���W�=���.�\\����\'y`^c<@Qx��/]�K�����Ps��r�^�SϜ%�(杫;|����̀�,����\'O���#a)��y�/^�Pt��\'.QՎ�iR�����w�\'Į���yE���d��?y�����������[�p}<�:��?��	��_��������/�l���W>ࡅ\nO=|GKhuG���k��\0Kd�R���\Zq������_}�~>r�Ŝ�$%��ߣ��X�9��S�ۇ?���S\r�,\'�z��u�\'�\nz��\\p1ܔ`WGC�x����5/6@��sy�0\0-�Qc\n:؎Fc�1����(\"�5���ݽC�����l���C�F\Z���M��M���1]щ���ƚ�2���n�مs���ј�}�q��ܙi���{��יr��\r�e;es���g��E�f���Ybu�q��<�F5���F@N�������7^G�:�@�Kr�.��3�m�x���6��c�(������j�Ye�V��:������0�4�]O0����z	�]�E�Qbp��6��*��6�Z�߃�V�-��\rV�~��n�N��Q����!�3��hDjW��Qp���$�QR��Kd��\0�Ĕ����u��\n�u?��z	]�ax� bS�$!������n���G3��ӺK�u���n2?��c?Fyn�Ͽq���w��lR>|�)�Jq4C��X��=��-c�k���4rd���ht�BGdy��B�	�;�0�2�dD�Q팸�@j�P(�����b��̼��ƭk���,�,&�	�8N6\Z4������.&T�A����Z��t{M��DQ%�s�\\�z���5��\'y��g���l��%���տ~��7�b�.�.I	\"a<����%�*�j3��X���>�Ξg���]J~�?Ckw���=Do8bi���n���U*���.�E+���Rڼ���r�:;�����|�c���\"�Q��	j�g���a�K9����U.�Xak�2g��s��#��x��]^�0�����?�Z��ӯ�nw�f;���Ĥh���d\Z(���dX��H�H��II������H�tM���ed\nuw@��L�nrZB���P�	E(H�B���яb��\rʅ)RE��L���ӓ-/$V4Rd\0���D\Z�+\"TE�p���f��	:{;|�ۯ�\'_�C��>p��Ǹ���{�_?V塋˘�;��:���2���4{=4#Ǚ�g�&CRBMA���\n�ԠT$I�AgDi1�[�����L��Tܓ��\ZF�ҋS����r$\r|?�_�A$$������ �\'�/ôqt���Gs��9DO&~e%MY1$�� DL�A�}0����-���Y|���o7�{��)�5N�\0W�-�D�3U2MC�b��`()\Zea)c�$���j6�;wP#=\Z��\"�04]���u��g)�]:n7RҢZw�t����fj5�l\nN��մ���-���)�mQ��ȩ	�b��,�b@�d�ɌΝ�>��mSvU��f��?�?�y�E��.�~�nE�J*���B�K���)���`gs��up*Y{���#̗��3�ᨃR>��iX�b�c�G��ieu^��`�G��x�0Qvt�@�t��&3U�TD�]G%	�����$#s��9�bz������#�qB�u4i�.��c�bʉj�|i�no��~�m�d�1�©j����qDfj]�rEcm�\"}�8 ����.��\"�q��V�!lm���&S�����q8��KK��؏ɛhM�qݭ#����6�Q[�f����k\"�=��\"�����]\'�S�X!7�Z��j=�^���y�������6%� ���!�A��\r���C\Z�>�~�(�4��9_H��p�q�I\Z��w�d�/�(�R�Ɍq�1���!3IEd2��S�8#�$����n�z�B�  K�q@�D�QHk������R���[����e��2�5���ύ����bz�,K��P���t�7;#���1mJy���� AUuJS���c�?{�f�P�6��N�L�F�+������	D���+� ��ə�~,c��H3>��y~�����|��\0E����\'�矽���n�b�)������G������E��P5��>v��ork�ɧ�X�������r�~����$Qȧ]����y�K���?}�/|�\Zo�u�����L4�z�,����ʿ�&i\"�ŧVy䓿��G_�/���s����߾����Md8\"�Ջ���ϰ����[��p��9����_�cW�?� y+��=2)8�8������7�K��|�yZ|�w���?˷����7~��?�����\\��j\r�P9��=��$@�0�AJ�n���e�NO���9Z�NH�Vt�߆/����z�A�%Ԩ�H�)s]��@WUL�1_ns��QTA������	\'g*�~L�>�����b�⠰�C����NΨ��)(\n�r��.ps��Ȩ��n1:�/��)��5�&m�F�#�el�:T��0��&�\nʀ�1@s��%]�Tʑx#Jv���IO�������q�Ś�g�nn��}�z���j�aș�YZ>Dx�Kޑ(�El{��^��(�D���	�35/Q��J��O��S��`�1JY%&��������\rRMe�cܽM�����f���on2�4Cc�͔ӣ^4x����1��Gm������1���(զx��&U\"�D�j�8&��	BZ��ۓ�E4��6��:�4���=�������#�l���K�&�����N��-��$���������c�9_>�?{^��C�9nl_��E�&�R�v�����n�fk�X\n��=�\0x��o�:�5.NC�̈T�G��$�I��(�qD�HU)��)���8;k�n��~���� `��M4z�������+إ2�6��4�*. \\��\Z���j*����:��>o��6��?	n3]r���[�I���:>K1���u�tD����o�xh���yI�	�~�cV�����A�Bnly��.��i\r�\\~�uNΟ�H�v��D�.E���<k��lܸN{���o~WWh��a��S�G�Ѵ�>��<�|#n2�w9�z�o}�\r*�Y�xo��^{���\'Tt�DE8&�˫n�O�bv��.%�N�����	��pT\'�C*6٨�\'�q����\n�(!M��ԈӉw��V��	^!B�4F����f<\npdF;I K�A{\n����t��f�_�.��f��C��y�z�����L��;$.�c�5�\n}/�p{���I.�������~��ؚ������W^ga�,��/�*>�zc̟~�\\��CLC!��ُ<���k�����+h(d�I �(f*����A��R�+d���t!Q��j�t�\"3B:�͌?@�\Z�(�6u���:\n���BT�>�2C��Gh\'�2\r]xX�O�)E�j+�r���Ml���L�Db�K��M�C��\'ŀ�L03��Ph�)�V�.���sϢz��$���3>���l,�}�f*���I��\n:�VB���6N���∋����Q�{x�ExTj��y�]�������T������;y�+�|��H3��S�E���<�����A�6����DaČ�1�0��:(t9hJ4à\\�P,:DqHg(DR`�G#�r���@ޱX��c��r�XK|r���7B�s�;��\"V�&�F�\"�\r��O>��ϱq��p��ƨ��ʴ�f鸖�����e*��A�l�d*�	B�I3��e	L4��T��Y�؛,�m�$2�gN�tNŏ#dc�樞��h��X�\'Ė>���z��\n���R�Y&�����N�vw�x��$!�^d���W_�V����>r��}��vȨ= \'�Q�������i��4[!i��\Z�Q�.��07?�[q]�gWX���`�5����t]*�2++K����AHz�#Fc(�����%D��6&J�(�V(�X-��cTU!\r1�V�c�&���X�hqJ���ht�� AD#\'�i���%�6�D����n��(�4Fd�@7,�LEA��8jH�����c�M�\r.�QLw�4B�Y�<��`@���pD��ha;y���\"��=F�E�\'_.Rq�ے+��p�\'�lw2��\'��8��)�l������b����19�����JE��\'��M*���[U&/�)5��$R��t�r͡Pq����ʵMN�l>��\"�)X�VQ�-�$����(���g���Ӭ}�*P�@!&�>��m��	�\0S�<To�8B0\n%����7����n\"TyO��\n|��	�![M�o��e���>����$h�~ė�lbH�(�/�\\U���7޿�o�s3uV��������g.��������I���\\�> �A>���Si��DI�\"�\"�.���\\���^Y�?����,�~��Iɔ�<3ūw����7�_��w�?���>t��QnJ|m�����%��Y@P/�D(���n��l�e&7*N�^ :��щb�\"�Z,�/��xQ���KS���\\�cU�u� :����L��ظ�?=����w�q�1��=���a1;`yy��n��fH|=!�� g\'^zd�F�Þ��S�ɥ#�j �9,=c��rݦR���Z��m�����|��N�+C>��I��1��>æ��\'83ls��>�ƛ��7ˠ�`���(ģ!cڔ�=�|��P�4��D��1)łM�t1m]Iq����ieӠ@�h�9\n��C��{]f���U�����-ٴ�2��.�/NQ4gx�m�c>����i��b���ܘl4Du\"έ.��8�J�K�ĝ.J*!�a��\nI�I��n>��ԔLI��>u7F�\ZGc�+����-�3:�q�#�$k�Ȳ)3,U�|�L$l�C�Z��\Z����96�\'N̲a���������a��D*��:R� �Ә��Ȃ�2-�o�뿟�#%�2Yy���D�*��8�QxBH�T�Wgy��C|��w�\'���^����57G���q��w�n]!���~�``8u�y��׮�d���eZܽ}������l�3O!���88\Z��E8%�X��#A��C\\ͤ2�#���]\Z�~�Td��\Z\'��&�z�+�z��\'o:���px���}�N���@��]\\ˣ�i(Y�������P�:v���\'����#O!W�t>���e�_��3��S��y�џ\"���t��\Z��&���?ƬVy��Or��	n߼����b�\\fzV��<�^����,n\"S�\'$�3��8L�Q�C��E��Ԍ��Y����N5��bŊ���y�9z��o��È�n��*��\'gA\Zk�\\��+�ÝZ`cg���]���&\r���?����n]�{ԄL��:{G;���?���/3�$��]�H�*\n����O�L�ԧ?R��_�+����;Cv�cTE\'A���XA����)���㘀U�TSr؉HD����ρ���C|))+\n��S�T��ʴ��IN+�Z\n�4��\"���t�,E7L�0A	}��\0K��c|�%��cEO脂(N�GAw|I����cgX��A�T��.^�p������1Ʒ��i�E�����&չ:���De�b�A�\'8U�ӵ4|-G!� SAk���{����c�cAՊ�f���`#\0\0 \0IDATq�+J��N]���sgɒS2$�Z��퓤�e�8�ai��F�Y�M��;EA3�c������>g�u.<z�4SQ��	Z�{D���o!�\n��\"����DI� I�D�f7�}��c������iv����L��p͘R�$��;���+�K\'Q�&���(��%F:f_�н<[�-���Þ$W��2c�\Z���1�S�Zp)�u�|\r��q�)�\"\"��\\�PT�qH2�ٸ���t�*��)�$�H4��M�0��M��ߧ��%3KD�����a���7|n7\Z�C���>���D�\'�B��>��\":\n�)���)��,i��>���w�5�W9�X���p�q賹7bD4�\Zn�P7&\rU\Z�tZx^B�\\AQ3��a�&ˋ��Ô�~��q�A�C��h��IL-�aFm|ߢ<s�\0�7_���C1��)^�1=S���%*�<;��.�=~˶�T\"���۸�������-Q,�Й�����ق��gq�J��c�(����+%t5��h\n�\n&�UM���\"f�D�6�f8h�@\n���4��S̖\\*��P#\r=r�\"33u����\Z�Iu�N�	\n�ʤvu�d�u�#��<���Q��u�N���:����[dV�p0@kwь��S癿qK��t�v�N�r���3:!�����*ٽ� �\Zd	S�o|��G��g.̳:?MË�CV�)�H967ó�y��u>��>r~�/�����V�R�X+�_�d����d��T�`��T\"�K���S+<q_�o���W��\Z�f!���dn��\n���lw�ØR�D�!���:���.1����_x��2��l!�du��?����m���_����/�%�����g�;Ç��rg�Mk�\'�>��Y\\��{�m��ۛ�ѽ�=�v�������ӏ���m��^c�;���4���L����>�����p��M޾=�_�����?|�C(�@f�?�3��R��?O<�!h	J�%r|3g������F�G��U�[9�6]�իC��>��F)9�2N�RD�Ű2�%Sb��&I3�ԙ9F�:\n�(S�ou�ϥE�no�m%���\r���m���(I��!V�)�9�8�i,���W�f�J5\\M�xy~�33���>����i*�YR��Q.0�=��?�*��r�q��ĩY��J~n��|��R��r3���z�b~a�����R��*w�Н��$����x���TJ�nw�ʅ��9}+�`��`�ʧ�,O�?�(M3;a�c拧��_�5��ˋ_����!V����h�ă���[����6s�\0�*r��R�ϑ��`���������}��=��ow��Ν}\0��@��H��DJdHI4��rYrT��T�⪔�T�C>�I�2#�Zbk��P�d�H,@l��`��z���o�}��}󡇤$3��OUWuuuwu����y����o�<�H�(���;��1\n��)�3��l�4c�>G�Z�w8��}��T�8S�)��f�`3���k��ye�k;�̩�wp\\K�0B�������.JJvuDU,�g�ڃ߾�\Z��Tm��G)�8�{�[�q�5�b\nAu\'�\"qDh�����&ZU��X���&6l����&a �`��̜?�#x���5�dL,d��{�R\Z�5:��_a��k�.m�N���L7���!W�q�<�r	߃cG�x����D�+��g��#t��KXnA���.��,��R)p=���<K�\Z�<��-��;��+o������ʋ4*U\Z�5>��}��CF�6��g�M�ƛ_��;���~�,�{���|��^�6��w���re�Aj�i�N@��<`y�T�Lyo�*�N��3f���/��_a���ƛH�L���y��e������~��rs�m~�G>�\'�C�È�޹B����,���`o�w�\\B8��T_�<x߃|��?Gc�̭k���7X��A��G��df�1A�&_{�i~�w~�J!�R��P8ޘ�Cx�G?�!DD8N��_y���,��Sq���\n���ι�gX\\�玻�&�����qn��s�}[8��/��k/2�1��Z�mJ�ݫ�Qą��I��w.3S�ck�E��E�{<������>M����<����33U�?8}�Y�N�W.��7_�ţ���8�(�\0;3��\"�E�L�����pFJ�vIGci�fObV�T=��h@Ӷ(��b��cf#��s�S\"�$�m���aN��94E/�ǌ,ǐ\r�0��AX&��$q�8�Il�H��d�a��F�J�~?� N�������ђ`�*O}������?��s�a�z���	�F�!c��(ݺ������w\rQ�yl��\"c�Ǖ6�\\Y\'��?!\r�p菇4�/�lvYo4\'fs#1x��f��79{��l̬\Z�e6�e�y}����ߢ��1f�E� \Z�{0$��hM1��������q��	��`��3�2ڣ��hH8\n�Kpz*f�Z�\\U��먝u���qs?�^����X�h��Z�L��8�y�^��AgL���!-����S*n�4�ȗ\n��>~���h&A���dJ`�h��D�1�1��L<�~He��!&.af�ճh>�>b�Y�S���o-q`\rp�BC��O<ls��h��6��n�/a�����x��T5�a�X9�ZN���!r��cO�(��5J���4af����\"����\\ٺ���B�yd��q��7�	�[h5O�r�]\\[���h�_��nc\Z�fw���\0�q��$Jc��V�ߡԲ1L�meܸ��`�C�P�}�)�}<�B�[\\xk��;\\A{o��q��ȃ��sN,U��!�^�ȕ,ò]f�,��e}m�$��,,ϧ���͕�ș>��Ͳw�bok�ՒE�I��_`��ͭ�W)؂cG��#��^g��EN;ʧ���桠�c�M���wTx�яQ�8�$���ٓT�KD�.k7ɒG���[�w��N��W��td�Fق�#0�w�2Lq�����X��\\*S�9�NԦ�D>Z(2��`%XZX$�М�DL_���M�LL�g�a��/�����_�������O��ɱ�)fg�ȴ��>��+${�k�>t���a�w�Jf,L�R�a��b���6�\r\ri@g��ſx�����)͉�(�`ON��4�B@��\\Z��!6�c���K,�`&��b$��4/�q�o?�ŵ�m	���?�p�a��	���N��;�T�%|��\\�㍫4{	9�{\rR�{�^�km~�#g��=Gy�R���W�Z�C�e�|��чN\"�����/���	���e>v�1>p����t������c?�\0�_��1�#��}:[\\۬S],�#�*L4��>v�L�a���Ev��A��B�R��X�JZ����)HF��\"�Q���;�X�䘞���Y>���4�:�=bpz&�Su��ba&G�0��sgH�d���1\Z�8��mFm�_�;�ٙ�����\n�\0�7�Nyp���N!U�z�J0.#�Ђ�ˋ\\EJZ6����{�<�#1�c�=0�3�a���R�i�XX�6�2�� C+E}a�3�3$�`0�x.\r��t�����YT�,�͑��3��0鐫T��Ǭ2�T���ȽM\n�<\'<E�Te�y���9{����l�SG���Z������8���;$�yt�>��N2��}��Աt�8��4����6����L�L���Ԋw�l����Xo�(��1��/�8?K��Z��(N\Z\n#�g��&*��ܼ�{��T�t��Г���l6�l�>\r]b�{Ǹ�H�7��B �o7���p؃a;�@%:�n�v��3�R��0��w0U�T�A$ܸv���V����]��	׾�<kW׸�<d$�B��yN�r��,��}���ϟe{�ɽ���Z��w�x���=ʕ<�\\�c���9|���H��=2��:�U�LM�!�6��ez��/����u�̧~������9?|�<���͟�������S���l��lQY�害�8u��W�b�?D�;�1I1P�q���!չ{(�	ìB�;Ff�L�Q�ɟ�K�u��A3Oo�k�1o12z�6W�_����g_�O��]cck��n�cȄV�OkN�B�H���꾦�یF#�A���0U���U���l���Yt{��Ͽ�s�=Gfa6�h�������oq��W�U�aSN?õk������ޠO�5�:�<�U�;M3#	*GNPk]�H�ӟ=˵�7�y}\r�4HU��M;*��+�0<���K�8{���V�ă�~�cǎ��i��^�͕���T�1ӈs\'��{�8��Ǹu�*��:-S�j�adc*MO8�b�,1�<��Hd�)5�i��I(EY�@&$������#��h\"�N7#�8�I�iq�T$J\r�L��1C�)�H���=\n�M%Ռ�,(��1�j�w��Ȱ\\Mf;� \r#�a@�Q��Y�Ǵ�R�oe�P��E���]��N�����v��y�9�W^%�2�\"$�d�er�-N/���������%1���n\\���X�+/^��[q�<��I����E��ĉE�\'��mC�zc�֭}�WC\Z�(�ة���[���\Z�\r%�&�F��mL= K/��\"���?���:++שU�(9.8U<�RR��C��K��g8V8�9���H�#��=*�7Gǎ�Hӄ�e�zSs�����|�q���õ�TU��]d0$���Swm��<F�!�+|W!���b\\, PUL2<��3R)�\r�m[nm�HT�q�)RY����Z<�q2dmӠ^`*ÎF�LC9��m��t��R��H6S��r&�ac��/#u��`k{+���y��?�̹;9q�ֺ�l\\�εk+D��I�࠲�q��\r#K�CM/�S�3�4b�u���&3�W._ L\'�5q��[4�\Z���#2e��]��*��er�M��ɕ<2���PT�*ʨ`Z��v�թy,,޻��a���l?�)%����k��l�9�#:����Uw�(.��6��.�Q��Y$_\0Z \r{h�@�VDv4��mX�4�e3NM��!��Q�R,�9�n���C$)��q$��X�Bz$I�P�Y�+k-�wv1��N���5�D\Z���=l�dy�G������L�4h�ۤiL�j!�]�,�s�n���\'�\'��L��*�~0\r%�۶OA�H�+�;����N�ĵm�ra��߹������W���u��f�Q��\\�����[/��7�8l~��N���������Z�D<��?��2�������(Kِ�|��o�[³-N.L��4;�1M���\rh�7�9���tB����5��,1E����cd1oo���M�3ItӴ�C^\\�����O�R����k�����\'��Й%\nz�%�׮���>���|��+[��HMO,�O����6_������A�{�\Z&�S�5���L���3w�g���������[\\����6�_�\r��3��$��0�)���� 3�Ӌxw�w/��i����)9{@]�d��궰5�{�>!.��me�a���R΁g����\Z�zM�cS�.��$g��+�ޤ���@���-K���dX�U��`���s��̹]�͘c����\Z��	~\n�f��d㔞��l�D\Z���4��p�!��p�`C��5�, gKҬ�N�-R2����(bL;!�����Ĩ���p��e��c3�Ul�Q�6[{U��Mn�%y�M��E��H���>�5�L�&�Q�4J8�<K8N��g�ۥ;nS�UA��V�AW��g�6���)�>E�1�ҘF�(�1��i�2!\n2|{\"����*~���{���`X�`���Ǚ��r�����|�F����T/7�zUp����XҼ�.J�=@I�QLT�B	A(-�RH%����;�%������K��%���x�$A+�a���s�_����O1U�n7g���Cr�ˋ�����M�Drtq�A賻sd��M��K�\\�_�4�O�g`�����)a�\\��^�s�Gf)��7��\\y������S���o1�l\r���[Dc͑�g�5(���ݽ��w�U8Z?��<���Y�n���?�_=�勿�k|�G>�?���;��.���]�W��[��N*\'M�P\Z�h�s�\r�$��Q��� �`+T�	��\r����Gc�����E����n�pxxZ������&�,� ��y�m�uMJ,{y�������U�{�5��c�G�=�g/ ���y\Z�G�G#���q�aZ�QFSV[ol�;��ҥ45��ӧ�ٽ������-���|�}���U:̀jc������	W���pH8���&IУ<S������;.��0����*2�4f���c䇞�0�r�g��i������_d�u�S��\'�x��!L��f���>�\0O\Z��M4=s�����9;�8�H�����Z�L.G�5�*p�tKj�i�t㘲�!�M��En�#N#ڙ���f�����&H�&+�I�*��R%���ZG��!�!o{�L�߻�=�1�`ؒ$I�4�,\n2�O���X����o�no�jE9�h��5��E��,w�e�.�FW8U?��@�xh4��9̎��1SF�)QGV��fN��=T�`1�0�2�q}�J2��f?Dj�m�Z��\"B\ZòPB�C�2l��>t�#�Q�p4F�҉���2�8 J�$Q��\n����|��b$)�Px(:��VB��Ju��4�����a�S�77�U�ʱq`�j)�4(��z���b����&��D	��6�II�1�a�!��)- �u�W�6BLӥ\\(0P��E���6���-H�!�Z�ba\"9�\n,�F&�mY��4,\"ӆ�\n��)��zz��P ����\"lS���%X��g�P�hg���S�]}�?���f��k4cl��\n9��\n���b��T��+L�|d�+����r�{�#��NNӘ[���*�A�P)Q��<h�I�1�ԠD��\0ַ�9�d�}zAJ��3]*1����#���t�_������h�X>C�^Ρ�8Z�g�:E4ا\r����*ǩ�}٥�����\Z3������a��q(�N��u�K�vq���i1U?J����x��{�O���wQ6�JP����30D�\'	b����#�i�Z)O�g��؋\r�86M)n��I#�l��Ҩ�ੌ� ��jҨ��v���;x��,�w/3?7�t�D�o�Cʌ��[�\"`q~��c�ٓ6��d�z,�c�e���\0�s�f�G#�!���e����oc���\r�����0VyN������ۗ9h�x�m���2�2\nϾ���֐0�y���%�z}�~(9Өrz~����xg�K;$�b���/��l����gmC�z0`΍�J���M��7,~���X\rT��+��u^��J5W��q]���{��\Zpm�O����+���3�h����h}��������A�ӯ\'o�LW*�o��ߺ��Wo��{��\'���|�qh��;��w1A���s?t\'����W���ACوI1	������}�\'�<ʏ�)��?� [)7�wX���ވ�/�\Z��s�\ZE��A��{`�C�=�̙{0����ְ�g���(,�e5	IZ=�`|��h���R���9�� 	�j�K��tBM�4Mx��\',.7��;�.�i�\\͠���F?ǽ�y�����|�C$��fq�$]=K*m��G�/���r�\"gl�p����<ӥ��Ӻ~���JfJ��(I��N���!��5j�#ll6�\Z%$w�Y`�`��O���X��8���n �4��dq���M���13\rJq��A�5�&M��	�2ǧԜ�m3�)��J�G}�����m�[g��!U�i�U�Q](�;�n��K#�f�r�Vbr�v�f����5�O|���fgèaJ��!���B�m]`��G � �1:�<�(\r���\"�Iό�w=P�Hu��!�Y@���)�){�J3B���2��>:41V�rSl!�S�q��c*�fHv<�+�c[X�5���J���*ɩ���}�_��㝿���^�!��D�c�Rq��,0��4�qQ�	��<F�ec����l��&Wrqm���.[�[xE%���,�R��Ü\rR8sb�\\.d�O957� �]��Ɣͥ��;m����*�_�)N�=��/�������J#Ms���!׭P(����8���sY�8�!f�����O�X��^��q�x�=fV�r���<����x|�KI��A�r�������}玱���4W�Ӌ2\"a���E\0\0 \0IDATb\Z�ť��׫Xi��6io����_>���$�Gi��R��\n���«�9���v�\r%�b\rS��=L˘Pe��M�̔�E<��4MʕQ�V���-���Cd\Z3tA�\"��7H��{&Z���.Z�I� j���s����� 	8�0E!W �ѐ��s��v�ʻ�\r,����.�h����k��?W�����G#�t����}�qt~�wx�嗸�r�+�ש��m�b���M���_�׹���+�8Wⓟ����\'QQ�����^�k���TD��VNR�4�o��c\\ۢ$ �����>mjl7@Ɗ��!��(�CXJjL� �9T�u1-�8��;��KN�A���d@��̏5Ŝ���x/��IҺ�)�AH+U�T!�	h����kSb��\02R5٠�U��nmf��v�0�З���@j���,�zU��\\���3D���ob���XSvb�B�.�yҠ�P\ZT����ֈ0���\'5��Id+\\�G% ��\ZI�0��I/��`	P����m��ԠD�i�D�aj�A�=�gؚ��e1�8DU5Z�oZ�]�|�	�E�%�^|�������i�%3%�:XX\\����0�Ñ��f�J�jv��Z��T�H�	�I�����mbY�T��&�W �&�l��F�@�\nAh4�X�0C�q��Tp�~�M�$��C�t�#:��o\\XY���\Z�t�G��خ�i,�A)I���J2H�,X��y~���\"/�:�N٘(�Q,\n�*U�]y��?�5�v��T*�Jy:�\03g ,��K�>�R�|ަT7aS��\"gO�b���(�T�s��s�{=���r�L�HVn�\"���M0�F	�P°M����6w�s�$J���įԸ�����|���>;�2y����:q�J�A{ ��y���kÐ����C����\n�(b�i�LУ�Zg��\'��tFC�{�޺�.Ӗ�C?�R�����(LIe���:�:{l��t�0���z4ww�S�$�5F�.a�����j��ko�ӋY\\\\D?��)ϱ03�r�eg�#�\n>�W1u�e�x��W��.�X(s�ۗ�j��2\"�z��C�}�q:��.��i�L�1��������U&4��!��4��n��;@f���[���]�a~�O_EQ��5�a���Z�_zÀ Nxs��Li�8��-�i0�R^��Eѵ� ���g.b�Q����+�І�)4���2�(�����}�/�u��g����1��c��?yq\"�q�0ʐ��52	����\"�f�H\n\"囗ngi��;��W���o>�Ag���<�(&�4W��F�J�k{�R�����P̹h\r�Q�8�,�c��\0�k(6�#���}0��G����y���������m�M7�����/����K8g~�-�by�M���K�z�4(à�H���>9d��ѓO�)zL� �q�my�u$ƱSl�8�p�3\Z�y!��˩\\�t�N&FT�bL5��1A���7��e����S��G70��xF�.���%*�:�)��b��/9~t���\"EsLS����%�{u����]���(o_<��Zχ;����)�ߺNc��Ï��֊��Ջ4\nU>�#��/|c�#>��Ch�婗V��&�?�a.����坋|��%Z�#�\\�T�K�nsv^3�4��0X��eH�\ZU\Zf�7l��ځ����)�/��B-�h�D�y\n��2�m9{�N���ţ5�N/!f�sG�\Z��baz�`<`����E�)���t�4\\��A�E�1���0n����t�m���o�6�]z㔼�FC��$A_9��L��4�	�eB�r���a[h�m*�#Pit[\Ze�i�e2�_La�Zc�)oO/�1���בx:P�!�m�R�����,�i��8F�	�W&)XyL#F%�i��Z&�/���Do�Ag(�ḛ5`4\Z0��ĝm��]QBR\0�y	���]X�\Zj�x�^t\\Ƒ@�����W���`��qN_��㜜v�\n���MJ�W%�]�y�����j�!R普O���O�첶~���y6����Y���f��~��#y�D���w�W_��aS$A�������3���%&���R��?���9w�:� ���7���?��\"���z���q�������%��_�3Z�\r�������Í����_8y��|�G��u����TJ%��X[��t1�J�x��U.ot���i<���-��N��.�[$N#l�|�ɠO�Q:`��S�	.n�d�B�4;1�p��z<��#�>w7����LN�$N3nXL�/�	c�\'>�S����O=�����\"�b|��\r~���;>��+�>��#l���1�р�Z�� �����K�k�d��k������ւ�cP�4��7��6?����T��Qĥ���O�z]\\��Y�:�sLr,S!�41L��`�)�<�$�R�ql�$��\ni��\ne�b\Z��5���$���D�� ��,FTm�L���Q�e�gX���������\r��e����4�B	H�m�,�(!&�!���4p\"�����B��d�$�IJLs`\"#4c�2�}I�1)3�����6#4,��1��h!�488�M�t�_�2%��T��*Ŵ&�w�Úȭ�N&�m�oCdl�J\0�1Q� �)�<�@�B;m��͏�o��9(���_�4d\0�~�D�3��1L�#��_�NlQ�CF��x)%����\Z����	)�F�ȶ�f	T��Z�UB�Z�(�Bhq{mT�-�2���c\"%׆��-|;�6�p��n�P��J�ȴ˷����35[�|$��L��x���)�iA\Zc���0�̂��}��w�֣5򨸊h��M��Ka�|e(��z�o�J*ֶ�����s�A\'I8�;H�K��c�1�5m3]op��MJV̠;�Ϝ<K�>�����%Q`\n����%af�J?�0����#f�)]�#���7Y�Y�Q-���п��В8\Z�֫���>F�~���bE��[)��kT>�r��rm��^��T��N�������i�/��������L�{C�L��LŅ�n�o�xgKK�ဋo�N���ʔș������_&ŧQ�Q�̒�b姐{}�|��;m�dks���C�x�}�\Z3��x�\"�StF\n�/c�b�Lcz�N��9���]�����.��$�k�Ղ�9vwH�$��x��[{��������c2H$���EFQ�4S��P2ơ�`#�`����1Q�̔i�\n\"!Փ\0CC�o�I�b��TH3vȋ�-A�@S)��A%B�$ڤd$ \\bL$�ь���j��7�h�N����j�4��k���2R��0���y�\n�O�������t���\'+N��>�\'� ��������\'�3����v�n�]卌)3\"�En�w���x�����|�9�.�p�I���d�*���d���C��W(��S�\n��5�ĥ��h�>)��he�m�A2\n�R�Γ	��$E � ��\Z��$�B�d�f]��a���@ۓ�}@�49۠5���]1f�P�%�,����3�C9;m�GN<�>G#Vƻ�<��9d\Zr}��t5O��(��/�>͡�W�pl^�ӗ�����&�L�R*��N�^,�m�)�(b��s�$��)\n��Ч!f\0ۂW�!GR����}}�47wvw���8�©\'����j��ҸG�O7S�sS�9]*Ғ}8u�(��^�H�A��pFL_p~v�-R�Vgx� �S�B\"z�o\0m�9��(�|�#K��a�3Ll��1����B��q�r��F��SD���z͍8)�\\�sDfTA�Ӯy�m�����hȜW� \Z�2��F����H�*�d�h���`��8�6 M\'�b�㢢��A \\p-L-���q�����$]�=N�vH�w^өG�e-�PR(��{?�� i�{\Z�A��!i��̝y���#F	Y�L$(�EN�������B2���d�i\r�R��j��#�X)\'��(��#��d؜>R`��pБ���Q��(\n��<e�9z�$����M�����A��p+�b�����G_��R��ٳ|��O��_�ŗ^EEK��(�=����󙝞cy�����\nڬ���-�ô�=�T�������#B�sw�p�M<���?�Y�N}��;}�:�C��\'��}���Fi�b���&h��ޢ����t[4\Z3X����<��ϫĂ��ߊY:r�8��VD2>@��T�J�Nm���o�ٻI�d`\Z�(��S?���9C�(��\r���m��e�Fl5F��+��g���\r��1I�(e\Z�c�F�VJ�)��*�aF�0a��\"J�<t�GX����8V4eSr���0A����c���(.��[47w��=�a2���)��$n�&ew�i\"}ۊ�\0K\n� C�&�b�8#1h�l:�!�9�N�S�N.a��(z��%\"H�\n�$��dR04���e2\'1}��\'�K<�X�/p��\'(�w�\rm�(O��Œ	��n��\"�1����C��1i\n���PؓI��6�	=�N#b;��$��s���OƤ�G��1�<�L��d���@:��ۉ�wV� 	�Za�Y:��-S��Y�g�DY�c�(�I��vI�j�\n��X��������bå?���yP	B+���qK�)�m�_f�Y8{�\'J!Z@.?��[�:��=���+�3c��f\Ze6��j9��ؐ��-�?\'�}7�MOL�q��qD��`96I�(��@�9y��!�+FR�����٤p�Y�r�x\Zi�І�P1��(������ٶ\0�g�x��7�t)6N`�!�\nE�8:�e��cP(����,�X\\��*���P��r}��%��dz�A��IF�\"����V+���G05��K�ˏ��A��ܝ�]�C����$�g����L�:^cj��F���C����K�B}�b����<��CLǳ�\\�X�����������i2_���z�Fl֘>��\\�j��{�rSg�\Z�搹E�{]bX1�B\r�_�t4~�A,CSZ:N����[��s�%*�&�L�B�&t��i��cz�4�TI��/��H8�F��aϱx�!<�@&�Y<�Q�2Iy�N�S����I�b��;c�W�:�0�������������?��6��B0�s�\'p;lY�\rl�挐�r0�(z��AQ42:�F#P�?#�Ԍ��rPY�eʎI��b����ʼ�}����[son\Z�\0!�P!�.8R��^F��:���Ǳ#�c�+*�eQ�R�	�k !$!=���]������������pr��k�򬵟���<	�&b�-�c\Z��O���4�l��Q��G�WgMR\Z�\nF�2ϫ�D]P��P.t�PU����Ǝ���U˱�|���Z�_k����P�^�osc��Xfx!���7M�M�p�|�l�.hc�y�[�%�Ĳu�:�7��в[�{7\"�����C��Y��f��G�c���O�_a8�G�4����(Qh}�\ZUA4��tϴ��93��C��␜�*>Qb�Y�P�82D�����F5�x.N�H�Ԏ�*i��`D�R{1�Z�Ng�a�\Z���]���BX�G+!��+�5���,}�,���q��k�r	��+�y����\ZX�	.��>�/�r,9�3���_0��:����Y\rzڊ<��AYU!yޞ}������F����YE?��[٥���wp�M��aK��Ws�]�Z3l���إ�����~G�!K�T6X���a��u[7r睏����5np�#x�,���wދg���6l��)���w�6v?�l�3�Syb���2)\\�G�8*3��$(*.�F2��$�v�L�^yV#2�I54\n�]p����x2���:��tL�m�by��c�i)��^jUq��j3��x��Z�����3ǟ;�}b[bP��E�I�\r�b�MӖ+�UDF�|��4������Z��{Xc��3��(v/|kT-A��)�V�1�u�ԥd�j	��A�G�˷��H��#���^:W��AE�A�\\�#�#�0Bѱ�e�\Zo$��	|���nk��N�lDPlj�2FR�t4�����Ҫ���(4�6I�Z�;��q�VS\ZS���y�|���_��0�ҟ���4ų���g��0F0b&�Dl��!�c�0s4�>����*f�~M�t��	�%�i�׊MSЧ��IK��ͭ����t��<C&�T٨����h�{2��`�		���<�{�g��	�ik��\'+R4�\01ޒN�7��΄t��:~XL<4@�8�0��3�p��3龱>�$:N��(��/_�3�\ZJ\n�Q�	m�k�t��\Z6�y�{h��4��6?\'�$�r�&�8��/����8�9I��4K��(�X�1؈� ��+���+8~���/P`�&����F�O��b�xn��!���=��Q��Bb1�_��ue,�ؘ��G5�()hc�j-~.�INb�Bѽ���\r��35�.�3Rň�Obj���F�\\�����cL���1a�~R��x�ۘnr�6l�F�G֑���+�uF㘢�#_(�M����^`��V�Bl�`<����Z%��X|�	��+�$	\ZG��<���U���IL��{�9��4��\"���+�>��R��F\rS,���ĽC������ F��UL��1.�?�1��	\rx�<�Fkw\\-��W�w\n��!��Ϲo9����d~a��Dޢ��SJ�ߋ\r�Y������;�=�Xq�AْU�l5&��xm4K�M=`��o�\Zj����������~M�t�j1�A�H�Z��)\'�z�ɿ�@�N:����,}��[Vi�s[Q%I|õ���l,)�Q��8�h��0Q�h���D=频tb�\r�p�<��8�N�\'�1=⇨D��1�Z���?�1��.Ȩ�tk�F�Ǩe4��@�IButcbʅ.F��$~����Vo&�[���<4`�{>������͊F����+�-9_蘿/����On8`�>�&@��1��I�}7�B;��\'o�I�>���R�`6[*�t.`�̢��e딂���ǺPX�t�{��1�DT���-�c|����j�� ��{5~���1�^���M���t�Sܢ�-z$��(��Q	��Y\"1bD�*A��*O+�F�n/�NzW�(\ZL���S�c�\'��t1�2y(Ϩ�N��D�v	-I�P�M�L��d�~�~�@ӈ�$Ѵm�T��IHc;��I��F�:U`#Q��d��F4\Z��֛n�[�d2�<jd\"\r�Ln+�t���hNNK����4J���3�Jc�\\\'��2d�N���	I=)������8J��F-DϞ����	��/�������>ڦ��m�FI<�\Zσ��hXl\Z�V,�TɅ\r����a��`�$Q����k1��o�\Z���l�N�:\r���7F	��0qǌzB��D!�P�&�����eT��z5mh����#&A�u�0b!�CߣQ�����60^�x�Q�y��5�aD1_p�N�F�\ZFh�l�-�gHDh�!�(�$�(�{���k��\"�<b�\r`�EB3hCf	�CT���\Z�b	�<�8bX��<�h?��\\�Q\0��ƈ(&0tj\0qDXF����8�I��g����N�H�\Zu� G����J��)9�$�ԣ��\\п(�1�I�W%�1����\Z�YK�j���4E�Z�#ȍR5F�Nϧf���V� �V]!pm԰�6��b��%��0���%!9�x�<I�$��b�O\Z�5`�r6����̞�\\W)���|F�o�ӡ4\r3���}�@�/�f����̈`|W̭�=Հ���n]��xv2��s�E)Uj��UK�(��B�AX��Рsc�)��&�F9j�ۄ8Q*\Z�Ǡ�Y�x9!��1�{1�P��6 ��=�6X��:�]}y/�^�H(��1�jN�	uĔ�#FQ��K�����\Z:{g��|1��GQ�;��\',K�eà�ys���\"�W:��v��z�m��ܱ�r��z.d��5�f���\\b�N7S���Μ����gu�jsD���SKfP�%��5���+���c�/�x;�ha������C��Daў�\\OX�S�	�zy��w�T�ک/FQ��P.��j�},F�H���GID�T��}���\Z��x���a4F�#�J(ޘ;;��\0\0 \0IDATU�F#�\0%3�]�K����7�?FW�߼-�!N�⑤�hU@ؖ�L�B�b���I�t��$?���~.@�	1	���\Z;Ͳ*�8A�\"�\"�-��V�R�ā	�d?U\"(�B�x����_]��D���+�:��ϹдX�c\\pn�-V_���#R�!A�ҵN�����4��1n�+/U��6�Ը�M����CQMR\Zh�eⴾb�̱q\"y��:൮�ш���\Z�c��(2��^:^+������L��i?c�c����\r&՘�Z��M����`�DI�4�*&�!��>�H��9Q�7�_]�&�\'Х\'�ѦI�麅>2�fM��m-Mڳ-���#�s,���ib���+B&��1:iYgI��*��1*�F�1K��>��e�*Oc���i�U��u�-��X����%QI�\\Z�k:��\"�`[���Ij\r5c�5�k�	pk��eC�Z�/��%�؊���!�c4&�U1]eK��娨0�$t�rc{�8�s~\Ze�[��$b��A\n�Pe ����Z泽�<VFjCx3fk�dN�����ܹ�ݎ_%	���(ywDI�3�Pakݾ ��1+�c�Ny�F�<�GX�=I(J%�8�lH��<I��*��P��0�+ի$�9k��=�$�x>�T<<�J�mN�ݙ�\'�14��9�@24��х�e}ܠ�/�V�hd��T\"��a<6\'\r:��Q�aslN:=C1�]dYڨ3\Z����A���\"�{PI,��0�x�Rϡ8	���<CG3ZJ%!H�a���\n0�D���B ���*�q�U����AC�H\Z�v���_cV�B��(yJX�b�%y6%]~��A%�������������r�<�Fh�]�E˖\0azHR�Z�(���>�����=��	�@#T�$!J �F4BK���Tt̝��\r6���C[[j)B����9`	җ�-u�c�(�a��j�?}/����s~��j��܋�O��A\0�\n�\r ��0������$��k�g��U$\nWR�|��j\\Dl���#T�\r�a�~�Z�����2R#\'#�y��}%�����Y�tG�];�k����I�XNǓP\"�È\Z�xD�4�!h#Q�U\'J\Z�QR�a\nx6\"1;J$�$a\'���\n9;L$E�%a�I\\�+.�ֈ���LB� e��A��grD����X�Hݿ#�P*\Z��z�7u�A.�C�/�L�J���v�-1@\r�6��+PI\Z�O����	H�ģ�t9T��o��&��J�x���&�\Z���\\�c�&��Z\Z2�NZ��0	��G\n�0[(\Z�X(zP�M�E;B�Wd(��{>u5��Fb\n���!�a5�ҹ6\"��J(>�		y�iL�xZ\'V�D-�:�FN��\"9��mH,ű�\"�N-�^�C3L��7�8���*3�<�I�+�~�E���i�� v�XJx\"�\n]�0�^�4+�\0��r�e�J@5yԆ��%�Pj�#��(��fɹ���@:RK\".+\\+]�j\n�j)h�XJS貦iv\'<;B�R�����3�2�\']۱��s�.��\nQJ{��Z�[x\Z�Ș7@����R��O�T.�M$~�\n�q��H$ o+X�\r�|��Z�~3�q*n��B�\'i��l�6�U(���6�$�yB*�����Q�(uQ��KaL1���t�k�MB�gCbS\ZSm�x��n�J����*v���1�㓨�R���\"^	��%L��R��\nV�X<|��$⏭�>˗�\r��W\nH�M�N����5��Ljg��\0�K��N���[E��bș��jL��#ZA%﬋�\'�U�b��!��Kj�*R��SqVQ)�t��Z,���\rF5�O�5���j��4F\ne<��\"!���+�w�s\n���O����D�N�gd\\�j�:V\nn�L�M0�9��YS�u���S���Ζ��T��k��ƪ��\nbH$�Z�F?�Ήzj��4Ě��e���}����%��>�\\�q��0��\\�2$��N��N�6S�5�Q�\"b��D�W\ZaB.0Ԫ��\n���$BX��,�j\r�o�{�ʈ�鶘�T����l<�e�N�Z0/7f, ��`,�P��Ɂ�]�_�(U�#�3x���y7��C��<\ZU3!��&q�te����Gلaq]S��)0�Z�\\���ݸ\Z�_bfʹ�ƀ,ٷ�1�tQ̙)��\r��\'s͚��?�)k:��d]�Npۜ�#n��u����47��Ӎ����W�<�o��[�.u�=ufZYE��4���r��i�4πM�i���!�Fߟ�b���m��\'����>ٜ���wߧ�o�M�����>a�c1�p��jݞl�f���\'��]Sݮ�&�o�N�ߧ�y�U~���=����s�n�>��m:�=y�?U��ݎ��S���Y#����1k�}���O�����ʈ\'6��?c�3�h�NK�)k3���wO�oq��J�����\nm΁#qnh�:U`�[G\"|���T\Z	qӿu�$�Ѐ��T�j!�M���DƄ�-�����}u����Z�0��^5.\n�/�}�!L�\\����]�s�U�_@^�t7\Z$�<[�2v2�8��)�O)F1�c4�ic=L\Z\'���N�����Ը�P����4Ztp�hc1>��\rA�N�a�V!	�ܓ>G�\Z���)P�w�;��*������in�[��o�j�@�Q(u����\Z�8t}ϗa�KI#[��\'5�5�\\��d<��\'�o:��*�9��39_�1�)�T\\_kC�o�\\����&��U��B�5�ľoG{O��4ߩBu����g�<�ږ`o��¦�4�W��G�c�m��5�ˡQ\r4A�=S��	T�8EG��ֹؑ�E���e2]L�קZ7�����a�ԍ&�z\r��A,Or����n���];�.lƅ���k�4o�mӓN��a;�Tk!���\'���7oM�S�����\'�Yَ>>�?�5z�k������>y��^G�gl�4�	 ��b�<��>�*��j�<y�(��y ?���)����2RM��b���֨VF���k��8�e�.�I�a��1�J�8�[��8�և���.����k�P)�x�������z�7$��{���Eexk}\ZD�ZO�x&fu�6��M�AP�����S��T�e�	+����!��t��]\"��>g?�ԐYW6,�7��`:�|\"�W�\'T���OB[/T��U_���/}f�ax#t���C���bt�r�;&����7Ȧ����~n\"unY	���h�\Zd՟ᘷ;A�I�b`t�u��k��o��������<o���7�c�\r�O`��GM�Ns���a���>��u=�o��p�o?�R��k�S\Z�!�x�tdR�F5!kٳ�k*�Cn�\0��D�᫡1���4]U����� �>^p�~��q(w:Aq�-�/�;�;�#}��\\W}	�8y�ψ��פ¼���|qu|�� �s �O�N�!C��	�sB1���	�?���	 ��\n6��uf\'��J�\0e�-���-�f ����ȣ�I��%��\ZIl�|C����N0��@�F����R��H�J�R�#�2���5թ�u/�$�j����h��-�����X�Ґ�&sg�QAo�r�7�c6���^x�Wa��`�vTl�N��ݹ����n�2��֍пr*�D�y��Zز1M�BZk ȑ����`�O@m`<\r��Ǡ{gXx��[3V-\".��Yr҂�j]zJp��|t�2����韃�Y`RA7�@|9: ��9P�$��AT���Z/�� �`�j��:/GZ�ۥ���k�Ϟb0����Qx�!]zU/uձ�K�e����$M{ꂞ1�$+�u�	��Q+��$rm9\'X\nh�\0Z�9V��8;^�\\�*���fX�\n�܁�ص	�Ȥ�t>�b\\���l����Z}�ߍ?F�n����[�PM\"$����!qucH��^M��*����£�bf��>Xt��o�h���$M��Ο��h�$vJ�O�5�>\Z�*�\'��z�nt�ڔ;R?s�1�5d�	�F��\Zx�\Z8�P���\Z�� ��:���`cD]�C�tl)��H���3����4F\\\n6c���&�(T��ː������cc4�R��ݚ%.���Z���	��sk�j���))<���,vt�~��1��9bS�R�GjC���ρ����	2��@QN=\"7ŵ���D\Z�g���L\0���(�<�.P�l�|\0��R����e^��Y��Ti�X%\n�x��Rv�.�i*�FF�jc�e��\n���ed8�Zex(\"�;��M5���W��dͮ\Z#��Pt����<��N��B�~;�&d��?@o�.r��������殽�S�����`�Mp�����f��|	r]���(��#��\Zd�r(�����{%��u���QoA�<*e�ZW|�ºa��x�n�*��зt̂?~-v\"�C��\"�����w��#�W �}�Qt�Ð#ނ��k��2WA��7@�.��q9��f���(�k��Vt������Ue\0�����M�֋��K���b�1R�;�W@~�E�h�\\\'~\0��<|�c�~2�yp��0���ˢc�������V������gx�� (�7]�������B;r⇡g由������oB�h}�P��?�#��B�����#��8��!d��q�H��=�����#�/�\"�kG~�1d�r\'x�,D��n��7��ѣ���ל+\Zl]����$d�n\r��=�,8�U�\r߂���]�#ނ��߄Go�����>�\\�D�M���?��E���������u߀�}�6��_�S>�3����\r߇�\n� 6�(~�~��ش���!��k�~��.�����=�����!�Mp��a�qp�7�?@߮p�ۜ;`���B\'c���ꪻ�k�C�\r�=;�=�a�>������aots����Xx�*x�\n$(�[V �����n���*\\�Ix�J��CO�,����0�y����6}��]�?^��s	4jhTGTah�5j���#˯��{�������b4߆��	�ן��%��.=��7�y%�+����d�}�\nx�`�a��k�)!�	�����Ȃ��ح�=�_G��=�|8�,���I��2�U�\\~ǋ5���m�j�iϐ�im�\'�<�W��r@)o�h�����3cF��{�\Z��EE�YX攣gs���|t�|�L^}Zo�<��sy�[���Wt�W���c�rL\'������x��E-)r��x�[�r�!�r2�xܖ�hTC,E�]؝�wn ��E��ý���aǤ��+�:���!W��=Q�䘠�-�/�֌��o>�9���%�Q[�������������@3�������aoFg/F=�>~;z��`�cН��q.c+oC6�@g�w�]y:o_��_#�oA�w���{�w_+ouZ���97�+�v���>7_\0��	kD��_N=���Ѝ;����B�y<v��cg�J�������G`����_G�=	=�5h���|�������_��:�R�.@F��+oA���u�@�\n�{7���ҏB�*d�-��{�\"+o�G�K������[�uRhw���t�u�砏߆��g��/����S>�.9��8������,<=�}h�<��@���\'~����]������_	�����,9���[�7�>����%z���EG\"�1z�O���\0a���胿Co�	�j8�N�hu����w#ǽ���3,�����[�������>p	�1v=��j���\'���A�}ɧ�{.�[\n���+���^>���ȵ���c߇��Ӆ�?F{=:�n�6��1��ۜ�ǭ9���ϢC��#߂��1��-D�8�Y���u�~/���]��U�֏^�-�5���0�	��l4���;����?]���9��D.z+D��W�k�F�\Z<p��u轿A�<��xt�?I����FW܂<p%��+ѥoD�6��߀9������̈́k���r��}W�m?�͏�C�|dx=r��ѹ{#q7_�n~�����>\'��|ݴy�轗��;\Zy�\Z���B[����.t����;X����}v�[S2$C������r[U�������n��wsؒ6�ۧ�8|\'��K��e�=ˮ���3Z��mI�.��$���)�� u\'Rc�+P{,<J]�o���w9č�j�F�����\'��I��y��������� 4�Q��M�y�֡�}OB�\Z�.B,��G�:���������������ao�]B��rd����6ؼ�Yl����=�#G��eǸ{i�zv��������u߃ً�R7F<L�,pm�K���ԝ,��R���;w	,:��Rشܭh�ٰ̭��F����72oo8�hGR�D����EG��y��N�>�	��!�#r�Y��N�o�s\rz�OP�DN�0�����[ѕ�#AYv]j-����޹��?L��q���N��\r��vnm���Yu켿B�%d�2��EF���t��c����\n��v���਷��g@�\"t���\0��!�h�z��Ep�o`�����0��ϰ���矂�������\\#AM~Br\0��Z�&��~���{��7#������{�b�K�p�띥#߅6������Ga�Վv�ߊTk����<�	��b��ܓ�x�\Z��@V��\Z��4�{7�(v��{���<~;l]w��_���X��a�E��\rǼ�	Q�E��}d�S�G��,}%,~����I�t�Exr��%�����%O8�Ȣá������-�-����}�!�+a�<Xx0��V�	[����r��֕�=�\r1(��ȱ�D����yr�[�%�;�k`=��6d��\";-A\Z��+#��9�-���n��~�>�~�r��P�!C��[dH���ʸP��>��w\"��2g1�̀[���0z������>/I�|�֦n����F����\"I�D�1o/��F���o�Ёz��p؛�U_����և��Э�CXG����6$���s�����ρ��e����|����V�o�w_���B����/r%D,��?���(��Lxٹ.X��4!�c��x��>r\\t��Qh��4%��q5M*�9���y���NE��<�����խ�\\v*c\\v��\rP�wq�+_&�vth�c �6��蘕���\\�v��qLt9��M\\[6���Pق.:9���C߄�v(��;��Ww:4�����\\~<� �/pٓ��~.�w�ӈ��]p�ы\ZAD��p}�\rZ�@�6Xq+T-�{\\A�9K��\r9���n��뾋��~�y7�l���a�J��,�^ukW`h3\'Nh֖�\r�ٌ\\�I����Vc�	��1�H�h�lbc$��8q��v��/ �\\����O�:�]��!8�=�>4F4F�\Z�Tǅ�B;t�!�����[�f�,ZBW�	��X�/�����#�^����C�k-��S�p�f���\rq�����κhq�E��vʬ��Dap\r\Z�i\\T�͗��wW�U�;��w}=�3�o��.rnW�7�=���>��		Q��4n I�����P,!�2�/��\Z^�W�D����bU�xh��n^�Jtf1 2�}#�ɐ��\"TAXp��I��p��.;�!�u>�#�Ѿ]���1��]����P�`~�$xӏ�%@��~i�cN|?�Փ����{Ot�S���t���)�ƾ�з�`/}5z�������d�C�=�F6��^�9���a�^��o� �x9�lq�ͪ��C���~���ƈ����m���S>���/��G��_�\r$�Р4A�S/@����oDF6B���^HS+���[/Bn��l���8+\n�/pV��������.B�O��t��J=����w�g��_�އ�:k^�,.��;����Zv�sͥ�P�?���᫐���g G�6�BW݆�nA^���e���7����`�\\(w ��2�����_�ġ�+������u.3�&�2!�1��G����\\�y��/!K_�=�����?#~��H��|�����\"���j��\n.�\0��wظ��;\0�1�wA�9\0�%��oj�5���u�W�ן��\r�������v��7y��s��w!^޹�5����.�c�JH�л;������\'�D�A�~	��q�W\0+΄%�j\0\0 \0IDATo�ia��>/E��,��C�Bx�W������;��������w9��+t�έω*`c�WH-E8�].����#ë�_C�1(i�t�#7\'K_���S��A>���\"V�ˣ���?��~��`�������!�^\' 3w�����R�/�o/�(���k�_z �sq<�C���#����,��	�1N�1xy�������\'�N;���ܖ!C���J֬a�����T�0�6<�v���\rC☤�������.{O��e���v���Fh�u��&����z��8�H�l��R�zlx������:����\\�|4F��Y.kԦ���f�g>�6F\\�sZ�b�c�F����B�eN*t8�Ϲ��6>�s�B�G6>��1sWtd!v=ڄ��������P�rY�:�`h��Շ�D!W�-���vt���BTw.f�}Hu�1��2Z��~(vA8��{!��µ�¬=�ww��h��w �<��#A�ڑ���X{�c�\Z�^���g�)`���[�J��:�3{a6-s�};�7^��6�Rږ�Й�\"~ٰ�=VР�D\r\'�t���Q�n�}���_\rO@�nn-�:��UEg�h[�r\'2s��O3S�nl��L�Jջ\0�Q炶Ӿ.Yg�x�&��u�6.C�\"2wogu{�^dp\r�v(�f@uj���Q���C��	��A���YH3�����~���%��C[7ڨC��5��1�i����owV��>�^�\n�wY݂4�stZE�g��-�=*#h4�t�I��>�n�7Ü%з��׺����|ʽh}�śt�4��b���\\�%��_��wڨ¦G�4��{<W�6<���г���D\r�{6T \n�kV�Zـ�>�x���\\�3��Ι0�ѝ!������nG�k�n]2H�;���M(�	 2d�0idW�]5M�)�1M���B���H�zZ|�5��>�1�Ίm������̤��6=�����2^�L�Xi�Y�]����bt��W�Ks*^K��XK��d�I��ws<��K�\"xc�1�2���k���\Z��z��5q�cc&�e=��φ	��Z�I6�cl���k�@��K��y�~^Z��ɤ�[�b��&ߛv�d�>�m7�\\h�N#`��v�{�\Z���}m�Fk���!-�^g���ҷ�}o��$�ز�Ʈ�ih���ҡLZ���j��2e����u�}S�f�x�X3i�LZ���[���^����Ms���ۙV��H悕!���Ě����c��d� ��QM�a\Z�	����Of6�6�*\'c������ǯk~�)����I��䱶��N3;e|�:�1���Z�-�O�	/Sj�f�2��%�xƶցm�+��O&�\'�8���Iϰ��ބ�L�\'�fLv�і~NCwS�e\Zz����#ۉc~��#-�I&]����4�)2���}o�}�\\M�~�${V��M�ĵ�i�i�Si|�\\e�G��Z4��2dȐ!C��>!�H��^�2dȐ!C�2dxN�Y@2dȐ!C�2dȐ	 2dȐ!C�2d��2dȐ!C�2d��2dȐ!C�2dH�2dȐ!C�2dH�2dȐ!C�2$C�2dȐ!C��\0�!C�2dȐ!C��\0�!C�2dȐ!C�L\0ɐ!C�2dȐ!C�L\0ɐ!C�2dȐ!C&�dȐ!C�2dȐ!@2dȐ!C�2dȐ!@2dȐ!C�2dȐ	 2dȐ!C�2dȐ	 2dȐ!C�2d��2dȐ!C��T5��l\r3��gS�!C�2d�{���߽�����_�(I���_�M�ߛ\0�������+�\'�=w��a����7�������۶>�%�gG������奄�����\Z��G�gA_�S3dȐ!�s��3�y��g�߼�l���Y�`�W_���h���\r�p�\0ahy��v3��|�G<�m�ܡ�\Z��߉��e���~y�ü�˿ED���\'�����b�E���\ZFU���C<�H�8V����>������?|�i�/\"����������{E���F�?�4��\Z�V����6D���\Z���kX�ed�o_y�8��)�|�;���s�]�!C��3�̅�-���ߥ\0p��N�%������ v[P|�����k/��(��B�u����<��5Oծ�r�~�r�����7��^=>��$����o�6v[P����;��\0�m|7�����w�u\\~��횧ɸ�����٧���mA��zA��JEáK;�9�������~�H=k��G,��9r�3��yh+<�\\dȐ!C�2d�;@�}�:�D<�h���x=���[\'>D9�ȋ>I���#>�t���|ƹ��89�#<��i�?�? G}����\"�}�_��Д{E����SΦ�?�NJ������������?�i��}}�(r؇)�q���s/���/��z�[ϻfvPx��x�9��A��S���<��瞕���K����/�̍�E�.^?���OP:�\\��O�y�����^��|6��>���؍A9����gS<�\\f��K#����B)���y�\'PU��wr�)�qs_���q?�v+r�G(�~.������w@)G������������v�yn���j�p� ����?Y�C�T������ߌW|��g��/��ŧ�3�ޫ��sN���um/;�����o_�7��G���n~N���ɍω)C��OG���j������Zd��7��V�ly���lO������Џ?����Ǽ9y�=��\\`x��h!������s^K߫�D߫�Ė��;���Tja�w���E/=��\\����R���ٍr�;�����	�ݻr�����|�g�*�`*�\0����Z�9��5��O���%��e�r摋��r������������~�\"\0.��S�ʯog���F��)��Z;]�A���y�1�wO����<��>8�ݣ������>�ν����oO>�S�|�ॼ�轐�>�{�sw��f丏s����w���Es�ཧ��=^�������so<�=_z.�|�q�����7�r \\z;�5� 8�:������ʩ/�6�cɢ2�o8��n���(=�?�{\n�m�\n�q��>r\0����R�4����q���ٿ\0��p��A��W�b� ��Ŝ�����Ӟ�2<��t��Ӎ#X��^����&\"�ƭ�5-.�u[~(f�>���2�����쵛O���S��+�H�(�������-�F�Ч��)�2�`�{/4��}�y8�����J=�W���ߛ�����w���M�?��N;�/�_o�\rw-���_�t��/?���7��żafo�1��6}6�8�\0$�t��5�x�����O��}�����B��0Z�<�^�(U\ZV���������������`���h�\0���ؼ�v>�#�粏N�nw�;�gt��y��̞���M7�	c2�C����|\'5�z����-e�hD��5���kܳr#fu��xP~{�ZOx^#L&�������U�8��?`���D���a�S�`�}��77e�|��;�00ʚU�y��.�raL�kE��qϩ6��B�gع���ߕ�/�(}]��͐a��Y����|��:��U�\r[�3z�\\}{ĵ�G;��˟H��u��֯��`���9��F��&dp�ou������n���6[���\Z�P�SZ;��5]�4uN2�X�ڡ���+vM`���s��o�o5G������a߷}���x��ƿ~���4�Ævٟ����çlp�ά3�ĝ���Ze��~�k�Z9��s����Wq�/ڡ�\'�Z\0���y��\Z������h��=gkz!J�H,�\n���\"��XQT,(VPQ����\n*\"M��� \n��R�I/)�������l��`\"���9��\n�3g��3��<uv��Y��LV�-�A�\n|R�u%lؓ6\'�H�aB�a~%�g��|2\\�0��l�ѡ)r�r~W�n;X�P\"\\�1Niۈ>��q�=�W[�or\0���#�^[��+�5?�ze#DQ0zE�L���?\Z{�o;��0��5���M��\0Vt�����SJZ�$ ~�7���\'����\0��d�,v�*%����9�U��~(O^	r�c�̾����jˁj��ch>�\0��)��\'6��y?�]P�[\r���2Ɏ�&7\\�o/�.�㕁M�4�_�͸�z�\\���yi�ʆ�SQG����V��VN���QS�@�{�����!d��V�~�.TV��/e�BLu�\n����ꫮ�\'�V��C54KI�q���*]�hܫ�j�ӭ�;�z���*|PoTw�6�V]�d(-5���!�(�]���oD�O�1q�w!��TnQ�Vmg�k#y��w�[*�_�[τ�u^�6w�>���*��̥��B���>�<[�A\nfh����g��{��N2玥[�����\r���+	���{��,�<<l-��/��6��A�)������7�)�<!�;DЯOb�n�\r{�8��w�րO_�s��\0X<i8&̦��i�D��sJk\0Z�&���6\04N�����ViK������������ә��,�����e�ӟ���?ӯo\'Z4�\Zu�]�b�� �~�vM�����1�`��BN�s\ZguL��.�b�I���(*u���ݘRb��YJɕC\Z0bxJ���75�r���r�s�1v\Z�en~��u�h����o�Ɨ�D x��!�����OkK�$~���6�n���Z2��wL��Mo�m����t<C���7��y}:�*U�]~3��wL��;�a���G0��(sy�v�;<8��V�Ɓ�B|�ɡ/�2�RJ�뫎O;�I���1M��m�$�3���ٮ1���_NjՐR�7�ś��WTN��ӈt���K��\r�Վ���Y�}��������^CC���A[��+��č�\'�����X-�t���{|�E���L�%���W.~��cą�R,���<��v�-�I7p��N�������݌�����m��ӿtѲ��G2r��xۭ���rr$\'��rV7+�z��^/DF.�k(+��w뼬��%1N`q@�=0�k�ֽ>n�$1�`��e �Y����|�4�A��䛼2����-�J�����(��l�o�x�Y�GLF]�$��/N�RFl��Q���|���I���?,GJh���<�xwK~�c���(A^��ƋU}�{Y��C�$��\"��0�|����L�i�cK��E�<KrL:��rf7+{3L^�U�Sc\"))�<�~m�)7���ج�ݯ^6���op���!ΰp3!;����E�&��%#.rR\\*y��r�R�rM���r��j0Vm�?Ӥ�%I�:�N�{��6M-�mP�k/p�~���Ǎ^���N���d發:��--���c�Z7\r��X��˼oݼx����+!t�����G5�LM���o�{������ɱ\\^�j�[-6�J������D�8�O���=�b�t/>1�;��;��s��%�־1�)Y���as����^�\n����?�0`��+*��-Si��@zn1=�5�;����[^^ķ���01��mRxqt?�\'�A��i̝�=e�%������xƼ�5\".�I����?���3���䗔c�*��O]��j��y���co/�Y����(.y���6g��L�|2�����Eϱ���4�����������b*�3��h�\"��Ϗ���s*�/|tX%�>���O\'����ւ~�ZT+_z�	\\z�	U�o���ڗ��r=TX���*�o8�+7��5жgG��U~��eǅ>\Z��Vi���أU����t\\�ܵa}\n�K��j�V�\\E�=pi�ZeZ���I)��Wn���K�����g�����/��\n0�򞌿�g�c���ql��`�n��Ow�r%�����ʂ~���IV\Z&,Y�aԥNZ4\n�\"W�w���rf}�b�u�|�ڃ�N� �	�/p��X+VD:^�t���&�WF릖�]���d�^�~Q�Yݬd1�sȤS+^���K��6�\'���V����[y�͠��a�D	,��i�E?x��|vA\\���/g�b7w_��K�D:�Q��=mX�G_�#QC@Q�d��^N����M-\\���s���wnFr�t����XHK1��$K�0z��f�|��-�}too��.��f献�*�+�w�x��9K�$>Z�rK��_�vsf7+\"�J&3��\\v��(����KI�6IK1�z��6i��-4��7/}���w���4N������<x��\"����\nH\\����_�z9��\r�!�YaPo;\r���=�>�5���\n7����	A�n�\"���S?+g�m�F��cz��k�+��^	��<�q���)�p�I3��&^s&#���[�Q@\"���,�J<�d��Fp8?$BC\0q����H�vŻ7��A��h��\r�g�X��1����cٳW��ǫ���/�|���ݗM�6)�<>�ys	�o��oRT������z�XN9�Q�zB�������sQ�6*l?.��r?�t��xb��ޖ����z�f��	C���5���W�&ɑ�2�L\ZF��(��n���hIq��?a.���5�زa�\r��	M�ڻ=R���/��0FQ+�5	���cy�6����q��?jCm�]��廓2q<�V�=F-�_��\Z\Z\Zu���{�ydJ)#;�0�!$>Sr��6b\"�w�b(��\n��R)d��l~]���Eg�q{$!�l�|cP�-J����!���N��+��bTg����.��+�c++��3�=o�7C�����|����)���^~���k#}��NS���r.?��	�-��^Vm�q��Ea��*h��.x��n�0�x\'lVA��p���O�=,��Ä�\"������\Z����3� �Cе���-,�e�\nL�)���.���d��^��Pcpqon����>�c�7��� ��d�No�a��Ucl���jx��c���ά�c4�gP/��ƫ�!�\Z����{�j〄|�f��\\I���l�}��_���V��27�1v��͊�Z�����ð�X�3���q`��a�vK�S�az��\0��i�\\�\0lO_Y倥�0�2���{㣝\\�K�s\n��}��KlxM���l�6����8l��3��%�!����Z�<>f�?��27�b6�w{f���ԅ�X-DGظ���0�[|�a��	�����7��Jȳ�w\r���.d��۔G#�P�[�B��r%H�1�-0�8br$���a3ʕ����B��R�[��we��A���\\r$�$=�(3�c�3�v� �)�-4�-T��ª�Kb��Cv���l�E�cJ�$�&>S��*�g��#�&c�:x��MT��P{r@Ή��Hr�zo\r���n(,Q���⍐��0� �O���@�SR�zOV�IfNU��~�p(��H���44�$�v�W��T-c�>�:h�zsU�&�@2��Z4����<AG�M\n�%3*�[��-��$�Xb� �B��3�d�8A~����\\�z����؛�\\U����=��B�V>��/h�-�+��{�e	=G����Z\05|e�SG��0c�m\\��r/��(���{P���ׇ��G7�g����ʂ�ܥR����y�xZ�VMHk�ڙ�ˁ�����v��awFWM����p�����x�8�/�g��`�ߘa�	[x%xT[���D~?�����D�!1���y�8�ˤ�+�y{�����Sդ~,������pg�5���r�\Zٗ����W�&��3���c\'�qA�fX\r\r\r�),ԋ3h��BT��Y���t��[i����L�#���)��-��sk+��H�ݐ�d`�\n��X���q��F�\rZ4��Cz�$�����8dR��iC�_�tmk��\\��\'�Η4OUǗW�3��4mhi����׶���z�*�g��VҳU�v�-�54��2���JN�$3GҦ��f���\r�6AZ�Ar=�\r�4���d�c���&.\\p��gUA6�)h�b�itnc����{�6�T9z��u*G�4�E#}{�\\\Z�U�7%�D�[)��Hzt�rB3+RJN�`�p�R\n�%MZ�Z��\r\Z7�`�@r=�&���ԋ�21�I��$��0 6ʠY���DE\n��XݚH�\0\0 \0IDAT�Y���<���0-�m\08����Ga�6/GLb\"��u �$����X��,��\\I���X,m�$�`�I�ڥY��W�l��r@�vA�FN;tog%�$�@)Q�Xh�f�b��#��l���U�e�\n\Z�3�V������M�B�Ě�8�]0��O��\r>-΀[�d7�\n_O��&B���;`��,\0{4��\'��JM$-9)%�	�tnѠZϙ�bP�a<�;���c��Eqv�f�E9���ά�r�m�p�Y���9���Ѽ��\Z~ّAז\ry��1+���ؔ�z1��|�Ę�9�5gtjJ��D��Me���l�s����B���?r��Y޷#+7`��\\��=ti�LL���\'�ѥ��Q�5.2�����ꭇز���:�Ni͊���v�gvjʙ��T�f��s�5\')6R�C\'4�i�xV�v�_�d��8l�.��o6�aw���-F핻�L�\\�����o4V��*����Bˇ������M��9d��Wӵ���Im�u�:���	SJ������:�:uy]�����_A�ci���hc�ʼ��vi/��������`n(�Bi~κ�p��0|:�-�?~�}a&ܙ���dx4��ñ����YSkSߟ��5��K���\'���S�8L\r\r\r��-�[w��zu-��;^��u͝�M�RJ�����r,����>^m�+�k�?���.H;�,��i���z�\\=Y\rϜ\n��7����l.�����c]�*�D������M�Z�\0`�q\\}�5z�hhhhhh�O��3���ܱ���\\^�~	�<vz0�ȉ����|ok{�D�؋41��8nY�o�;��G�!1��FX�ߊ�Z���������bwz�|���s���*�{3��/޹&x�D�*�i��S+�4���߆���n�:V0��AXV�����������AJ��\\�	�À�IwM����0��\nΗ-<���A�DCCCCCCC�\r���P���\"%�Hx�[��+X5�ǴM>���QBdHC�֜4444444444��\n�0������ M �6_�s�S��?����!���-✉Z�������������* ���]+�gSB�K�5C}ߞ��X{e@��r7�Ļؕ�P�SL��Z�ϕ�W��η��r�k\0x}&���K4444444444��ǻ����\Z��S�x~u{H�R\'���~ͪ]=B�������vB#�y	(\n���5�Ee��<�w1�6�e��\rH	}OL��~]�퍯i����\'1n�R��F0�2��57��%�.V����U�)mSq�-�34444444444�wH�:4�	^^]���7��-��u���\ZR��׭��\ZPL.{j�|��)�\r�Q�pج�8�C�1�0��nLч�=O\0��O��w\0�ڂ���v\0���.�Vm��q�i_6M�{��Wm���i������������`�Kj��㱷P}M/�{�)A��KvA)Xr��H�� ��!QN;QN;\0�	�.R�i��b����!0�_2�J�/.\'��rڈt��\nN�?\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z��1���n���0�;|��:	�C:�Ч�SXP3�Q�򐘚@�a�P\\�^aq{�����(qa����P����E��h\n>�������\'in������������q�< RB��ru��$~�b����N�@@^	�������}��Կ�IZ�|���RN��vM�rE/:�~����}:0�����z+�G�J�G(�)� F�T��Wo��EO����(()g�Õ�R恢2\0�\\��\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z��b�^��ʹc��;���7�B��9Uڷi��M�jPf��jYqZUM߫{�h�j����T�YCCCCCCCCCC����Y�4M�У�����������/�q����w@+\Z\Z\Z\Z\Z\Z\Z\Z\Z\ZZ�������������\n������������V@444444444444�������������\r\r\r\r\r\r\r\r\r\r\r��hhhhhhhhhhhhhDCCCCCCCCCCC+ \Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\Z\ZZ������������\n������������V@444444444444�K��Q��|E�>���Fa���M�Bs���������F-�5��f]Z�Ԩ+��M&��ê�GCCCCCCCC��\n��\"��⿨��=&V��0n���X,������k��V�G��L�	���RJ�H@�|������Ш�,e������\r�n$%����k����ZH���R������9����;�ѻW<��>�����뭻`k���8+�1L���MS�<>��t�Y�ٌ+�4��6�	a���Z��(W��Gk�<Z�����֟���@y�_�|�+^B\\/��_��V>2S>�1ӥ&^�ۡ0o���!��E��K�V�����V��Ê��q��cf~��/%G*ѨD�]���m�~eǰ�m��?���U�e]�Y�	Y��Ȯ��Qq����ݪ��m}�G���\'�֥��+��%��HK��^�eݦb��x&Z��d�9�x��H	.���+S(+7y��=�ш�<���X+B�w?�s�Py ���Xm�e+��>��0ø\\&��\0�]�S��&�I+N�AQ���nO#���s��\'.֊�O��H�Il6�a1M��m�t�r�I�ӂ�\'q{Խr���fT�{�+\\�w:T�\\.3l�;���n��i��&p�U	�����	V���Vm��O�����\0�Gr���DFZx�IEs�P�k����Uy|�m.��ֿ?�\n���m�.�����M�Y�n7�Q����<u]Ղ�~��0j^ۛ5qҤ��j��섟��]]�&2�4�H���[e��/�W�Q�����?�=x��3�+��.��3�\"/�����������.��☔2	��#8��-GƦ@�3�a{���s2�X�Rc�I���@%uܿZ��}]�/�.�������Ш9���|��~��0}�z-��pDMk��O�\0E&\\t�w�i��Bhw�����4�>�>_�Lݟ��<��o���Ϡ�/X�z��uw�W�g�	=oADĩ�����鈼}ר����NX:�,���eo�E���׏���g��W�U3�ٰ$�@�����g��M�v�wS@|>I�N�ԯg����b���j����B�Jw�Lz��@\\�)%��לy_ds�P9=�Ɛ��!�;���N�a��v�+�㑌�--Pn���fe�����x�^��r������/n����+��o�;�SP��V��?;)���_fs0����l\\}yC�� ����Gs��	���Z�E0x`O���{oK����ؼ�8 �y7�)V��#y����ƫSIL�և�_ޏ�npa�$�6v2s^&7]ۈ�r�g^ه�n0��d�\"-,Y���7����� 6�Jq���no\ZT���>�1�V�]f�e��}w1ъ��ל���P���dέ���t�e��|6n)����-z��\Z�\r�q7\0�ۼ�\'�/����������l���4�b��\n(�˧��ԯG�I�^��y���u�r�Z��;�\n���_ۇ��O���k����\"*��?׏��9}\"c=�ح�����w�\r;�}�<t**t��a�[]�z��|��C��&=�Ј�^�������e��*��X��տ���M��o���`��^��KV���O	�h��5|�\"�,��݆���;��.?�v��2�%��h���	���Bd�_��1���c7,lYsn�2��%Z�;* \0Ҭn3�s��w?�ӣk��V&�g/1����%��}G\\���H�e>߂}ʙ>\'�P���a ��w�r���6c�F�>���D�_��թ���ea����7+�C.Z��`��ɼ��,��f`�A��:�l����i�|2L�r�LƎjBD�����E{\Z7\\�Jv��Ʃ��,d��l��{���S���RaQ�M��I�xd\\s�=��^�Gl���zv:����{x��r}#^�z���6���ˋoPF��[0��df����-ػ���fe\"�0�9���q$�MT��\'^�GL��\\wE\n�-�f���׳1��F�t�_��{s��/Tˬ�0�0\0�����+��aP��D\"�Y�J����\"��\\����	��h�\'(�y��S�<%�\0{$������b�)E����Չ�G��L��_�+�\'\"\r��J�(/R�G��	�R��iX�}D���2��1âr!Jr5�qJ���d�G\"l���j�$*t�$i�!��H�����LZ�`u �ټ��*S����U;����W\n��\0M+~RJ�{�\\�XJEc��:���:�R���h�a\r��U>����(�u��22Q���^%�Vг��G���k�SѲ⾻�?i��=a5�M=S���/`�ʋzi���b	�\r�%��j7n��X�?#����D���=? �>�uU�S����=�\'j�#[dX��z�8}��Z(?��; ��`��l���P��	����Y��LL�p\Z������͆(� 7�G�vSX�%�G��j-pD��*M�=�P�i�!1�a�S!%Ұ�#*@��o����Rk�4!�U���z���|F�j��H(-V��~>Q�8d��j�������>�8�\"6g�&ey`�H����0��dX���s!-v������b�]��B(�xY�zTR�x\nE�]�IY�Z�@��y��{+�I5�GPuk��/��E�^���>�ZiX�q�z���t>r�g�/W���#\"\'i!,!}2�U�ǿ\n�ۣ�s(\n���Ѐ\n���Wm��+��HP<U�~s+^6}jLъ���~y�j,<*�i\\�㟇���w�\Za@dB�4=�1�D������\0W�5�V��j���\"UO�ޙD�Z�q|��*;Z��K\0v�J:�M���\"ظ������lP}�t���!i�\"�K/l���xU�W*o�P�e�a�ީ}M;��T7�3/���جF��*T��ON�yC��]�_1��f�0���HoMO\':J)b�X�°�~v��#��7�����W�_�R\"��&��\r}v�	\'w���C�	ح[Dm%:ʢg��  ����Db,���t,ܳA-�Y[����O���E|���兰�A�e�Wޔ6������K0�~�x%�F�W��rP�ؗ?sQ��n�eo�	��:_�N�M�Bp�lD��������a�reJv�9!��0,p{�R�νv���;�\"��,�w�����`���˃��Cg�kU�~x2��^�d�3z�]��*�\0�	���4o���q�z�*���!�T����C�\"�و���kT[�-A��^�&��-js��\r���@	PO@�{��DT(���BF:�\0м\r\\�\"�����0e��>�!X<	Q2�\n<��5a�#KrT;~�	�E\r��n�^�s���XضF��Q���ys�L`�>�f_;֩А֭U�����`L��<=����S4:	�y�*�_����\"�eS0\Z�W�A�ț�A�4T�/ˇ���C�T��x&r�$D�3��#IIm�\\{�߷)>�t���Z �׏�����ܬ\\�6�;_	�����zO��æ)a`�u�z4L���u���2C�F��5�������4���]��)��\rph�����3?�<���46I)珁��-p����=��Rd�>J��e)t=q�r�/�	��5�\r\"�;��M�\r�n�9��o�����f���m��J���a�\\(\Z�W�\\���Ό�\ZѶ�2��y�=����\ZFB�a��Ȣ,X�8��d{��\n>ݮP�LRk��r�&u퇼�]D��O��\"h�Y	{�~Vk���@,~��i\nr�RDr;E�\r���q�w�Z�Z��K_C�9��ƶP4>����j}�sr�g��R�siT��g|/��n���a�B(��3�P�R�>��K��//B�Z7!u���y�*S4��N������Pk�c����C�DR+�o\"�ր2@q6<��roG\0-� /��$�?��Iq�D�z�?�^0�[������Q�ca�A����`�{*<+�9y�kʠV���.�On��A!�0|���w%����\n\'_��-|\0�qVx��\\7�}��3��5��Uo�W���#j����MC�t�M����V�ßW��\0f錒?�?2��f3�rq3�ek�_�D.P��R��$RZ�c��,f�ϪU}�>��zؼ��wgeTMr���Te&�� �i	S>���1�n��=>�$;�Ma��i��le��\n�**�r$���}e�;3��\"��!Ǯ�spz�V�➍��\n��W\"6|\n�_Om��.C��3�Ag+����^��x������!ǟhs*�$�RLy$E�d�P�#mж����6�׏`�<��9��{n`΍�}�{`�0Ď�p�r�SUH�≰����Fyn���;V �Qe�\\	n	W���k?�� �>�	�ɛ�_�2����M�4f]�غ�����G\\�i�V\0,�=�^D>��܄X�	r�m5�}�������۾��|u�Aq6̼�~ܶH�5!\r�}V���놻���6�U/\"�i��-?���D�]?#��F������o�-��@lC����OTB* �7��C s#��r�/��<�r<�����;�wx�2��uе<�=bػJ�\n��V�-��\"�5��z��Ca���6�\\�RJD���F�>b�k����R��|�A�5�e#.y\rn��4C��=�Ѫ�Y�!V�\r��F>��I�<�\n��O�q?o,b�ȏo�/�Q~���-Dc�l��j���Ľ���Bz�B�Hl�����A#�i����R�����*����>����H��v�+���!{\\�8E)�Ͻ���Ჷ�;�)>�R|��Ր|,|ܧ�i���[���nAx|��>�?����ш_�Bb2<�1j1�rXK���\"���Z�{3\"s7��\r��z8�Q�8�\Z��A�.j�xl\r��X��׏§�Ͻj�O@�[��{sHR�j�#>�6I�M��R��z6��i��d�z��3��r���G�!�/A�	��A>������C؁����E��wπr�L��#<���i�������Bj���\"̠(@C<&���v��ϑ�Z����v8oLތ��Zy~���?,b�\\Y7��{�	J�\\�0��4xp<�ν�g=��߿�Dx��^�.E\\�\Z��e�nÃ����a�hĊ���Yȧ��\"V���ꑚ�����U� :\\��u\"�~\r<\Z⥲G�k�m���&p�*G�S���q\n̾E�qOl�� ��\r�Xm�9�����R-��%!XTs�<�)r��2���P�i��� =��[�s��i�$ۑRy���fT�Q��F�a�nZ6���KTVh�Xl���ϮW\Z�	!(/7y�f�pq0��<|�\r_G���+ٳ�$<tw36o-f�g�ǅ\n��Lל�����UO�#��(\'����Sxk�!\n\n}z�7���U�1f��֩�W����f��~_y��\"��t�8��#\"���B��:)D�:_��̾N�x�:Z���f�E�!��ވ�@���x�w�M�Я�Η(˗D�1Ъ�j��Eȼw1rw�6&��/@jgh���]�HC	�r�m�n\0|�U�]y�f��e��q�o�0��sh�K�H��۩ ��\0c�\\$3����LY&�|\0��d���f�Ц�}�s�A�u>���Z��V�ʈO߿����%9���*��}�қ�@~�����-��s�X��3\"ҿqv�[^�.�����z����\"�مlvZվ�Y�;�n���\r��8�N��!���Ce���c���r�~��N���y GKzA�>\ZZ�UUn_��}#ggp�,���J`i��������Ϩq��^��^5�`l��O͕\0�>�� O��\Z��r+\Z\ZU�\r��ҫ�i�8o��[o�r�WJ�	��H):^H�;���$e4���G�[��3�P׆�������|�� z��o�+%��Bz�a��o�mED&��Y�@,��Ua9�Jd���0���9(W㔾��>8�?\\�������������8E���qR}�<+��@�{HYM{ެ/[!�����W=��E�i��u�\\WUG$���T(NE���+ʧ��Gn���7;-�Q%�Ԛ�.���\0\0 \0IDATPr~�Z��}[�G�:>[���/���	��ƹH�Ԟ//�=�9k��/<����u�wD#O�\n9�V��eв�W4\0T 6y�#�����/G����G���@t���V��k�@$�W�f�}�����[�6������4��-⿷o5a�͆_g�6G���SU~�6L��W) ��[�ӫ( �a\'/�.��7�oe���58\'�Ô�Ӊ����[��TF�hĢor��r��墨ć!�.�\n�X��C���������g`��l7oMW�=��F]�ʍW+W�}edvi���q�u�]�?ɢ��Ǭ�Y�}fB���fe��g�Y����\'QRj���L�9+!���G�aw�ʃ�a���C�xu�\r�xgF:�!���2򪔀���i!3��9����J��\ne����¥��/�H���H�_����5���w�2����D[���^n�6��T��o*b�O,_��MצrˈF,Xr��Ê~��\'qR�0����y�o����@�\\�>7�\'��<j�3�+���F]��EPa��6�OV�2���%��������*&�B��<T���sEeZ��\\����\0Z���=b�2�\'㐣!���~����	͙��7*��ݹ �,,�|�jq�2��[���r\n��)�.� o�J	\\^��ߥ��:�I��W0�=�L�C�����+j��9�.LZ�u5V;O�R�l6h?P�\nTH�����?���&�����r)�l��A.�Ta	�SB�>����[vT#Kصk� ?��w\"6���s�{����N�sv�m�؃ct���\n��*�3 �?�crӧ�np�x��\Z;H\'����G�(�(�2<������*�\rj�oH���Ȅ�q���O;ν�a.\"w7,���?	s��g�C�AθoEl�\n�q򳻐��B��.��<Z���܂j�+jXSj���N�R��I*�B�:�\\��&5���4պ Q�GM�\\���m_�GS����\'�˜��J/DN4�N#��-��jY������>�\n,�Xu\r�;\nc�4d����]y����>\"��\rn�����EBZ����S�Z�0BU���:&�C���)�t����h��v4��8N�ès��,`��a3;6ƊD�?}�:��jU9	S?��jX��wgf`�(g��L� 2��������ٙa\\gUWt��i��l���}˃u�`�Vؼ��\r�#P�*�>��n78��b�tl���16��eV�����cx	�[�X��)e �~�uvvT��/����{��ga�,0&�ʻ33�@L�zWD���3��EF��M�N�|��H���|<.�G�ř�+�oEZ�sP���Ct�������l���dL��~)���!����ǃV�~#+�iBA:\".Y��\"��55&\"�y���eZ�E�\\�E	�)YT�Ι틑�?��K���~J��	T���\"!6\nQR���%��@��[�QB��pp2�T���j���=[s�w7/O2}#⍋`�7J�p�Bl����*�����Rΐ�W�\Zg��EfnA<֡n�6���9Y�%��܇����^K�\Z*���h�E�߱����-:�6��)E�QWd��G:Tl�;W Z���I��c��$h����F!��Q���޿.{S���0g z��f�]*���Ժ���89�=e�-H��AI1X���M�\"�oG6�<�O�.��O��z\"d�FflT�`X �5���=?��=o�V�U{+̹^%@��\rg��\'���ۗ��(:��i�\\;C��q�),�����C��\0��j����N���ȴS���,X�(�:��98�^�����U�Ua�S�U;�C�)�f�{6\"SO�K^Ut�ya�c�6NM{��_T����P���Z����ؒ���p��^Y��E��M�\":]���++2M�\"lG6=>���2k+dg���5�`�������PD\\1]�d�t\Z�BYb�4�,]�\Zt��ˇ���\n&�+$7�#�ȶ�A�[-\n�ԑ�5=� �d!~q���G}�0#�4��k��?Ϩ4���$Q�n���-A&4���o�BKH���9V���@�gQa�7Mul�a���aF���z�^^��W���{>_p�\r�%�m��n�Tφ�Z�Q������j� DX���B?��]�O��E�gB�Z����\"}���oz\0K\rV �[d�>�^��j--�*��z\Z�8�3�@�bo9��ȓ�@�8D	)i\'#O�\\�<�s���<eJI�s/\"��]�MA�u�I�݋J�(,�~+|t��\0�dK��W�*����H+Z�A�t-����O�\0�������M\0��6*���UXFdb��Ӳ��i5כ��<�*X5��N;�W5q]7��I�ŏ#W<���q��h�u��>�?�jW���0��}�E.z�_<��[A����E��s�v2b���8u�Fz9}8�G�ۧ�X�B���� ��Al^�|�d�i/JK����I�����l|���ȗNSa�����#�MwطV��Ŧ�H��w�x�Į��\Z)!��A�@�O������o����r�ݹ�So�=�~x�`�o9�D�&*#�@>���3�U���������ב?A�^�|@� &=e�I�typ=\"?�A������\\��1b�G���#Ͼ��a�&!�qp#rR���%�H+\\�I�+�G\"����W�r�-�d�?�q�ܽ�)��Q��-W���7���y����c�)GFDA��T�o�\n9���אk��Jʏi�Đ7�ۗ ����P)�RB~)t���;�-��#J�aR��<�Z�lsN�p�Sn��/����둫j�F~�|��\nkZ�J�/�u���T����Ą��4�j�uT#�u��P�?v�V���,A>?{��G\"���|o0|2F�Uxi�\ZA�qշ}����HuĂ��[哄��y�ʓ��%��)����&W�&x�3DD+�����>�n\0\\31�+�����D���k�>�+�s�G�/T@��Lƍi��fhji�	}v�/�0HxU֪�&?�	��<jQS*�VJ�#�ע�j��hHmT��UV�Ηbt�(��A�A6;V�Ň!6μ�a`0?��@�=��\"#��`u�yO�\"�<�bU�eo�Sd�#�)\'���\n4�6׊�.�\Z�����)�V}��y{���P!8��VB�#:Xo|cH��͂�ܳs�H�~�zw�k��/V�Y�n��M�UKWaX�U=&��#�3�=�ߥ���S�vF޷��3�}?��6�3�Q�@��kރ�� ��s��3�W��!d�.��Tđ��ڜ�N>�2�݂��[�=F��Ϳ5�\0G�+ZU>^8��%����\ndbsX�\n�ЯȈD�<$H��D��\n�f!�3�1��/\r�?�n���hĮ�ȸ�*ax�5ʚo�#1�k���r�����R�]�P9�3�����/H۾�{��Y�-���$r�~\0r�\Ze)���Xd���!GѦ�Q�	�ϸF��\0��?M����t�\r��A$�T��o��r�d�ޕj����=�ϗ�?���R�=��>�6DN<��s=\"o�qw����ɚ�i�lH�\r;@���r���C�:u�Xq6�����^Gr;57cS*��D�ۀ��9�0�e��0�IDR� ���߄0����?���:�{��U�Y��H��Vj�WШ�I0�I�ez����^�ct��~E�T�K���O���F4l�g\n�=�%O v/Wu\'���C�g�=*N�\Z5	~��S:�?/NJ�xp\'r�Ӱ�S��٣��DD&�C\Z�U5\Z6������CR��FV=�[���LD���t��9���J�\'\Z�E�ߎ\\���K$$w�o/W_F�~5vr�=��a�<��3�g�5:��)�1�U��45�Z�����\\��܌��?��;<�*���s�df�I�HQ)JQz��\0\n�����T,�� ��Q�������EP:(H�!@�3�>s���{���$��<�{Oy�{�=�=�9���îf]:�$�\ZP���<��]����rs@�4�\Z��?�����w>�h�OH���@B�}b��W��������c��V����0�?v�8/�h��h�@j@o���L\0/�@^�đ��Ϛ�*����ۆ��<髨QZo�):�^d��o��S�Dխ�a�e���ӷtڿ��\Zf�t�F���u�ߑ&p�,R�!2)KS�Ƕ���K\'\Z�`_8*�F�!�>�Ɋ2tT��J��tMڑ�\r�W��AN�p�R��RN{�F֊�,�=�1�=�y�ZnW�QF;\nlk�괼:�N��bi�\\��?�>��2F�MW�N\'ю!}0|{���×-�؆(�^����?���\"��Hc`�\\z������WEƣ�ƅ��gY:�0އ����߇\"�U��[�>�;Ǧ2e�J���·W@���&}�C���)\\4a��3D�pdHQf��{R�e�f���2��2�**�v�eQ��(W$�W@���Q�E�i2�:A�IX��7�v��~oE�.��_)�<e�(��s9:�И��EW�R��]^[���D�Ǖ0c���=��s����r���q!��Y����Ѵs�UW����*:6�)�Uz���Q1X[�0�0ð�0�0�0 �0�0�0l�0�0�0��0�0�0 �0�0ð�0�0�0 �0�0�0l�0�0�0�H(D�?�0�0�0=�W#Q�Պ��|\0@\\\\RRR ���wމm۶]��x<�;wN��l6#99\0�p8 �2bcc\00��B ++\0 �@�Z�@DB\0\0\na�XP�V-5�3g��d2!%%\0�����U�����p��\0\0Y�Q�nݠ��a�a��J���ӱg�T�Zqqqx�gP�V-l۶\r�,C41�f�.�2$)�́ЫW/���C�e��z̘1III��o�����c�\0ƍ�^xf��\Z5�СC���0`�\0���WMs���x��@D���j�B��i�&\0@�ƍ����Z�j�������C�\r��sϱ�0�0�0\\,\"¬Y���G��nî]� ���A� I�HNNFrr2rss!���e�p��iԭ[#F��s�=���1w�\\H��ʕ+�R�J8p�@XW��Ç��?�G}�9s�`���B@��A�׫�bccUc�_�~�?>.\\��S��a~��7��������رc�1j�(|��w\0���\0��`��ￏ��O>A����裏���0�0�0\\�!����p8��z���\0�W)\0@�$Ȳ\0HNNF~~>�N\'�ԩ�\Z#F��B�;11���\0�\r\Z����!��|>�w\\\\Ξ=[��.�>�6�\rqqq�e�� I\Z6l�ݻw��jժ�ݪU+���K���a�a�j &�	cǎEBBz�����W\rz��	�ۍ�;��Qܚ\0 //D��^%\'\'�G��x<�馛��_q{R�dDB�$�Z�\n}����ի��[�r%v�؁/��6�\rǎC���\0ݻwGӦM1|��+1D�����-�a�a�a��W#Q�͆ŋcÆ\rx��C&酅�X�f\r6n������PTTd��竮R�O��ڵk�q�FԩS\'�ᣤ�j�*�=\Z\0�v��U��R\"�2dYƀ�j�*,_�O=����믿�\'�|>�~�a�jƧ�~�����l6�F���[�Ƃ��1�0�0��6@dY�����+e��lD�4i�\Z\'p�N�����ׯ_H�Z�S�NU�|��Wx�g@D2d���;�^�z�p��7��	��ҪU+|��G\0������a����ѣ��2��ؤI�X�B5Xbcc��غu+n��V>v�a�a�a�F����Վ��5���6�輵\"���\\W&�N�\nw_1P�:�,Y��TV�ʽ�y*+ƈr���A��D���K��������^��͔�wy��jʱ{�n�h�\"�Q�2]m�n���ٳ�+�\"�ƍѹs�k.O���+�E\Z���`6�Ճ%*��.�Ν;ѲeKlٲ�ڵ�\'�0���#M��륏�-\'�������.���T~��S�[���{������\\y����~���ĉj�.Z������U�\0222����ƿ��߿?b{\\�vm�\"M����������M�r88u�\0��S�Z������޽?��sľ>i�$�ڵK�{�رAa���0iҤ��ۊp��ީS\'\0:�a�a��\\��Q��+ ͛7�?�\0�F�~���~�O?��-[�ࡇ�ɓ\'���_��^��l�ŋAD�]�6.\\�2�g�6z��p�h��y���;�@�6m¦�M�6X�b�Z-���˗�`0�i��g�F\nS֊QY+/Z�^�7�,o�&���Y�RX�b�V+�ﾰ+\"N��A�y�jl4���O\"RWF�+{4�Z�U�Z�����a4�ǫ��0��\Z�U�����Frr2`��ADp�\\��t�R�\n���`�X\0�O\\3��|���\r�ȅ�ĉa4\Z����|P�d֫W�G���`�$Ix�駑����u����@���D�m�Bdgg�`0�`0��D^^�|�I����r�ʐ$	C�Arrrȷf\0 77���HLL����Ot��!�����U���r��M�6A�.`˖-�j��j�8�<��ر#���`6�1c���S�LA||<jԨ����̄^�����8p�\0�z�)t��>������$���v��HHH�ĉAD���SeMIIQW\Zrrr�F��\'O���E�`4\Z�ժ~C(55111X�|9�^/��.�9R݋8ٞ>}:�V��jժA�$�1\0�>�\0���0�L����ʕ+Cdؼy��o�&M0g���ǣZ�jp�ݪA����oFBB^y啐:=}�4�z=bbb�g�!0y�d$%%aذae�3�J^��ݑ��!,X��}jj*�z=rss�]�RRR�w�}��a�\r��L�8�&M)Sp���r��9r�G��ɓ\'C\\�\\.>����n�\Z+V�P\'�O>�$�N\'v��\r\"BQQ:�>}�\0���r�\0\0ժUìY�0{�lt��)))��?��u���X�x1N�:���|lڴ�®`D��#G\"//���h۶-\0���/��\"B�ʕѡCx�^x�^T�^������X�V�ر���8z�(���a�X����.]�\0\0�ԩ�+V�����I��r��i�&�t:8�N4n�X��W�^8~�8����t:U��A�!//yyyj�n��~�)|>�֭T>Y������p�f��Z�jj�sss�r����C��bժUX�p!l6[�ϝ;����?�<}�Q4i�}���X,5j*U���^{\r3f�P뱴s��E~~>֭[�}���b��ܹs�1�\nw�}7��郢�\"L�2%Ę�[�.�̙�9s�y��!��}�����#�y||<\0`֬Y�2e�*�b,֨Q���p�ݨ\\�2\0�Y�f�8q\"^~�e<���Z�<`0�0�Sد���CDx�\'�k�.$\'\'cѢE�>�����o��[���(�S���r�sӦMq�-�����^�:�E���rZ\0�t:������H}�o���	��wߍ֭[�^�zhѢ>���\n�]1v�:9��|7n��j�\\,��:�Z��$A�Ѩ���V�z���}��g����#33S���4f��E};����JD�F��~�\rG�E\\\\<��5k��r����7p�����b�l���B�aÆ�ի<Ǝ\"o\\\\���a�Zq���z���j>J��\0,X���\"$&&b�ԩx���C����@AAN�>�����r��h4��H���!\'\r��h4\"--\r>������V�a�\r��L���M7݄O>�����r���`�Z�p8�	���L�JO\"���l�Z���|�Sy�8���l��l�D���V�xejj*rss���ł��XT�T	\'N�@�F��Ʒ����t\'�n�N���Ū��ʦBX�V�L&h4\ZՅH�\ZI�{Z�Z�РA�^�Z���n2k2�P\\\\��;�!\rJ��5k�^�z9rd�\r�111�z���|a���d%{Q,KP}\n!P�Jԯ_���0`\06lؠ���[�~}!p�7�ĉ�\Z��~@RRbcc�m�6���{a��z����m��B҈�q����z�ڎ�v{ēC��o�^�GFF����f�\0\0 \0IDAT�0ð�0W�~���o߾HOO�s��8r�\r\Z�\Z5j`���\0�{�iii�$	D���.(���X<��HHH@߾}ѳgO�zj\0�z�hӦ\r�����d,Y�D�l+o����Ѯ];!p��YȲ�\'�x\'N��o��ٳgc̘1�$	ڔ.�2��ك=z���b޼y0\Z�ArJ��U�Va����tX�j\0������fff�G����СC��z��/�J�*\0�>}�����l�W_}\02d\\.^~�e�����v�U�V\0���4o�K�.�}��\0���p�����cƌAÆ\rQ\\\\���@��#`�X0n�8�X_�F���{��$	�w�R�۷/\0���x�7п�[�N�_�Z5>}���d\r���PTT�;��&MR]��۷o٤]�re�e,..�[�V��nݺ�|���X�r%�W���%�2,��*��شh�B]ݹ�曑��\ZҶ��\0���\0cƌ��i���\'�����x��G\0P�:\0�c�������`���l|0�0�s�,���HY��\0�4j�(<��Shذa�i�ȑ#�w�^|��\'��V4\'E�^��E�N��ĉ�t�Ґ��-�ܢN�#�&�o�T�4�ҿ�;������<��_��BE�S�Ӧ�\nS�oE_���ƍÞ={P�N���HII)W7)/�0ð°r���8�p~��Z}��r�Td����A�f�k���a�Jp��\n\"����?�U~��Pz���*giY�?&�O`�a����l��9\0�\\�do��	���18d��T���a�ϭ�a�a�a��(o�6�:����@��FW�|\\c�x���\0�7yB\0�|�����s��Mx�a�a�a���Y�r�1�u<�֝����!Ghҹ) iS�_cN������M]�o�|�WB�a�a6@*�-8��;^�_,ˁSS������1���y��\"k\rӁ�^\0��ɭ�a�a���r�w�:-�60%� `����H0�|�i)����\0������a�a6@*y!�|pz\0��L��Ԯ�޽��A�bFGY�{��k���_\'�,���q��\"�H�a�a�O�w�\"�Ł:]m�D^�j��P����B������Ef�_n9��\\�^��Iq�;�ރ�ǳ��c��TyB|�ïѽ��M��n��0�0 B:互ѭk<��B�7m\Z��-�/σ�GQϺG�s�x��O����\0d� I��WŨ��!�@*㫿J� ��\\+�\'�Д|�K1>\0���UBu&=揋���_��3Q�k�����*s4rV�,W���6I�e��r����^9�g^������~��ԏ}>4\Z��yy��_m�a�8\\��H��\"��\0~w��]��D�$I���F�&��ߙ@dL�$	<0�k�zb\Z����$I��/Bty��gB�U;�At{��ː$������\nD�4�y{5$I@�M���*D��as�!����?@����̓F�P��w�U����L����\0����\n��k�?�/���\\/����`VZY��K\\ض\'Aq�&���t���J�{9!����>��k�Z�������k�׾��ܠA��ITi]�9sÆ\r���^�v����v_��W�I�0a��۷�O�7�v;�t��I�`2� I�}�Y�ܹ3�VV}U�T�wO��HOO��re�GUV;��l.Ĳe�.{�*��3�<�_~�B�����o����$	������$I����h4hҤID��k+��e���򍋋�ZGJ^�ឯ���ʽp��\Z ���^/���+\"=6�ZU\0���٫�Llڟ	�Q�ͳ�c|�;��\'���5���A��ݕ� ����{��E$�\r!w�Ӡ�ϣ^�D�:vB��|��4ĥ��#g�p�B~����=q���pl��h��|��z;f>��$`�i1|�78����VOAbl~;}R��$�Wa�����<y޻w/n��v4k�o��f��^4FC`\"����CD�Z�HOO;��-���п�j�\nC�E~~~Ѓ#\\�pr��O4�Jߓe���\0���KGA�رC}[����-\Z9�hԨQ�xK�.������mڴQz���<�/^\\!���-[���ˍ{�u���o��&M��\ri�z9:���r�c��Z�6�R��ӧ�e˖��Q�F��3y��>JO�}�^�\Z���e�����5\Z��~�\0z��w��5k�5k\"1c�z��\n��Wz,�f|��cY�a�X�NΣ�3�r���h����}�����Z�X�fMP[Q�̘1u�ԁ��+��Ç��Qqqq�I�ep:�x�gмys�m�G���ׯǭ�ފƍ���?��ϟG�>}ЪU+>����Q۴iS4k�;w���\Z���\0�ȃ�	�ر��_�������yع�\0���Z�~}!t��k�j��8`�kq�b���!�����DblLI�#|6�?d�`�_z\0&�\r\0��S\r��h�\r%�\ZIB�ͅ}�.��؉��\n\"��<����6\rk���F=�l��\0���Z�FniW��]��_~��}������.\\@zz:���1p�@u%kذa���C�-`�X`��ѡCt��A\r3q�D6\Z�B\Z4={���_\r!222�w�^t��B;v�;wF�n�B�>�\0O?�4v�څ!C����?y@\r0\0�z�B�v�T�M�\0���;��W_A�N�:�cǎ�x�x�Ν;�2>��ӪK���E���Ѿ}{!��� �@߾}ѣG�\\��$a̘1�����r�лwơ7ӦM�,���V|�^�zaԨQ�\\�\rReUvB<iii���OK�@�\'��ڵS�!��_ ##�z��|\0!��Ґ���N�:=x�4�{�=:B�ر���GFF{�1H��#F ...����z�B�N�\0\0�۷Wu.I�N�\n�׫�y�ի�b0\n!ЧOt���6mR\r���-����O?ř3g ���m�Э[7�����^�$I=z4z��:�n��y>���HOO��/��~i=+�5c�8�N!�`�������z1g����D���!���ŋ����|PMgȐ!A��L<���/�ıc�J����O�>�ٳgH=,[�\'O���w�ƹs琖����!СCt���O�ydff�s���۷/���TY�t�Ν;�ԩS\0��~�M��G}T-�C=4H���_�B,[�iii2dH��u9�|\\�pBlذݻw�]w�!fΜ	\0�����5k0r�H\0@���q����ht*u��O\"##/��2bbb@D8w�:u�Ν;�e7n\0�E�8t�|���z������L�w����q������i>\\��̙3!�(�|�F�\n�����e��>�`�u,���@zz��ޔz�ԩ:uꤶ�\r6�����c��Ő$	#G�TWκw�.]����B�����ի���պ��B`���HOOG�Ν����޽{�{��زe����>�={�ĠA���Qnn.Z�h�Պ��bt��w�u��c���!}��� 33:�.H�����̄�d\n�sŊHKK�[�nUǠ�Ǐ��/��$Ix�G��h��/\"==]�v������п�ݻ[�n�]w�\0�֭<�`���ꋓ�3gb׮]�ڵ+���{\0��ٳ��~�۷�۷��	�z�OQY���\"Y����GH^6��>��b/M�v�f�̢�+��\ni֬,�=;��x�,���Y�1�ܼ�w�mD�6�JC稿[<��,v��C���]DDt8+�^[�������k6��e�n{�_굪�ϥg�@G��ьe[�9��ij���t�L.��h#�Y���쯉�H�w:-��}�� 5�.��Ƿ�SPLDD/.�/ȼHR�W����R��?�}�Mn���U�F\r�w�V���	n����~�l6�9s���:u꤆�]��\Z\'%%�R�_7�\r��/�,�4~�x:r�?~����Kv��|>u�ЁdY����9gΜI�֭#\"��?��,X�`0����㉈����DDժU#��G>��\Z5jDDD�-����SQQ�Y��f͚EDD7�p�\Z/11����v�Jv��\n\n\n��rݻ���tQ˖-����������_\'��B�v��	&�F�Q�6��DD4d���ɡ��B5�@�p�y�;�v��A��^�uڸq#���S�����v�\\j\\�T�RHz;v���ϓ�餱c�ұc�����k��F?��S��j�\"Y�����(!!���ڶmK.��6o�L3g�$��J�%$�.]���n\'\"�aÆQNN9r�z�!��l���E������ӯ��Jԯ_?r:�TTTD͚5�9:�\ZGi���}��w�r��믿ێRSSCtԽ{w�Z�DD��#�бcǂ�\\.@�-���\"ڹs\'M�:��^/�:u�F����a��̙3DD4e�����f�Q�����vSqq15oޜ��L&M�<�v��AV�����KDD^��Z�lT���zC�آE�z���x�r��DDt�7��[�nMDD�~�-͚5����h�֭����^���iiiTTTD���=��sd����{���U�~�a:v��;w��\rFv��.^�H={�$\"\"!DP߭Y�f��J�V�6m\Zmܸ�������ߦe˖�m�ݦ�Qһ��[��[����l	�w�^*,,�������Vu���@\r6T�\\rrrؾ�0a�ڵkY,�>}:�ڵ+l=z4�޽[\r�i�&r��ԢE�x<�p8Ա�z��j��M�霈�nݺ굸�8\"\"jҤ	��vr��ԥKr�\\�i�&z����b�о}������R�zur�\\��x�]�vTPP@��\r\ZD���j[u�\\t��E\Z4h���.]��ϔ:u���ƍG�7𹣤���\0y�ސ�0PK�,���֭[iʔ)DD��\r��N.���u�F�#���N`;R���>K;v� \"�����_|���Ô���Ph!$	:	��U�8t��������bc��hbb\r�&{���P�y�9��2{�:�ݦ�Y����F5S����1iP[$�\r�����x����H�w64�@ޒ	x��MЗ�R�ƛ`�kиv%5�[k��A����z����jƮyC�	���d\0�Й�ѯ�ͨ]9�덖O,@V�����Lŭ�S�����s������\"�&�	�6�M��q�F����nW������A�ƍ��h �2Ə��\0�V��Y��o�>̝;=z�@�&M*���k�Z\0yyy�k�$I�Z�j8eu��`2���\0���L��r�ի�����HNNV߆)�J��h40��0�Lp:��.���t�MhԨ~��g$$$�r��!�\n��Ū�f�f��$���݁o.^���5k����A�����lFLL�z=Z�n\r�^Y�ѷoߐ4�-!�*G�z7��x饗вeKԨQf�9�M�x�j9ycbb`2���z�� �[��uՋ���-wi�tt:��\n͟??$l`���~��N�:aذa���^x��\0`����t��0:�N�.�+P�F\rz��\0hذ!�7o��K��`0��2�\\.���/I�P�F��M�F�����oi��L&̝;�ڵCݺuѰaà7�?������jժ���q��9�|>�Fh4��:l_V�U��b��m�f͚!�].�*��xi5}�޽j9�7o�_�/(@aaa�\rǊ,�e^�|���޽{�m�����jf~~�*���K��L&���a���!m\"�w`�z�j��j��j�A2*e�_E�c�R�ժ�GٻED0\Z��Uڅ)p��&n\"R]ޜN\'�f34\Z\r�^�����s���?\0���C��\Z\Z��/w?�R�H+8ʘ�a�uT\Z�ÁV�Z��v_�a+W�D||<RRR��+Ô�� �x�����6��S\0�\0A��ف�F�����q��R��:�����a���[7��[���]���AaZ�t\n����Dx���꽿�����|g��������=m��=mTW���������\0��^\nY&���K�Dj\Z�iKe\r��?F�\\���A�H\0$$$�L�b��ѥ9}�4���U�e��<L%IBAA�oߎ�M����Ue�^�\Z	��@�y�á�\r�3И���U\'[��6pB��O���[x뭷Я_?�~��x����R���������<K3u�TL�:#F��^��|1���HD�K\0�{ȤI�T�(�����ٳg���w��ׅ�дiS��v|���֭[H��<y�Ν\0|��7A{*�^\Z8)(k�����\r6�e˖���Ñ#G�ҝ�bQ]���P�d�n���^Su��g�Et���l�qf4\Z��dQQQĲw��k׮U�8\0`ӦM\0��5kb���hٲeX�,P�S�N�ex�����s��(���?�����f�����7222B�s��Y������j�R�?�z�����\r��J[~��g�\Z���_:̥��b���piGB�eddd`�ʕ\0�9s�+����l����?���ׯt�r����R����C�k��x��W1s�LL�81(N`�r:�QO���3g�z�\n�x��X�V�y�����h�F��u���n�����\n<EEE�2e\n����)}\'�]j�Z��nuC��b������~��\\K,\"�=K�V��\\D��Kgh�����_h�7{���r;\\�v�<��r]��t�3�4Ѣ�DN�`]&EEEK��>���e�cǎ\0JNN�\Z5j��A�K�DD�֭#�NGZ�����C���N\'լY�������;y�^��|4k�,@�,�K���k��^��:u�DIIIԧO��n%\0(%%�4\Z\reff��P6�M\r���Kz���z=}��7DD��_�$I���D�۷W]\06o�LZ��4\Z\reee����))))�U@q�***\"��D�Ǐ��n���^/y�^\Z1b%&&R�&M��v��O�=v�XJLL�-Z��Jׅ$I��h�_~Q]X~��7\"\"�>}:�^��dY��?��\0�nC\n۷o\'�FC\Z��N�8ADD��n���ԩ��=�aCJLL��#G��s��R�r4k֌�N\'�ر��Z-�L&���I�n�Sjj*����������ѡC�h���DDTXXH:t[�DDcƌ�={���磹s�Rll,%%%Q�ΝCdS\\8�^/u�֍���(---�合h�Ν��N�:���jժQrr2��Ǐ��`5i�D�����رc)!!�n�馠~���B�$���U7��o�YM{���d��԰���j=*e\Z?~<mݺ�dY���~�L&%$$PQQկ_�h	��%K�,���JIIQ]�\n�h4��`�ŋ�ڵk	\0%%%���߮�k׮]��h(55U��C�TXXH �FC��.\\�f��ܒw�W_}����r�ʪ�KVV�%K��c8p@��������Нw�IIII����K\"\"���/)&&�]�x1�W���k�.��|4o�<��)nf���={�����ѣ!��njҤ	%&&����I�e:z�(I�D�$���<@�&\"��_~�֬YCn�;�Iq���ˣ�����A�}�7��h�ҥ���\"��b���82\Z�4�|�e�֯_O/��=z��ﾰϏ����*ڠAuIKK�����|4i�$������x�Ͳ��~����t�����}�[����UW���$z��\'U�]�۷/��7�|�:.8����H���+��$S��j���C\\�N�:��פ�$u;}����mۦ��;�����{�U����?\0ںuk���aJ!�>E�߫�@�vM.:�M�9��o�6�	���8|����[:5�/���Vb��c�y���[�� �8����=�w���z��O���9��o��M�W�p��>|���͛����t\"R�\"׮].\\�OE�Z�\'��SYa��~�x�|�	�f��66\\�p��E4�E�Szɾ��踜o�s�(O��8є���U���.�����r���ׯ_U����|3�<�Ž*�)@��u�~M��h�Aϱo�Evv6y�2ӪH���SY���e�h�+��Hm<\Z��Wފ�i��늴�H���q.^�����c���e�єCi?e�o4a�m\'>�6�\r]�v�Ν;��}`�}fE�L����p�]���R�\'!5�[�.�����|��7Q����_D�Ę��ÿfn���p�����6mڄ�i�TN%�6m\Z.�:~\0\0 \0IDAT\\�vrr9ߗ(/�2I*O��4h� H����#]�6�Hq.G?�ҊV�J���.NY�+��h�.\0�駟0o�<�t:Տ<p?EE굼�^Nx��1c�\\��H�u}9e,+L�ڵ����̈́��[ZOѴ�������k�Ѷ��#K�i_����u��~�ǰy��	t4�.O���U�ф����_�~X�reD��K��}fU���̶u�V@7W3I}]����|yo��۝����_��\\ݶy������A��7�?r[f�?Wofȝ��u]����<^��SE�T�/ee�nۼ^��r����W���-3 �0�0�0l�0�0�0��0�0�0 �0�0ð�0�0�0 �0�0�0l�0�0�0��0�0�0L�1l�0G��;1�0�0�h�`2i���Y�)�¸�2�a�a�a�6@�];$�k�$��0�0�0��2}������0�0�\\#�a�a�a�\r�a�a�a�\0a�a�a�a�a�a�a���\0!\"��0�0�0W�2��B��r.���SA�>B���$n;�0�0L\0=��νV���LEq8e�����0�0�\"��\\�o�(.]���E�Z��$	��r�x}9h4��a�a&�\noB�xe�=��<^9��}�FqHJ�]�{K�^B��JxrtM8�2�Tң�-q�ɼ�a�a���s=�õ	���H���h���ݘ�.�=�p�Ho��\"��ѥ���(0��ѝ.YUX�u�[��G0\Z$8�~CH�\0�����F\r</��\\.2tZ	�?����&�l��-ۊk���I \"8��*�$bb��;|��d �h�%�+b���2\0�Db�a��<��������2@d�^5�+郮���Z$p8}x��:\0�>=Sq�NW誉��Ô	u�ɽSg�����WGr�V�>��!����h�0o/�����\0L�s\n1z	v�/>S7����O�W�d�n��W�x�P��Sg�Te�~C�l�\0\0x��z���k7�C�Ai��q��O�x�ؼ�ukQ)U��N�r%:�L���F��(�a�a�\n#Io��y]Ȣ���2�r���>�D��zԨ�#��A���n��I���qH����݀�TA�E7R�u���	v&>^S^;Q�N�{�dLx��_ύ��租ĄGkB�	o��^�F���	D�e�p��?�(B�V	xn�	�\Z%x��IO���#6|�,\ZI`ڳ�бM\"��s!\0��mf�xq.�\r���\\1D@��󽑠����G\ns�幖�r��a�/b]�\\.��s�������߻,V_HX��o��X�<K�_P\'�F��A�F%��Kq���-��w����l̇$	<1�&����6�Ɇ$	贗���$u\\�z�����������o�X��9|�y���\\����K_��D�z�E��qE�A��+/��ߊ!��f�	!��<�R�����UQP�je۳ϊ�?���0�0F�����8Ԯi\0\0̞Z�n�\0<�Hu�\\r9�D���/��DYq�翲���<��0�<V+��K����=X�.k7�c�;�ر��1Œ$��I������DE�Y���v&f���N<�xk~�|��]�	)?����Ы����\Z\"C�NIX��=a�����gEf��׭�Gع�\n��w��8uƉ����#1�0���\n�`	X����\'B�bo�M�ʪô9�@�����ua2j@�Ӷz\0��:c��3g������Rr=&FBA��v)_H@�ct���x-�Z�3�\\8~ҁʕt��5��$\Z5�E�j��}\"�dR&A��:�|�KF��_~�Q��=R߭�Î=֐���A����G˷+ܨ}7%l��~=���s�n�C��V7|�K�\"�^��5\Z$����PXTr�\0�Q�1��ť\'/���{�N ެE��k�`)�!%I����AB���K���E^�)I:�_�=�g�ׁ�s�p�;|p:e$\'鐗�ABI;�W�0�i�v�_�\r�WZ��OI�����pe*��TP�N\'AS�\n�����%�f�:KL�B��uh���p�P��$�:&Hҥ�ě5�N�6��vy%=��`�����C^��F\rI-\0H\Z )�?(b��!I�I�Kz(�J����cw-�a��_ z��%�/��KfI ���<v�� ��Fl�m��G�jD��F�^��؇�-������`��<h41zI]=�:�ª�y0%9a���[b����\n��o��t��b��_���\Z����L��E<��r`��\\$&���p����6�\\Y�l�̳N�|x�_Y��-E��uyع�\n�V`�n2��l�\\�1: ��o|%�\ZtÓ��#����³����X��y�y�:^�qB\r���|�9�B��Fx�2��r��{�\".V��W��㕑���L@�:Fԭm2��l/¶]E���\0���B�}�>�*6��k\Z�m�s^���^?��T���Z�s�.��2Һ��b�/�F�f�w�����$b��\"l�^��w&b��<L~�6��c��V4�5D��_�>�**��fc>2�����>�J%=�4��{��V|�>m[%�\0�t���\"l�V���j�|ppUT�\Z���ER�Z������b}|�E6*��a2J8��F\\���ӋE˲Q��:�����VU�^�R������(!��Y&��2�n����\rU�0\Z$d�w!1^���+�T�~v=;\'c��<�[	&�+���	X��\0\r���q��߄-ۋлG\nnklƁ�6|��Etl��æ��0�o%�rs,w:�a��_ \0TC\"\Z��������շ�:���w�3/�\'#��7�Ic�5\0���5������Q;�C����c�(���V�h�=\Z��[�^ɛY���r��\r�\0Z��AiH��N��o~��ae����\0��:�f���{�b�{g�OΡS�Đ0?� �G\n�l�707�z�^��j�c�U*�1�ߥ��J����BԯkD��I\0�Ʒ�\"1Q�^�H��=Rнc���+�L��6	6�z&հ�<���E��tl6~�Z��m��\n�t�h�ۛ����Â��ФQ����-�<�D�T=���\0)�:��<���TZ�-ۊ���C�v��?�(\n*S�5�M?��IG�b���`��^��x	�?���U`2jp���>�F�ޕ�_���7F=X\r:��6��a-�A�	>�P��M\Z��T��Ztz�6Nf:��ઈ�K��\rK�����J�4�=[\ro2�i�8$\'i���sHJЪej�0F�����A����Q��G�ز��56c�n�L\Ztj돳s�;�X�\0a�a�km���.N-��V޽h��+�����5q��/}(�{:�@^�q��G$k�?�\\��%�pr�\Z��x��%c��SHN���FTqˑ�K��*�\\:�ZH�9Ns�\'��(���5�qyZ���\r��=I8tԎ#���u�Q���:xk�Y��_Y�$���j�)wi$I 3˥ʒ��\rq�T��*W~�F��.<���Q�������9F��D@R�V-��\Z#J^�5?KM����d��%I����HI��9P��KI�wF)�N+`��$�a��\Z ���W/�#��Ͽ�p���p��\\�lQ&0��Z����U���KFz�d��Ϳ��P1���jUc0��Z���Bl�R�\r��U��.M�K\\���6 h�-A�����v&O���#�;b|�GF�Ff��\n\08pĆ�%��1\Z4x�Z���o��g_�`�*!r+}��I{��n����L����\0�CGmHN�Ee��l>LWz��Gơcv�=�_F�ο�$7ύ��N4\rp\r��޳OֆF#�r�8r�^�N�UO!~=P��xm�+�J���W\0p�����0�0��\0��r6@���l�\Z���6��s�k�2f�D�������dd{Kdtwe�ِ���l���nJ7�3����\'�������jкE|H>�UŢe�(^z �b��ׄ�%��>����+9�i@�Jظ�\0��b��ФQ�����%�\0����K=^��|J԰�U��r���߸�_�����\0\0���t:�N��#��\"�}��ݏ����G�;�p����u���U����x�_��7���F��>�ʘ������ђ���$�z��6�>�\Z�bР�	}v\Z���n����eSV.|2�^��<9I���������X�u���w)������·g���l@\0\'N9���Zp�e8�����׿w%��_Yj����xbT\r���0s�F����Վ��5���61�����%�spO�J�i�������ۋܿ��އh>LW��e�\'�L~���}�0R:��P�4��U�|�讬<.�~J�X���a�a����N&&<Z�.[��R�B~0�\'��G�dV�zY���)K���u�r�޲��+�r\\N]]�r����a�a���Z���N|���k��r�a�a�?�F��>�Ql�0�?�P%w����8�a�a��1�H��v& -\Z	�hD�IQ�0�0L�\\/^�|��0�0�0l�0�0�0��0�0�0�uf�T��\">وa�a�a�\\�M�D�.�`���F �FBҔ�~ ������K��a�a�a$j�\0No>���M��\\�]�b�!ˀ�(A���������j��0�0�0 ����	<�-rc\Zbߦ|��q#3�\" �5�Ǡfu#Zt���ӫ�\r��.O���;!\"�r3�0�0�2@�sS\nP���f-nKգe33|>�jD��!`>������\0����$:�BF�]�E���R����2�Y���}i�~ܗ�K·�fc�a�a������%	0WA )Ak�����#�������p��\rz�0W�\0\0B<��wH�?�>3!���3-�+�Y�����k~��鎮8B@t�����ẝ�!�ڒ-_��r��j�>n��0�0�u�U��\04:��}�2A.1d�d(\"�=�Z4:�w�(py|(,�����������8���%�^h	]z�E�Q�DD����X\0��Ri\n�b�ޑ�K	��֙�I���߃�}��9���;e����m��2���)�n�ֱ�O���d\ZT�a��3��� *4���`d�Vԫ�o�~�,��Ϡa��p�Ʈ#�HHɢD�Pb�B\0HNw���y4M@�Q\0�Տ� ;\0���>��B����@��v(�O��3hT�8�RĝO�dB\Z\0���Q4\"]7�v�,�Q���D��Հ-�\0\n���[!\Z������\0hP�8\0};5�G���D!�B���?�H�S\'3�L.���e�N���r�rYFv���u/\r����.��cX�� #�^K�~����4znc�Ģ��wP���v�������>����mG���n\Z=;�S١ )��/;��~�)�<>�\r{OP��h^��\Z���|@׷�c���}b*Ӗm��2���ӥ[���G��\Z����4\Z=7�Y?�b�O;h��3�&e���P�����w�l8H�\'?b��8�R<2�{��`9���b��C\0��y7��ʮ��xd�\"��������M��-O�B!���݀�I^�{\0HN���� !�Cj�����`#��wx��嬜�\0��6�voƱ�o��m5���z��)B�.��T2�w�m\0`����:x��&�y�6�6�Y���K]3�{SN�;͉s)�9�f2z�o��z->����\'���p���\"@��ѼpOc��d��|���[	��עi�LH�����ތ��k��]\'8��n��	�����}��	il�g�/�YǑ3��j-�{4���v`��ڌ�8u��_�\n@��\n!y��B!�u�XD��Q�E�nwe�x�miviڳ/��U�i�:G�^���՞�(��C��W8�A�b�<�?�����5,{]��G�{\'�tz�7,�j2����4.�r\'�ݵ*_X�)�J��aTx�\\��p/}��0�Ԭ~\0�g��)B!���\0����NJ��/�đ����3ǧ;\Z6����Z�ܡ0Q\'*5B��e8�^�t�+���AF����Հq߬��p�TCl�C��`���L^����L^���N��A����i�[���ӥ[�u�x}�=�82]8=fˍ��\"�e��e���~�ۣmk�̤%��}�J\n�x�ޙ��O�t��6�L��/{pL�O����l�>����Rvk@�V�X\Z���6�r{�q$��;��x�����x�B!������>j�Z�;,^�@˦��\\aV�d��\'1Z\r�SW��K��\ZX-\n͢��F@���ˇP�[@�����K&>9��UJ�)>!%����ӴZI3d�^����&�J��o�w\Z�ׇקӼF)\\[�ѠR�Rl�w���h\'���dnv�*U$����q��B!�.\Z��}��qP�D��!�n�Z�����9�����R�4�R�JH��Y���M1�D���u��q��e�`ݞ�T(I��`~�y���]Ӧ�gpy�x}:-k�����4�ŧФjI�=jR�����]�知k�\"ج���ǣ3o�9�u)&�c�B!��	S�ӿo�0�\0��\n3��fW�y\n82�����u��[�\n�\r�z ��:.φ��zQ��mv��ȥB!�Z�ƀP�.��~��CT��\'�%�T��	�~���?�p��q�Ӊ���\0���~�*�J)��hD0M�[�>[��F��S�L���~(�X��~\n�Ҵz)�=8x�<�Â	�� v�9��nP&:�&UKJB!�u@�2�DP!h�敇�Ԉ�\Zx/~v\n�fV�pא�|7�>�R���J��u/߾�տ��hZ����LA��2�M*�ddw\0\n�`+��s���\n(_)��R�g��r疻����<��6V�{�F�����4|f:����\\�H�{n�kO���4��9��?���\'�B�W�3��^m���!�γ�z<���\0���%���G�A��{�W�K��T*����x�eXn��)FώE�~����\Z:�����n��5{��G��\r{�Q�1�W>YɝC�`w�X��(��x|:�}���{H�p�Z����h����=���Ch�8:�F����)E�����-�0\'f�(T��p#��G�q4�]�?7�b-ނ�����:_X	r��ryh��\'x}:�ۆ����%{�6��)K�V� 5�����yB!�u\Z@��_�}�5����2a%ַ���ѳg=��:d��d�V-����`�Kwҭ�\'$�;�u$��#�|t|֗�O�����\r�а<�/ob�h���͞b9������H�tq��_��n5���� *�*DX�q(�����X5�_=��˛��hr{������7�O���9����?�7<^|����y��ק����B�y�=��^�4g��\Z{�%�@td�<kB!��\0\"�?)�f����9���G&�a�T�pn��6�>6��z������3�ǧ\\X�#O+FXP��0�R|�Ad����;O�#�|:E����3��3�H�p���L���E��@���6�P������85���S�i�]G�Y��8߿݃��+��x	!�B\\_�j+)R���\rN�x�.�����³f�jx2ͅ���s`�P��xu�t3�{S^��	��O����/��<\Z���_�nV�,���Q�,w���Y�\Z2�uhX�����;�z��k���L�?�K]�k��.��)�Ť �����<�>���Π�M�tsE�.�B�k���k`�[��m\n�E+e�\0���P�2�ͤ�A��0Z��\n���⯅ݶ���ro+`p�=[�q�\n�;�ĸd#�0V���|�Jg�8�@�{\'�[)	���v�	���N���^���`�O&R��\'��iX���r�n`�F��㰵��Q,�� ;\0�oQ��D��q\'�G�b�\0�(�����g�t�<�-���|�������,����i�ϰX4JT�!�n�0-D�>�2p�*ʕ-JD�#߭+U$,�/��#:�łR�\'0I�B!ĵp��1����b�FF�\n$%B�y����u�Y���P�<��S�C��#!�r=�r��3�ySQJ\n��LE\0\0 \0IDATe��-\n�q�r�`]����Xu�,X>����}�2.�\"q%�s�����r�	!�����]$�<���Ld��~��n�A�ӇBa`��]�Nx����S�d5X�\n<8S���$��ˤ�\\�������y��U�/u��g��+�L��qq�(���9����[��gE�\'!�B\\�ę� ���Ԩŋ�th:,��{�Z��>\\.��H��(�b3WF.�����3\0�\\V�aC]��Ў��Ծ{GV�F��+�Lz���bH�N��>�!�v>[��^�B�2Z*��f�A4��oP��d�<����|>#{\\��\"s7!�B�U׾&e�CX4*�2�as*�oJ`ѲDv���������<^��Rp�AV���^�r�<4z!e{�ϸ��.Y�����sA3�(�,9ly�/hߜm����W+w^ѱ��?�~�����7�5�M��*Ow��]������g+��ي��f��=S�O%Z�e��L�WFh��|����B!��?TK�P���6���ݮ�f��Z6�v!(\r���;��3�}��ˠ	�ح)?m9°�����Gh��g���)K��3��|ح~���c�4:�>��iNҳ\\�>��YxP\0w�>�\0��\';��ᶵ\0��}�~SV`�ҴZI�>y�y�����;���g�f�v�dd�<��s^���,R2ܤe����ج\Z3���K���wi�}-��t{�8d6����u���#-1�W����h�\"�ac�(s�r�a���a�y�Q3I*��������ݯ{y����0�?�?ȨY����?�\0\n\r��@4M�i5QJAh�u�\n&�B� �I)^�HK���b��p6�Mz�����\'u:����ө�4~�uG�Ѹ��8�^b�M�Xd0ۦ>I�ǧR�����y����v�$s�@�>�B��,7�w!�n�x�QT.U��UJФZI6�����t��)Q8�~]\Z�h�*7gEZ���4��ґ=�{���9����\\5�h��g�>z��/���a�i<�SK_���Q�1��\"�b\"X����w4*���u�\r��up�ΐ^��h+��w\r�˲��p/}���]�j3���w2��k����`���q�\"M������\n~ح\ZX4�hT��t\'S��#�;���R�-�f��?t|�j�^@��\n�A�C!��z (�\n�a����`6��ǫc�h��g�����j�R�ϧ��>�V�f55����?^�>��waQ7Y�X4�Ţ�n�11���Z�����I�.����W�q!0]��q\r�g6�X�����Ģ)�\\���H5*għ�1y)[�y�:勡�:JA�>��[i����������_~_�F잓l?O�rEQ�ʭG��U���r.%�b�\r )-�����/S�b4��`��B!��]\0�=�I�q��ֱ��V&b�(�Ĺ��{\'6��p!;����Dك��u{���%�<?&�;)S,�_�OJw����I�<>�aþa����Y\Z�d�_�)�|��y|:�<D�8p�}���-;����X��W>YI�^S0~y��L7�[���s�/���jX4��#:2�]��F)��b�\0+��NR2\\��K)AvR3]f��B!��a\0�����t�&�08p8���\0\"íY�\rp{tR�}Qq����: �\\/8�d�ݞ��e�[�I�=H:�D֚a\0l��qT�7��2��,�\r4[�\\٭@�]7�Y4>��-_����@�Z�U��n\\sq8#��@��CV������4���qS�p-L���ٳ��ND7z?y+u+D���,��0����v#�\r$�t�?��/F�6�,;�ɾ}\0p{.��O�w�nh>��\n��:/���˳��4ü�AA�+���`�5��ː�B!�ӵ_�P�b,|	U�������ލ�i,�l���/ts�=�J^���JY��3�.\'�\0s��F�����^jQ�?[��^��>�����UB�h��~���s_����~��E��4\r�2�an��`�������`e|�6�ݴ���B!Ŀ΍��fE�{����! �����c���t:��(���R��������v�KU�s��{]�ܯ/��.jw����.��?B�+�f��G�;��^�^�|�iW�\\��\"�=\n!�B\\O�0��;O����J�#\013��3��>���)�4�J�B!���HN��b��2W�9.��95�e��0 ,(\0MS�=>��@a�!��@��t�9�݀����0H�t �G!�B!n�\0rM2�bבxj>1��Z� ��y�R�ޔu��ݠ�q�;٧�{4c�o����,�kS�L����m5�!$��k�����K�!�B!$��7������C�`�֣\0��U�ֵ˲f�1�h@ϱ�[�$s�t`��C� �n��4o[�Р\0Z���zʷ~#��A�W2����s���m���>]Ǣ���f2!�B��v���-���ap[ݲ�ʟ~���]7���oX޿��ۏS(�2E�Y���|�7\Z�`�xA�K\n��Q�X\"�c�Ģ���p�\Z���>zOZ���QXۿ��~E)saș?�D����h:��߮�eԬ��4���-�L^��)�F���9X4���N�~�O%|!�B�b�Q/L)����Q(N�K%%�	�b����.,����2Kux�VJ�Y-����ʭG�x��;�q.9��͇ҵyUb��y��ϙ:�ꖏ�q�I|ܬ2Ou���P�?��]��I�9v����UK�w\"�B��u�����/��≉���^l�������oSJ�m�<\0\Z��E��=�x�}�����Guo]��҅y��%�;�?�\Z��ГҲH�p�Î�b�t�`߉D68�W�c㊗=Ə�d���T�2���,>x���uN!�B\\�d��.���y��p���>\03�ɒ�}8�:�1��Eٴ���/v��)�./���F����xu,�t����<�<��U�.�aP�x�A�X��߶�c�(�̕н:�6v+x|�� &Yn�oY�>��S�P(?l8h��`��&��K`�{\'ҮM\r�-c���Հ�y֌B!����n�`�A����D�lS��mj��f�j�#�l3��&=�/ s�@��2�\r�0���_�m��a{���ңSx�\Z��_�0h]�,o��J�>�0f�{��M���p�[ߢi\Z�j��W��0V�N�\'?����Y)�bQ�\0DG�pSt\0�JFQ(4P�#!�B����r��\Z��^z���+h�4����-qUf�?K�NE�Y�^C�ǣ3o�9�u)vM��v�lXW;֥��fĒ�+�B����)��߷���yH��)Z+��K̚U`b�L����*�k	B!���Lr�B!�@�B!�@�B!���\n ����/�B!��W����s�@����vH�Gh��\r|n(V��8u�B!���r�[@���3���w)�R1������S�H_*$��/�����IK�B!�7�k����������4\np�\rΞs���$4�hQ����z�S�)� 0*�&-!B!�B���}H�9�B�v�.����M���ќ�3h�0�Yߝ%�	��\r��c0ܵ��H<G㒯�e;��g�u_xν�v�,�Φ��\0!�B�/ >78����d�>�\">�K�Za,]���lڐAѨ\0�2 (\n\"JAʩ�����?<�g����>������R0���<>q�5��g�_F����p��g�R����?�(��鹞-�?�0��-C�B\n!��_@4+8��l������Żh� M�f��(_Α]+�,�L�g�l<Ĩ��0���ح��;u���0.Yi���ru���+� A6�U��*o�Ϯ��*��aXQ���r���T����Ҷ~�K^����YД��s�i���<��߈C��-�����`�&Y�]!���\0R\0�),8���g��r�ܠ�9	$o�GS\n�\"\"�A�� RΥ�+J\r��F��ux�I����?��2�;�!��x^�p���e�S���-C�.�WG5}�b���j2��iN�R���7��Cٰ�4�ꋜ8�ʶCgQ�%�	D����\\��B��r���G��>���ڍd��m��R��`#�w�#�	���,�R�Z/3e�f�u�A�t%J)Ҳ�h����}Q��DS\nM)�:�E�n�&C�pz��O�~�<��#H�0���S�ǻ�y�=������ժ]��#(r�Dn�����z6)#�뜊��=\'Q-� �	Dv��c��Q)��,��d�M�uU��RA�RA�R�^M���@[�3�j�LJ=0MS�<�r�?l��ٹ/���%�=�pU��r�^!��\Z@r* �E���`��`�9��e��L�H�|V�m�=\'��}\0>�a��a����]\rxq�W�d��y$�)���#y�\0&�i�/�C��$|ןB�\"���C\0J>0��%\"����._���F\0�[��8��|O�nK�B�Խ�^�՚���7�E�n��������R��$\0�̉e��3�{�6���.�?7�W�wi��TdB�6�%K������$/��k��?1Xh���_�Ȼ}���ѳ�vةY��}��u�u�\0���{�����c�8��`{����i�ܣo�l�w_�Ɗ͇1x��/x�c=��n��=\'<�����f8��1_������!���1��휟ן��x�s���0�ӝT*Ũ�Z3g�n|o�F��=��M��p�\n��:�ع�;w���C)���e��u�<^�,���������E�3\'�1sb��tFώe�X�$�����`����N���\'g0vN,c���w�	��a������3\'�7g��ϧs6���;�ֳi�i^{���i��s�?��-(�I�6��`J)>[��Otb٦��c/^�)�6��ט����\r���X���n�Ǹo�1fN,#�^+-)B!��_�?��R�,�����q��Z� l6���ɜ:�U�H����͒�(� :*�e7��K���VP�*�\nso���X1���\0�\rvR2\\������+k!f���MQ.&�ك�pp�\0��^���~w��w�i\nB8��|��V�,���uح��Z��<ܶ&;�͚�6�MJ���S�h\Z�K���j^��#��괟i5`&%�ap�f\0���)_��E���\0�����˾�>�Nd�y��=̢i`�P.&��bز�n�Q�|3�NL���D�iV?^��ɿ�a^5�i\Z���-�����~�s~X�|3�A���߷q�ԫ�R�jOL%15�6�n���o���\0<?q1�̡����;r>��S���hY�4UJ�n�O9��F����	�����<��|F��-�y-X����ж~9�2���Z�,�T�c�n/�N\'���iԫM�*�i���8�����a�Z��qj�T4�3�O������H���iQ�4J)��Mf�K���T^z{���cȌ�<2�{J	�PX �aЪvi*���˰o=;�{o���h?x\0�/��3�-�r���\\|�A��?����<ܶ��YȘ9�h���K_0���toU�[j��߮B!�(�?3\ro��Wh����Mi�g�(_�A���4�z!�d���\\��/�tiV�ѯw%����f �\r\ZW)��jᮡs�9��4�۫����4e����\0�U�j�P�|1\0�M��A��K|����v�%OY�*��A�%\0h�&?�y�0\0\\�s��*W�r1���BR�|1N�M&>9�J%������h]�*�\n_�[�\"F���u�.��U3�0�V�bT,��o&15�[��(I�*��~8��߬cd������N�b��$15�[k����������pp{Y1���+ǙSI��˨ٱ�88������ͫ��w�g�Q�\rZ��R�q{q��f���|��]4�V2�\rX5�F�\n�l��I���i�R�d�H:��O7�p��]^�|}N��dn3HLH�OV��r��C�]����X�U�X�`���/�px\0��=�v�a\0uʛ�v��3$�;��6	�E3Cu�sd�h��9��s<>�/W�\"8����I�9�����l���a��vB!��(�F�;2N�l] fЦe$�*穔����`���<�ɎM+0�[S�2���\r����ڽ�5.��	���=�|ỏ�g�:�\\����L��+R�b\0\Z��hD0\0�>�M���h5`&��.��_1��,O�d`�|��������جV�~��bpy�JZ��Eh��<�g;7�Lb\Z�������K���E��i���\'�R�پ6E#�J��UK�٠���z7KG���Y�.L��_в��Ѩ�����	4�l��]��t\'\0��w�޷��Հ��g�Y=�\'�Jb��^<��R�6�B�z7pd^�=ӗo�B�(>y�c���_ �՛Lٝ��ʡn~�Q/v����sR������uT�A��;�;�A�jR	����|��l����s�X\0N\'����>]�\0��n�e��4��Br��0��,��E^�������l��9:��<�u��\\�h�\\�6�N��e�<�/��Oz�Ӗ#�>�,7o?߁��6`�s�S����o�{\"�b��al\'�a�B��*���qhj�K�xE-�F\ZrYe��N��Q��¹d�����V�>B�00rU��\\ݹr*j�Rt�>�+uZ�+h���]��}qY�2�T֥ʾ�s���TyW��՚=�,];���jy<:���[�b��oa�~:75CĂ��qw����4oþXC�%p{|��i\'K?�M���yu�*�\\����h���ZQ�TaT�W�qO#����\'���$\"āEӨuS�?�\n��K����j�S6�y���\'&NY��}�-���ga��������)��0M�!sp{|9lT,�۽Zh�候�,�7˶�qz\ZT����m�\Z<�!w��FBJk�y�M��д�8N�>���V�ʏ}���?a��s�x��6�D�{�[i�w\ZZV#��������*�\Z0�5��c�6��I��3l�4�\\�Ec��-�_1�v��&4��ҍ���|{mW[~�\n!�ב	S�ӿ��7�&�\0Ɖ���o��5P�\n���\r!>��ha��f��f���~C�_����;P]�����	U6�-��sy}�\\l\nlV��Ma�Z�ey�>|��s�\'����%�f5�^|�>�O\'�n����x}���fwA�݊R�|/��븹��a���9�s~6����/̮x9��\\_����nI1��\0`v9�s}��{�����PP�B!��?R�a�J5�\']H:�vmE��גt�Y�.�-�R���h��_��k[N6�[ǾT�dW�s��X�+�`�\n��r�w���F�E�T��\r�Y.y}P�=�_����K��*�B!��?3\r��		B!�BH\0B!�B	 B!�B	 B!�B!D!�B!D!�B!�?�ȵ�u����c!�B!��k�{�*�8�J�>\'�|��:u��G�㥩?��\"j�\"08�^ny�s68#��	!�B�޵_9,g5�=��5ؿ�V�ʺA���>7F�9T���j@�U�\r�@S��=�%!5W��C��qSt�%+��N7�k� ���ۗ�|�a*��*�=�ǋ��PLz��M+��c�t��k�r���4\n!�B	 WM)�9~wO�^��\r�?\rv(SRg l�c�NEY��*�J������K���\r\0n}�KV�{��Β���v�bD�8r�n:����#�\0�D�P�d!\0��:���ک_1#��kv#4(\0_���-�@A��v��E�����EJ\r�0<^��=\'Q\n�[!\Z��=\'��\nA�\r�3hR�d������p��`��������?N��;�S�X���ѲVyz�B!Ŀε�{C�9P�����a�nLa��,����OaM�Hvy���7��!��<-\"��=�/�tb\Z��$3o�^Z���Y��%��e��,��\0O%Q��O�q�,\0�<�>#�^˞�	4��	߯ۏR�>�.�瘅l=��_ w�M�����/i�e<�aP��,�t�w\r�û�7w>�zO}̒\rh��Ǵ\Z0��}?�郓�_R���/~������`hZvvSt2�)�6s:1��O}͇̊QJ���E<��rN&��q�yr�B!Ŀҵo�<�Y���3g]��:�r7R�d\0eK�sO:_o?\0\0qIDAThϺ�3�m2Σ��w}���՗+w�t�!|�NjB\Zn�/oryٵ�$\'�S�4���i�8O�r� �N�z7���������&��臭�ݬ2���À�~��a�����GINw�����b���k�\Z�/;��Og��C�Ѩ٩W!�/^����Rj��;����{)_<����[���B���z<^~�r�v��1c�\"�����KH[���UD!�B��v\0�X!��?x�|�Og��t\"#�lّF�MѨs(7�qp�_�%���pf8	6���\np4.���|�����w�ٰͣ�4�|/wϫ\\A�ů�<K͛�f��cCr�W�m�P�)E��J�H+.O�0��Ǥ>�x�}\0R2\\��v+�A����a�SJ�n/S�u��[k�Êa��)��]��^T�kߒ�W!�BH\0��������#�\"Q6z�͞}�ٗ�ǣq�H�RR��,@TB\"6���r_��L�aÿ���G|r�ؑf�K\\\"�!3Vs��ypy0���g��A77���Y�Q>&�,��n�A�J1��\"2��։Aݛ2m�6��]Grj�Yf`I�t�������4[B��:�cڲm�K���iX�8]o��.2���qP�Qy��;E\"�����3��ұ.���=���t�U/�]M*1��U�֔_�e��ʓ+�B!��T��G�CS/=�y�Z6� 4�ʲ��|�k;�<�����rsa�V�H`��L��q_���{2YY:�)^\Z�\n���1�&O`�����D\"N���S�\\14�l18�Br��\"��������D�J�n������d�M�\0�8|��B)��#�\"�P\0���DlV\r��J��H��L�\0*gb�\r���)Ah��Og��`�Z�V�0\0����T���SR��cgSP�Ţ(S,��\r�Wg�q�<��B��fy[ƙ-&@�\\ӯg�知k�\"جo��ǣ3o�9�u)&�c�B!��	S�ӿo�����- J���Y�?�J�&!�3<�ǻ�)f���Y�\"���4\Z�\r�Fe�a/`V�s�W)U��c�)\ZN���y�Y�\Zu�G�\n�N���Z�.l�鞕���sf�ʡ)�g?��R��j�-z��� �?{�v[���̮u�>����t���>Y�Q!��j�5��5���u@|��K�X�\06mKc��\"#��*� 4�¼�q&�EL1;��R�j�ǉ�8�xe�����}��4�ݮ���9�B!���T,x]��?�����]Q^�Bp�t�<$%�c-�Ϲ	Ը�A8ţ���ʙ��!����;^�M���{��<Q78�Eqo��r#�B!�n��x��R�`-�z![�R����\0ԗ=�U׫���h7�k��8ƒ���S$�B!��z]�1 ;�>5�q8�J��=;j�_�q�a��v4�)�Of�{N������iY��	����H����S�lQ� ��ᗝǱZ4B��4�j�<�f�1\\v�F�:e���z�O����ظ\0�O&r�l\n\0���X�9@=>9�?H�hDP��&B!�B�+s�WB7s��A�������w�(d$�oC�G��#\'��^��f�L#������^�N-^�����2�z}����s�]�\\r&Y.M�N�_�\0���3�=i	�i��:`&c�Ģ�b����կ9����	\0�9v�z}�q:1��{OѤ�g$�;I�p��ω�}���LN%�ɓ#�B!�_��Qf��B�WZ.j�a�A�ON���jNd����,��w��Rє�Ů��_1��L7O����\06��Uێr_��X�T.U�Z����3w�vk�W�vB��k��y$.��t\'������ɈK&-Ӆբqp�)�d8	�q���d�B!��E\0�	!c�0�9�3\'�S9����#�Ѧ�MDGC��_?{�?Umz��ҷ\rg���y�sCT�7/*��u(�\r]7򝦁)���\Z\n���ŢiX-\Z�Oz��f���㉴�5+F? O�B!��E\0���E1��ݴ�[�s�X4EtT�v+-Z�`��_��ǧ�pۚԯC�GZ0m�6�2��!�eκ�Mw���\"yJ���L3��ڣ)O�[Đ�Vs>5�)�w�F�\"�M�)˱Y,d�����\nM)Vm=�#mk1��e���P�!�B!������fmP�\0\0\0\0IEND�B`�'),(19,44,0,'0','',NULL),(19,63,0,'Dématérialisation de la séance du conseil de Paris','',NULL);
/*!40000 ALTER TABLE `document_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_history`
--

DROP TABLE IF EXISTS `document_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_history` (
  `id_document` int(11) NOT NULL DEFAULT '0',
  `event_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `event_user` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `event_message_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `document_state_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `document_space` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `index_history_id_document` (`id_document`),
  KEY `index_history_event_user` (`event_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_history`
--

LOCK TABLES `document_history` WRITE;
/*!40000 ALTER TABLE `document_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_indexer_action`
--

DROP TABLE IF EXISTS `document_indexer_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_indexer_action` (
  `id_action` int(11) NOT NULL DEFAULT '0',
  `id_record` int(11) NOT NULL DEFAULT '0',
  `id_task` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_indexer_action`
--

LOCK TABLES `document_indexer_action` WRITE;
/*!40000 ALTER TABLE `document_indexer_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_indexer_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_list_portlet`
--

DROP TABLE IF EXISTS `document_list_portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_list_portlet` (
  `id_portlet` int(11) NOT NULL DEFAULT '0',
  `code_document_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_portlet`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_list_portlet`
--

LOCK TABLES `document_list_portlet` WRITE;
/*!40000 ALTER TABLE `document_list_portlet` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_list_portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_page_template`
--

DROP TABLE IF EXISTS `document_page_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_page_template` (
  `id_page_template_document` int(11) NOT NULL DEFAULT '0',
  `page_template_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_page_template_document`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_page_template`
--

LOCK TABLES `document_page_template` WRITE;
/*!40000 ALTER TABLE `document_page_template` DISABLE KEYS */;
INSERT INTO `document_page_template` VALUES (0,'/skin/plugins/document/document_content_service.html','images/admin/skin/plugins/document/page_templates/page_template_document0.png','Défaut'),(1,'/skin/plugins/document/page_templates/page_template_document1.html','images/admin/skin/plugins/document/page_templates/page_template_document1.png','Pleine page'),(2,'/skin/plugins/document/page_templates/page_template_document2.html','images/admin/skin/plugins/document/page_templates/page_template_document2.png','Rubrique en-dessous');
/*!40000 ALTER TABLE `document_page_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_portlet`
--

DROP TABLE IF EXISTS `document_portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_portlet` (
  `id_portlet` int(11) NOT NULL DEFAULT '0',
  `code_document_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_portlet`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_portlet`
--

LOCK TABLES `document_portlet` WRITE;
/*!40000 ALTER TABLE `document_portlet` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_published`
--

DROP TABLE IF EXISTS `document_published`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_published` (
  `id_portlet` int(11) NOT NULL DEFAULT '0',
  `id_document` int(11) NOT NULL DEFAULT '0',
  `document_order` int(11) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `date_publishing` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_portlet`,`id_document`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_published`
--

LOCK TABLES `document_published` WRITE;
/*!40000 ALTER TABLE `document_published` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_published` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_rule`
--

DROP TABLE IF EXISTS `document_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_rule` (
  `id_rule` int(11) NOT NULL DEFAULT '0',
  `rule_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_rule`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_rule`
--

LOCK TABLES `document_rule` WRITE;
/*!40000 ALTER TABLE `document_rule` DISABLE KEYS */;
INSERT INTO `document_rule` VALUES (3,'moveSpace'),(2,'moveSpace'),(1,'moveSpace'),(4,'moveSpace'),(6,'moveSpace');
/*!40000 ALTER TABLE `document_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_rule_attr`
--

DROP TABLE IF EXISTS `document_rule_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_rule_attr` (
  `id_rule` int(11) NOT NULL DEFAULT '0',
  `attr_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `attr_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_rule`,`attr_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_rule_attr`
--

LOCK TABLES `document_rule_attr` WRITE;
/*!40000 ALTER TABLE `document_rule_attr` DISABLE KEYS */;
INSERT INTO `document_rule_attr` VALUES (3,'id_state','4'),(2,'id_state','3'),(3,'id_space_source','3'),(3,'id_space_destination','2'),(1,'id_space_destination','3'),(1,'id_state','2'),(2,'id_space_source','3'),(2,'id_space_destination','4'),(1,'id_space_source','2'),(4,'id_space_source','4'),(4,'id_space_destination','15'),(4,'id_state','5'),(6,'id_space_source','15'),(6,'id_space_destination','4'),(6,'id_state','3');
/*!40000 ALTER TABLE `document_rule_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_space`
--

DROP TABLE IF EXISTS `document_space`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_space` (
  `id_space` int(11) NOT NULL DEFAULT '0',
  `id_parent` int(11) DEFAULT NULL,
  `document_space_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `document_space_view` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_space_icon` int(11) DEFAULT NULL,
  `space_order` int(11) DEFAULT NULL,
  `document_creation_allowed` int(11) DEFAULT NULL,
  `workgroup_key` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_space`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_space`
--

LOCK TABLES `document_space` WRITE;
/*!40000 ALTER TABLE `document_space` DISABLE KEYS */;
INSERT INTO `document_space` VALUES (0,-1,'Racine des contenus','Racine des contenus','detail',1,0,NULL,NULL),(2,1,'Espace de travail','Espace de travail','detail',10,0,1,NULL),(3,1,'Espace de validation','Espace de validation','detail',11,1,0,NULL),(4,1,'Espace de publication','Espace de publication','detail',12,2,0,NULL),(6,5,'Images','Images','thumbnail',2,0,1,NULL),(5,0,'Bibliotheque multimedia','Bibliotheque multimedia','detail',1,1,NULL,NULL),(1,0,'Contenu Editorial','Contenu Editorial','detail',1,0,NULL,NULL),(7,0,'Fichiers en telechargement','Fichiers en telechargement','detail',1,2,NULL,NULL),(8,7,'Fichiers PDF','Fichiers PDF','detail',4,0,1,NULL),(15,1,'Archives','Archives','detail',9,4,0,NULL),(14,0,'Acteurs locaux','Contient les fiches acteurs locaux','detail',5,3,1,NULL),(16,5,'Fichiers son','Fichiers son','detail',8,1,1,NULL),(17,5,'Video','Video','detail',7,2,1,NULL),(18,5,'Icones et pictos','Icones et pictos','detail',2,NULL,1,NULL),(19,5,'Bannières','banner','detail',2,NULL,1,NULL),(20,5,'Flash','Objets Flash','detail',6,NULL,1,NULL);
/*!40000 ALTER TABLE `document_space` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_space_action`
--

DROP TABLE IF EXISTS `document_space_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_space_action` (
  `id_action` int(11) NOT NULL DEFAULT '0',
  `name_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_permission` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_space_action`
--

LOCK TABLES `document_space_action` WRITE;
/*!40000 ALTER TABLE `document_space_action` DISABLE KEYS */;
INSERT INTO `document_space_action` VALUES (1,'document.spaces.action.createSpace.name','document.spaces.action.createSpace.description','jsp/admin/plugins/document/CreateSpace.jsp','glyphicon glyphicon-plus-sign','CREATE'),(2,'document.spaces.action.deleteSpace.name','document.spaces.action.deleteSpace.description','jsp/admin/plugins/document/DeleteSpace.jsp','glyphicon glyphicon-trash','DELETE'),(3,'document.spaces.action.modifySpace.name','document.spaces.action.modifySpace.description','jsp/admin/plugins/document/ModifySpace.jsp','glyphicon glyphicon-pencil','MODIFY'),(4,'document.spaces.action.manageUsers.name','document.spaces.action.manageUsers.description','jsp/admin/plugins/document/ManageSpaceUsers.jsp','glyphicon glyphicon-user','USERS'),(5,'document.spaces.action.moveSpace.name','document.spaces.action.moveSpace.description','jsp/admin/plugins/document/MoveSpace.jsp','glyphicon glyphicon-move','MOVE');
/*!40000 ALTER TABLE `document_space_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_space_document_type`
--

DROP TABLE IF EXISTS `document_space_document_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_space_document_type` (
  `id_space` int(11) NOT NULL DEFAULT '0',
  `code_document_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_space`,`code_document_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_space_document_type`
--

LOCK TABLES `document_space_document_type` WRITE;
/*!40000 ALTER TABLE `document_space_document_type` DISABLE KEYS */;
INSERT INTO `document_space_document_type` VALUES (2,'article'),(2,'shortarticle'),(3,'article'),(3,'shortarticle'),(4,'article'),(4,'shortarticle'),(6,'image'),(8,'pdf'),(14,'actor'),(15,'article'),(15,'shortarticle'),(16,'sound'),(17,'video'),(18,'image'),(19,'banner'),(20,'flash');
/*!40000 ALTER TABLE `document_space_document_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_space_icon`
--

DROP TABLE IF EXISTS `document_space_icon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_space_icon` (
  `id_space_icon` int(11) NOT NULL DEFAULT '0',
  `icon_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_space_icon`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_space_icon`
--

LOCK TABLES `document_space_icon` WRITE;
/*!40000 ALTER TABLE `document_space_icon` DISABLE KEYS */;
INSERT INTO `document_space_icon` VALUES (1,'images/admin/skin/plugins/document/spaces/space.png'),(2,'images/admin/skin/plugins/document/spaces/space_images.png'),(3,'images/admin/skin/plugins/document/spaces/space_download.png'),(4,'images/admin/skin/plugins/document/spaces/space_pdf.png'),(5,'images/admin/skin/plugins/document/spaces/space_users.png'),(6,'images/admin/skin/plugins/document/spaces/space_multimedia.png'),(7,'images/admin/skin/plugins/document/spaces/space_video.png'),(8,'images/admin/skin/plugins/document/spaces/space_sound.png'),(9,'images/admin/skin/plugins/document/spaces/space_archive.png'),(10,'images/admin/skin/plugins/document/spaces/space_working.png'),(11,'images/admin/skin/plugins/document/spaces/space_validation.png'),(12,'images/admin/skin/plugins/document/spaces/space_published.png');
/*!40000 ALTER TABLE `document_space_icon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_type`
--

DROP TABLE IF EXISTS `document_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_type` (
  `code_document_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `document_type_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_attr_id` int(11) DEFAULT NULL,
  `default_thumbnail_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_xsl` mediumblob,
  `content_service_xsl` mediumblob,
  `metadata_handler` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`code_document_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_type`
--

LOCK TABLES `document_type` WRITE;
/*!40000 ALTER TABLE `document_type` DISABLE KEYS */;
INSERT INTO `document_type` VALUES ('actor','Fiche acteur','Fiche acteur local',41,'',NULL,'<?xml version=\"1.0\"?>\r\n\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n	<xsl:param name=\"publication-date\" select=\"publication-date\" />\r\n	<!--\r\n	How to display the publication date :\r\n	<xsl:value-of select=\"$publication-date\" />\r\n	-->\r\n	\r\n    <xsl:output method=\"html\" indent=\"yes\"/>\r\n\r\n     <xsl:template match=\"actor\">\r\n        <p>\r\n            <xsl:choose>\r\n                <xsl:when test=\"actor-photo/file-resource!=\'\'\">\r\n                      <img src=\"document?id={actor-photo/file-resource/resource-document-id}&amp;id_attribute={actor-photo/file-resource/resource-attribute-id}\" align=\"left\" valign=\"middle\" hspace=\"20\" />\r\n                </xsl:when>\r\n                <xsl:otherwise>               \r\n               </xsl:otherwise>        \r\n            </xsl:choose>\r\n             <strong> <xsl:value-of select=\"actor-firstname\" /> &#160; <xsl:value-of select=\"actor-lastname\" /></strong>\r\n        </p>\r\n        <p>\r\n                 Fonction : <xsl:value-of select=\"actor-function\" />\r\n        </p>\r\n        <br />\r\n        <br />\r\n        <br />\r\n        <br />\r\n     </xsl:template>\r\n\r\n \r\n   <xsl:template match=\"file-resource\">\r\n        <xsl:choose>\r\n            <xsl:when test=\"(resource-content-type=\'image/jpeg\' or resource-content-type=\'image/jpg\' or  resource-content-type=\'image/pjpeg\' or resource-content-type=\'image/gif\' or resource-content-type=\'image/png\')\" >\r\n                <img src=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\" align=\"right\" />\r\n            </xsl:when>\r\n            <xsl:otherwise>\r\n                <a href=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\"> \r\n                    <img src=\"images/admin/skin/plugins/document/filetypes/file.png\" border=\"0\" />\r\n                </a>\r\n            </xsl:otherwise>        \r\n        </xsl:choose>\r\n    </xsl:template>\r\n</xsl:stylesheet>\r\n\r\n \r\n\r\n','dublincore'),('article','Article','Article',0,'','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n    <xsl:output method=\"html\" indent=\"yes\"/>\r\n    \r\n    <xsl:template match=\"content\">\r\n        <xsl:apply-templates select=\"article\"/>\r\n    </xsl:template>\r\n    \r\n    <xsl:template match=\"article\">\r\n        <p>\r\n            <strong>#i18n{document.document_admin_default_xsl.labelTitle} :  </strong>\r\n            <xsl:value-of select=\"document-title\" />\r\n        </p>\r\n        <p>\r\n            <strong>#i18n{document.document_admin_default_xsl.labelSummary} :  </strong>\r\n            <xsl:value-of select=\"document-summary\" />\r\n        </p>\r\n        <p>\r\n            <strong>Fichier : </strong> \r\n         </p>\r\n         <p>   \r\n            <xsl:choose>\r\n                <xsl:when test=\"article-attachment/file-resource!=\'\'\">\r\n                       <xsl:apply-templates select=\"article-attachment/file-resource\" />\r\n                </xsl:when>\r\n                <xsl:otherwise>               \r\n               </xsl:otherwise>        \r\n            </xsl:choose>\r\n        </p>        \r\n	      <p>\r\n              <xsl:value-of disable-output-escaping=\"yes\" select=\"article-body\" /> \r\n	     </p>	\r\n        <br />\r\n        <br />\r\n        <br />\r\n        <br />\r\n     </xsl:template>\r\n\r\n \r\n   <xsl:template match=\"file-resource\">\r\n        <xsl:choose>\r\n            <xsl:when test=\"(resource-content-type=\'image/jpeg\' or resource-content-type=\'image/jpg\' or  resource-content-type=\'image/pjpeg\' or resource-content-type=\'image/gif\' or resource-content-type=\'image/png\')\" >\r\n                <img src=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\" align=\"right\" />\r\n            </xsl:when>                                                                           \r\n            <xsl:otherwise>\r\n                <a href=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\"> \r\n                    <img src=\"images/local/skin/plugins/document/filetypes/file.png\" border=\"0\" />\r\n                </a>\r\n            </xsl:otherwise>        \r\n        </xsl:choose>\r\n    </xsl:template>\r\n</xsl:stylesheet>\r\n','<?xml version=\"1.0\"?>\r\n\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n    <xsl:param name=\"publication-date\" select=\"publication-date\" />\r\n    <!--\r\n   	How to display the publication date :\r\n   	<xsl:value-of select=\"$publication-date\" />\r\n   	-->\r\n    <xsl:output method=\"html\" indent=\"yes\"/>\r\n	\r\n    <xsl:template match=\"content\">\r\n        <xsl:apply-templates select=\"article\"/>\r\n    </xsl:template>\r\n    \r\n    <xsl:template match=\"article\">\r\n        <p>\r\n            <strong>\r\n                <xsl:value-of select=\"document-title\" />\r\n            </strong>\r\n        </p>\r\n        <p>\r\n            <xsl:choose>\r\n                <xsl:when test=\"article-attachment/file-resource!=\'\'\">\r\n                    <xsl:apply-templates select=\"article-attachment/file-resource\" />\r\n                </xsl:when>\r\n                <xsl:otherwise>               \r\n                </xsl:otherwise>        \r\n            </xsl:choose>\r\n        </p>    \r\n        <p>\r\n            <xsl:value-of disable-output-escaping=\"yes\" select=\"article-body\" /> \r\n        </p>	\r\n    </xsl:template>\r\n\r\n \r\n    <xsl:template match=\"file-resource\">\r\n        <xsl:choose>\r\n            <xsl:when test=\"(resource-content-type=\'image/jpeg\' or resource-content-type=\'image/jpg\' or  resource-content-type=\'image/pjpeg\' or resource-content-type=\'image/gif\' or resource-content-type=\'image/png\')\" >\r\n                <img src=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\" align=\"right\" />\r\n            </xsl:when>\r\n            <xsl:otherwise>\r\n                <a href=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\"> \r\n                    <img src=\"images/local/skin/plugins/document/filetypes/file.png\" border=\"0\" />\r\n                </a>\r\n            </xsl:otherwise>        \r\n        </xsl:choose>\r\n    </xsl:template>\r\n</xsl:stylesheet>','none'),('shortarticle','Brèves','Brèves',0,'',NULL,NULL,'none'),('image','Image','Image',43,'',NULL,'<?xml version=\"1.0\"?>\r\n\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n	<xsl:param name=\"publication-date\" select=\"publication-date\" />\r\n	<!--\r\n	How to display the publication date :\r\n	<xsl:value-of select=\"$publication-date\" />\r\n	-->\r\n\r\n    <xsl:output method=\"html\" indent=\"yes\"/>\r\n\r\n     <xsl:template match=\"image\">\r\n	<p>\r\n	    <strong> <xsl:value-of select=\"document-title\" /></strong>\r\n	</p>\r\n\r\n            <xsl:choose>\r\n                <xsl:when test=\"image-file/file-resource!=\'\'\">\r\n                             <img src=\"document?id={image-file/file-resource/resource-document-id}&amp;id_attribute={image-file/file-resource/resource-attribute-id}\"  />\r\n                </xsl:when>\r\n                <xsl:otherwise>               \r\n               </xsl:otherwise>        \r\n            </xsl:choose>\r\n	<p>\r\n      	<xsl:value-of select=\"document-summary\" />\r\n	</p>\r\n	  <p>\r\n              <xsl:value-of disable-output-escaping=\"yes\" select=\"image-credits\" /> \r\n	</p>	\r\n        <br />\r\n        <br />\r\n        <br />\r\n        <br />\r\n\r\n     </xsl:template>\r\n\r\n \r\n   <xsl:template match=\"file-resource\">\r\n        <xsl:choose>\r\n            <xsl:when test=\"(resource-content-type=\'image/jpeg\' or resource-content-type=\'image/jpg\' or resource-content-type=\'image/pjpeg\' or resource-content-type=\'image/gif\' or resource-content-type=\'image/png\')\" >\r\n                <img src=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\" align=\"right\" />\r\n            </xsl:when>\r\n            <xsl:otherwise>\r\n                <a href=\"document?id={resource-document-id}&amp;id_attribute={resource-attribute-id}\"> \r\n                    <img src=\"images/admin/skin/plugins/document/filetypes/file.png\" border=\"0\" />\r\n                </a>\r\n            </xsl:otherwise>        \r\n        </xsl:choose>\r\n    </xsl:template>\r\n</xsl:stylesheet>','dublincore'),('video','Video','Video',0,'',NULL,NULL,'dublincore'),('pdf','PDF','Fichier PDF',0,'images/local/skin/plugins/document/filetypes/pdf.png',NULL,NULL,'dublincore'),('sound','Enregistrement sonore','Enregistrement sonore',0,'',NULL,NULL,'dublincore'),('banner','Bannières','Bannières du site',0,'',NULL,NULL,'none'),('flash','Flash','Flash',0,'',NULL,'<?xml version=\"1.0\"?>\r\n\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n\r\n	<xsl:param name=\"publication-date\" select=\"publication-date\" />\r\n	<!--\r\n	How to display the publication date :\r\n	<xsl:value-of select=\"$publication-date\" />\r\n	-->\r\n	\r\n	<xsl:output method=\"html\" indent=\"yes\"/>\r\n	<xsl:template match=\"flash\">\r\n		<h1><xsl:value-of select=\"document-title\" /></h1>\r\n		<p>\r\n			<xsl:value-of select=\"document-summary\" />\r\n		</p>\r\n		<p>\r\n			<xsl:choose>\r\n				<xsl:when test=\"(flash-object/file-resource/resource-content-type=\'application/x-shockwave-flash\')\" >\r\n					<object \r\n						data=\"document?id={flash-object/file-resource/resource-document-id}&amp;id_attribute={flash-object/file-resource/resource-attribute-id}\" \r\n						type=\"application/x-shockwave-flash\" \r\n						width=\"{flash-width}\" \r\n						height=\"{flash-height}\"\r\n						align=\"{flash-align}\"\r\n						classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\"\r\n						codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0\"\r\n					>\r\n						<param name=\"Autostart\" value=\"{flash-autostart}\" />\r\n						<param name=\"Quality\" value=\"{flash-quality}\" />\r\n						<param name=\"Loop\" value=\"{flash-loop}\" />\r\n						<param name=\"menu\" value=\"{flash-menu}\" />\r\n						<param name=\"allowScriptAccess\" value=\"samedomain\" />\r\n						<param name=\"movie\" value=\"document?id={flash-object/file-resource/resource-document-id}&amp;id_attribute={flash-object/file-resource/resource-attribute-id}\" />\r\n						<EMBED \r\n							src=\"document?id={flash-object/file-resource/resource-document-id}&amp;id_attribute={flash-object/file-resource/resource-attribute-id}\" \r\n							type=\"application/x-shockwave-flash\"\r\n							width=\"{flash-width}\" \r\n							height=\"{flash-height}\"\r\n							align=\"{flash-align}\"\r\n							quality=\"{flash-quality}\"\r\n							loop=\"{flash-loop}\"\r\n							menu=\"{flash-menu}\"\r\n							allowScriptAccess=\"samedomain\"\r\n							pluginspace=\"http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash\">\r\n						</EMBED>\r\n					</object>\r\n				</xsl:when>\r\n			</xsl:choose>\r\n		</p>\r\n		<blockquote>\r\n			<xsl:value-of disable-output-escaping=\"yes\" select=\"flash-credits\" />\r\n		</blockquote>\r\n	</xsl:template>\r\n \r\n	<xsl:template match=\"file-resource\">\r\n    </xsl:template>\r\n</xsl:stylesheet>\r\n','none');
/*!40000 ALTER TABLE `document_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_type_attr`
--

DROP TABLE IF EXISTS `document_type_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_type_attr` (
  `id_document_attr` int(11) NOT NULL DEFAULT '0',
  `code_document_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_attr_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `document_type_attr_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attr_order` int(11) DEFAULT NULL,
  `required` int(11) DEFAULT NULL,
  `searchable` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_document_attr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_type_attr`
--

LOCK TABLES `document_type_attr` WRITE;
/*!40000 ALTER TABLE `document_type_attr` DISABLE KEYS */;
INSERT INTO `document_type_attr` VALUES (12,'article','richtext','body','Corps','Corps de l\'article',5,1,1),(8,'dossier','multiline','body','corps','Corps du dossier',0,1,1),(11,'article','file','attachment','Piece jointe','Piece jointe',4,0,0),(10,'article','url','url','Url','Url liée à l\'article',2,0,0),(30,'actor','text','firstname','Prenom','Prenom',1,1,1),(31,'actor','text','lastname','Nom','Nom',2,1,1),(32,'actor','multiline','function','Fontion','Fonction',3,0,0),(39,'video','multiline','comments','commentaires','Commentaires sur la video',2,1,1),(40,'video','file','file','Fichier video','Fichier video',3,1,0),(41,'actor','image','photo','Photo','Photo',4,0,0),(43,'image','image','file','Fichier','Fichier image',2,1,0),(44,'image','text','credits','Credits','Credits',3,1,0),(48,'pdf','file','file','Fichier','Fichier',2,1,1),(50,'sound','file','file','Fichier','Fichier son',2,1,0),(51,'sound','text','author','Auteur','Auteur',3,0,1),(52,'banner','image','image','Image','Bannière en image',1,1,0),(53,'banner','text','description','Description','Description de la bannière',2,1,0),(54,'flash','file','object','Objet','Objet Flash',1,1,0),(55,'flash','text','credits','Crédits','Crédits',2,1,1),(56,'flash','numerictext','height','Hauteur','Hauteur de l\'animation',3,1,0),(57,'flash','numerictext','width','Largeur','Largeur de l\'animation',4,1,0),(58,'flash','listbox','autostart','Autostart','Démarrage automatique de l\'animation',5,1,0),(59,'flash','listbox','quality','Qualité','Qualité de l\'animation',6,1,0),(60,'flash','listbox','loop','Boucle','Jouer en boucle l\'animation',7,1,0),(61,'flash','listbox','align','Alignement','Alignement de l\'animation',8,1,0),(62,'flash','listbox','menu','Menu','Affichage du menu',9,1,0),(63,'image','richtext','htmltitle','HtmlTitle','Html title',3,1,1);
/*!40000 ALTER TABLE `document_type_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_type_attr_parameters`
--

DROP TABLE IF EXISTS `document_type_attr_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_type_attr_parameters` (
  `id_document_attr` int(11) NOT NULL DEFAULT '0',
  `parameter_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_list_parameter` int(11) NOT NULL DEFAULT '0',
  `parameter_value` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id_document_attr`,`parameter_name`,`id_list_parameter`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_type_attr_parameters`
--

LOCK TABLES `document_type_attr_parameters` WRITE;
/*!40000 ALTER TABLE `document_type_attr_parameters` DISABLE KEYS */;
INSERT INTO `document_type_attr_parameters` VALUES (30,'maxlength',1,'50'),(30,'size',1,'50'),(31,'maxlength',1,'50'),(31,'size',1,'50'),(44,'size',1,'60'),(44,'maxlength',1,'100'),(51,'size',1,'60'),(51,'maxlength',1,'60'),(53,'size',0,'50'),(53,'maxlength',0,'60'),(55,'size',0,'50'),(55,'maxlength',0,'60'),(56,'size',0,'4'),(56,'maxlength',0,'4'),(57,'size',0,'4'),(57,'maxlength',0,'4'),(58,'value',0,'true'),(58,'items',0,'true'),(58,'items',1,'false'),(59,'value',0,'high'),(59,'items',0,'low'),(59,'items',1,'high'),(59,'items',2,'autolow'),(59,'items',3,'autohigh'),(59,'items',4,'best'),(60,'value',0,'true'),(60,'items',0,'true'),(60,'items',1,'false'),(61,'value',0,'top'),(61,'items',1,'right'),(61,'items',0,'left'),(61,'items',2,'top'),(61,'items',3,'bottom'),(62,'value',0,'true'),(62,'items',0,'true'),(62,'items',1,'false');
/*!40000 ALTER TABLE `document_type_attr_parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_type_attr_verify_by`
--

DROP TABLE IF EXISTS `document_type_attr_verify_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_type_attr_verify_by` (
  `id_document_attr` int(11) NOT NULL DEFAULT '0',
  `id_expression` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_document_attr`,`id_expression`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_type_attr_verify_by`
--

LOCK TABLES `document_type_attr_verify_by` WRITE;
/*!40000 ALTER TABLE `document_type_attr_verify_by` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_type_attr_verify_by` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_view`
--

DROP TABLE IF EXISTS `document_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_view` (
  `code_view` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`code_view`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_view`
--

LOCK TABLES `document_view` WRITE;
/*!40000 ALTER TABLE `document_view` DISABLE KEYS */;
INSERT INTO `document_view` VALUES ('detail','document.view.detail'),('thumbnail','document.view.thumbnail');
/*!40000 ALTER TABLE `document_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_workflow_action`
--

DROP TABLE IF EXISTS `document_workflow_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_workflow_action` (
  `id_action` int(11) NOT NULL DEFAULT '0',
  `name_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_permission` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_finish_state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_workflow_action`
--

LOCK TABLES `document_workflow_action` WRITE;
/*!40000 ALTER TABLE `document_workflow_action` DISABLE KEYS */;
INSERT INTO `document_workflow_action` VALUES (1,'document.workflow.action.deleteDocument.name','document.workflow.action.deleteDocument.description','jsp/admin/plugins/document/DeleteDocument.jsp?','glyphicon glyphicon-trash','DELETE',NULL),(2,'document.workflow.action.modifyDocument.name','document.workflow.action.modifyDocument.description','jsp/admin/plugins/document/ModifyDocument.jsp?','glyphicon glyphicon-edit','MODIFY',NULL),(3,'document.workflow.action.submitForApproval.name','document.workflow.action.submitForApproval.description','jsp/admin/plugins/document/DoChangeState.jsp?id_state=2&amp;','glyphicon glyphicon-cog','SUBMIT',2),(4,'document.workflow.action.approveDocument.name','document.workflow.action.approveDocument.description','jsp/admin/plugins/document/DoValidateDocument.jsp?id_state=3&amp;','glyphicon glyphicon-ok-sign','VALIDATE',3),(5,'document.workflow.action.assignDocument.name','document.workflow.action.assignDocument.description','jsp/admin/plugins/document/ManageDocumentPublishing.jsp?','glyphicon glyphicon-globe','ASSIGN',NULL),(6,'document.workflow.action.rejectDocument.name','document.workflow.action.rejectDocument.description','jsp/admin/plugins/document/DoChangeState.jsp?id_state=4&amp;','glyphicon glyphicon-minus-sign','VALIDATE',4),(7,'document.workflow.action.submitAgain.name','document.workflow.action.submitAgain.description','jsp/admin/plugins/document/DoChangeState.jsp?id_state=2&amp;','glyphicon glyphicon-ok-sign','SUBMIT',2),(8,'document.workflow.action.archiveDocument.name','document.workflow.action.archiveDocument.description','jsp/admin/plugins/document/DoConfirmArchiveDocument.jsp?id_state=5&amp;','glyphicon glyphicon-download','ARCHIVE',5),(9,'document.workflow.action.changeDocument.name','document.workflow.action.changeDocument.description','jsp/admin/plugins/document/ModifyDocument.jsp?id_state=6&amp;','glyphicon glyphicon-edit','CHANGE',6),(10,'document.workflow.action.submitChanges.name','document.workflow.action.submitChanges.description','jsp/admin/plugins/document/DoChangeState.jsp?id_state=7&amp;','glyphicon glyphicon-cog','SUBMIT',7),(11,'document.workflow.action.rejectChanges.name','document.workflow.action.rejectChanges.description','jsp/admin/plugins/document/DoChangeState.jsp?id_state=6&amp;','glyphicon glyphicon-minus-sign','VALIDATE',6),(12,'document.workflow.action.approveChanges.name','document.workflow.action.approveChanges.description','jsp/admin/plugins/document/DoValidateDocument.jsp?id_state=3&amp;','glyphicon glyphicon-ok-sign','VALIDATE',3),(13,'document.workflow.action.unarchiveDocument.name','document.workflow.action.unarchiveDocument.description','jsp/admin/plugins/document/DoChangeState.jsp?id_state=3&amp;','glyphicon glyphicon-upload','ARCHIVE',3),(14,'document.workflow.action.history.name','document.workflow.action.history.description','jsp/admin/plugins/document/DocumentHistory.jsp?','glyphicon glyphicon-list','VIEW_HISTORY',NULL),(15,'document.workflow.action.previewDocument.name','document.workflow.action.previewDocument.description','jsp/admin/plugins/document/PreviewDocument.jsp?','glyphicon glyphicon-eye-open','VIEW',NULL),(16,'document.workflow.action.moveDocument.name','document.workflow.action.moveDocument.description','jsp/admin/plugins/document/MoveDocument.jsp?','glyphicon glyphicon-move','MOVE',NULL),(18,'document.workflow.action.publishDocument.name','document.workflow.action.publishDocument.description',NULL,'glyphicon glyphicon-globe','PUBLISH',NULL);
/*!40000 ALTER TABLE `document_workflow_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_workflow_state`
--

DROP TABLE IF EXISTS `document_workflow_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_workflow_state` (
  `id_state` int(11) NOT NULL DEFAULT '0',
  `name_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_workflow_state`
--

LOCK TABLES `document_workflow_state` WRITE;
/*!40000 ALTER TABLE `document_workflow_state` DISABLE KEYS */;
INSERT INTO `document_workflow_state` VALUES (1,'document.workflow.state.writing.name','document.workflow.state.writing.description',1),(2,'document.workflow.state.waitingForApproval.name','document.workflow.state.waitingForApproval.description',2),(3,'document.workflow.state.approved.name','document.workflow.state.approved.description',3),(4,'document.workflow.state.rejected.name','document.workflow.state.rejected.description',4),(5,'document.workflow.state.archived.name','document.workflow.state.archived.description',5),(6,'document.workflow.state.inChange.name','document.workflow.state.inChange.description',6),(7,'document.workflow.state.waitingForChangesApproval.name','document.workflow.state.waitingForChangesApproval.name',7);
/*!40000 ALTER TABLE `document_workflow_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_workflow_transition`
--

DROP TABLE IF EXISTS `document_workflow_transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_workflow_transition` (
  `id_state` int(11) NOT NULL DEFAULT '0',
  `id_action` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_state`,`id_action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_workflow_transition`
--

LOCK TABLES `document_workflow_transition` WRITE;
/*!40000 ALTER TABLE `document_workflow_transition` DISABLE KEYS */;
INSERT INTO `document_workflow_transition` VALUES (1,1),(1,2),(1,3),(1,14),(1,15),(1,16),(2,2),(2,4),(2,6),(2,14),(2,15),(2,16),(3,0),(3,5),(3,8),(3,9),(3,14),(3,15),(3,17),(3,18),(4,1),(4,2),(4,7),(4,14),(4,15),(4,16),(5,1),(5,13),(5,14),(5,15),(6,9),(6,10),(6,14),(6,15),(6,16),(7,11),(7,12),(7,14),(7,15),(7,16);
/*!40000 ALTER TABLE `document_workflow_transition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extend_actionbar_action`
--

DROP TABLE IF EXISTS `extend_actionbar_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extend_actionbar_action` (
  `id_action` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `html_content` mediumtext COLLATE utf8_unicode_ci,
  `resource_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btn_order` int(11) NOT NULL,
  PRIMARY KEY (`id_action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extend_actionbar_action`
--

LOCK TABLES `extend_actionbar_action` WRITE;
/*!40000 ALTER TABLE `extend_actionbar_action` DISABLE KEYS */;
INSERT INTO `extend_actionbar_action` VALUES (1,'Imprimer','<a class=\"btn btn-small\" title=\"imprimer\" href=\"javascript:window.print();\"><i class=\"icon-print\"> </i> imprimer</a>','PAGE',1),(2,'Envoyer','<a class=\"btn btn-small\" href=\"jsp/site/SendResource.jsp?idExtendableResource=@id_resource&extendableResourceType=@type_resource\" target=\"_send\"><i class=\"icon-envelope\"></i> Envoyer</a>','*',2),(3,'Imprimer document','<a class=\"btn btn-small\" target=\"_print\" title=\"imprimer\" href=\"jsp/site/plugins/document/PrintDocument.jsp?document_id=@id_resource\"><i class=\"icon-print\"></i> imprimer</a>','document',3),(4,'Retour','<a class=\"btn btn-small\" title=\"Retour\" href=\"javascript:history.go(-1);\"><i class=\"icon-remove-circle\"></i> Retour</a>','*',4);
/*!40000 ALTER TABLE `extend_actionbar_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extend_actionbar_config`
--

DROP TABLE IF EXISTS `extend_actionbar_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extend_actionbar_config` (
  `id_extender` int(11) NOT NULL,
  `id_action` int(11) NOT NULL,
  PRIMARY KEY (`id_extender`,`id_action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extend_actionbar_config`
--

LOCK TABLES `extend_actionbar_config` WRITE;
/*!40000 ALTER TABLE `extend_actionbar_config` DISABLE KEYS */;
INSERT INTO `extend_actionbar_config` VALUES (-1,-1);
/*!40000 ALTER TABLE `extend_actionbar_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extend_comment`
--

DROP TABLE IF EXISTS `extend_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extend_comment` (
  `id_comment` int(11) NOT NULL DEFAULT '0',
  `id_resource` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `resource_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date_comment` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `comment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `is_published` smallint(6) NOT NULL DEFAULT '0',
  `date_last_modif` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id_parent_comment` int(11) NOT NULL DEFAULT '0',
  `is_admin_comment` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_comment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extend_comment`
--

LOCK TABLES `extend_comment` WRITE;
/*!40000 ALTER TABLE `extend_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `extend_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extend_comment_config`
--

DROP TABLE IF EXISTS `extend_comment_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extend_comment_config` (
  `id_extender` int(11) NOT NULL DEFAULT '0',
  `is_moderated` smallint(6) NOT NULL DEFAULT '0',
  `nb_comments` int(11) NOT NULL DEFAULT '1',
  `id_mailing_list` int(11) NOT NULL DEFAULT '0',
  `authorize_sub_comments` smallint(6) NOT NULL DEFAULT '0',
  `use_bbcode` smallint(6) NOT NULL DEFAULT '1',
  `admin_badge` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `message_comment_created` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `add_comment_position` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_extender`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extend_comment_config`
--

LOCK TABLES `extend_comment_config` WRITE;
/*!40000 ALTER TABLE `extend_comment_config` DISABLE KEYS */;
INSERT INTO `extend_comment_config` VALUES (-1,1,10,-1,0,1,'<span class=\"badge badge-warning\">#i18n{module.extend.comment.comment_info.labelAdminComment}</span>','Votre commentaire a bien été créé.<br />Il sera disponible une fois qu\'il aura été validé pas un administrateur.',0);
/*!40000 ALTER TABLE `extend_comment_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extend_default_extendable_resource`
--

DROP TABLE IF EXISTS `extend_default_extendable_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extend_default_extendable_resource` (
  `id_resource` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `resource_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extend_default_extendable_resource`
--

LOCK TABLES `extend_default_extendable_resource` WRITE;
/*!40000 ALTER TABLE `extend_default_extendable_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `extend_default_extendable_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extend_extender_hit`
--

DROP TABLE IF EXISTS `extend_extender_hit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extend_extender_hit` (
  `id_hit` int(11) NOT NULL DEFAULT '0',
  `id_resource` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `resource_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nb_hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_hit`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extend_extender_hit`
--

LOCK TABLES `extend_extender_hit` WRITE;
/*!40000 ALTER TABLE `extend_extender_hit` DISABLE KEYS */;
/*!40000 ALTER TABLE `extend_extender_hit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extend_opengraph_config`
--

DROP TABLE IF EXISTS `extend_opengraph_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extend_opengraph_config` (
  `id_extender` int(11) NOT NULL,
  `id_socialhub` int(11) NOT NULL,
  PRIMARY KEY (`id_extender`,`id_socialhub`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extend_opengraph_config`
--

LOCK TABLES `extend_opengraph_config` WRITE;
/*!40000 ALTER TABLE `extend_opengraph_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `extend_opengraph_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extend_opengraph_socialhub`
--

DROP TABLE IF EXISTS `extend_opengraph_socialhub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extend_opengraph_socialhub` (
  `opengraph_socialhub_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content_header` mediumtext COLLATE utf8_unicode_ci,
  `content_body` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `content_footer` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`opengraph_socialhub_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extend_opengraph_socialhub`
--

LOCK TABLES `extend_opengraph_socialhub` WRITE;
/*!40000 ALTER TABLE `extend_opengraph_socialhub` DISABLE KEYS */;
INSERT INTO `extend_opengraph_socialhub` VALUES (1,'Facebook','','<!-- facebook -->\r\n<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/fr_FR/all.js#xfbml=1\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>\r\n<div class=\"fb-like\" data-href=\"http://dev.lutece.paris.fr/site-demo/\" data-send=\"true\" data-layout=\"button_count\" data-show-faces=\"true\"></div>',''),(2,'Google+','','<div class=\"g-plusone\" data-size=\"medium\"></div>','<script type=\"text/javascript\">\r\n  (function() {\r\n    var po = document.createElement(\'script\'); po.type = \'text/javascript\'; po.async = true;\r\n    po.src = \'https://apis.google.com/js/plusone.js\';\r\n    var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(po, s);\r\n  })();\r\n</script>'),(3,'Twitter (share)','','<a href=\"https://twitter.com/share\" class=\"twitter-share-button\" data-url=\"http://dev.lutece.paris.fr\" data-text=\"Checkout this site to see LUTECE CMS in action #CMS\" data-via=\"LuteceNews\" data-lang=\"en\" >Tweet</a>\r\n<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?\'http\':\'https\';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+\'://platform.twitter.com/widgets.js\';fjs.parentNode.insertBefore(js,fjs);}}(document, \'script\', \'twitter-wjs\');</script>',''),(4,'Twitter (follow)','','<a href=\"https://twitter.com/LuteceNews\" class=\"twitter-follow-button\" data-show-count=\"false\" data-lang=\"fr\">follow @LuteceNews</a>\r\n<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?\'http\':\'https\';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+\'://platform.twitter.com/widgets.js\';fjs.parentNode.insertBefore(js,fjs);}}(document, \'script\', \'twitter-wjs\');</script>','');
/*!40000 ALTER TABLE `extend_opengraph_socialhub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extend_rating`
--

DROP TABLE IF EXISTS `extend_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extend_rating` (
  `id_rating` int(11) NOT NULL DEFAULT '0',
  `id_resource` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `resource_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `vote_count` int(11) NOT NULL DEFAULT '0',
  `score_value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_rating`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extend_rating`
--

LOCK TABLES `extend_rating` WRITE;
/*!40000 ALTER TABLE `extend_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `extend_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extend_rating_config`
--

DROP TABLE IF EXISTS `extend_rating_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extend_rating_config` (
  `id_extender` int(11) NOT NULL DEFAULT '0',
  `id_mailing_list` int(11) NOT NULL DEFAULT '-1',
  `id_vote_type` int(11) NOT NULL DEFAULT '1',
  `is_unique_vote` smallint(6) NOT NULL DEFAULT '0',
  `nb_days_to_vote` int(11) NOT NULL DEFAULT '0',
  `is_connected` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `nb_vote_per_user` int(11) NOT NULL DEFAULT '0',
  `delete_vote` int(11) NOT NULL DEFAULT '0',
  `date_start` timestamp NULL DEFAULT NULL,
  `date_end` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_extender`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extend_rating_config`
--

LOCK TABLES `extend_rating_config` WRITE;
/*!40000 ALTER TABLE `extend_rating_config` DISABLE KEYS */;
INSERT INTO `extend_rating_config` VALUES (-1,-1,1,1,0,0,1,0,0,NULL,NULL);
/*!40000 ALTER TABLE `extend_rating_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extend_rating_vote_history`
--

DROP TABLE IF EXISTS `extend_rating_vote_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extend_rating_vote_history` (
  `id_vote_history` int(11) NOT NULL DEFAULT '0',
  `id_extender_history` int(11) NOT NULL DEFAULT '0',
  `vote_value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_vote_history`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extend_rating_vote_history`
--

LOCK TABLES `extend_rating_vote_history` WRITE;
/*!40000 ALTER TABLE `extend_rating_vote_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `extend_rating_vote_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extend_rating_vote_type`
--

DROP TABLE IF EXISTS `extend_rating_vote_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extend_rating_vote_type` (
  `id_vote_type` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `template_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_vote_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extend_rating_vote_type`
--

LOCK TABLES `extend_rating_vote_type` WRITE;
/*!40000 ALTER TABLE `extend_rating_vote_type` DISABLE KEYS */;
INSERT INTO `extend_rating_vote_type` VALUES (1,'Star','extend_rating_vote_type_star'),(2,'Thumb','extend_rating_vote_type_thumb'),(3,'Vote simple','extend_rating_vote_type_simple');
/*!40000 ALTER TABLE `extend_rating_vote_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extend_resource_extender`
--

DROP TABLE IF EXISTS `extend_resource_extender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extend_resource_extender` (
  `id_extender` int(11) NOT NULL DEFAULT '0',
  `extender_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_resource` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `resource_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_extender`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extend_resource_extender`
--

LOCK TABLES `extend_resource_extender` WRITE;
/*!40000 ALTER TABLE `extend_resource_extender` DISABLE KEYS */;
/*!40000 ALTER TABLE `extend_resource_extender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extend_resource_extender_history`
--

DROP TABLE IF EXISTS `extend_resource_extender_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extend_resource_extender_history` (
  `id_history` bigint(20) NOT NULL DEFAULT '0',
  `extender_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_resource` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `resource_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ip_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date_creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_history`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extend_resource_extender_history`
--

LOCK TABLES `extend_resource_extender_history` WRITE;
/*!40000 ALTER TABLE `extend_resource_extender_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `extend_resource_extender_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `federate_fc_link`
--

DROP TABLE IF EXISTS `federate_fc_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `federate_fc_link` (
  `lutece_user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `federate_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`federate_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `federate_fc_link`
--

LOCK TABLES `federate_fc_link` WRITE;
/*!40000 ALTER TABLE `federate_fc_link` DISABLE KEYS */;
INSERT INTO `federate_fc_link` VALUES ('palyma@palyma.fr','ab296ee89ae8c3b8c2f94ee1f3926461ddedf868a7b16a97300faaccdd444eef');
/*!40000 ALTER TABLE `federate_fc_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_action`
--

DROP TABLE IF EXISTS `form_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_action` (
  `id_action` int(11) NOT NULL DEFAULT '0',
  `name_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_permission` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `form_state` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_action`
--

LOCK TABLES `form_action` WRITE;
/*!40000 ALTER TABLE `form_action` DISABLE KEYS */;
INSERT INTO `form_action` VALUES (1,'form.action.modify.name','form.action.modify.description','jsp/admin/plugins/form/ModifyForm.jsp','glyphicon glyphicon-edit','MODIFY',0),(2,'form.action.modify.name','form.action.modify.description','jsp/admin/plugins/form/ModifyForm.jsp','glyphicon glyphicon-edit','MODIFY',1),(3,'form.action.viewRecap.name','form.action.viewRecap.description','jsp/admin/plugins/form/ModifyRecap.jsp','glyphicon glyphicon-list','MODIFY',0),(4,'form.action.viewRecap.name','form.action.viewRecap.description','jsp/admin/plugins/form/ModifyRecap.jsp','glyphicon glyphicon-list','MODIFY',1),(5,'form.action.modifyMessage.name','form.action.modifyMessage.description','jsp/admin/plugins/form/ModifyMessage.jsp','glyphicon glyphicon-comment','MODIFY',0),(6,'form.action.modifyMessage.name','form.action.modifyMessage.description','jsp/admin/plugins/form/ModifyMessage.jsp','glyphicon glyphicon-comment','MODIFY',1),(7,'form.action.viewResult.name','form.action.viewResult.description','jsp/admin/plugins/form/Result.jsp','glyphicon glyphicon-tasks','VIEW_RESULT',0),(8,'form.action.viewResult.name','form.action.viewResult.description','jsp/admin/plugins/form/Result.jsp','glyphicon glyphicon-tasks','VIEW_RESULT',1),(9,'form.action.test.name','form.action.test.description','jsp/admin/plugins/form/TestForm.jsp','glyphicon glyphicon-cog','TEST',0),(10,'form.action.test.name','form.action.test.description','jsp/admin/plugins/form/TestForm.jsp','glyphicon glyphicon-cog','TEST',1),(11,'form.action.disable.name','form.action.disable.description','jsp/admin/plugins/form/ConfirmDisableForm.jsp','glyphicon glyphicon-remove','CHANGE_STATE',1),(12,'form.action.enable.name','form.action.enable.description','jsp/admin/plugins/form/DoEnableForm.jsp','glyphicon glyphicon-ok','CHANGE_STATE',0),(13,'form.action.copy.name','form.action.copy.description','jsp/admin/plugins/form/DoCopyForm.jsp','glyphicon glyphicon-plus-sign','COPY',0),(14,'form.action.copy.name','form.action.copy.description','jsp/admin/plugins/form/DoCopyForm.jsp','glyphicon glyphicon-plus-sign','COPY',1),(15,'form.action.manageOutputProcessor.name','form.action.manageOutputProcessor.description','jsp/admin/plugins/form/ManageOutputProcessor.jsp','glyphicon glyphicon-wrench','MANAGE_OUTPUT_PROCESSOR',1),(16,'form.action.manageOutputProcessor.name','form.action.manageOutputProcessor.description','jsp/admin/plugins/form/ManageOutputProcessor.jsp','glyphicon glyphicon-wrench','MANAGE_OUTPUT_PROCESSOR',0),(17,'form.action.delete.name','form.action.delete.description','jsp/admin/plugins/form/ConfirmRemoveForm.jsp','glyphicon glyphicon-trash','DELETE',0),(18,'form.action.disable.name','form.action.disableAuto.description','jsp/admin/plugins/form/ConfirmDisableAutoForm.jsp','glyphicon glyphicon-ok','CHANGE_STATE_AUTO_PUBLICATION',1),(19,'form.action.enable.name','form.action.enableAuto.description','jsp/admin/plugins/form/DoEnableAutoForm.jsp','glyphicon glyphicon-ok','CHANGE_STATE_AUTO_PUBLICATION',0),(20,'form.action.manageValidator.name','form.action.manageValidator.description','jsp/admin/plugins/form/ManageValidator.jsp','glyphicon glyphicon-check','MANAGE_VALIDATOR',1),(21,'form.action.manageValidator.name','form.action.manageValidator.description','jsp/admin/plugins/form/ManageValidator.jsp','glyphicon glyphicon-check','MANAGE_VALIDATOR',0);
/*!40000 ALTER TABLE `form_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_anonymize_fields`
--

DROP TABLE IF EXISTS `form_anonymize_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_anonymize_fields` (
  `id_form` int(11) NOT NULL DEFAULT '0',
  `id_entry` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_form`,`id_entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_anonymize_fields`
--

LOCK TABLES `form_anonymize_fields` WRITE;
/*!40000 ALTER TABLE `form_anonymize_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_anonymize_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_category`
--

DROP TABLE IF EXISTS `form_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_category` (
  `id_category` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_category`
--

LOCK TABLES `form_category` WRITE;
/*!40000 ALTER TABLE `form_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_default_message`
--

DROP TABLE IF EXISTS `form_default_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_default_message` (
  `welcome_message` mediumtext COLLATE utf8_unicode_ci,
  `unavailability_message` mediumtext COLLATE utf8_unicode_ci,
  `requirement_message` mediumtext COLLATE utf8_unicode_ci,
  `recap_message` mediumtext COLLATE utf8_unicode_ci,
  `libelle_validate_button` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `libelle_reset_button` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `back_url` mediumtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_default_message`
--

LOCK TABLES `form_default_message` WRITE;
/*!40000 ALTER TABLE `form_default_message` DISABLE KEYS */;
INSERT INTO `form_default_message` VALUES ('Message de bienvenue','Message d\'indisponibilité','Conditions d\'utilisation','Message du récapitulatif','Soumettre','','jsp/site/Portal.jsp?page=form');
/*!40000 ALTER TABLE `form_default_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_entry_parameter`
--

DROP TABLE IF EXISTS `form_entry_parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_entry_parameter` (
  `parameter_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parameter_value` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`parameter_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_entry_parameter`
--

LOCK TABLES `form_entry_parameter` WRITE;
/*!40000 ALTER TABLE `form_entry_parameter` DISABLE KEYS */;
INSERT INTO `form_entry_parameter` VALUES ('field_in_line','1'),('mandatory','0'),('width','50'),('height','50'),('max_size_enter','250'),('width_text','50'),('width_text_area','45'),('height_text_area','5'),('file_max_size','2097152'),('max_files','1');
/*!40000 ALTER TABLE `form_entry_parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_export_format`
--

DROP TABLE IF EXISTS `form_export_format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_export_format` (
  `id_export` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `xsl_file` mediumblob,
  PRIMARY KEY (`id_export`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_export_format`
--

LOCK TABLES `form_export_format` WRITE;
/*!40000 ALTER TABLE `form_export_format` DISABLE KEYS */;
INSERT INTO `form_export_format` VALUES (1,'csv','exporter les réponses au format csv','csv','<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n<xsl:output method=\"text\"/>\r\n\r\n<xsl:template match=\"/\">\r\n	<xsl:apply-templates select=\"form/form-entries/form-entry\" />\r\n	<xsl:text>&#10;</xsl:text>\r\n	<xsl:apply-templates select=\"form/submits/submit\"/>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"form/form-entries/form-entry\">\r\n	<xsl:text>\"</xsl:text>\r\n	<xsl:value-of select=\"form-entry-title\" /> \r\n	<xsl:text>\";</xsl:text>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"form/submits/submit\">\r\n	<xsl:variable name=\"submit-id\" select=\"submit-id\" />\r\n	<xsl:for-each select=\"../../form-entries/form-entry\">\r\n		<xsl:variable name=\"form-entry-id\" select=\"form-entry-id\" />\r\n		<xsl:choose>\r\n			<xsl:when test=\"string(../../submits/submit[submit-id=$submit-id]/questions/question[question-id=$form-entry-id])\">\r\n				<xsl:apply-templates select=\"../../submits/submit[submit-id=$submit-id]/questions/question[question-id=$form-entry-id]\"/>\r\n			</xsl:when>\r\n			<xsl:otherwise>\r\n				<xsl:text>\"\";</xsl:text>\r\n			</xsl:otherwise>\r\n		</xsl:choose>\r\n	</xsl:for-each>\r\n	<xsl:text>&#10;</xsl:text>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"questions/question\">\r\n	<xsl:apply-templates select=\"responses\"/> \r\n</xsl:template>\r\n\r\n<xsl:template match=\"questions/question/responses\">\r\n	<xsl:text>\"</xsl:text>\r\n	<xsl:apply-templates select=\"response\"/>\r\n	<xsl:text>\";</xsl:text>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"questions/question/responses/response\">\r\n	<xsl:value-of select=\".\"/>\r\n	<xsl:if test=\"position()!=last()\">\r\n		<xsl:text>;</xsl:text>\r\n	</xsl:if>\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n'),(2,'xml','exporter les réponses au format xml','xml','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n<xsl:output method=\"xml\" version=\"1.0\" encoding=\"UTF-8\" indent=\"yes\" cdata-section-elements=\"response question-title form-title\"/>\r\n<xsl:template match=\"/\">\r\n <xsl:apply-templates select=\"form\"/> \r\n</xsl:template>\r\n\r\n<xsl:template match=\"form\">\r\n	<form>\r\n		<form-title>\r\n			<xsl:value-of select=\"form-title\"/>\r\n		</form-title>\r\n		<submits>\r\n			<xsl:apply-templates select=\"submits/submit\"/> \r\n		</submits>\r\n	</form>	\r\n</xsl:template>\r\n\r\n<xsl:template match=\"submit\">\r\n	<submit>\r\n		<submit-id>\r\n			<xsl:value-of select=\"submit-id\"/>\r\n		</submit-id>\r\n		<submit-date>\r\n			<xsl:value-of select=\"submit-date\"/>\r\n		</submit-date>\r\n		<submit-ip>\r\n			<xsl:value-of select=\"submit-ip\"/>\r\n		</submit-ip>\r\n		<questions>\r\n			<xsl:apply-templates select=\"questions/question\"/> \r\n		</questions>\r\n	</submit>\r\n</xsl:template>\r\n<xsl:template match=\"question\">\r\n	<question>\r\n		<question-id>\r\n			<xsl:value-of select=\"question-id\"/>\r\n		</question-id>\r\n		<question-title>\r\n			<xsl:value-of select=\"question-title\"/>\r\n		</question-title>\r\n		<responses>\r\n			<xsl:apply-templates select=\"responses/response\"/> \r\n		</responses>\r\n	</question>\r\n</xsl:template>\r\n<xsl:template match=\"response\">\r\n	<response>\r\n		<xsl:value-of select=\".\"/>\r\n	</response>\r\n</xsl:template>\r\n</xsl:stylesheet>'),(3,'csv_daemon','exporter les réponses au format csv pour le daemon d\'export','csv','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n<xsl:output method=\"text\"/>\r\n\r\n<xsl:template match=\"/\">\r\n	<xsl:apply-templates select=\"form/form-entries/form-entry\" />\r\n	<xsl:text>&#10;</xsl:text>\r\n	<xsl:apply-templates select=\"form/submits/submit\"/>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"form/form-entries/form-entry\">\r\n	<xsl:text>\"</xsl:text>\r\n	<xsl:value-of select=\"form-entry-title\" /> \r\n	<xsl:text>\";</xsl:text>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"form/submits/submit\">\r\n	<xsl:variable name=\"submit-id\" select=\"submit-id\" />\r\n	<xsl:for-each select=\"../../form-entries/form-entry\">\r\n		<xsl:variable name=\"form-entry-id\" select=\"form-entry-id\" />\r\n		<xsl:choose>\r\n			<xsl:when test=\"string(../../submits/submit[submit-id=$submit-id]/questions/question[question-id=$form-entry-id])\">\r\n				<xsl:apply-templates select=\"../../submits/submit[submit-id=$submit-id]/questions/question[question-id=$form-entry-id]\"/>\r\n			</xsl:when>\r\n			<xsl:otherwise>\r\n				<xsl:text>\"\";</xsl:text>\r\n			</xsl:otherwise>\r\n		</xsl:choose>\r\n	</xsl:for-each>\r\n	<xsl:text>&#10;</xsl:text>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"questions/question\">\r\n	<xsl:apply-templates select=\"responses\"/> \r\n</xsl:template>\r\n\r\n<xsl:template match=\"questions/question/responses\">\r\n	<xsl:text>\"</xsl:text>\r\n	<xsl:apply-templates select=\"response\"/>\r\n	<xsl:text>\";</xsl:text>\r\n</xsl:template>\r\n\r\n<xsl:template match=\"questions/question/responses/response\">\r\n	<xsl:value-of select=\".\"/>\r\n	<xsl:if test=\"position()!=last()\">\r\n		<xsl:text>;</xsl:text>\r\n	</xsl:if>\r\n</xsl:template>\r\n\r\n</xsl:stylesheet>\r\n'),(4,'xml_daemon','exporter les réponses au format XML pour le daemon d\'export','xml','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n<xsl:output method=\"xml\" version=\"1.0\" encoding=\"UTF-8\" indent=\"yes\" cdata-section-elements=\"response question-title form-title\"/>\r\n<xsl:template match=\"/\">\r\n <xsl:apply-templates select=\"form\"/> \r\n</xsl:template>\r\n\r\n<xsl:template match=\"form\">\r\n	<form>\r\n		<form-title>\r\n			<xsl:value-of select=\"form-title\"/>\r\n		</form-title>\r\n		<submits>\r\n			<xsl:apply-templates select=\"submits/submit\"/> \r\n		</submits>\r\n	</form>	\r\n</xsl:template>\r\n\r\n<xsl:template match=\"submit\">\r\n	<submit>\r\n		<submit-id>\r\n			<xsl:value-of select=\"submit-id\"/>\r\n		</submit-id>\r\n		<submit-date>\r\n			<xsl:value-of select=\"submit-date\"/>\r\n		</submit-date>\r\n		<submit-ip>\r\n			<xsl:value-of select=\"submit-ip\"/>\r\n		</submit-ip>\r\n		<questions>\r\n			<xsl:apply-templates select=\"questions/question\"/> \r\n		</questions>\r\n	</submit>\r\n</xsl:template>\r\n<xsl:template match=\"question\">\r\n	<question>\r\n		<question-id>\r\n			<xsl:value-of select=\"question-id\"/>\r\n		</question-id>\r\n		<question-title>\r\n			<xsl:value-of select=\"question-title\"/>\r\n		</question-title>\r\n		<responses>\r\n			<xsl:apply-templates select=\"responses/response\"/> \r\n		</responses>\r\n	</question>\r\n</xsl:template>\r\n<xsl:template match=\"response\">\r\n	<response>\r\n		<xsl:value-of select=\".\"/>\r\n	</response>\r\n</xsl:template>\r\n</xsl:stylesheet>');
/*!40000 ALTER TABLE `form_export_format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_exportdirectory_entryconfiguration`
--

DROP TABLE IF EXISTS `form_exportdirectory_entryconfiguration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_exportdirectory_entryconfiguration` (
  `id_form` int(11) NOT NULL,
  `id_form_entry` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_directory_entry` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_form`,`id_form_entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_exportdirectory_entryconfiguration`
--

LOCK TABLES `form_exportdirectory_entryconfiguration` WRITE;
/*!40000 ALTER TABLE `form_exportdirectory_entryconfiguration` DISABLE KEYS */;
INSERT INTO `form_exportdirectory_entryconfiguration` VALUES (2,'9','2'),(3,'10','15'),(3,'11','16'),(3,'12','17'),(3,'13','14'),(3,'14','18'),(3,'15','19'),(3,'17','20'),(3,'18','21'),(3,'19','22'),(3,'20','24'),(3,'21','25'),(3,'22','26'),(3,'31','23'),(4,'23','5'),(4,'24','7'),(4,'25','4'),(4,'26','6'),(4,'27','9'),(4,'28','10'),(4,'29','11'),(4,'30','12'),(4,'32','8');
/*!40000 ALTER TABLE `form_exportdirectory_entryconfiguration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_exportdirectory_formconfiguration`
--

DROP TABLE IF EXISTS `form_exportdirectory_formconfiguration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_exportdirectory_formconfiguration` (
  `id_form` int(11) NOT NULL,
  `id_directory` int(11) NOT NULL,
  PRIMARY KEY (`id_form`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_exportdirectory_formconfiguration`
--

LOCK TABLES `form_exportdirectory_formconfiguration` WRITE;
/*!40000 ALTER TABLE `form_exportdirectory_formconfiguration` DISABLE KEYS */;
INSERT INTO `form_exportdirectory_formconfiguration` VALUES (2,3),(3,5),(4,4);
/*!40000 ALTER TABLE `form_exportdirectory_formconfiguration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_form`
--

DROP TABLE IF EXISTS `form_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_form` (
  `id_form` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `welcome_message` mediumtext COLLATE utf8_unicode_ci,
  `unavailability_message` mediumtext COLLATE utf8_unicode_ci,
  `requirement_message` mediumtext COLLATE utf8_unicode_ci,
  `workgroup` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_mailing_list` int(11) DEFAULT NULL,
  `active_captcha` smallint(6) DEFAULT NULL,
  `active_store_adresse` smallint(6) DEFAULT NULL,
  `libelle_validate_button` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `libelle_reset_button` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_begin_disponibility` date DEFAULT NULL,
  `date_end_disponibility` date DEFAULT NULL,
  `active` smallint(6) DEFAULT NULL,
  `auto_publication` smallint(6) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `limit_number_response` smallint(6) DEFAULT NULL,
  `id_recap` int(11) DEFAULT NULL,
  `active_requirement` smallint(6) DEFAULT NULL,
  `information_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `information_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `information_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `information_4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `information_5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supports_https` smallint(6) DEFAULT '0',
  `code_theme` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active_mylutece_authentification` smallint(6) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  `front_office_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_shown_front_office_title` smallint(6) DEFAULT '0',
  `automatic_cleaning` smallint(6) DEFAULT '0',
  `cleaning_by_removal` smallint(6) DEFAULT '0',
  `nb_days_before_cleaning` int(11) DEFAULT '0',
  PRIMARY KEY (`id_form`),
  KEY `index_form_form_recap` (`id_recap`),
  KEY `fk_form_form_category` (`id_category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_form`
--

LOCK TABLES `form_form` WRITE;
/*!40000 ALTER TABLE `form_form` DISABLE KEYS */;
INSERT INTO `form_form` VALUES (1,'Qu\'attendez vous d\'un CMS open-source ?','Décrivez nous vos attentes pour un CMS open-source.','<p>Les réponses seront effacées toutes les heures environ.\r\n</p>\r\n<p>Les choix par défaut sont ceux retenus pour Lutece.\r\n</p>','Le formulaire n\'est plus disponible.','Les réponses seront effacées toutes les 3 heures environ.\r\n<br />','all',0,0,1,'Soumettre','Réinitialiser',NULL,NULL,0,0,'2009-06-16 08:49:31',0,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,0,0,0,30),(2,'Teleservice 1','Teleservice 1','Message de bienvenue','Message d\'indisponibilité','Conditions d\'utilisation','',0,0,0,'Soumettre','',NULL,NULL,0,0,'2015-06-17 16:26:52',0,2,0,NULL,NULL,NULL,NULL,NULL,0,'blue',0,NULL,NULL,0,0,0,0),(3,'Stationnement','Stationnement','Message de bienvenue','Message d\'indisponibilité','Conditions d\'utilisation','',0,0,0,'Soumettre','',NULL,NULL,1,0,'2015-06-18 14:33:58',0,3,0,NULL,NULL,NULL,NULL,NULL,0,'blue',0,NULL,NULL,0,0,0,0),(4,'Quotient familial','Quotient familial','Message de bienvenue','Message d\'indisponibilité','Conditions d\'utilisation','',0,0,0,'Soumettre','',NULL,NULL,1,0,'2015-06-18 14:57:54',0,4,0,NULL,NULL,NULL,NULL,NULL,0,'blue',0,NULL,NULL,0,0,0,0);
/*!40000 ALTER TABLE `form_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_form_parameter`
--

DROP TABLE IF EXISTS `form_form_parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_form_parameter` (
  `parameter_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parameter_value` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`parameter_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_form_parameter`
--

LOCK TABLES `form_form_parameter` WRITE;
/*!40000 ALTER TABLE `form_form_parameter` DISABLE KEYS */;
INSERT INTO `form_form_parameter` VALUES ('active_captcha','0'),('limit_number_response','0'),('active_store_adresse','0'),('active_mylutece_authentification','0'),('support_https','0'),('active_requirement','1'),('id_theme_list','blue'),('export_csv_encoding','ISO-8859-1'),('export_xml_encoding','UTF-8'),('id_export_format_daemon','3'),('export_daemon_type','full'),('file_export_daemon_type','form');
/*!40000 ALTER TABLE `form_form_parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_form_processor`
--

DROP TABLE IF EXISTS `form_form_processor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_form_processor` (
  `id_form` int(11) NOT NULL DEFAULT '0',
  `key_processor` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_form`,`key_processor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_form_processor`
--

LOCK TABLES `form_form_processor` WRITE;
/*!40000 ALTER TABLE `form_form_processor` DISABLE KEYS */;
INSERT INTO `form_form_processor` VALUES (2,'exportDirectory'),(3,'exportDirectory'),(4,'exportDirectory');
/*!40000 ALTER TABLE `form_form_processor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_graph_type`
--

DROP TABLE IF EXISTS `form_graph_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_graph_type` (
  `id_graph_type` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_graph_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_graph_type`
--

LOCK TABLES `form_graph_type` WRITE;
/*!40000 ALTER TABLE `form_graph_type` DISABLE KEYS */;
INSERT INTO `form_graph_type` VALUES (1,'Histogramme','fr.paris.lutece.plugins.form.business.GraphTypeBarChart'),(2,'Camembert','fr.paris.lutece.plugins.form.business.GraphTypePieChart');
/*!40000 ALTER TABLE `form_graph_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_notify_sender_configuration`
--

DROP TABLE IF EXISTS `form_notify_sender_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_notify_sender_configuration` (
  `id_form` int(11) NOT NULL DEFAULT '0',
  `id_entry_email_sender` int(11) NOT NULL DEFAULT '0',
  `message` mediumtext COLLATE utf8_unicode_ci,
  `send_attachments` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_form`,`id_entry_email_sender`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_notify_sender_configuration`
--

LOCK TABLES `form_notify_sender_configuration` WRITE;
/*!40000 ALTER TABLE `form_notify_sender_configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_notify_sender_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_portlet`
--

DROP TABLE IF EXISTS `form_portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_portlet` (
  `id_portlet` int(11) DEFAULT NULL,
  `id_form` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_portlet`
--

LOCK TABLES `form_portlet` WRITE;
/*!40000 ALTER TABLE `form_portlet` DISABLE KEYS */;
INSERT INTO `form_portlet` VALUES (94,1);
/*!40000 ALTER TABLE `form_portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_recap`
--

DROP TABLE IF EXISTS `form_recap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_recap` (
  `id_recap` int(11) NOT NULL DEFAULT '0',
  `back_url` mediumtext COLLATE utf8_unicode_ci,
  `id_graph_type` int(11) DEFAULT NULL,
  `recap_message` mediumtext COLLATE utf8_unicode_ci,
  `recap_data` smallint(6) DEFAULT NULL,
  `graph` smallint(6) DEFAULT NULL,
  `graph_three_dimension` smallint(6) DEFAULT NULL,
  `graph_legende` smallint(6) DEFAULT NULL,
  `graph_value_legende` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `graph_label` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_recap`),
  KEY `index_form_recap_graph_type` (`id_graph_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_recap`
--

LOCK TABLES `form_recap` WRITE;
/*!40000 ALTER TABLE `form_recap` DISABLE KEYS */;
INSERT INTO `form_recap` VALUES (1,'jsp/site/Portal.jsp',2,'Merci pour vos réponses.',1,1,1,0,NULL,1),(2,'jsp/site/Portal.jsp?page=form',NULL,'Message du récapitulatif',0,0,0,0,NULL,0),(3,'jsp/site/Portal.jsp?page=form',NULL,'Message du récapitulatif',0,0,0,0,NULL,0),(4,'jsp/site/Portal.jsp?page=form',NULL,'Message du récapitulatif',0,0,0,0,NULL,0);
/*!40000 ALTER TABLE `form_recap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_response_submit`
--

DROP TABLE IF EXISTS `form_response_submit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_response_submit` (
  `id_response` int(11) NOT NULL DEFAULT '0',
  `id_form_submit` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_response`,`id_form_submit`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_response_submit`
--

LOCK TABLES `form_response_submit` WRITE;
/*!40000 ALTER TABLE `form_response_submit` DISABLE KEYS */;
INSERT INTO `form_response_submit` VALUES (1,1),(2,2),(3,3),(4,3),(5,3),(6,3),(7,3),(8,3),(9,3),(10,4),(11,4),(12,4),(13,4),(14,4),(15,4),(16,4),(17,5),(18,5),(19,5),(20,5),(21,5),(22,5),(23,5),(24,6),(25,6),(26,6),(27,6),(28,6),(29,6),(30,6),(31,7),(32,7),(33,7),(34,7),(35,7),(36,7),(37,7),(38,8),(39,8),(40,8),(41,8),(42,8),(43,8),(44,8),(45,9),(46,9),(47,9),(48,9),(49,9),(50,9),(51,9),(52,9),(53,9);
/*!40000 ALTER TABLE `form_response_submit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_rss_cf`
--

DROP TABLE IF EXISTS `form_rss_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_rss_cf` (
  `id_rss` int(11) NOT NULL DEFAULT '0',
  `id_form` int(11) NOT NULL DEFAULT '0',
  `is_submit_rss` smallint(6) NOT NULL DEFAULT '0',
  `id_form_submit` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_rss`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_rss_cf`
--

LOCK TABLES `form_rss_cf` WRITE;
/*!40000 ALTER TABLE `form_rss_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_rss_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_submit`
--

DROP TABLE IF EXISTS `form_submit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_submit` (
  `id_form_submit` int(11) NOT NULL DEFAULT '0',
  `date_response` timestamp NULL DEFAULT NULL,
  `day_date_response` smallint(6) DEFAULT NULL,
  `week_date_response` smallint(6) DEFAULT NULL,
  `month_date_response` smallint(6) DEFAULT NULL,
  `year_date_response` smallint(6) DEFAULT NULL,
  `ip` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_form` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_form_submit`),
  KEY `index_form_submit_form` (`id_form`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_submit`
--

LOCK TABLES `form_submit` WRITE;
/*!40000 ALTER TABLE `form_submit` DISABLE KEYS */;
INSERT INTO `form_submit` VALUES (1,'2015-06-17 16:44:24',17,25,5,2015,NULL,2),(2,'2015-06-17 16:47:47',17,25,5,2015,NULL,2),(3,'2015-06-18 15:51:06',18,25,5,2015,NULL,4),(4,'2015-06-18 15:52:16',18,25,5,2015,NULL,4),(5,'2015-06-18 15:54:04',18,25,5,2015,NULL,4),(6,'2015-06-18 15:56:14',18,25,5,2015,NULL,4),(7,'2015-06-18 16:11:42',18,25,5,2015,NULL,4),(8,'2015-06-18 16:17:45',18,25,5,2015,NULL,4),(9,'2015-06-18 16:46:58',18,25,5,2015,NULL,4);
/*!40000 ALTER TABLE `form_submit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genatt_entry`
--

DROP TABLE IF EXISTS `genatt_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genatt_entry` (
  `id_entry` int(11) NOT NULL DEFAULT '0',
  `id_resource` int(11) NOT NULL DEFAULT '0',
  `resource_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_type` int(11) NOT NULL DEFAULT '0',
  `id_parent` int(11) DEFAULT NULL,
  `title` mediumtext COLLATE utf8_unicode_ci,
  `help_message` mediumtext COLLATE utf8_unicode_ci,
  `comment` mediumtext COLLATE utf8_unicode_ci,
  `mandatory` smallint(6) DEFAULT NULL,
  `fields_in_line` smallint(6) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `id_field_depend` int(11) DEFAULT NULL,
  `confirm_field` smallint(6) DEFAULT NULL,
  `confirm_field_title` mediumtext COLLATE utf8_unicode_ci,
  `field_unique` smallint(6) DEFAULT NULL,
  `map_provider` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `css_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pos_conditional` int(11) DEFAULT '0',
  `error_message` mediumtext COLLATE utf8_unicode_ci,
  `num_row` smallint(6) DEFAULT '0',
  `num_column` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id_entry`),
  KEY `index_genatt_entry_resource` (`id_resource`),
  KEY `index_genatt_entry_parent` (`id_parent`),
  KEY `fk_genatt_entry_type` (`id_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genatt_entry`
--

LOCK TABLES `genatt_entry` WRITE;
/*!40000 ALTER TABLE `genatt_entry` DISABLE KEYS */;
INSERT INTO `genatt_entry` VALUES (1,1,'FORM_FORM_TYPE',1,2,'Quelle licence préférez vous ?','','',0,0,2,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0),(2,1,'FORM_FORM_TYPE',9,NULL,'Qu\'attendez vous d\'un CMS open-source ?',NULL,NULL,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0),(3,1,'FORM_FORM_TYPE',6,NULL,'Si autre merci de préciser.','','',0,0,0,7,NULL,NULL,NULL,NULL,NULL,1,NULL,0,0),(4,1,'FORM_FORM_TYPE',2,2,'Quel éditeur pour ajouter vos contenus ?','','',0,0,3,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0),(5,1,'FORM_FORM_TYPE',5,2,'Quelle accessibilité pour votre CMS ?','','',0,0,4,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0),(6,1,'FORM_FORM_TYPE',1,2,'Quelle communauté pour votre CMS ?','','',0,0,5,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0),(7,1,'FORM_FORM_TYPE',2,2,'Quelle base de données pour votre CMS ?','','',0,0,6,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0),(8,1,'FORM_FORM_TYPE',7,2,'Autre','','',0,0,7,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0),(9,2,'FORM_FORM_TYPE',6,NULL,'test','test','',0,0,1,NULL,0,NULL,0,'','',0,'',0,0),(10,3,'FORM_FORM_TYPE',6,NULL,'Nom','','',0,0,2,NULL,0,NULL,0,'','',0,'',0,0),(11,3,'FORM_FORM_TYPE',6,NULL,'Prénom','','',0,0,3,NULL,0,NULL,0,'','',0,'',0,0),(12,3,'FORM_FORM_TYPE',6,NULL,'Adresse','','',0,0,4,NULL,0,NULL,0,'','',0,'',0,0),(13,3,'FORM_FORM_TYPE',6,NULL,'Civilité','','',0,0,1,NULL,0,NULL,0,'','',0,'',0,0),(14,3,'FORM_FORM_TYPE',6,NULL,'code postal','','',0,0,5,NULL,0,NULL,0,'','',0,'',0,0),(15,3,'FORM_FORM_TYPE',6,NULL,'commune','','',0,0,6,NULL,0,NULL,0,'','',0,'',0,0),(23,4,'FORM_FORM_TYPE',6,NULL,'Nom famille','','',0,0,2,NULL,0,NULL,0,'','',0,'',0,0),(17,3,'FORM_FORM_TYPE',6,NULL,'immatriculation','','',0,0,7,NULL,0,NULL,0,'','',0,'',0,0),(18,3,'FORM_FORM_TYPE',6,NULL,'Energie','','',0,0,8,NULL,0,NULL,0,'','',0,'',0,0),(19,3,'FORM_FORM_TYPE',6,NULL,'Marque','','',0,0,9,NULL,0,NULL,0,'','',0,'',0,0),(20,3,'FORM_FORM_TYPE',6,NULL,'Dénomination commerciale','','',0,0,11,NULL,0,NULL,0,'','',0,'',0,0),(21,3,'FORM_FORM_TYPE',14,NULL,'FORM_ID_DEMAND','','',0,0,12,NULL,0,NULL,0,'','',0,NULL,0,0),(22,3,'FORM_FORM_TYPE',14,NULL,'FORM_USER_GUID','','',0,0,13,NULL,0,NULL,0,'','',0,NULL,0,0),(24,4,'FORM_FORM_TYPE',6,NULL,'Prénom','','',0,0,4,NULL,0,NULL,0,'','',0,'',0,0),(25,4,'FORM_FORM_TYPE',6,NULL,'Civilité','','',0,0,1,NULL,0,NULL,0,'','',0,'',0,0),(26,4,'FORM_FORM_TYPE',6,NULL,'Nom usage','','',0,0,3,NULL,0,NULL,0,'','',0,'',0,0),(27,4,'FORM_FORM_TYPE',6,NULL,'Revenu fiscal de référence','','',0,0,6,NULL,0,NULL,0,'','',0,'',0,0),(28,4,'FORM_FORM_TYPE',6,NULL,'Nombre de part','','',0,0,7,NULL,0,NULL,0,'','',0,'',0,0),(29,4,'FORM_FORM_TYPE',14,NULL,'FORM_ID_DEMAND','','',0,0,8,NULL,0,NULL,0,'','',0,NULL,0,0),(30,4,'FORM_FORM_TYPE',14,NULL,'FORM_USER_GUID','','',0,0,9,NULL,0,NULL,0,'','',0,NULL,0,0),(31,3,'FORM_FORM_TYPE',6,NULL,'Couleur','','',0,0,10,NULL,0,NULL,0,'','',0,'',0,0),(32,4,'FORM_FORM_TYPE',6,NULL,'email','','',0,0,5,NULL,0,NULL,0,'','',0,'',0,0);
/*!40000 ALTER TABLE `genatt_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genatt_entry_type`
--

DROP TABLE IF EXISTS `genatt_entry_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genatt_entry_type` (
  `id_type` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_group` smallint(6) DEFAULT NULL,
  `is_comment` int(11) DEFAULT NULL,
  `is_mylutece_user` smallint(6) DEFAULT NULL,
  `class_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_type`),
  KEY `index_genatt_entry_type_plugin` (`plugin`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genatt_entry_type`
--

LOCK TABLES `genatt_entry_type` WRITE;
/*!40000 ALTER TABLE `genatt_entry_type` DISABLE KEYS */;
INSERT INTO `genatt_entry_type` VALUES (1,'Bouton radio',0,0,0,'form.entryTypeRadioButton','form'),(2,'Case à cocher',0,0,0,'form.entryTypeCheckBox','form'),(3,'Commentaire',0,1,0,'form.entryTypeComment','form'),(4,'Date',0,0,0,'form.entryTypeDate','form'),(5,'Liste déroulante',0,0,0,'form.entryTypeSelect','form'),(6,'Zone de texte court',0,0,0,'form.entryTypeText','form'),(7,'Zone de texte long',0,0,0,'form.entryTypeTextArea','form'),(8,'Fichier',0,0,0,'form.entryTypeFile','form'),(9,'Regroupement',1,0,0,'form.entryTypeGroup','form'),(10,'Liste déroulante SQL',0,0,0,'form.entryTypeSelectSQL','form'),(11,'Géolocalisation',0,0,0,'form.entryTypeGeolocation','form'),(12,'Image',0,0,0,'form.entryTypeImage','form'),(13,'Utilisateur MyLutece',0,0,1,'form.entryTypeMyLuteceUser','form'),(14,'Session',0,0,0,'form.entryTypeSession','form'),(15,'Numérotation',0,0,0,'form.entryTypeNumbering','form'),(16,'Cases à cocher obligatoires',0,0,0,'form.entryTypeMandatoryCheckBox','form'),(17,'Attribut de l\'utilisateur MyLutece',0,0,0,'form.entryTypeMyLuteceUserattribute','form'),(18,'Tableau',0,0,0,'form.entryTypeArray','form'),(101,'Bouton radio',0,0,0,'appointment.entryTypeRadioButton','appointment'),(102,'Case à cocher',0,0,0,'appointment.entryTypeCheckBox','appointment'),(103,'Commentaire',0,1,0,'appointment.entryTypeComment','appointment'),(104,'Date',0,0,0,'appointment.entryTypeDate','appointment'),(105,'Liste déroulante',0,0,0,'appointment.entryTypeSelect','appointment'),(106,'Zone de texte court',0,0,0,'appointment.entryTypeText','appointment'),(107,'Zone de texte long',0,0,0,'appointment.entryTypeTextArea','appointment'),(108,'Numérotation',0,0,0,'appointment.entryTypeNumbering','appointment'),(109,'Regroupement',1,0,0,'appointment.entryTypeGroup','appointment'),(110,'Liste déroulante SQL',0,0,0,'appointment.entryTypeSelectSQL','appointment'),(111,'Géolocalisation',0,0,0,'appointment.entryTypeGeolocation','appointment'),(112,'Session',0,0,0,'appointment.entryTypeSession','appointment'),(113,'Utilisateur MyLutece',0,0,1,'appointment.entryTypeMyLuteceUser','appointment'),(114,'Image',0,0,0,'appointment.entryTypeImage','appointment'),(115,'Fichier',0,0,0,'appointment.entryTypeFile','appointment'),(116,'Numéro de téléphone',0,0,0,'appointment.entryTypePhone','appointment');
/*!40000 ALTER TABLE `genatt_entry_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genatt_field`
--

DROP TABLE IF EXISTS `genatt_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genatt_field` (
  `id_field` int(11) NOT NULL DEFAULT '0',
  `id_entry` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `default_value` smallint(6) DEFAULT NULL,
  `max_size_enter` int(11) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `value_type_date` date DEFAULT NULL,
  `no_display_title` smallint(6) DEFAULT NULL,
  `comment` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id_field`),
  KEY `index_genatt_field_entry` (`id_entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genatt_field`
--

LOCK TABLES `genatt_field` WRITE;
/*!40000 ALTER TABLE `genatt_field` DISABLE KEYS */;
INSERT INTO `genatt_field` VALUES (1,1,'GPL (GNU General Public License).','gpl',0,0,0,0,1,NULL,NULL,NULL),(2,1,'LGPL (Lesser General Public License).','lgpl',0,0,0,0,2,NULL,NULL,NULL),(24,1,'Apache License','ApacheLicense',0,0,0,0,7,NULL,0,NULL),(25,5,'RGAA A','RGAA_A',0,0,0,0,25,NULL,0,NULL),(6,1,'BSD License.','bsd',0,0,1,0,6,NULL,NULL,NULL),(7,1,'Autre','autre',0,0,0,0,24,NULL,0,NULL),(8,3,NULL,'',0,43,0,-1,8,NULL,NULL,NULL),(9,4,'Syntaxe wiki','wiki',0,0,0,0,9,NULL,NULL,NULL),(10,4,'Editeur riche (wysiwyg)','wysiwyg',0,0,1,0,10,NULL,NULL,NULL),(11,4,'Html/Css/Javascript','html',0,0,1,0,11,NULL,NULL,NULL),(12,5,'Aucune contrainte','empty',0,0,0,0,12,NULL,NULL,NULL),(27,5,'RGAA AAA','RGAA_AAA',0,0,0,0,27,NULL,0,NULL),(26,5,'RGAA AA','RGAA_AA',0,0,1,0,26,NULL,0,NULL),(16,6,'Offre avec double licence libre/payant','entreprise',0,0,0,0,16,NULL,NULL,NULL),(17,6,'Une communauté de SSII et collectivités','lutece',0,0,1,0,17,NULL,NULL,NULL),(18,6,'Je préfère ne pas savoir','none',0,0,0,0,18,NULL,NULL,NULL),(19,7,'MySql','MySql',0,0,1,0,19,NULL,NULL,NULL),(20,7,'Oracle','oracle',0,0,1,0,20,NULL,NULL,NULL),(21,7,'Postgre','postgre',0,0,1,0,21,NULL,NULL,NULL),(22,8,NULL,'',4,26,0,50,22,NULL,NULL,NULL),(23,7,'SqlServer (Microsoft)','sqlserver',0,0,0,0,23,NULL,NULL,NULL),(28,9,NULL,'',0,50,0,250,28,NULL,0,NULL),(29,10,NULL,'',0,50,0,250,29,NULL,0,NULL),(30,11,NULL,'',0,50,0,250,30,NULL,0,NULL),(31,12,NULL,'',0,50,0,250,31,NULL,0,NULL),(32,13,NULL,'',0,50,0,250,32,NULL,0,NULL),(33,14,NULL,'',0,50,0,250,33,NULL,0,NULL),(34,15,NULL,'',0,50,0,250,34,NULL,0,NULL),(42,23,NULL,'',0,50,0,250,42,NULL,0,NULL),(36,17,NULL,'',0,50,0,250,36,NULL,0,NULL),(37,18,NULL,'',0,50,0,250,37,NULL,0,NULL),(38,19,NULL,'',0,50,0,250,38,NULL,0,NULL),(39,20,NULL,'',0,50,0,250,39,NULL,0,NULL),(40,21,NULL,'FORM_ID_DEMAND',0,0,0,0,40,NULL,0,NULL),(41,22,NULL,'FORM_USER_GUID',0,0,0,0,41,NULL,0,NULL),(43,24,NULL,'',0,50,0,250,43,NULL,0,NULL),(44,25,NULL,'',0,50,0,250,44,NULL,0,NULL),(45,26,NULL,'',0,50,0,250,45,NULL,0,NULL),(46,27,NULL,'',0,50,0,250,46,NULL,0,NULL),(47,28,NULL,'',0,50,0,250,47,NULL,0,NULL),(48,29,NULL,'FORM_ID_DEMAND',0,0,0,0,48,NULL,0,NULL),(49,30,NULL,'FORM_USER_GUID',0,0,0,0,49,NULL,0,NULL),(50,31,NULL,'',0,50,0,250,50,NULL,0,NULL),(51,32,NULL,'',0,50,0,250,51,NULL,0,NULL);
/*!40000 ALTER TABLE `genatt_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genatt_response`
--

DROP TABLE IF EXISTS `genatt_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genatt_response` (
  `id_response` int(11) NOT NULL DEFAULT '0',
  `response_value` mediumtext COLLATE utf8_unicode_ci,
  `id_entry` int(11) DEFAULT NULL,
  `id_field` int(11) DEFAULT NULL,
  `id_file` int(11) DEFAULT NULL,
  `status` smallint(6) DEFAULT '1',
  PRIMARY KEY (`id_response`),
  KEY `index_genatt_response_entry` (`id_entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genatt_response`
--

LOCK TABLES `genatt_response` WRITE;
/*!40000 ALTER TABLE `genatt_response` DISABLE KEYS */;
INSERT INTO `genatt_response` VALUES (1,'test',9,NULL,NULL,1),(2,'test',9,NULL,NULL,1),(3,'Mr',25,NULL,NULL,1),(4,'merlin',23,NULL,NULL,1),(5,'merlin',26,NULL,NULL,1),(6,'Francois',24,NULL,NULL,1),(7,'francoiseric.merlin@paris.fr',32,NULL,NULL,1),(8,'12',27,NULL,NULL,1),(9,'2',28,NULL,NULL,1),(10,'Mr',25,NULL,NULL,1),(11,'merlin',23,NULL,NULL,1),(12,'merlin',26,NULL,NULL,1),(13,'Francois',24,NULL,NULL,1),(14,'francoiseric.merlin@paris.fr',32,NULL,NULL,1),(15,'12',27,NULL,NULL,1),(16,'2',28,NULL,NULL,1),(17,'Mr',25,NULL,NULL,1),(18,'merlin',23,NULL,NULL,1),(19,'merlin',26,NULL,NULL,1),(20,'Francois',24,NULL,NULL,1),(21,'francoiseric.merlin@paris.fr',32,NULL,NULL,1),(22,'12',27,NULL,NULL,1),(23,'2',28,NULL,NULL,1),(24,'Mr',25,NULL,NULL,1),(25,'merlin',23,NULL,NULL,1),(26,'merlin',26,NULL,NULL,1),(27,'Francois',24,NULL,NULL,1),(28,'francoiseric.merlin@paris.fr',32,NULL,NULL,1),(29,'12',27,NULL,NULL,1),(30,'2',28,NULL,NULL,1),(31,'Mr',25,NULL,NULL,1),(32,'merlin',23,NULL,NULL,1),(33,'merlin',26,NULL,NULL,1),(34,'Francois',24,NULL,NULL,1),(35,'francoiseric.merlin@paris.fr',32,NULL,NULL,1),(36,'12',27,NULL,NULL,1),(37,'2',28,NULL,NULL,1),(38,'Mr',25,NULL,NULL,1),(39,'merlin',23,NULL,NULL,1),(40,'merlin',26,NULL,NULL,1),(41,'Francois',24,NULL,NULL,1),(42,'francoiseric.merlin@paris.fr',32,NULL,NULL,1),(43,'12',27,NULL,NULL,1),(44,'2',28,NULL,NULL,1),(45,'Mr',25,NULL,NULL,1),(46,'merlin',23,NULL,NULL,1),(47,'merlin',26,NULL,NULL,1),(48,'Francois',24,NULL,NULL,1),(49,'francoiseric.merlin@paris.fr',32,NULL,NULL,1),(50,'12',27,NULL,NULL,1),(51,'2',28,NULL,NULL,1),(52,'1',29,NULL,NULL,1),(53,'palyma@palyma.fr',30,NULL,NULL,1);
/*!40000 ALTER TABLE `genatt_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genatt_verify_by`
--

DROP TABLE IF EXISTS `genatt_verify_by`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genatt_verify_by` (
  `id_field` int(11) NOT NULL DEFAULT '0',
  `id_expression` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_field`,`id_expression`),
  KEY `index_genatt_verify_by_field` (`id_field`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genatt_verify_by`
--

LOCK TABLES `genatt_verify_by` WRITE;
/*!40000 ALTER TABLE `genatt_verify_by` DISABLE KEYS */;
/*!40000 ALTER TABLE `genatt_verify_by` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helpdesk_faq`
--

DROP TABLE IF EXISTS `helpdesk_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `helpdesk_faq` (
  `id_faq` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `role_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `workgroup_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_faq`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helpdesk_faq`
--

LOCK TABLES `helpdesk_faq` WRITE;
/*!40000 ALTER TABLE `helpdesk_faq` DISABLE KEYS */;
INSERT INTO `helpdesk_faq` VALUES (1,'F.A.Q. Lutèce','F.A.Q. Lutèce','none','all');
/*!40000 ALTER TABLE `helpdesk_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helpdesk_ln_faq_subject`
--

DROP TABLE IF EXISTS `helpdesk_ln_faq_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `helpdesk_ln_faq_subject` (
  `id_faq` int(11) NOT NULL,
  `id_subject` int(11) NOT NULL,
  PRIMARY KEY (`id_faq`,`id_subject`),
  KEY `fk_helpdesk_faq_subject_topic` (`id_subject`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helpdesk_ln_faq_subject`
--

LOCK TABLES `helpdesk_ln_faq_subject` WRITE;
/*!40000 ALTER TABLE `helpdesk_ln_faq_subject` DISABLE KEYS */;
INSERT INTO `helpdesk_ln_faq_subject` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `helpdesk_ln_faq_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helpdesk_ln_faq_theme`
--

DROP TABLE IF EXISTS `helpdesk_ln_faq_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `helpdesk_ln_faq_theme` (
  `id_faq` int(11) NOT NULL,
  `id_theme` int(11) NOT NULL,
  PRIMARY KEY (`id_faq`,`id_theme`),
  KEY `fk_helpdesk_faq_theme_theme` (`id_theme`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helpdesk_ln_faq_theme`
--

LOCK TABLES `helpdesk_ln_faq_theme` WRITE;
/*!40000 ALTER TABLE `helpdesk_ln_faq_theme` DISABLE KEYS */;
INSERT INTO `helpdesk_ln_faq_theme` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `helpdesk_ln_faq_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helpdesk_question_answer`
--

DROP TABLE IF EXISTS `helpdesk_question_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `helpdesk_question_answer` (
  `id_question_answer` int(11) NOT NULL,
  `question` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `answer` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `id_subject` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_question_answer`),
  KEY `fk_helpdesk_question_answer` (`id_subject`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helpdesk_question_answer`
--

LOCK TABLES `helpdesk_question_answer` WRITE;
/*!40000 ALTER TABLE `helpdesk_question_answer` DISABLE KEYS */;
INSERT INTO `helpdesk_question_answer` VALUES (1,'Je viens de créer une rubrique dans la page courante et elle n\'apparaît pas dans l\'aperçu de prévisualisation : pourquoi ?','Il peut s\'agir du modèle de présentation sélectionné pour votre page : si vous créez un rubrique que vous placez en 2e colonne, assurez-vous que le modèle associé à la page en cours comprend deux colonnes (par défaut, la composition à une colonne est sélectionnée).\r\n<br /> Un autre cas peut se présenter : vous avez utilisé le plan du site pour accéder à une page et vous utilisez ensuite le formulaire d\'administration pour créer une rubrique dans la page. Vérifier en haut du formulaire d\'administration du site que la page courante est bien celle affichée en prévisualisation. Dans le cas contraire, la rubrique que vous venez de créer a été placée dans la page indiquée comme page courante.',1,1,'2008-10-07 12:47:05',0),(2,'Pourquoi sommes-nous obligés de saisir un titre de rubrique au moment de sa création lorsque l\'on choisit ensuite un style \"Sans titre\" ?','Les contrôles effectués sur les zones de saisie au moment de la validation du formulaire de création d\'une rubrique sont les mêmes, quelque soit le choix de la mise en forme retenu. Comme les styles correspondent à des mises en forme spéciales du contenu, nous n\'avons pas les moyens de savoir, au niveau du formulaire, si la mise en forme choisie affiche ou non le titre.\r\n<br /> Dans une prochaine version de l\'outil, il sera possible de créer des alias de rubrique, c\'est-à-dire de placer dans une autre page, le contenu d\'une rubrique déjà créée, sans avoir à resaisir son contenu. Le choix de la rubrique à dupliquer sera fera à partir de son titre (qu\'il faudra avoir renseigné).',1,1,'2008-10-07 12:47:25',1),(3,'L\'article que je viens de publier n\'apparait pas en prévisualisation dans la rubrique sélectionnée : pourquoi ?','La publication consiste à créer un lien entre un article produit par un fournisseur et une rubrique de type \"&nbsp;Liste d\'articles&nbsp;\". Pour s\'assurer que la validité d\'un article publié sur le portail ne soit pas dépassée, on définit au niveau de chaque article la période pendant laquelle l\'article sera visible sur le portail (date de début de validité et date de fin de validité). Dès que la date de fin de validité est atteinte, l\'article n\'apparaît plus dans la liste.\r\n<br /> Si vous publiez un article dont la date de début de validité n\'est pas encore atteinte ou dont la date de fin de validité est dépassée, l\'article n\'apparaîtra pas dans la rubrique !',3,1,'2008-10-07 12:47:48',0),(4,'L\'article que je viens de créer n\'apparait pas dans la liste des articles à publier : pourquoi ?','Dans le cas de l\'utilisation d\'une base partagée et d\'un ensemble de bases locales (comme c\'est le cas pour les portails des mairies d\'arrondissement), la création d\'un article se fait dans la base partagée, même si la portée du flux utilisé pour sa création est locale à votre portail.\r\n<br /> Pour pouvoir publier votre article dans les rubriques de votre portail, vous devez synchroniser votre base avec la base partagée. Cette opération consiste à rapatrier dans votre base locale les articles créés en base partagée.',3,1,'2008-10-07 12:48:03',1),(5,'A quoi sert l\'auto-publication ?','L\'auto-publication a été mise en place pour permettre à certains fournisseurs de contenu de voir leurs articles publiés directement dans une rubrique du portail, sans que le webmestre intervienne.\r\n<br /> <em>Exemple :</em> Le fournisseur peut être une association locale, pour laquelle un flux local d\'articles aura été créé sur le portail, et un compte utilisateur aura été mis à disposition de son responsable. Comme l\'auto-publication permet d\'associer un flux local à une rubrique de type liste d\'articles, les articles produits par le responsable de l\'association seront directement publiés dans sa rubrique.',3,1,'2008-10-07 12:48:28',2);
/*!40000 ALTER TABLE `helpdesk_question_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helpdesk_subject`
--

DROP TABLE IF EXISTS `helpdesk_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `helpdesk_subject` (
  `id_subject` int(11) NOT NULL,
  `subject` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_parent` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  PRIMARY KEY (`id_subject`),
  KEY `fk_helpdesk_subject_parent` (`id_parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helpdesk_subject`
--

LOCK TABLES `helpdesk_subject` WRITE;
/*!40000 ALTER TABLE `helpdesk_subject` DISABLE KEYS */;
INSERT INTO `helpdesk_subject` VALUES (0,'',0,0),(1,'Administation du Site',0,0),(2,'Publication',0,1),(3,'Documents',2,0);
/*!40000 ALTER TABLE `helpdesk_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helpdesk_theme`
--

DROP TABLE IF EXISTS `helpdesk_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `helpdesk_theme` (
  `id_theme` int(11) NOT NULL,
  `theme` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_mailing_list` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_parent` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  PRIMARY KEY (`id_theme`),
  KEY `fk_helpdesk_theme_parent` (`id_parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helpdesk_theme`
--

LOCK TABLES `helpdesk_theme` WRITE;
/*!40000 ALTER TABLE `helpdesk_theme` DISABLE KEYS */;
INSERT INTO `helpdesk_theme` VALUES (0,'','1',0,0),(1,'Administration du Site','1',0,0),(2,'Publication','1',0,1),(3,'Documents','1',2,0);
/*!40000 ALTER TABLE `helpdesk_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helpdesk_visitor_question`
--

DROP TABLE IF EXISTS `helpdesk_visitor_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `helpdesk_visitor_question` (
  `id_visitor_question` int(11) NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `question` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `answer` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `date_visitor_question` date NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_theme` int(11) NOT NULL,
  PRIMARY KEY (`id_visitor_question`),
  KEY `fk_helpdesk_visitor_question` (`id_theme`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helpdesk_visitor_question`
--

LOCK TABLES `helpdesk_visitor_question` WRITE;
/*!40000 ALTER TABLE `helpdesk_visitor_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `helpdesk_visitor_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `html_portlet`
--

DROP TABLE IF EXISTS `html_portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `html_portlet` (
  `id_portlet` int(11) NOT NULL DEFAULT '0',
  `html` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id_portlet`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `html_portlet`
--

LOCK TABLES `html_portlet` WRITE;
/*!40000 ALTER TABLE `html_portlet` DISABLE KEYS */;
INSERT INTO `html_portlet` VALUES (1,'<div class=\"jumbotron\">\n  <h1>Welcome to LUTECE</h1>\n  <h3>\n    <small>Lutece is a CMS / Portal and a Web Framework that let\n    you create large and complex sites and applications.</small>\n  </h3>\n</div>\n'),(2,'<ul>\n  <li>Lutece is FreeSoftware. Full OpenSource licensed under\n  BSD.</li>\n  <li>Full responsive design Back and Front</li>\n  <li>Compliant with Bootstrap 3.x themes</li>\n  <li>Very modular and flexible architecture based on plugins,\n  APIs, IoC</li>\n  <li>Over 300 plugins available for many needs : Content\n  Management, Collaborative, Workflows, ...</li>\n  <li>Runs on Java Platform and rely on powerful build tools such\n  as Apache Maven</li>\n  <li>Uses best of breed Java Open Source stacks : Lucene, Spring,\n  Ehcache, Freemarker, ...</li>\n</ul>\n'),(3,'<form action=\"jsp/admin/DoAdminLogin.jsp\" method=\"post\">\n  <div class=\"well\">\n  <p>\n    <strong>Choose your profile :</strong>\n  </p>\n  <div>\n  <input id=\"access_code_admin\" title=\"administrateur\"\n  checked=\"checked\" name=\"access_code\" type=\"radio\"\n  value=\"admin\" /> &#160; Administrator</div>\n  <div>\n  <input id=\"access_code_webmaster\" title=\"webmaster\"\n  name=\"access_code\" type=\"radio\" value=\"lutece\" /> &#160;\n  Webmaster - Content manager</div>\n  <div>\n  <input id=\"access_code_redac\" title=\"redacteur\"\n  name=\"access_code\" type=\"radio\" value=\"redac\" /> &#160; Writer -\n  Content producer</div>\n  <div>\n    <input name=\"password\" type=\"hidden\" value=\"adminadmin\" />\n  </div>\n  <br /> \n  <button class=\"btn btn-primary\" type=\"submit\">&#160;\n  Enter</button></div>\n</form>\n'),(4,'<h2>Here is a child page sample.</h2>\n<p>&#160;</p>\n<p>This page is divided into 2 columns.</p>\n<p>In each column you can publish several and different portlets :\nHTML, documents, ...</p>\n<p>This page can also have childs.</p>\n<p>&#160;</p>\n<p>&#160;</p>\n');
/*!40000 ALTER TABLE `html_portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `htmlpage`
--

DROP TABLE IF EXISTS `htmlpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `htmlpage` (
  `id_htmlpage` int(11) NOT NULL DEFAULT '0',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `html_content` mediumtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `workgroup_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'all',
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  PRIMARY KEY (`id_htmlpage`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `htmlpage`
--

LOCK TABLES `htmlpage` WRITE;
/*!40000 ALTER TABLE `htmlpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `htmlpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_mapping`
--

DROP TABLE IF EXISTS `library_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `library_mapping` (
  `id_mapping` int(11) NOT NULL DEFAULT '0',
  `id_media` int(11) NOT NULL DEFAULT '0',
  `code_document_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_mapping`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_mapping`
--

LOCK TABLES `library_mapping` WRITE;
/*!40000 ALTER TABLE `library_mapping` DISABLE KEYS */;
INSERT INTO `library_mapping` VALUES (1,1,'image'),(2,2,'banner'),(3,3,'pdf'),(4,4,'video'),(5,5,'sound'),(6,6,'flash'),(7,7,'image');
/*!40000 ALTER TABLE `library_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_mapping_attribute`
--

DROP TABLE IF EXISTS `library_mapping_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `library_mapping_attribute` (
  `id_mapping` int(11) NOT NULL DEFAULT '0',
  `id_media_attribute` int(11) NOT NULL DEFAULT '0',
  `id_document_attribute` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_mapping`,`id_media_attribute`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_mapping_attribute`
--

LOCK TABLES `library_mapping_attribute` WRITE;
/*!40000 ALTER TABLE `library_mapping_attribute` DISABLE KEYS */;
INSERT INTO `library_mapping_attribute` VALUES (1,2,44),(1,1,43),(2,5,52),(2,6,53),(2,7,53),(3,10,48),(4,12,40),(5,14,50),(6,18,56),(6,17,57),(6,16,54),(6,19,58),(6,20,59),(6,21,60),(6,22,61),(6,23,62),(7,24,43);
/*!40000 ALTER TABLE `library_mapping_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_media`
--

DROP TABLE IF EXISTS `library_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `library_media` (
  `id_media` int(11) NOT NULL DEFAULT '0',
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `stylesheet` mediumblob,
  `is_multiple_media` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id_media`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_media`
--

LOCK TABLES `library_media` WRITE;
/*!40000 ALTER TABLE `library_media` DISABLE KEYS */;
INSERT INTO `library_media` VALUES (1,'image','Insertion de documents Image','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:output method=\"xml\" indent=\"false\" omit-xml-declaration=\"yes\" />\r\n\r\n	<xsl:template match=\"media\">\r\n			<img src=\"{src}\" alt=\"{alt}\" height=\"{height}\" width=\"{width}\"/>\r\n	</xsl:template>\r\n\r\n</xsl:stylesheet>',0),(2,'bannieres','Bannières du Site','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:output method=\"xml\" indent=\"false\" omit-xml-declaration=\"yes\" />\r\n\r\n	<xsl:template match=\"media\">\r\n\r\n		<img src=\"{src}\" alt=\"{alt}\" title=\"{title}\" height=\"{height}\" width=\"{width}\"/>\r\n\r\n	</xsl:template>\r\n\r\n</xsl:stylesheet>',0),(3,'PDF','Insertion de lien vers un document PDF','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:output method=\"xml\" indent=\"false\" omit-xml-declaration=\"yes\" />\r\n\r\n	<xsl:template match=\"media\">\r\n			<a href=\"{src}\"><xsl:value-of select=\"title\" /></a>\r\n	</xsl:template>\r\n\r\n</xsl:stylesheet>',0),(4,'Vidéo','Insertion de lien vers un document vidéo','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:output method=\"xml\" indent=\"false\" omit-xml-declaration=\"yes\" />\r\n\r\n	<xsl:template match=\"media\">\r\n			<a href=\"{src}\"><xsl:value-of select=\"title\" /></a>\r\n	</xsl:template>\r\n\r\n</xsl:stylesheet>',0),(5,'Enregistrement sonore','Insertion de lien vers un enregistrement sonore','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:output method=\"xml\" indent=\"false\" omit-xml-declaration=\"yes\" />\r\n\r\n	<xsl:template match=\"media\">\r\n			<a href=\"{src}\"><xsl:value-of select=\"title\" /></a>\r\n	</xsl:template>\r\n\r\n</xsl:stylesheet>',0),(6,'Flash','Insertion de documents Flash','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:output method=\"xml\" indent=\"false\" omit-xml-declaration=\"yes\" />\r\n\r\n	<xsl:template match=\"media\">\r\n		<object \r\n			data=\"{src}\" \r\n			type=\"application/x-shockwave-flash\" \r\n			width=\"{width}\" \r\n			height=\"{height}\"\r\n			align=\"{align}\"\r\n			classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\"\r\n			codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0\"\r\n		>\r\n			<param name=\"Autostart\" value=\"{autostart}\" />\r\n			<param name=\"Quality\" value=\"{quality}\" />\r\n			<param name=\"Loop\" value=\"{loop}\" />\r\n			<param name=\"menu\" value=\"{menu}\" />\r\n			<param name=\"allowScriptAccess\" value=\"samedomain\" />\r\n			<param name=\"movie\" value=\"{src}\" />\r\n			<EMBED \r\n				src=\"{src}\" \r\n				type=\"application/x-shockwave-flash\"\r\n				width=\"{width}\" \r\n				height=\"{height}\"\r\n				align=\"{align}\"\r\n				quality=\"{quality}\"\r\n				loop=\"{loop}\"\r\n				menu=\"{menu}\"\r\n				allowScriptAccess=\"samedomain\"\r\n				pluginspace=\"http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash\">\r\n			</EMBED>\r\n		</object>\r\n	</xsl:template>\r\n\r\n</xsl:stylesheet>',0),(7,'carousel','Insertion d\'un carousel d\'images','<?xml version=\"1.0\"?>\r\n<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	<xsl:output method=\"xml\" indent=\"false\" omit-xml-declaration=\"yes\" />\r\n	\r\n	<xsl:template match=\"mediaList\">\r\n		<div id=\"myCarousel\" class=\"carousel slide\" data-ride=\"carousel\" >\r\n			<div class=\"carousel-inner\">\r\n				<xsl:apply-templates select=\"media\" />\r\n			</div>\r\n			<a class=\"left carousel-control\" href=\"#myCarousel\" data-slide=\"prev\">\r\n				<span class=\"glyphicon glyphicon-chevron-left\"></span>\r\n			</a>\r\n			<a class=\"right carousel-control\" href=\"#myCarousel\" data-slide=\"next\">\r\n				<span class=\"glyphicon glyphicon-chevron-right\"></span>\r\n			</a>\r\n		</div>\r\n	</xsl:template>\r\n\r\n	<xsl:template match=\"media\">\r\n		<xsl:choose>\r\n			<xsl:when test=\"position() = 1\">\r\n				<div class=\"active item\">\r\n				<img src=\"{src}\" alt=\"{alt}\" height=\"{height}\" width=\"{width}\"/>\r\n					<div class=\"carousel-caption\">\r\n						<p>\r\n							<xsl:value-of select=\'alt\'/>\r\n						</p>\r\n					</div>\r\n				</div>\r\n			</xsl:when>\r\n			<xsl:otherwise>\r\n				<div class=\"item\">\r\n					<img src=\"{src}\" alt=\"{alt}\" height=\"{height}\" width=\"{width}\"/>\r\n					<div class=\"carousel-caption\">\r\n						<p>\r\n							<xsl:value-of select=\'alt\'/>\r\n						</p>\r\n					</div>\r\n				</div>\r\n			</xsl:otherwise>\r\n		</xsl:choose>\r\n	</xsl:template>\r\n\r\n</xsl:stylesheet>',1);
/*!40000 ALTER TABLE `library_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_media_attribute`
--

DROP TABLE IF EXISTS `library_media_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `library_media_attribute` (
  `id_attribute` int(11) NOT NULL DEFAULT '0',
  `id_media` int(11) NOT NULL DEFAULT '0',
  `code` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` smallint(6) NOT NULL DEFAULT '0',
  `DEFAULT_value` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_attribute`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_media_attribute`
--

LOCK TABLES `library_media_attribute` WRITE;
/*!40000 ALTER TABLE `library_media_attribute` DISABLE KEYS */;
INSERT INTO `library_media_attribute` VALUES (1,1,'src','Source de l\'image binaire',2,''),(2,1,'alt','Element alt',1,''),(3,1,'height','Valeur de la hauteur de l\'image',0,'50'),(4,1,'width','Valeur de la largeur de l\'image',0,'50'),(5,2,'src','Source bianire de l\'image',2,''),(6,2,'alt','Attribut alt',1,''),(7,2,'title','Attribut title',1,''),(8,2,'width','Largeur de la bannière',0,'680'),(9,2,'height','Hauteur de la bannière',0,'152'),(10,3,'src','Source du document PDF',2,''),(11,3,'title','Titre du lien',3,''),(12,4,'src','Source du document vidéo',2,''),(13,4,'title','Titre du lien',3,''),(14,5,'src','Source du document sonore',2,''),(15,5,'title','Titre du lien',3,''),(16,6,'src','Object',2,''),(17,6,'width','Largeur',1,''),(18,6,'height','Hauteur',1,''),(19,6,'autostart','Démarrage automatique de l\'animation',1,''),(20,6,'quality','Qualité de l\'animation',1,''),(21,6,'loop','Jouer en boucle l\'animation',1,''),(22,6,'align','Alignement de l\'animation',1,''),(23,6,'menu','Affichage du menu',1,''),(24,7,'src','Source',2,''),(25,7,'alt','Titre de l\'image',3,''),(26,7,'width','Largeur de l\'image',0,'750'),(27,7,'height','Hauteur de l\'image',0,'');
/*!40000 ALTER TABLE `library_media_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linkpages_portlet`
--

DROP TABLE IF EXISTS `linkpages_portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linkpages_portlet` (
  `id_portlet` int(11) NOT NULL DEFAULT '0',
  `id_linkpage` int(11) NOT NULL DEFAULT '0',
  `linkpage_order` int(11) DEFAULT '0',
  PRIMARY KEY (`id_portlet`,`id_linkpage`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linkpages_portlet`
--

LOCK TABLES `linkpages_portlet` WRITE;
/*!40000 ALTER TABLE `linkpages_portlet` DISABLE KEYS */;
/*!40000 ALTER TABLE `linkpages_portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_attribute`
--

DROP TABLE IF EXISTS `mylutece_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_attribute` (
  `id_attribute` int(11) NOT NULL DEFAULT '0',
  `type_class_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` mediumtext COLLATE utf8_unicode_ci,
  `help_message` mediumtext COLLATE utf8_unicode_ci,
  `is_mandatory` smallint(6) DEFAULT '0',
  `is_shown_in_search` smallint(6) DEFAULT '0',
  `attribute_position` int(11) DEFAULT '0',
  `plugin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anonymize` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_attribute`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_attribute`
--

LOCK TABLES `mylutece_attribute` WRITE;
/*!40000 ALTER TABLE `mylutece_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_attribute_field`
--

DROP TABLE IF EXISTS `mylutece_attribute_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_attribute_field` (
  `id_field` int(11) NOT NULL DEFAULT '0',
  `id_attribute` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEFAULT_value` mediumtext COLLATE utf8_unicode_ci,
  `is_DEFAULT_value` smallint(6) DEFAULT '0',
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `max_size_enter` int(11) DEFAULT NULL,
  `is_multiple` smallint(6) DEFAULT '0',
  `field_position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_field`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_attribute_field`
--

LOCK TABLES `mylutece_attribute_field` WRITE;
/*!40000 ALTER TABLE `mylutece_attribute_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_attribute_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_connections_log`
--

DROP TABLE IF EXISTS `mylutece_connections_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_connections_log` (
  `ip_address` varchar(63) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `login_status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_connections_log`
--

LOCK TABLES `mylutece_connections_log` WRITE;
/*!40000 ALTER TABLE `mylutece_connections_log` DISABLE KEYS */;
INSERT INTO `mylutece_connections_log` VALUES ('91.213.15.225','2015-06-18 15:44:50',0),('91.213.15.225','2015-06-18 16:54:20',0),('91.213.15.225','2015-06-18 16:54:22',0),('91.213.15.225','2015-06-18 16:54:23',0),('91.213.15.225','2015-06-18 16:55:40',0),('91.213.15.225','2015-06-18 16:55:56',0),('91.213.15.225','2015-06-18 16:56:09',0);
/*!40000 ALTER TABLE `mylutece_connections_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_database_group`
--

DROP TABLE IF EXISTS `mylutece_database_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_database_group` (
  `group_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `group_description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`group_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_database_group`
--

LOCK TABLES `mylutece_database_group` WRITE;
/*!40000 ALTER TABLE `mylutece_database_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_database_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_database_group_role`
--

DROP TABLE IF EXISTS `mylutece_database_group_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_database_group_role` (
  `group_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `role_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_key`,`role_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_database_group_role`
--

LOCK TABLES `mylutece_database_group_role` WRITE;
/*!40000 ALTER TABLE `mylutece_database_group_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_database_group_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_database_key`
--

DROP TABLE IF EXISTS `mylutece_database_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_database_key` (
  `mylutece_database_user_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mylutece_database_user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mylutece_database_user_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_database_key`
--

LOCK TABLES `mylutece_database_key` WRITE;
/*!40000 ALTER TABLE `mylutece_database_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_database_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_database_user`
--

DROP TABLE IF EXISTS `mylutece_database_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_database_user` (
  `mylutece_database_user_id` int(11) NOT NULL,
  `login` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name_given` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name_family` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` smallint(6) NOT NULL DEFAULT '0',
  `reset_password` smallint(6) NOT NULL DEFAULT '0',
  `password_max_valid_date` timestamp NULL DEFAULT NULL,
  `account_max_valid_date` bigint(20) DEFAULT NULL,
  `nb_alerts_sent` int(11) NOT NULL DEFAULT '0',
  `last_login` timestamp NOT NULL DEFAULT '1979-12-31 23:00:00',
  PRIMARY KEY (`mylutece_database_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_database_user`
--

LOCK TABLES `mylutece_database_user` WRITE;
/*!40000 ALTER TABLE `mylutece_database_user` DISABLE KEYS */;
INSERT INTO `mylutece_database_user` VALUES (1,'palyma@palyma.fr','palyma@palyma.fr','Guillaume','DUPOND','palyma@palyma.fr',1,0,NULL,1465750275346,0,'2015-06-18 16:45:57'),(2,'rafiik','rafik@gmail.com','rafik','yahiaoui','rafik@gmail.com',1,0,NULL,1465750506961,0,'1979-12-31 23:00:00');
/*!40000 ALTER TABLE `mylutece_database_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_database_user_group`
--

DROP TABLE IF EXISTS `mylutece_database_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_database_user_group` (
  `mylutece_database_user_id` int(11) NOT NULL DEFAULT '0',
  `group_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`mylutece_database_user_id`,`group_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_database_user_group`
--

LOCK TABLES `mylutece_database_user_group` WRITE;
/*!40000 ALTER TABLE `mylutece_database_user_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_database_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_database_user_parameter`
--

DROP TABLE IF EXISTS `mylutece_database_user_parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_database_user_parameter` (
  `parameter_key` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parameter_value` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parameter_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_database_user_parameter`
--

LOCK TABLES `mylutece_database_user_parameter` WRITE;
/*!40000 ALTER TABLE `mylutece_database_user_parameter` DISABLE KEYS */;
INSERT INTO `mylutece_database_user_parameter` VALUES ('enable_password_encryption','false'),('encryption_algorithm',''),('account_creation_validation_email','false'),('auto_login_after_validation_email','false'),('enable_jcaptcha','false'),('force_change_password_reinit',''),('password_minimum_length','8'),('password_format_upper_lower_case','false'),('password_format_numero','false'),('password_format_special_characters','false'),('password_duration',''),('password_history_size',''),('maximum_number_password_change',''),('tsw_size_password_change',''),('use_advanced_security_parameters','false'),('account_life_time','360'),('time_before_alert_account','30'),('nb_alert_account','2'),('time_between_alerts_account','10'),('access_failures_max','3'),('access_failures_interval','10'),('expired_alert_mail_sender','LUTECE'),('expired_alert_mail_subject','Votre compte a expiré'),('first_alert_mail_sender','LUTECE'),('first_alert_mail_subject','Votre compte va bientot expirer'),('other_alert_mail_sender','LUTECE'),('other_alert_mail_subject','Votre compte va bientot expirer'),('account_reactivated_mail_sender','LUTECE'),('account_reactivated_mail_subject','Votre compte a bien été réactivé'),('access_failures_captcha','1'),('unblock_user_mail_sender','LUTECE'),('unblock_user_mail_subject','Votre IP a été bloquée'),('enable_unblock_ip','false'),('notify_user_password_expired',''),('password_expired_mail_sender','LUTECE'),('password_expired_mail_subject','Votre mot de passe a expiré'),('mail_lost_password_sender','LUTECE'),('mail_lost_password_subject','Votre mot de passe a été réinitialisé'),('mail_password_encryption_changed_sender','LUTECE'),('mail_password_encryption_changed_subject','Votre mot de passe a été réinitialisé');
/*!40000 ALTER TABLE `mylutece_database_user_parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_database_user_password_history`
--

DROP TABLE IF EXISTS `mylutece_database_user_password_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_database_user_password_history` (
  `mylutece_database_user_id` int(11) NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_password_change` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mylutece_database_user_id`,`date_password_change`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_database_user_password_history`
--

LOCK TABLES `mylutece_database_user_password_history` WRITE;
/*!40000 ALTER TABLE `mylutece_database_user_password_history` DISABLE KEYS */;
INSERT INTO `mylutece_database_user_password_history` VALUES (1,'palyma@palyma.fr','2015-06-18 15:44:30'),(2,'rafik@gmail.com','2015-06-18 16:55:06');
/*!40000 ALTER TABLE `mylutece_database_user_password_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_database_user_role`
--

DROP TABLE IF EXISTS `mylutece_database_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_database_user_role` (
  `mylutece_database_user_id` int(11) NOT NULL DEFAULT '0',
  `role_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`mylutece_database_user_id`,`role_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_database_user_role`
--

LOCK TABLES `mylutece_database_user_role` WRITE;
/*!40000 ALTER TABLE `mylutece_database_user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_database_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_user_anonymize_field`
--

DROP TABLE IF EXISTS `mylutece_user_anonymize_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_user_anonymize_field` (
  `field_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `anonymize` smallint(6) NOT NULL,
  PRIMARY KEY (`field_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_user_anonymize_field`
--

LOCK TABLES `mylutece_user_anonymize_field` WRITE;
/*!40000 ALTER TABLE `mylutece_user_anonymize_field` DISABLE KEYS */;
INSERT INTO `mylutece_user_anonymize_field` VALUES ('login',1),('name_given',1),('name_family',1),('email',1);
/*!40000 ALTER TABLE `mylutece_user_anonymize_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylutece_user_field`
--

DROP TABLE IF EXISTS `mylutece_user_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylutece_user_field` (
  `id_user_field` int(11) NOT NULL DEFAULT '0',
  `id_user` int(11) DEFAULT NULL,
  `id_attribute` int(11) DEFAULT NULL,
  `id_field` int(11) DEFAULT NULL,
  `user_field_value` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id_user_field`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylutece_user_field`
--

LOCK TABLES `mylutece_user_field` WRITE;
/*!40000 ALTER TABLE `mylutece_user_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `mylutece_user_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo_friendly_url`
--

DROP TABLE IF EXISTS `seo_friendly_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seo_friendly_url` (
  `id_url` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `technical_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date_creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modification` timestamp NOT NULL DEFAULT '2012-10-09 22:00:00',
  `is_canonical` int(11) NOT NULL DEFAULT '0',
  `is_sitemap` int(11) NOT NULL DEFAULT '0',
  `sitemap_lastmod` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `sitemap_changefreq` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `sitemap_priority` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`id_url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo_friendly_url`
--

LOCK TABLES `seo_friendly_url` WRITE;
/*!40000 ALTER TABLE `seo_friendly_url` DISABLE KEYS */;
INSERT INTO `seo_friendly_url` VALUES (1,'/sitemap.html','/jsp/site/Portal.jsp?page=map','2015-06-17 16:19:51','2012-10-09 22:00:00',1,1,'2012-10-10','monthly','0.8'),(2,'/contacts.html','/jsp/site/Portal.jsp?page=contact','2015-06-17 16:19:51','2012-10-09 22:00:00',1,1,'2012-10-10','monthly','0.8'),(3,'/credits.html','/jsp/site/PopupCredits.jsp','2015-06-17 16:19:51','2012-10-09 22:00:00',1,1,'2012-10-10','monthly','0.8'),(4,'/home.html','/jsp/site/Portal.jsp?page_id=1','2015-06-17 16:22:31','2012-10-09 22:00:00',1,1,'2014-06-08','weekly','0.7'),(5,'/page-1.html','/jsp/site/Portal.jsp?page_id=2','2015-06-17 16:22:31','2012-10-09 22:00:00',1,1,'2014-06-08','weekly','0.7'),(6,'/quotient-familial.html','/jsp/site/plugins/crm/DoOpenDemandType.jsp?id_demand_type=2','2015-06-18 15:49:04','2012-10-09 22:00:00',1,1,'2015-06-18','weekly','0.7'),(7,'/stationnement.html','/jsp/site/plugins/crm/DoOpenDemandType.jsp?id_demand_type=1','2015-06-18 15:49:04','2012-10-09 22:00:00',1,1,'2015-06-18','weekly','0.7');
/*!40000 ALTER TABLE `seo_friendly_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo_properties`
--

DROP TABLE IF EXISTS `seo_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seo_properties` (
  `property_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `property_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`property_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo_properties`
--

LOCK TABLES `seo_properties` WRITE;
/*!40000 ALTER TABLE `seo_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `seo_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo_rule`
--

DROP TABLE IF EXISTS `seo_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seo_rule` (
  `id_rule` int(11) NOT NULL DEFAULT '0',
  `rule_from` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rule_to` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_rule`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo_rule`
--

LOCK TABLES `seo_rule` WRITE;
/*!40000 ALTER TABLE `seo_rule` DISABLE KEYS */;
INSERT INTO `seo_rule` VALUES (1,'/page/([0-9]+)','/jsp/site/Portal.jsp?page_id=$1'),(2,'/app/([a-z]+)','/jsp/site/Portal.jsp?page=$1'),(3,'/map','/jsp/site/Portal.jsp?page=map');
/*!40000 ALTER TABLE `seo_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_archive_cf`
--

DROP TABLE IF EXISTS `task_archive_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_archive_cf` (
  `id_task` int(11) NOT NULL DEFAULT '0',
  `id_directory` int(11) DEFAULT NULL,
  `id_entry_directory` int(11) DEFAULT NULL,
  `id_pdfproducer_config` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_archive_cf`
--

LOCK TABLES `task_archive_cf` WRITE;
/*!40000 ALTER TABLE `task_archive_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_archive_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_create_pdf_cf`
--

DROP TABLE IF EXISTS `task_create_pdf_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_create_pdf_cf` (
  `id_task` int(11) NOT NULL DEFAULT '0',
  `id_directory` int(11) DEFAULT NULL,
  `id_entry_url_pdf` int(11) DEFAULT NULL,
  `id_config` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_create_pdf_cf`
--

LOCK TABLES `task_create_pdf_cf` WRITE;
/*!40000 ALTER TABLE `task_create_pdf_cf` DISABLE KEYS */;
INSERT INTO `task_create_pdf_cf` VALUES (125,5,27,2),(127,4,28,3);
/*!40000 ALTER TABLE `task_create_pdf_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_export_file_cf`
--

DROP TABLE IF EXISTS `task_export_file_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_export_file_cf` (
  `id_task` int(11) NOT NULL DEFAULT '0',
  `id_directory` int(11) DEFAULT NULL,
  `filepath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id_task`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_export_file_cf`
--

LOCK TABLES `task_export_file_cf` WRITE;
/*!40000 ALTER TABLE `task_export_file_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_export_file_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_notify_crm_cf`
--

DROP TABLE IF EXISTS `task_notify_crm_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_notify_crm_cf` (
  `id_task` int(11) NOT NULL DEFAULT '0',
  `id_directory` int(11) DEFAULT NULL,
  `position_directory_entry_id_demand` int(11) DEFAULT NULL,
  `position_directory_entry_user_guid` int(11) DEFAULT NULL,
  `send_notification` smallint(6) NOT NULL DEFAULT '1',
  `sender_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` mediumtext COLLATE utf8_unicode_ci,
  `status_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `position_directory_entry_crm_web_app_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_task`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_notify_crm_cf`
--

LOCK TABLES `task_notify_crm_cf` WRITE;
/*!40000 ALTER TABLE `task_notify_crm_cf` DISABLE KEYS */;
INSERT INTO `task_notify_crm_cf` VALUES (126,5,13,0,1,'PALYMA','Votre demande de carte de stationnement','<p>Bonjour&nbsp;${position_2}&nbsp;${position_4} ${position_3},</p>\r\n<p>&nbsp;</p>\r\n<p>Votre demande de stationnement n&deg;&nbsp;${position_1}, concernant le v&eacute;hicule&nbsp;${position_8}&nbsp;${position_10}&nbsp;${position_11},</p>\r\n<p>associ&eacute; &agrave; l\'adresse&nbsp;${position_5}&nbsp;${position_6}&nbsp;${position_7} est bien parvenue aux services de la Voirie de la mairie de Palyma.</p>\r\n<p>&nbsp;</p>\r\n<p>Vous pouvez t&eacute;l&eacute;charger <a href=\"${position_15}\">ici</a> le r&eacute;capitulatif de votre demande</p>\r\n<p>&nbsp;</p>','Demande en cours','-1'),(128,4,9,0,1,'PALYMA','Votre demande de quotient familial','<p>Bonjour&nbsp;${position_2}&nbsp;${position_5} ${position_3} dit ${position_4},</p>\r\n<p>&nbsp;</p>\r\n<p>Votre demande de quotient familal&nbsp;n&deg;&nbsp;${position_1}, bas&eacute; sur les &eacute;l&eacute;ments suivants :</p>\r\n<p>&nbsp; - Num&eacute;ro fiscal de r&eacute;f&eacute;rence :&nbsp;${position_7}</p>\r\n<p>&nbsp; - Nombre de parts :&nbsp;${position_8}</p>\r\n<p>Est bien parvenu aux services concern&eacute;s de la mairie dePalyma.</p>\r\n<p>&nbsp;Vous pouvez t&eacute;l&eacute;charger <a href=\"${position_11}\">ici</a> le r&eacute;capitulatif de votre demande</p>\r\n<p>&nbsp;</p>','Demande en cours','-1');
/*!40000 ALTER TABLE `task_notify_crm_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_notify_directory_cf`
--

DROP TABLE IF EXISTS `task_notify_directory_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_notify_directory_cf` (
  `id_task` int(11) NOT NULL DEFAULT '0',
  `id_directory` int(11) DEFAULT NULL,
  `position_directory_entry_email` int(11) DEFAULT '-1',
  `position_directory_entry_sms` int(11) DEFAULT '-1',
  `position_directory_entry_user_guid` int(11) DEFAULT '-1',
  `sender_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` mediumtext COLLATE utf8_unicode_ci,
  `is_notify_by_email` smallint(6) NOT NULL DEFAULT '0',
  `is_notify_by_sms` smallint(6) NOT NULL DEFAULT '0',
  `is_notify_by_mailing_list` smallint(6) NOT NULL DEFAULT '0',
  `is_notify_by_user_guid` smallint(6) NOT NULL DEFAULT '0',
  `is_email_validation` smallint(6) NOT NULL DEFAULT '0',
  `id_state_after_validation` int(11) DEFAULT NULL,
  `label_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_validation` mediumtext COLLATE utf8_unicode_ci,
  `period_validity` int(11) DEFAULT NULL,
  `recipients_cc` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recipients_bcc` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_mailing_list` int(11) DEFAULT NULL,
  `is_view_record` smallint(6) NOT NULL DEFAULT '0',
  `label_link_view_record` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_notify_directory_cf`
--

LOCK TABLES `task_notify_directory_cf` WRITE;
/*!40000 ALTER TABLE `task_notify_directory_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_notify_directory_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_notify_directory_ef`
--

DROP TABLE IF EXISTS `task_notify_directory_ef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_notify_directory_ef` (
  `id_task` int(11) NOT NULL DEFAULT '0',
  `position_directory_entry_file` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_task`,`position_directory_entry_file`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_notify_directory_ef`
--

LOCK TABLES `task_notify_directory_ef` WRITE;
/*!40000 ALTER TABLE `task_notify_directory_ef` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_notify_directory_ef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_notify_directory_key`
--

DROP TABLE IF EXISTS `task_notify_directory_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_notify_directory_key` (
  `key_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_task` int(11) DEFAULT NULL,
  `id_resource` int(11) DEFAULT NULL,
  `resource_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_expiry` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`key_email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_notify_directory_key`
--

LOCK TABLES `task_notify_directory_key` WRITE;
/*!40000 ALTER TABLE `task_notify_directory_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_notify_directory_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_action`
--

DROP TABLE IF EXISTS `workflow_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_action` (
  `id_action` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `id_workflow` int(11) DEFAULT NULL,
  `id_state_before` int(11) DEFAULT NULL,
  `id_state_after` int(11) DEFAULT NULL,
  `id_icon` int(11) DEFAULT NULL,
  `is_automatic` smallint(6) DEFAULT '0',
  `is_mass_action` smallint(6) DEFAULT '0',
  `display_order` int(11) DEFAULT '0',
  `is_automatic_reflexive_action` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id_action`),
  KEY `action_id_workflow_fk` (`id_workflow`),
  KEY `action_id_state_before_fk` (`id_state_before`),
  KEY `action_id_state_after_fk` (`id_state_after`),
  KEY `action_id_icon_fk` (`id_icon`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_action`
--

LOCK TABLES `workflow_action` WRITE;
/*!40000 ALTER TABLE `workflow_action` DISABLE KEYS */;
INSERT INTO `workflow_action` VALUES (101,'Valider','Valider',101,101,102,1,0,0,1,0),(102,'Annuler par un administrateur','Annuler par un administrateur',101,102,103,2,0,0,2,0),(103,'Annuler par l\'utilisateur','Annuler par l\'utilisateur',101,101,103,2,0,0,3,0),(104,'Action d\'arrivé sur l\'etat Non validé','',101,101,101,1,0,0,0,1),(105,'Annuler par un administrateur','Annuler par un administrateur',101,101,103,2,0,0,4,0),(106,'Annuler par l\'utilisateur','Annuler par l\'utilisateur',101,102,103,2,0,0,5,0),(107,'Associer à un administrateur','Associer à un administrateur',101,102,102,3,0,0,6,0),(108,'Notifier et valider','Notifier et valider',102,104,105,1,1,0,1,0),(109,'Notifier et valider','Notifier et valider',103,106,107,1,1,0,1,0);
/*!40000 ALTER TABLE `workflow_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_action_action`
--

DROP TABLE IF EXISTS `workflow_action_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_action_action` (
  `id_action` int(11) NOT NULL DEFAULT '0',
  `id_linked_action` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_action`,`id_linked_action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_action_action`
--

LOCK TABLES `workflow_action_action` WRITE;
/*!40000 ALTER TABLE `workflow_action_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_action_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_assignment_history`
--

DROP TABLE IF EXISTS `workflow_assignment_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_assignment_history` (
  `id_history` int(11) NOT NULL DEFAULT '0',
  `id_task` int(11) NOT NULL DEFAULT '0',
  `workgroup_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_history`,`id_task`,`workgroup_key`),
  KEY `assignment_id_history_fk` (`id_history`),
  KEY `assignment_id_task_fk` (`id_task`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_assignment_history`
--

LOCK TABLES `workflow_assignment_history` WRITE;
/*!40000 ALTER TABLE `workflow_assignment_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_assignment_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_icon`
--

DROP TABLE IF EXISTS `workflow_icon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_icon` (
  `id_icon` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_value` mediumblob,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_icon`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_icon`
--

LOCK TABLES `workflow_icon` WRITE;
/*!40000 ALTER TABLE `workflow_icon` DISABLE KEYS */;
INSERT INTO `workflow_icon` VALUES (1,'Valider','image/png','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0\0\0\0\0ש��\0\0�PLTE�����������������������������������Ӳ�۳�������Ώ��w��c��}}}O~�Gq�NNN\r�����������������������������������������������������������������ʺ�������ï�ϭ�ة�֤�գ�Դ����������������ǧ����ɋ�ɣ�����������}���z��x��v�����r�����f��b��_��]�����Y��X��W��U��T��yyywwwuuuN}�sssLy�nnnIt�Hs�Gr�[htGl�Bj�Bi�___@f�]^^=b�<`�VY[<_~PZ`VVV5VtOOOKOR3Rn3Qk2Qm@LT:M^HHH<AC<?A)AX<<<1>I(=Q&<Q$:O\'9J&9I$7I,5;-01!2B&08,,,-=+:\'\'\'#(,%%%$$$(	�S%\0\0\0tRNS\0@��f\0\0\0�IDATx�c`���Ffl�\\bb\Z�X$ll�Kx90�\r�E�������)�U�/�f��Ue⑺�\Z��u�;yY�|V&�\Z�S?�Xu�7ؒ��Y�6����Z��5pV��;�10����r#�fv��c�r�Μ�Ɖd�t��g�OtOX{��J\05\n����L\nTFq+Kz����}Tm��[BBE�%R5т�ɮN$&�R�I��2i	�z,���U�!颈%�ٛ\'Gp�`�:%v5Vi���\0\0�K+�; ��\0\0\0\0IEND�B`�',14,14),(2,'Refuser','image/png','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0\0\0\0\0ש��\0\0CPLTE�������������L6���������������������;\"�:\"�����������������Ǵ��;�����������������������ž���������������xhqqq�N7�M7�M6mmm�;\"�;\"�;\"___�;\"�;\"�;\"�;$�9\"\\\\\\�8!WWWTTT�.NL<--������������������������������������������������������������������������ݍ}�������������p�������������p[�o[�ra�ra����m[�n^�������fS�cN�_I~~~zzz�cTxxxvvv�VA�R:ttt�[Jrrrnnn�M6llljjj�F/�A)ccc�F2�?\'�?(�=%�;\"�>\'�<$�=&�:\"�:#�9\"�9\"�7 �6 �:&�5!QQQ�1�1�/�0�/�/�,�&�&>>>P3.;86e$F/*\\%50.W!B 9\";\Z&&&<N\rI$$$3A7\Z5.- ,.107%\Z&\Z/$(\n\"\r#%\n,!			V�o\0\0\0tRNS\0@��f\0\0sIDATx�c`�.��fc�q��1s�k��A؁K�qA��f�d��r0پkS�7K�1�%�e�Y�\nq00�.��4���\r��<�ESK}F�8��x�I�T�����YxxXf�lIn���L�jW�5����讜��;���`Nd��b��7,*��W� ��\nw/+{�%/�j붩����H^��6Z����kl�!i��w&�\r�5M��zmV�ܜH>��k\'l-��n��fGؑ�P٠ww��(��-k��ʛ��l�\'[�[e���f�j.�?��%���(W�b�0�P��X%\"������d�Y�$L�U�V	A�b�[�]\'��h\'��Ίu���PK��Ed�����Uv��#���=��l�nN6H��c3�q��K\071P����\0\0\0\0IEND�B`�',14,14),(3,'Commentaire','image/png','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0 \0\0\0 \0\0\0szz�\0\0\0gAMA\0\0�ܲ�\0\0xIDATx�ŖMl����e��͇��\rd��4��!(@�\"N8J�{�máj�H��Q��R7�j�*=��*U����\n@|�@L�l�ކuL$\'1��g<��3�>=�D٬�v�~���4���y�y��\0�g	�nܿ��ӧO�<�˲��4-��\0+�x�ԩ����߬����۷�x<�M$����	���H$�m:�~�]\0��s��ի�w:�wuu���vlA�$I���rH&���x��KKKQƘV�l\"�$I\\ ���~Y	`���l��T(H7ʛ&es9�f����(��S�P�J511�Ȱ��ܹs�޵kW��H�2�dln��	N�@�������e�q0Ms���j\r�B!�\\	x�GN�����Lb~dz>��\Z �q�Z�1�ܹ�vhh�����v��������Y\n��P]Ws|ZK,}}\0c�\\aQq�p8�]$Y�=:244t�ƍI$Y������\0����,X\Z\Z�:0\0�iª� ���}�Ń[,��ᘮ�	�ҥKWc����ŋ�utt�����������?-,,�cE?���8���4��\n\0����\0Y ��`0����=�g��޽{�aؚ��ۈ�����n��^Vd3�<���%	*��\r	�\0UU166v+�=\0茱��O��N�R����]�������߽{W�o�>���=��$a��/P�N���x�ZY+]�$!�Hеk�FE�f=�<�^�z�*\nٝN�ޞ�����nW>��(��$���_ce~m�ðUU��v���`0�\Z�3���\Z�\0�g�<y�X,����x<��(H�*ҙҟ|���|�������(�ٳg�����\0d�^\"�R%899�e�������x��p���?��Q]U\"�V��\0/_�\\�}���\0�X�u��w���R�e<�]��n�E�qx�/[��׵�}K9a���K����z����F4\Z���0�ZP���Yo]��y��Ȯ�.� �z���l�������Z����\'�r�`h͖7�\nSL�\0D�߿o�দ&:t������@(���\08\0��2,R�l6[�����T*EDD�a�a�(\n]�|�DQ�;vБ#G�֭[DDd�&i�F��Q>����/[UURU�2�ݼy3\0��$@ggg���K&��0M����ݻG�w�&\0���JW�\\!UUI�u�4m#�:@&�!EQ�������\0Ԕ8{��o��,-//`3ě7ohpp�\0���L&C����UU�دi\Z��I�?�ZZZ�\0��HΟ?�����s��v;\0������p��I�|>���B�$477�j��1�0 �\"�\0c�@�8s��W�D�\0JΏ��N���Q�4����ڣG��Ν;�)��S*�\"EQ(�JQ8����Y\0{�i^�1p��Z���~��1��	��q��ፎ \"躎l6���9H��0\0����J�\'� kjj���ŋ�rC&c�L�$]��0\"\"Z]]�h4J<�H$BDDǎ���@?��4$�ɕB��i9���k�&��4^�~�t:������@�e�F�* \0��.��n���b>�� Q����k�nwC{{{CgggM__�V+\0`qq�x<>_)��އB�?�i��7@�Z��?r�\\n�����|�����X,�����O��%\0�\0�\0��h�0@�o�z�*����M]<6�H \0\0\0\0IEND�B`�',14,14);
/*!40000 ALTER TABLE `workflow_icon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_prerequisite`
--

DROP TABLE IF EXISTS `workflow_prerequisite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_prerequisite` (
  `id_prerequisite` int(11) NOT NULL,
  `id_action` int(11) NOT NULL,
  `prerequisite_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_prerequisite`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_prerequisite`
--

LOCK TABLES `workflow_prerequisite` WRITE;
/*!40000 ALTER TABLE `workflow_prerequisite` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_prerequisite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_resource_history`
--

DROP TABLE IF EXISTS `workflow_resource_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_resource_history` (
  `id_history` int(11) NOT NULL DEFAULT '0',
  `id_resource` int(11) DEFAULT NULL,
  `resource_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_workflow` int(11) DEFAULT NULL,
  `id_action` int(11) DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_access_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_history`),
  KEY `history_id_workflow_fk` (`id_workflow`),
  KEY `history_id_action_fk` (`id_action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_resource_history`
--

LOCK TABLES `workflow_resource_history` WRITE;
/*!40000 ALTER TABLE `workflow_resource_history` DISABLE KEYS */;
INSERT INTO `workflow_resource_history` VALUES (1,2,'DIRECTORY_RECORD',102,108,'2015-06-17 16:47:47','auto'),(2,1,'DIRECTORY_RECORD',102,108,'2015-06-18 09:15:50','auto'),(3,1,'DIRECTORY_RECORD',102,108,'2015-06-18 09:25:26','auto'),(4,1,'DIRECTORY_RECORD',102,108,'2015-06-18 09:31:11','auto'),(5,1,'DIRECTORY_RECORD',102,108,'2015-06-18 10:04:59','auto'),(6,1,'DIRECTORY_RECORD',102,108,'2015-06-18 10:16:51','auto'),(7,3,'DIRECTORY_RECORD',103,109,'2015-06-18 15:56:14','auto'),(8,4,'DIRECTORY_RECORD',103,109,'2015-06-18 16:11:43','auto'),(9,5,'DIRECTORY_RECORD',103,109,'2015-06-18 16:17:45','auto'),(10,6,'DIRECTORY_RECORD',103,109,'2015-06-18 16:46:59','auto');
/*!40000 ALTER TABLE `workflow_resource_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_resource_workflow`
--

DROP TABLE IF EXISTS `workflow_resource_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_resource_workflow` (
  `id_resource` int(11) NOT NULL DEFAULT '0',
  `resource_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_state` int(11) DEFAULT NULL,
  `id_workflow` int(11) NOT NULL DEFAULT '0',
  `id_external_parent` int(11) DEFAULT NULL,
  `is_associated_workgroups` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id_resource`,`resource_type`,`id_workflow`),
  KEY `workflow_resource_workflow_id_resource_fk` (`id_resource`),
  KEY `workflow_resource_workflow_resource_type_fk` (`resource_type`),
  KEY `workflow_resource_workflow_id_workflow_fk` (`id_workflow`),
  KEY `fk_document_id_state` (`id_state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_resource_workflow`
--

LOCK TABLES `workflow_resource_workflow` WRITE;
/*!40000 ALTER TABLE `workflow_resource_workflow` DISABLE KEYS */;
INSERT INTO `workflow_resource_workflow` VALUES (1,'DIRECTORY_RECORD',105,102,3,0),(2,'DIRECTORY_RECORD',105,102,3,0),(4,'DIRECTORY_RECORD',107,103,4,0),(3,'DIRECTORY_RECORD',107,103,4,0),(5,'DIRECTORY_RECORD',107,103,4,0),(6,'DIRECTORY_RECORD',107,103,4,0);
/*!40000 ALTER TABLE `workflow_resource_workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_resource_workgroup`
--

DROP TABLE IF EXISTS `workflow_resource_workgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_resource_workgroup` (
  `id_resource` int(11) NOT NULL DEFAULT '0',
  `resource_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_workflow` int(11) DEFAULT NULL,
  `workgroup_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `workflow_resource_workgroup_id_resource_fk` (`id_resource`),
  KEY `workflow_resource_workgroup_resource_type_fk` (`resource_type`),
  KEY `workflow_resource_workgroup_id_workflow_fk` (`id_workflow`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_resource_workgroup`
--

LOCK TABLES `workflow_resource_workgroup` WRITE;
/*!40000 ALTER TABLE `workflow_resource_workgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_resource_workgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_state`
--

DROP TABLE IF EXISTS `workflow_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_state` (
  `id_state` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `id_workflow` int(11) DEFAULT NULL,
  `is_initial_state` smallint(6) DEFAULT '0',
  `is_required_workgroup_assigned` smallint(6) DEFAULT '0',
  `id_icon` int(11) DEFAULT NULL,
  `display_order` int(11) DEFAULT '0',
  PRIMARY KEY (`id_state`),
  KEY `fk_state_id_workflow` (`id_workflow`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_state`
--

LOCK TABLES `workflow_state` WRITE;
/*!40000 ALTER TABLE `workflow_state` DISABLE KEYS */;
INSERT INTO `workflow_state` VALUES (101,'Non validé','Non validé',101,1,0,NULL,1),(102,'Validé','Validé',101,0,0,NULL,2),(103,'Annulé','Annulé',101,0,0,NULL,3),(104,'Initial','Initial',102,1,0,NULL,1),(105,'Validé','Validé',102,0,0,1,2),(106,'Initial','Initial',103,1,0,0,1),(107,'Validé','Validé',103,0,0,1,2);
/*!40000 ALTER TABLE `workflow_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task`
--

DROP TABLE IF EXISTS `workflow_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task` (
  `id_task` int(11) NOT NULL DEFAULT '0',
  `task_type_key` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_action` int(11) NOT NULL DEFAULT '0',
  `display_order` int(11) DEFAULT '0',
  PRIMARY KEY (`id_task`),
  KEY `task_id_action_fk` (`id_action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task`
--

LOCK TABLES `workflow_task` WRITE;
/*!40000 ALTER TABLE `workflow_task` DISABLE KEYS */;
INSERT INTO `workflow_task` VALUES (101,'taskNotifyAppointment',101,3),(103,'taskNotifyAppointment',104,1),(104,'taskNotifyAdminAppointment',104,2),(105,'taskUpdateAppointmentCancelAction',101,5),(106,'taskChangeAppointmentStatus',101,2),(107,'taskChangeAppointmentStatus',102,2),(108,'taskManualAppointmentNotification',102,4),(109,'taskChangeAppointmentStatus',103,1),(110,'taskNotifyAppointment',103,2),(111,'taskChangeAppointmentStatus',105,2),(112,'taskNotifyAppointment',105,3),(113,'taskTypeComment',105,1),(114,'taskTypeComment',102,1),(115,'taskChangeAppointmentStatus',106,1),(116,'taskNotifyAdminAppointment',106,2),(117,'taskUpdateAdminAppointment',107,2),(118,'taskNotifyAdminAppointment',102,3),(119,'taskUpdateAdminAppointment',101,1),(120,'taskNotifyAdminAppointment',101,4),(121,'taskNotifyAppointment',106,3),(122,'taskNotifyAdminAppointment',105,4),(123,'taskNotifyAdminAppointment',107,1),(124,'taskNotifyAdminAppointment',107,3),(125,'taskCreatePdf',108,1),(126,'taskNotifyCRM',108,2),(127,'taskCreatePdf',109,1),(128,'taskNotifyCRM',109,2);
/*!40000 ALTER TABLE `workflow_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_assignment_cf`
--

DROP TABLE IF EXISTS `workflow_task_assignment_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_assignment_cf` (
  `id_task` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_multiple_owner` smallint(6) DEFAULT '0',
  `is_notify` smallint(6) DEFAULT '0',
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_use_user_name` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id_task`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_assignment_cf`
--

LOCK TABLES `workflow_task_assignment_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_assignment_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_assignment_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_change_appointment_status_cf`
--

DROP TABLE IF EXISTS `workflow_task_change_appointment_status_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_change_appointment_status_cf` (
  `id_task` int(11) NOT NULL,
  `appointment_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_task`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_change_appointment_status_cf`
--

LOCK TABLES `workflow_task_change_appointment_status_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_change_appointment_status_cf` DISABLE KEYS */;
INSERT INTO `workflow_task_change_appointment_status_cf` VALUES (106,10),(107,-10),(109,-10),(111,-10),(115,-10);
/*!40000 ALTER TABLE `workflow_task_change_appointment_status_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_comment_config`
--

DROP TABLE IF EXISTS `workflow_task_comment_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_comment_config` (
  `id_task` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_mandatory` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id_task`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_comment_config`
--

LOCK TABLES `workflow_task_comment_config` WRITE;
/*!40000 ALTER TABLE `workflow_task_comment_config` DISABLE KEYS */;
INSERT INTO `workflow_task_comment_config` VALUES (113,'Veuillez saisir le motif de l\'annulation',1),(114,'Veuillez saisir le motif de l\'annulation',1);
/*!40000 ALTER TABLE `workflow_task_comment_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_comment_value`
--

DROP TABLE IF EXISTS `workflow_task_comment_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_comment_value` (
  `id_history` int(11) NOT NULL DEFAULT '0',
  `id_task` int(11) NOT NULL DEFAULT '0',
  `comment_value` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id_history`,`id_task`),
  KEY `comment_value_id_history_fk` (`id_history`),
  KEY `comment_value_id_task_fk` (`id_task`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_comment_value`
--

LOCK TABLES `workflow_task_comment_value` WRITE;
/*!40000 ALTER TABLE `workflow_task_comment_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_comment_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_manual_app_notify`
--

DROP TABLE IF EXISTS `workflow_task_manual_app_notify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_manual_app_notify` (
  `id_notif` int(11) NOT NULL,
  `id_history` int(11) DEFAULT NULL,
  `id_appointment` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id_notif`),
  KEY `idx_wf_task_manual_app_notify` (`id_appointment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_manual_app_notify`
--

LOCK TABLES `workflow_task_manual_app_notify` WRITE;
/*!40000 ALTER TABLE `workflow_task_manual_app_notify` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_manual_app_notify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_notification_cf`
--

DROP TABLE IF EXISTS `workflow_task_notification_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_notification_cf` (
  `id_task` int(11) NOT NULL DEFAULT '0',
  `id_mailing_list` int(11) DEFAULT NULL,
  `sender_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id_task`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_notification_cf`
--

LOCK TABLES `workflow_task_notification_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_notification_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_notification_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_notify_admin_appointment_cf`
--

DROP TABLE IF EXISTS `workflow_task_notify_admin_appointment_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_notify_admin_appointment_cf` (
  `id_task` int(11) NOT NULL,
  `id_admin_user` int(11) DEFAULT NULL,
  `sender_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` mediumtext COLLATE utf8_unicode_ci,
  `recipients_cc` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recipients_bcc` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_action_cancel` int(11) DEFAULT NULL,
  `id_action_validate` int(11) DEFAULT NULL,
  `ical_notification` smallint(6) DEFAULT '0',
  `create_notif` smallint(6) DEFAULT '0',
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_task`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_notify_admin_appointment_cf`
--

LOCK TABLES `workflow_task_notify_admin_appointment_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_notify_admin_appointment_cf` DISABLE KEYS */;
INSERT INTO `workflow_task_notify_admin_appointment_cf` VALUES (104,1,'L\'équipe Lutèce','no-reply@mydomain.com','Une demande de rendez-vous a été créée pour le ${date_appointment} à ${time_appointment}','<p>Bonjour,</p>\r\n<p>&nbsp;</p>\r\n<p>un nouveau rendez-vous a &eacute;t&eacute; cr&eacute;&eacute; le ${date_appointment} &agrave; ${time_appointment}.</p>\r\n<p>Les informations soumises par l\'utilisateur sont les suivantes :</p>\r\n<p>${recap}</p>\r\n<p>Merci de bien vouloir valider ou annuler ce rendez vous :</p>\r\n<p><a title=\"Valider le rendez-vous\" href=\"${url_validate}\">Valider le rendez-vous</a></p>\r\n<p><a title=\"Annuler le rendez-vous\" href=\"${url_cancel}\">Annuler le rendez-vous</a></p>\r\n<p>&nbsp;</p>\r\n<p>Cordialement,</p>\r\n<p>l\'&eacute;quipe Lut&egrave;ce</p>','','',105,101,0,0,'Salle 216'),(116,1,'L\'équipe Lutèce','no-reply@mydomain.com','Annulation d\'un rendez-vous par l\'utilisateur','<p>Bonjour,</p>\r\n<p>&nbsp;</p>\r\n<p>${firstName} ${lastName} a annul&eacute; le rendez-vous du ${date_appointment} &agrave; ${time_appointment}.</p>\r\n<p>&nbsp;</p>\r\n<p>Cordialement,</p>\r\n<p>&nbsp;</p>\r\n<p>l\'&eacute;quipe Lut&egrave;ce.</p>','','',0,0,1,0,''),(118,0,'L\'équipe Lutèce','no-reply@mydomain.com','Annulation du rendez-vous du ${date_appointment}','<p>Bonjour,</p>\r\n<p>&nbsp;</p>\r\n<p>je rendez-vous du ${date_appointment} &agrave; ${time_appointment} a &eacute;t&eacute; annul&eacute;.</p>\r\n<p>&nbsp;</p>\r\n<p>Cordialement,</p>\r\n<p>&nbsp;</p>\r\n<p>L\'&eacute;quipe Lut&egrave;ce.</p>','','',0,0,1,0,'Salle 216'),(120,0,'L\'équipe Lutèce','no-reply@mydomain.com','Une demande de rendez-vous vous a été attribuée pour le ${date_appointment} à ${time_appointment}','<p>Bonjour,</p>\r\n<p>&nbsp;</p>\r\n<p>Le rendez-vous du ${date_appointment} &agrave; ${time_appointment} vous a &eacute;t&eacute; attribu&eacute;. Merci de vous rendez disponible pour cet horraire, ou d\'annuler le rendez-vous en cas d\'impossibilit&eacute;.</p>\r\n<p>&nbsp;</p>\r\n<p>Cordialement,</p>\r\n<p>&nbsp;</p>\r\n<p>L\'&eacute;quipe Lut&egrave;ce</p>','','',102,0,1,1,'Salle 25'),(122,0,'L\'équipe Lutèce','no-reply@mydomain.com','Annulation de votre rendez-vous du ${date_appointment}','<p>Bonjour,</p>\r\n<p>&nbsp;</p>\r\n<p>le rendez-vous du&nbsp;${date_appointment} &agrave; ${time_appointment} a &eacute;t&eacute; annul&eacute; par le gestionnaire.</p>\r\n<p>&nbsp;</p>\r\n<p>Cordialement,</p>\r\n<p>&nbsp;</p>\r\n<p>L\'&eacute;quipe Lut&egrave;ce.</p>','','',0,0,1,0,''),(123,0,'L\'équipe Lutèce','no-reply@mydomain.com','Le rendez-vous du ${date_appointment} à ${time_appointment} a été réattribué','<p>Bonjour,</p>\r\n<p>&nbsp;</p>\r\n<p>le rendez-vous du ${date_appointment} &agrave; ${time_appointment} a &eacute;t&eacute; r&eacute;attribu&eacute; &agrave; un autre agent.</p>\r\n<p>&nbsp;</p>\r\n<p>Cordialement,</p>\r\n<p>&nbsp;</p>\r\n<p>L\'&eacute;quipe Lut&egrave;ce</p>','','',0,0,1,0,''),(124,0,'L\'équipe Lutèce','no-reply@mydomain.com','Le rendez-vous du ${date_appointment} à ${time_appointment} vous a été attribué','<p>Bonjour,</p>\r\n<p>&nbsp;</p>\r\n<p>le rendez-vous du ${date_appointment} &agrave; ${time_appointment} vous a &eacute;t&eacute; attribu&eacute;. Merci de vous rendre disponible pour cet horraire.</p>\r\n<p>&nbsp;</p>\r\n<p>Cordialement,</p>\r\n<p>&nbsp;</p>\r\n<p>l\'&eacute;quipe Lut&egrave;ce.</p>','','',102,0,1,1,'salle 216');
/*!40000 ALTER TABLE `workflow_task_notify_admin_appointment_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_notify_appointment_cf`
--

DROP TABLE IF EXISTS `workflow_task_notify_appointment_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_notify_appointment_cf` (
  `id_task` int(11) NOT NULL,
  `sender_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` mediumtext COLLATE utf8_unicode_ci,
  `recipients_cc` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recipients_bcc` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_action_cancel` int(11) DEFAULT NULL,
  `ical_notification` smallint(6) DEFAULT '0',
  `create_notif` smallint(6) DEFAULT '0',
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_sms` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id_task`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_notify_appointment_cf`
--

LOCK TABLES `workflow_task_notify_appointment_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_notify_appointment_cf` DISABLE KEYS */;
INSERT INTO `workflow_task_notify_appointment_cf` VALUES (101,'L\'équipe Lutèce','no-reply@mydomain.com','Votre rendez-vous du ${date_appointment} a été validé','<p>Bonjour ${firstName} ${lastName},</p>\r\n<p>&nbsp;</p>\r\n<p>votre demande de rendez-vous du ${date_appointment} &agrave; ${time_appointment} avec la reference <strong>${reference}</strong> a &eacute;t&eacute; valid&eacute;.</p>\r\n<p>En cas d\'indisponibilit&eacute;, vous pouvez annuler le rendez-vous en suivante le lien suivant :</p>\r\n<p><a title=\"Annuler le rendez-vous\" href=\"${url_cancel}\">Annuler le rendez-vous</a></p>\r\n<p>&nbsp;</p>\r\n<p>Cordialement,</p>\r\n<p>l\'&eacute;quipe Lut&egrave;ce.</p>','','',106,1,1,'La bas',0),(103,'L\'équipe Lutèce','no-reply@mydomain.com','Votre demande de rendez-vous du ${date_appointment}','<p>Bonjour ${firstName} ${lastName},</p>\r\n<p>&nbsp;</p>\r\n<p>votre demande de rendez-vous du ${date_appointment} &agrave; ${time_appointment} a bien &eacute;t&eacute; enregistr&eacute;e avec la r&eacute;f&eacute;rence <strong>${reference}</strong>. Le rendez-vous sera valid&eacute; par un de nos agents le plus rapidement possible.</p>\r\n<p>En cas d\'indisponibilit&eacute;, vous pouvez annuler le rendez-vous en suivant le lien suivant :</p>\r\n<p><a title=\"Annuler le rendez-vous\" href=\"${url_cancel}\">Annuler le rendez-vous</a></p>\r\n<p>&nbsp;</p>\r\n<p>Cordialement,</p>\r\n<p>l\'&eacute;quipe Lut&egrave;ce.</p>','','',103,0,0,'',0),(112,'L\'équipe Lutèce','no-reply@mydomain.com','Annulation de votre rendez-vous du ${date_appointment}','<p>Bonjour,</p>\r\n<p>&nbsp;</p>\r\n<p>En raison de l\'indisponibilit&eacute; de nos agents, votre rendez-vous du ${date_appointment} &agrave; ${time_appointment} a &eacute;t&eacute; annul&eacute;.</p>\r\n<p>&nbsp;</p>\r\n<p>Veuillez nous excuser pour la g&egrave;ne ocasion&eacute;e.</p>\r\n<p>&nbsp;</p>\r\n<p>Cordialement,</p>\r\n<p>&nbsp;</p>\r\n<p>L\'&eacute;quipe Lut&egrave;ce</p>','','',0,1,0,'',0),(110,'L\'équipe Lutèce','no-reply@mydomain.com','Annulation de votre rendez-vous du ${date_appointment}','<p>Bonjour,</p>\r\n<p>&nbsp;</p>\r\n<p>A votre demande, votre rendez-vous a bien &eacute;t&eacute; annul&eacute;.</p>\r\n<p>&nbsp;</p>\r\n<p>Cordialement,</p>\r\n<p>&nbsp;</p>\r\n<p>L\'&eacute;quipe Lut&egrave;ce</p>','','',0,1,0,'',0),(121,'L\'équipe Lutèce','no-reply@mydomain.com','Votre rendez-vous du ${date_appointment} a bien été annulé','<p>Bonjour,</p>\r\n<p>&nbsp;</p>\r\n<p>A votre demande, votre rendez-vous du ${date_appointment} &agrave; ${time_appointment} avec nos services a bien &eacute;t&eacute; annul&eacute;.</p>\r\n<p>&nbsp;</p>\r\n<p>Cordialement,</p>\r\n<p>&nbsp;</p>\r\n<p>L\'&eacute;quipe Lut&egrave;ce.</p>','','',0,1,0,'',0);
/*!40000 ALTER TABLE `workflow_task_notify_appointment_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_update_admin_appointment`
--

DROP TABLE IF EXISTS `workflow_task_update_admin_appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_update_admin_appointment` (
  `id_update` int(11) NOT NULL,
  `id_history` int(11) DEFAULT NULL,
  `id_appointment` int(11) DEFAULT NULL,
  `id_admin_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_update`),
  KEY `idx_wf_task_update_admin_app` (`id_appointment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_update_admin_appointment`
--

LOCK TABLES `workflow_task_update_admin_appointment` WRITE;
/*!40000 ALTER TABLE `workflow_task_update_admin_appointment` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_task_update_admin_appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_task_update_appointment_cancel_cf`
--

DROP TABLE IF EXISTS `workflow_task_update_appointment_cancel_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_task_update_appointment_cancel_cf` (
  `id_task` int(11) NOT NULL,
  `id_action_cancel` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_task`),
  KEY `fk_wf_task_up_app_cancel_cf` (`id_action_cancel`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_task_update_appointment_cancel_cf`
--

LOCK TABLES `workflow_task_update_appointment_cancel_cf` WRITE;
/*!40000 ALTER TABLE `workflow_task_update_appointment_cancel_cf` DISABLE KEYS */;
INSERT INTO `workflow_task_update_appointment_cancel_cf` VALUES (105,106);
/*!40000 ALTER TABLE `workflow_task_update_appointment_cancel_cf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_workflow`
--

DROP TABLE IF EXISTS `workflow_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_workflow` (
  `id_workflow` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_enabled` smallint(6) DEFAULT '0',
  `workgroup_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_workflow`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_workflow`
--

LOCK TABLES `workflow_workflow` WRITE;
/*!40000 ALTER TABLE `workflow_workflow` DISABLE KEYS */;
INSERT INTO `workflow_workflow` VALUES (101,'Workflow de gestion des rendez-vous','Workflow de gestion des rendez-vous','2014-02-11 07:36:34',1,'all'),(102,'Stationnement','Teleservice 1','2015-06-17 16:23:28',1,'all'),(103,'QF','Teleservice 1','2015-06-17 16:23:28',1,'all');
/*!40000 ALTER TABLE `workflow_workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_workgroup_cf`
--

DROP TABLE IF EXISTS `workflow_workgroup_cf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_workgroup_cf` (
  `id_task` int(11) NOT NULL DEFAULT '0',
  `workgroup_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `id_mailing_list` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_task`,`workgroup_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_workgroup_cf`
--

LOCK TABLES `workflow_workgroup_cf` WRITE;
/*!40000 ALTER TABLE `workflow_workgroup_cf` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflow_workgroup_cf` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-18 19:07:33