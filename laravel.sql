-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: laravel
-- ------------------------------------------------------
-- Server version	5.7.32-0ubuntu0.18.04.1

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
-- Current Database: `laravel`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `laravel` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `laravel`;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_entries`
--

DROP TABLE IF EXISTS `log_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_entries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `REQUEST_START_TIME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `URL` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `METHOD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `REQUEST_HEADER` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `REQUEST_BODY` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `RESPONSE` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_entries`
--

LOCK TABLES `log_entries` WRITE;
/*!40000 ALTER TABLE `log_entries` DISABLE KEYS */;
INSERT INTO `log_entries` VALUES (1,'2020-11-30 19:37:27','\"http:\\/\\/localhost:8000\\/api\\/auth\\/subscribe\\/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODAwMFwvYXBpXC9hdXRoXC91c2VyU3Vic2NyaWJlIiwiaWF0IjoxNjA2NzY1MDExLCJleHAiOjE2MDY3Njg2MTEsIm5iZiI6MTYwNjc2NTAxMSwianRpIjoiaUg2TXljczJlRFQzeUh0SiIsImF1ZCI6ImxvY2FsaG9zdDo4MDAwIiwic3ViIjoiMSIsInVzZXJJZCI6IjEiLCJNU0lTRE4iOiI5NjE3MTYxMjkzMCIsIm9wZXJhdG9yX2lkIjoiMiJ9.N4D_vd3F04uHBQYpPsZFHXR54gJsnObzabVJAuj_TCQ\"','\"GET\"','{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"cache-control\":[\"max-age=0\"],\"dnt\":[\"1\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.66 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"accept-encoding\":[\"gzip, deflate, br\"],\"accept-language\":[\"en-US,en;q=0.9,fr;q=0.8\"],\"cookie\":[\"_ga=GA1.1.88650550.1601974689\"]}','[]','\"\"','2020-11-30 17:37:28','2020-11-30 17:37:28'),(2,'2020-11-30 19:38:36','\"http:\\/\\/localhost:8000\\/api\\/auth\\/subscribe\\/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODAwMFwvYXBpXC9hdXRoXC91c2VyU3Vic2NyaWJlIiwiaWF0IjoxNjA2NzY1MDExLCJleHAiOjE2MDY3Njg2MTEsIm5iZiI6MTYwNjc2NTAxMSwianRpIjoiaUg2TXljczJlRFQzeUh0SiIsImF1ZCI6ImxvY2FsaG9zdDo4MDAwIiwic3ViIjoiMSIsInVzZXJJZCI6IjEiLCJNU0lTRE4iOiI5NjE3MTYxMjkzMCIsIm9wZXJhdG9yX2lkIjoiMiJ9.N4D_vd3F04uHBQYpPsZFHXR54gJsnObzabVJAuj_TCQ\"','\"GET\"','{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"cache-control\":[\"max-age=0\"],\"dnt\":[\"1\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.66 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"accept-encoding\":[\"gzip, deflate, br\"],\"accept-language\":[\"en-US,en;q=0.9,fr;q=0.8\"],\"cookie\":[\"_ga=GA1.1.88650550.1601974689\"]}','[]','\"{\\\"success\\\":true,\\\"data\\\":{\\\"user_id\\\":\\\"1\\\",\\\"MSISDN\\\":\\\"96171612930\\\",\\\"operator_id\\\":\\\"2\\\",\\\"status\\\":\\\"PENDING\\\",\\\"updated_at\\\":\\\"2020-11-30T19:38:36.000000Z\\\",\\\"created_at\\\":\\\"2020-11-30T19:38:36.000000Z\\\",\\\"id\\\":4}}\"','2020-11-30 17:38:36','2020-11-30 17:38:36'),(3,'2020-11-30 20:24:07','\"http:\\/\\/localhost:8000\\/api\\/auth\\/subscription\\/1\"','\"GET\"','{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"cache-control\":[\"max-age=0\"],\"dnt\":[\"1\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.66 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"accept-encoding\":[\"gzip, deflate, br\"],\"accept-language\":[\"en-US,en;q=0.9,fr;q=0.8\"],\"cookie\":[\"_ga=GA1.1.88650550.1601974689\"]}','[]','\"{\\\"success\\\":true,\\\"data\\\":{\\\"id\\\":1,\\\"user_id\\\":1,\\\"MSISDN\\\":\\\"96171612930\\\",\\\"operator_id\\\":2,\\\"status\\\":\\\"unsubscribed\\\",\\\"created_at\\\":\\\"2020-11-30T17:34:42.000000Z\\\",\\\"updated_at\\\":\\\"2020-11-30T18:33:40.000000Z\\\"}}\"','2020-11-30 18:24:07','2020-11-30 18:24:07'),(4,'2020-11-30 20:25:10','\"http:\\/\\/localhost:8000\\/api\\/auth\\/userUnubscribe?subscri=\"','\"GET\"','{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"dnt\":[\"1\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.66 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"accept-encoding\":[\"gzip, deflate, br\"],\"accept-language\":[\"en-US,en;q=0.9,fr;q=0.8\"],\"cookie\":[\"_ga=GA1.1.88650550.1601974689\"]}','{\"subscri\":null}','\"{\\\"error\\\":{\\\"subscription_id\\\":[\\\"The subscription id field is required.\\\"]}}\"','2020-11-30 18:25:10','2020-11-30 18:25:10'),(5,'2020-11-30 20:25:16','\"http:\\/\\/localhost:8000\\/api\\/auth\\/userUnubscribe?subscription_id=1\"','\"GET\"','{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"dnt\":[\"1\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.66 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"accept-encoding\":[\"gzip, deflate, br\"],\"accept-language\":[\"en-US,en;q=0.9,fr;q=0.8\"],\"cookie\":[\"_ga=GA1.1.88650550.1601974689\"]}','{\"subscription_id\":\"1\"}','\"<!DOCTYPE html>\\n<html>\\n    <head>\\n        <meta charset=\\\"UTF-8\\\" \\/>\\n        <meta http-equiv=\\\"refresh\\\" content=\\\"0;url=\'http:\\/\\/localhost:8000\\/api\\/auth\\/unsubscribe\\/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODAwMFwvYXBpXC9hdXRoXC91c2VyVW51YnNjcmliZSIsImlhdCI6MTYwNjc2NzkxNiwiZXhwIjoxNjA2NzcxNTE2LCJuYmYiOjE2MDY3Njc5MTYsImp0aSI6ImRITWJpQTNkYWRNQ29NRVQiLCJhdWQiOiJsb2NhbGhvc3Q6ODAwMCIsInN1YiI6IjEiLCJzdWJzY3JpcHRpb25faWQiOiIxIn0.KRcYS2q86Tlrk_PLRQLWnQq_FfuC7z9zfjotn1wcQ0k\'\\\" \\/>\\n\\n        <title>Redirecting to http:\\/\\/localhost:8000\\/api\\/auth\\/unsubscribe\\/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODAwMFwvYXBpXC9hdXRoXC91c2VyVW51YnNjcmliZSIsImlhdCI6MTYwNjc2NzkxNiwiZXhwIjoxNjA2NzcxNTE2LCJuYmYiOjE2MDY3Njc5MTYsImp0aSI6ImRITWJpQTNkYWRNQ29NRVQiLCJhdWQiOiJsb2NhbGhvc3Q6ODAwMCIsInN1YiI6IjEiLCJzdWJzY3JpcHRpb25faWQiOiIxIn0.KRcYS2q86Tlrk_PLRQLWnQq_FfuC7z9zfjotn1wcQ0k<\\/title>\\n    <\\/head>\\n    <body>\\n        Redirecting to <a href=\\\"http:\\/\\/localhost:8000\\/api\\/auth\\/unsubscribe\\/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODAwMFwvYXBpXC9hdXRoXC91c2VyVW51YnNjcmliZSIsImlhdCI6MTYwNjc2NzkxNiwiZXhwIjoxNjA2NzcxNTE2LCJuYmYiOjE2MDY3Njc5MTYsImp0aSI6ImRITWJpQTNkYWRNQ29NRVQiLCJhdWQiOiJsb2NhbGhvc3Q6ODAwMCIsInN1YiI6IjEiLCJzdWJzY3JpcHRpb25faWQiOiIxIn0.KRcYS2q86Tlrk_PLRQLWnQq_FfuC7z9zfjotn1wcQ0k\\\">http:\\/\\/localhost:8000\\/api\\/auth\\/unsubscribe\\/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODAwMFwvYXBpXC9hdXRoXC91c2VyVW51YnNjcmliZSIsImlhdCI6MTYwNjc2NzkxNiwiZXhwIjoxNjA2NzcxNTE2LCJuYmYiOjE2MDY3Njc5MTYsImp0aSI6ImRITWJpQTNkYWRNQ29NRVQiLCJhdWQiOiJsb2NhbGhvc3Q6ODAwMCIsInN1YiI6IjEiLCJzdWJzY3JpcHRpb25faWQiOiIxIn0.KRcYS2q86Tlrk_PLRQLWnQq_FfuC7z9zfjotn1wcQ0k<\\/a>.\\n    <\\/body>\\n<\\/html>\"','2020-11-30 18:25:16','2020-11-30 18:25:16'),(6,'2020-11-30 20:29:13','\"http:\\/\\/localhost:8000\\/api\\/auth\\/userUnubscribe?subscri=\"','\"GET\"','{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"dnt\":[\"1\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.66 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"accept-encoding\":[\"gzip, deflate, br\"],\"accept-language\":[\"en-US,en;q=0.9,fr;q=0.8\"],\"cookie\":[\"_ga=GA1.1.88650550.1601974689\"]}','{\"subscri\":null}','\"{\\\"error\\\":{\\\"subscription_id\\\":[\\\"The subscription id field is required.\\\"]}}\"','2020-11-30 18:29:13','2020-11-30 18:29:13'),(7,'2020-11-30 20:29:21','\"http:\\/\\/localhost:8000\\/api\\/auth\\/userUnubscribe?subscription_id=1\"','\"GET\"','{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"dnt\":[\"1\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.66 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"accept-encoding\":[\"gzip, deflate, br\"],\"accept-language\":[\"en-US,en;q=0.9,fr;q=0.8\"],\"cookie\":[\"_ga=GA1.1.88650550.1601974689\"]}','{\"subscription_id\":\"1\"}','\"<!DOCTYPE html>\\n<html>\\n    <head>\\n        <meta charset=\\\"UTF-8\\\" \\/>\\n        <meta http-equiv=\\\"refresh\\\" content=\\\"0;url=\'http:\\/\\/localhost:8000\\/api\\/auth\\/unsubscribe\\/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODAwMFwvYXBpXC9hdXRoXC91c2VyVW51YnNjcmliZSIsImlhdCI6MTYwNjc2ODE2MSwiZXhwIjoxNjA2NzcxNzYxLCJuYmYiOjE2MDY3NjgxNjEsImp0aSI6IkswdEViR0Y5N2l4MVNabTIiLCJhdWQiOiJsb2NhbGhvc3Q6ODAwMCIsInN1YiI6IjEiLCJzdWJzY3JpcHRpb25faWQiOiIxIn0.rYJJJjh1-y1StvxZUlkzLX23mov9PSNQVKZlfeSXNhU\'\\\" \\/>\\n\\n        <title>Redirecting to http:\\/\\/localhost:8000\\/api\\/auth\\/unsubscribe\\/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODAwMFwvYXBpXC9hdXRoXC91c2VyVW51YnNjcmliZSIsImlhdCI6MTYwNjc2ODE2MSwiZXhwIjoxNjA2NzcxNzYxLCJuYmYiOjE2MDY3NjgxNjEsImp0aSI6IkswdEViR0Y5N2l4MVNabTIiLCJhdWQiOiJsb2NhbGhvc3Q6ODAwMCIsInN1YiI6IjEiLCJzdWJzY3JpcHRpb25faWQiOiIxIn0.rYJJJjh1-y1StvxZUlkzLX23mov9PSNQVKZlfeSXNhU<\\/title>\\n    <\\/head>\\n    <body>\\n        Redirecting to <a href=\\\"http:\\/\\/localhost:8000\\/api\\/auth\\/unsubscribe\\/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODAwMFwvYXBpXC9hdXRoXC91c2VyVW51YnNjcmliZSIsImlhdCI6MTYwNjc2ODE2MSwiZXhwIjoxNjA2NzcxNzYxLCJuYmYiOjE2MDY3NjgxNjEsImp0aSI6IkswdEViR0Y5N2l4MVNabTIiLCJhdWQiOiJsb2NhbGhvc3Q6ODAwMCIsInN1YiI6IjEiLCJzdWJzY3JpcHRpb25faWQiOiIxIn0.rYJJJjh1-y1StvxZUlkzLX23mov9PSNQVKZlfeSXNhU\\\">http:\\/\\/localhost:8000\\/api\\/auth\\/unsubscribe\\/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODAwMFwvYXBpXC9hdXRoXC91c2VyVW51YnNjcmliZSIsImlhdCI6MTYwNjc2ODE2MSwiZXhwIjoxNjA2NzcxNzYxLCJuYmYiOjE2MDY3NjgxNjEsImp0aSI6IkswdEViR0Y5N2l4MVNabTIiLCJhdWQiOiJsb2NhbGhvc3Q6ODAwMCIsInN1YiI6IjEiLCJzdWJzY3JpcHRpb25faWQiOiIxIn0.rYJJJjh1-y1StvxZUlkzLX23mov9PSNQVKZlfeSXNhU<\\/a>.\\n    <\\/body>\\n<\\/html>\"','2020-11-30 18:29:21','2020-11-30 18:29:21'),(8,'2020-11-30 20:29:21','\"http:\\/\\/localhost:8000\\/api\\/auth\\/unsubscribe\\/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sb2NhbGhvc3Q6ODAwMFwvYXBpXC9hdXRoXC91c2VyVW51YnNjcmliZSIsImlhdCI6MTYwNjc2ODE2MSwiZXhwIjoxNjA2NzcxNzYxLCJuYmYiOjE2MDY3NjgxNjEsImp0aSI6IkswdEViR0Y5N2l4MVNabTIiLCJhdWQiOiJsb2NhbGhvc3Q6ODAwMCIsInN1YiI6IjEiLCJzdWJzY3JpcHRpb25faWQiOiIxIn0.rYJJJjh1-y1StvxZUlkzLX23mov9PSNQVKZlfeSXNhU\"','\"GET\"','{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"dnt\":[\"1\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/87.0.4280.66 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.9\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"accept-encoding\":[\"gzip, deflate, br\"],\"accept-language\":[\"en-US,en;q=0.9,fr;q=0.8\"],\"cookie\":[\"_ga=GA1.1.88650550.1601974689\"]}','[]','\"{\\\"success\\\":true,\\\"data\\\":{\\\"id\\\":1,\\\"user_id\\\":1,\\\"MSISDN\\\":\\\"96171612930\\\",\\\"operator_id\\\":2,\\\"status\\\":\\\"unsubscribed\\\",\\\"created_at\\\":\\\"2020-11-30T17:34:42.000000Z\\\",\\\"updated_at\\\":\\\"2020-11-30T18:33:40.000000Z\\\"}}\"','2020-11-30 18:29:21','2020-11-30 18:29:21');
/*!40000 ALTER TABLE `log_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (45,'2014_10_12_000000_create_users_table',1),(46,'2014_10_12_100000_create_password_resets_table',1),(47,'2019_08_19_000000_create_failed_jobs_table',1),(48,'2020_11_28_171736_create_operators_table',1),(51,'2020_11_30_185804_create_log_entries_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operators`
--

DROP TABLE IF EXISTS `operators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operators` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operators`
--

LOCK TABLES `operators` WRITE;
/*!40000 ALTER TABLE `operators` DISABLE KEYS */;
INSERT INTO `operators` VALUES (1,'Zein',NULL,NULL),(2,'Orange',NULL,NULL);
/*!40000 ALTER TABLE `operators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `MSISDN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operator_id` int(10) unsigned NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subscriptions_operator_id_foreign` (`operator_id`),
  CONSTRAINT `subscriptions_operator_id_foreign` FOREIGN KEY (`operator_id`) REFERENCES `operators` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
INSERT INTO `subscriptions` VALUES (1,1,'96171612930',2,'unsubscribed','2020-11-30 15:34:42','2020-11-30 16:33:40'),(2,1,'96171612930',2,'PENDING','2020-11-30 17:36:51','2020-11-30 17:36:51'),(3,1,'96171612930',2,'PENDING','2020-11-30 17:37:28','2020-11-30 17:37:28'),(4,1,'96171612930',2,'PENDING','2020-11-30 17:38:36','2020-11-30 17:38:36');
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'user1','user1@domain.com',NULL,'$2y$10$XU1tkUOCGG6oRJGxS0Yd6uFrhdPmiByee1rF0hMKNNGANx1Pg6B5O',NULL,'2020-11-28 18:35:45','2020-11-28 18:35:45');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-30 22:52:04
