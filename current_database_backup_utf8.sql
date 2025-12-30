-- MySQL dump 10.13  Distrib 8.4.3, for Win64 (x86_64)
--
-- Host: localhost    Database: barishal_school
-- ------------------------------------------------------
-- Server version	8.4.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `achievements`
--

DROP TABLE IF EXISTS `achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `achievements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `google_drive_folder_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `additional_images` json DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `achievements_slug_unique` (`slug`),
  KEY `achievements_active_published_idx` (`is_active`,`published_at`),
  KEY `achievements_slug_idx` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievements`
--

LOCK TABLES `achievements` WRITE;
/*!40000 ALTER TABLE `achievements` DISABLE KEYS */;
INSERT INTO `achievements` VALUES (1,'Success of Sharmika Sharmin Poly','success-of-sharmika-sharmin-poly',NULL,'<p>We are immensely happy to announce that our former student Sharmika Sharmin Poly (SSC Batch -2022) recently got chance at Shaheed Suhrawardy Medical College and Hospital .From her childhood she was one of the brightest students of RCESC.She achieved Scholarship both in JSC and SSC .She was very much active in extracurricular activities. Her extraordinary perception and writing skill in Science topic made her one of the most familiar faces to the teachers of the institution. She was excellent in painting and debate as well. RCESC family is extremely happy on Sharmika Sharmin Poly’s outstanding achievement .Hope she will go further ahead with her irresistible will power and extraordinary brilliance .<br>&nbsp;Let’s read the statement of Sharmika Sharmin Poly:<br>Alhamdulillah Allah made it a happy ending of my admission journey .<br>I am always grateful to my teachers who always motivated me ,even after not getting chance in the first attempt, nobody made me feel like a failure, rather I got inspiration to do better<br>Whatever I am, wherever I am,<br>I am always grateful to my teachers, seniors and my parents.</p>','https://drive.google.com/drive/folders/11Tv5_lqpxR75RYa015mTMQnp8IFOOgzw?usp=drive_link','https://drive.google.com/file/d/13D9wjhnXwhdGxSOQ2F98nAfYRc4R5J_Z/view?usp=sharing',NULL,'barisal-admin','2025-12-16 15:08:41',1,0,'2025-12-14 09:10:16','2025-12-29 09:45:32'),(2,'International World Robotics Olympiad-2025 in Singapore','international-world-robotics-olympiad-2025-in-singapore',NULL,'<p>Heartiest congratulations to Team Nexora of RCESC&nbsp; Robotics Team for achieving the Bronze Medal in the Robo Mission Junior Category at the World Robotics Olympiad -2025 International&nbsp; in Singapore .<br>Success of Robotics Team in international Robotics Olympiad is an unprecedented achievement in the history of RCESC.RCESC is&nbsp; immensely thrilled and excited for this ground breaking success.</p><p>The dedication, creativity, and relentless hard work of the team has brought glory and pride. This remarkable achievement reflects their strong teamwork, problem-solving skills, and passion for robotics. They have set an inspiring example for all young innovators.</p><p>We wish them continued success in future endeavors. May this milestone motivate them to reach even greater heights.</p><p>Well done, Team Nexora!Well done Team RCESC!<br>We are truly proud of you.&nbsp;</p>',NULL,'https://drive.google.com/file/d/1NMMs5pd9bRU5l1MQtztkn1_MEexF7_LD/view?usp=sharing',NULL,'barisal-admin','2025-11-28 09:46:03',1,0,'2025-12-29 09:47:09','2025-12-29 10:05:14'),(3,'International World Robot Olympiad (WRO)-2025','international-world-robot-olympiad-wro-2025',NULL,'<p>We are immensely proud and excited to announce&nbsp; that RCESC Robotics Team (Team Nexora) has already gone to Singapore to participate in the International&nbsp; World Robot Olympiad (WRO) 2025 .RCESC takes pride that our youngsters are representing their nation in international level.<br>Our young innovators are now in full preparation mode — ready to showcase their creativity, skills, and passion on the global stage.&nbsp;<br>Let’s cheer for our national teams as they will&nbsp; represent Bangladesh with pride and excellence!&nbsp;<br>It is worth mentioning that total 7 teams are participating in different categories from Bangladesh including RCESC Team Nexora. Three experienced persons on Robot&nbsp; from Bangladesh have got the golden opportunity to represent Bangladesh as Judges in the International Robotics Olympiad Competition.</p>',NULL,'https://drive.google.com/file/d/1djv4qEYP6jl1EVhf6iO7wE63Y66f49EM/view?usp=sharing',NULL,'barisal-admin','2025-11-27 09:47:09',1,0,'2025-12-29 10:04:14','2025-12-29 10:04:14'),(4,'Qualified for 95th BMA Long Course of Bangladesh Army','qualified-for-95th-bma-long-course-of-bangladesh-army',NULL,'<p>With immense pleasure and pride we share the great news that our student Mirza Asif Shahariyar ,SSC Batch 2023 ,has been successfully qualified for 95th BMA Long Course of Bangladesh Army .<br>Wishing him all the very best for his upcoming bright future. 👍</p><p>Let’s hear the indomitable journey story&nbsp; of Mirza Asif Shahariyar :<br>It all started as a dream in the eyes of a curious and mischievous child — a dream of joining the Bangladesh Army as an officer to serve my motherland directly.<br>As I grew up, I learned a lot of things. Then came the time when I got admitted to Ramu Cantonment English School and College. It’s an honour that I became Roll No. 1&nbsp; later in standard 4. I joined RCESC as the pioneer most batch.<br>Life and time then proceeded, and with that, it was time for me to sit for the SSC. It went well, Alhamdulillah. Then I got admitted to Chattogram Cantonment Public College. I was quite proactive in cultural activities , so much that I won the national title of the category of jari gaan in 2024 . I was studious too.<br>Then came the circular of the 95th BMA Long Course. But it was before my HSC, so it was quite risky for me to take part in it considering my academics. Still, I took the risk.<br>My preliminary was held on 16th April, 2025— cleared that out — then the written on the 16th of May, 2025. That went well too. About three weeks later, the written results came, and Alhamdulillah, I was selected for ISSB — the Inter-Services Selection Board.<br>Then came HSC of 2025 . It went well, I must say. After HSC, I started preparing for university admission, and what a misery — I was called for ISSB in the middle of it. But still,&nbsp; the duty is to be done. What I\'ve started is to be completed.&nbsp;<br>I went there and reported on the 3rd of October, 2025. I wasn’t doing any coaching for it because I was so focused on admission preparation. Stayed there for four days, did what I needed to do — proved myself, represented my family, the environment I grew up in, my school, my college, everyone who shaped me into who I am today through my actions.<br>And Alhamdulillah, my efforts were acknowledged by ISSB by providing me a Green Card — a symbol of recognition of my leadership qualities. I\'m glad to be provided with such an opportunity and shall always be grateful to almighty, my parents, teachers, principals , friends and relatives. It was indeed an experience worth remembering and reliving.<br>I’d like to see my juniors and people from my school make me proud by achieving more — proud by reaching the heights of greatness.<br>A few words I have to say as advice to the people to come:<br>\"সবসময় একজন ভালো মানুষ হিসেবে নিজেকে গড়ে তুলবেন। সব সময় নিজের মধ্যে একটা জেদ পোষণ করবেন — ভালো করার জেদ। কখনোই নিজের প্রতি আস্থা হারাবেন না। শিক্ষক, পিতা, মাতা — কেউ যদি আপনার প্রতি বিশ্বাস নাও রাখে, কখনো হার মানবেন না, কষ্ট পাবেন না। নিজেকে আরো ভালো একজন ব্যক্তি হিসেবে গড়ে তোলার চেষ্টায় সচেষ্ট থাকবেন সবসময়। আপনার জীবন আপনার হাতে। কেউ কখনো জানে না ভবিষ্যত কি বয়ে আনবে। কষ্ট করতে থাকুন, ভালো মানুষ হিসেবে বেড়ে উঠুন, ইনশাল্লাহ ভালো কিছুই হবে। সর্বদা সৎ এবং একজন মেরুদণ্ডীশীল ব্যক্তি হিসেবে নিজেকে গড়ে তুলবেন।<br>And never stop dreaming, because dreams are what that keeps us going for perfection and self improvement.\"<br>This is Mirza Asif Shahariyar, SSC 2023, speaking — the talkative boy who roamed the corridors, fields, and classes of Ramu Cantonment English School and College. One who lived the moments and shall always be grateful for what RCESC has given him, and to the teachers who punished him and taught him many valuable lessons.<br>And never stop dreaming, because dreams are what that keeps us going for perfection and self improvement.<br>\" The dream of that mischievous, talkative yet obedient child lives on, stronger than ever \"</p>',NULL,'https://drive.google.com/file/d/1LWNxpOa84lkogL_kDILdWyKSMUmAkbDK/view?usp=sharing',NULL,'barisal-admin','2025-11-18 10:06:17',1,0,'2025-12-29 10:08:28','2025-12-29 10:09:06'),(5,'World Robotics Olympiad Bangladesh-2025','world-robotics-olympiad-bangladesh-2025',NULL,'<p>WORLD ROBOTICS OLYMPIAD BANGLADESH 2025 – National Round<br>On September 25, 2025, the National Round of the World Robot Olympiad Bangladesh was organized by United International University. In this prestigious event, Ramu Cantonment English School &amp; College proudly participated with three teams in two different categories.&nbsp;<br>i. ROBOMISSION&nbsp;<br>ii.&nbsp; Future Innovators&nbsp;<br>In the Robomission Category, Team Nexora and Team Invenix competed, while in the Future Innovators Category, Team Circuitra took part. Among them, Team Nexora achieved a remarkable milestone by receiving the Special Honorary Award in the Robomission&nbsp; Category.</p>',NULL,'https://drive.google.com/file/d/1J3j0MzoaI8gEZB-8XwQvDjs7rZiVmTBr/view?usp=sharing',NULL,'barisal-admin','2025-09-27 10:30:05',1,0,'2025-12-29 10:31:20','2025-12-29 10:31:20'),(6,'Inter Cantonment Debate Competition-2025','inter-cantonment-debate-competition-2025',NULL,'<p>Huge Congratulations to the RCESC Debate Team!</p><p>Our English Debate Team is now the AREA LEVEL CHAMPION after defeating SLTCPSC and CCES! And in a historic first, our amazing Bangla Debate Team also won their match against Chakaria Cantonment English School!</p><p>The accolades don\'t stop there! A standing ovation for Mehreen Rahabbat Epshita for being named the \'Speaker of the Tournament\'!&nbsp;</p><p>Shoutout to our champion English debaters:<br>Mehreen Rahabbat Epshita, Maheera Mubin, Hojaifa Maha, Subaita Binte Shahid, and Meher!<br>Bangla Debaters:<br>&nbsp;Ethun Dey, Tasnova Tashrin Labonno, Nafisa Tasnim,<br>Dipro Dhar, Naria Jahan Rup</p>',NULL,'https://drive.google.com/file/d/1BQiW8Jl7vjCsawt3vrdUIOzHln7YmRiq/view?usp=sharing',NULL,'barisal-admin','2025-09-27 10:31:20',1,0,'2025-12-29 10:33:16','2025-12-29 10:33:16'),(7,'SSC Results-2025','ssc-results-2025',NULL,'<p>Heartiest felicitations to SSC Batch -2025 for achieving the&nbsp; highest percentage of A+ in Cox’s Bazar district.Out of 39 students 24 students have secured GPA 5.In terms of percentage it is 62%.RCESC family takes pride of this brilliant result. Let’s celebrate the best result in the history of RCESC .</p>',NULL,'https://drive.google.com/file/d/1Scuv6oqJmuloEw_n5AUUS0tQpZuh4am4/view?usp=sharing',NULL,'barisal-admin','2025-07-22 10:33:16',1,0,'2025-12-29 10:34:48','2025-12-29 10:34:48'),(8,'Best Students(HSC Level )-2025','best-studentshsc-level-2025',NULL,'<p>RCESC is very delighted to announce that our HSC batch -2024&nbsp; student Newaj Ifti Taif has been selected as the \"Best&nbsp; Student \"from Business Studies group in Ramu Upazila under the government run program “Performance Based Grants For Secondary Institution” in college section.We wish him all the best for his unique and extraordinary achievement.</p>',NULL,'https://drive.google.com/file/d/1g4ig-JnqdQfZPqOLUQJ-R1hLq3zM7Eb6/view?usp=sharing',NULL,'barisal-admin','2025-05-26 10:34:48',1,0,'2025-12-29 10:36:38','2025-12-29 10:36:38'),(9,'Best Students(SSC Level )-2025','best-studentsssc-level-2025',NULL,'<p>We are extremely happy to announce that our SSC Batch -2024 Student Makhnun Morsaha has been selected as the \"Best Student \" from Science group in Ramu Upazila under the \"&nbsp; Performance Based Grants for Secondary Institution \" a program run by the Bangladesh Government .RCESC wishes her all the best and hope that she will bring more success in her upcoming days.</p>',NULL,'https://drive.google.com/file/d/1ikm-PtoUV3bQopypJBOGkzf59CeBW7uF/view?usp=sharing',NULL,'barisal-admin','2025-05-26 10:36:38',1,0,'2025-12-29 10:37:52','2025-12-29 10:38:54');
/*!40000 ALTER TABLE `achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES ('barishal-cantonment-public-school-college-cache-homepage.achievements','O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:3:{i:0;O:22:\"App\\Models\\Achievement\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:12:\"achievements\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:1;s:5:\"title\";s:32:\"Success of Sharmika Sharmin Poly\";s:4:\"slug\";s:32:\"success-of-sharmika-sharmin-poly\";s:7:\"excerpt\";N;s:9:\"image_url\";s:82:\"https://drive.google.com/file/d/13D9wjhnXwhdGxSOQ2F98nAfYRc4R5J_Z/view?usp=sharing\";s:12:\"published_at\";s:19:\"2025-12-16 15:08:41\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:1;s:5:\"title\";s:32:\"Success of Sharmika Sharmin Poly\";s:4:\"slug\";s:32:\"success-of-sharmika-sharmin-poly\";s:7:\"excerpt\";N;s:9:\"image_url\";s:82:\"https://drive.google.com/file/d/13D9wjhnXwhdGxSOQ2F98nAfYRc4R5J_Z/view?usp=sharing\";s:12:\"published_at\";s:19:\"2025-12-16 15:08:41\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:3:{s:9:\"is_active\";s:7:\"boolean\";s:12:\"published_at\";s:8:\"datetime\";s:17:\"additional_images\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:11:{i:0;s:5:\"title\";i:1;s:4:\"slug\";i:2;s:7:\"excerpt\";i:3;s:7:\"content\";i:4;s:24:\"google_drive_folder_link\";i:5;s:9:\"image_url\";i:6;s:17:\"additional_images\";i:7;s:6:\"author\";i:8;s:9:\"is_active\";i:9;s:12:\"published_at\";i:10;s:5:\"order\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:22:\"App\\Models\\Achievement\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:12:\"achievements\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:2;s:5:\"title\";s:55:\"International World Robotics Olympiad-2025 in Singapore\";s:4:\"slug\";s:55:\"international-world-robotics-olympiad-2025-in-singapore\";s:7:\"excerpt\";N;s:9:\"image_url\";s:82:\"https://drive.google.com/file/d/1NMMs5pd9bRU5l1MQtztkn1_MEexF7_LD/view?usp=sharing\";s:12:\"published_at\";s:19:\"2025-11-28 09:46:03\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:2;s:5:\"title\";s:55:\"International World Robotics Olympiad-2025 in Singapore\";s:4:\"slug\";s:55:\"international-world-robotics-olympiad-2025-in-singapore\";s:7:\"excerpt\";N;s:9:\"image_url\";s:82:\"https://drive.google.com/file/d/1NMMs5pd9bRU5l1MQtztkn1_MEexF7_LD/view?usp=sharing\";s:12:\"published_at\";s:19:\"2025-11-28 09:46:03\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:3:{s:9:\"is_active\";s:7:\"boolean\";s:12:\"published_at\";s:8:\"datetime\";s:17:\"additional_images\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:11:{i:0;s:5:\"title\";i:1;s:4:\"slug\";i:2;s:7:\"excerpt\";i:3;s:7:\"content\";i:4;s:24:\"google_drive_folder_link\";i:5;s:9:\"image_url\";i:6;s:17:\"additional_images\";i:7;s:6:\"author\";i:8;s:9:\"is_active\";i:9;s:12:\"published_at\";i:10;s:5:\"order\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:22:\"App\\Models\\Achievement\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:12:\"achievements\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:3;s:5:\"title\";s:45:\"International World Robot Olympiad (WRO)-2025\";s:4:\"slug\";s:43:\"international-world-robot-olympiad-wro-2025\";s:7:\"excerpt\";N;s:9:\"image_url\";s:82:\"https://drive.google.com/file/d/1djv4qEYP6jl1EVhf6iO7wE63Y66f49EM/view?usp=sharing\";s:12:\"published_at\";s:19:\"2025-11-27 09:47:09\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:3;s:5:\"title\";s:45:\"International World Robot Olympiad (WRO)-2025\";s:4:\"slug\";s:43:\"international-world-robot-olympiad-wro-2025\";s:7:\"excerpt\";N;s:9:\"image_url\";s:82:\"https://drive.google.com/file/d/1djv4qEYP6jl1EVhf6iO7wE63Y66f49EM/view?usp=sharing\";s:12:\"published_at\";s:19:\"2025-11-27 09:47:09\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:3:{s:9:\"is_active\";s:7:\"boolean\";s:12:\"published_at\";s:8:\"datetime\";s:17:\"additional_images\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:11:{i:0;s:5:\"title\";i:1;s:4:\"slug\";i:2;s:7:\"excerpt\";i:3;s:7:\"content\";i:4;s:24:\"google_drive_folder_link\";i:5;s:9:\"image_url\";i:6;s:17:\"additional_images\";i:7;s:6:\"author\";i:8;s:9:\"is_active\";i:9;s:12:\"published_at\";i:10;s:5:\"order\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}',1767098973),('barishal-cantonment-public-school-college-cache-homepage.messages','O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:3:{i:0;O:18:\"App\\Models\\Message\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"messages\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:1;s:4:\"name\";s:40:\"Maj Gen Mohammad Asadullah Minhazul Alam\";s:11:\"designation\";s:72:\"ndu, psc, PhD GOC 10 Infantry Division & Area Commander Cox\'s Bazar Area\";s:7:\"message\";s:1029:\"Ramu Cantonment English School and College is successfully going forward excellently on its way to the world of perfection with experience, wisdom and specialization. It has developed many bright characters who all are well established in the society. Ramu Cantonment English School and College is always an enthusiastic host to play a significant role in grooming minds fit in all respects to be the leaders of next generation.  I like to draw the attention of all students to get ready to face every challenge of the modern world optimistically. Believe in yourself and your unlimited potential. ‘No limit to potential’ may be your guiding force to go ahead. With your whole-hearted participation and co- operation Ramu Cantonment English School and College is sure to go a long way to perfection. I wish this noble institution a grand success.\n\n \n\nMaj Gen Mohammad Asadullah Minhazul Alam, ndu, psc, PhD\nGOC\n10 Infantry Division & Area Commander\nCox\'s Bazar Area &\nChief Patron\nRamu Cantonment English   School and College\";s:9:\"image_url\";s:82:\"https://drive.google.com/file/d/1Y7qYL8kiNGRpbs7WjB0jfaEMfE-q6TkS/view?usp=sharing\";s:5:\"order\";i:1;}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:1;s:4:\"name\";s:40:\"Maj Gen Mohammad Asadullah Minhazul Alam\";s:11:\"designation\";s:72:\"ndu, psc, PhD GOC 10 Infantry Division & Area Commander Cox\'s Bazar Area\";s:7:\"message\";s:1029:\"Ramu Cantonment English School and College is successfully going forward excellently on its way to the world of perfection with experience, wisdom and specialization. It has developed many bright characters who all are well established in the society. Ramu Cantonment English School and College is always an enthusiastic host to play a significant role in grooming minds fit in all respects to be the leaders of next generation.  I like to draw the attention of all students to get ready to face every challenge of the modern world optimistically. Believe in yourself and your unlimited potential. ‘No limit to potential’ may be your guiding force to go ahead. With your whole-hearted participation and co- operation Ramu Cantonment English School and College is sure to go a long way to perfection. I wish this noble institution a grand success.\n\n \n\nMaj Gen Mohammad Asadullah Minhazul Alam, ndu, psc, PhD\nGOC\n10 Infantry Division & Area Commander\nCox\'s Bazar Area &\nChief Patron\nRamu Cantonment English   School and College\";s:9:\"image_url\";s:82:\"https://drive.google.com/file/d/1Y7qYL8kiNGRpbs7WjB0jfaEMfE-q6TkS/view?usp=sharing\";s:5:\"order\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:3:{s:9:\"is_active\";s:7:\"boolean\";s:5:\"order\";s:7:\"integer\";s:5:\"style\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:10:{i:0;s:4:\"type\";i:1;s:4:\"name\";i:2;s:4:\"slug\";i:3;s:11:\"designation\";i:4;s:9:\"image_url\";i:5;s:7:\"message\";i:6;s:4:\"link\";i:7;s:5:\"style\";i:8;s:5:\"order\";i:9;s:9:\"is_active\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:18:\"App\\Models\\Message\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"messages\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:2;s:4:\"name\";s:27:\"Brig Gen Md Khademul Bashar\";s:11:\"designation\";s:41:\"PBGMS, psc Commander, 65 Infantry Brigade\";s:7:\"message\";s:1346:\"\"May the sapling grow into a sturdy tree and spread its branches \"\n\nRamu Cantonment English School and College is one of the best schools in Cox\'s Bazar district. I am honored and feel very privileged to be the Chairman of this renowned institution.\n\nEducation is the basis of all progress. The Bangladesh Army planted the seed in 2017 with the goal of fostering education, and it quickly grew into strong seedlings. The school has advanced to illuminate education and clear the way for every student to achieve excellence. Our experience has taught us that progress is possible only, if men and women are equally well-educated.\n\nThe entire purpose of education is not to restrict itself to imparting bookish knowledge only but inculcate humanitarian values like wisdom, compassion, courage, humility, integrity and reliability in a student. I am always excited and look forward to working with our students,staffs and parents to make Ramu Cantonment English School and College the best school it can be.\n\nWe at RCESC build the characters and shape the personalities of every individual. Our aim is to prepare the students to be winners, keen learners, progressive thinkers, good communicators and responsible citizens.\n\nBrig Gen Md Khademul Bashar, PBGMS, psc\nCommander, 65 Infantry Brigade\n&\nChairman, Ramu Cantonment English School and College\";s:9:\"image_url\";s:82:\"https://drive.google.com/file/d/1c1S0LftMeWrKugw7OMleUpNwIHX0Y7Gq/view?usp=sharing\";s:5:\"order\";i:2;}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:2;s:4:\"name\";s:27:\"Brig Gen Md Khademul Bashar\";s:11:\"designation\";s:41:\"PBGMS, psc Commander, 65 Infantry Brigade\";s:7:\"message\";s:1346:\"\"May the sapling grow into a sturdy tree and spread its branches \"\n\nRamu Cantonment English School and College is one of the best schools in Cox\'s Bazar district. I am honored and feel very privileged to be the Chairman of this renowned institution.\n\nEducation is the basis of all progress. The Bangladesh Army planted the seed in 2017 with the goal of fostering education, and it quickly grew into strong seedlings. The school has advanced to illuminate education and clear the way for every student to achieve excellence. Our experience has taught us that progress is possible only, if men and women are equally well-educated.\n\nThe entire purpose of education is not to restrict itself to imparting bookish knowledge only but inculcate humanitarian values like wisdom, compassion, courage, humility, integrity and reliability in a student. I am always excited and look forward to working with our students,staffs and parents to make Ramu Cantonment English School and College the best school it can be.\n\nWe at RCESC build the characters and shape the personalities of every individual. Our aim is to prepare the students to be winners, keen learners, progressive thinkers, good communicators and responsible citizens.\n\nBrig Gen Md Khademul Bashar, PBGMS, psc\nCommander, 65 Infantry Brigade\n&\nChairman, Ramu Cantonment English School and College\";s:9:\"image_url\";s:82:\"https://drive.google.com/file/d/1c1S0LftMeWrKugw7OMleUpNwIHX0Y7Gq/view?usp=sharing\";s:5:\"order\";i:2;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:3:{s:9:\"is_active\";s:7:\"boolean\";s:5:\"order\";s:7:\"integer\";s:5:\"style\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:10:{i:0;s:4:\"type\";i:1;s:4:\"name\";i:2;s:4:\"slug\";i:3;s:11:\"designation\";i:4;s:9:\"image_url\";i:5;s:7:\"message\";i:6;s:4:\"link\";i:7;s:5:\"style\";i:8;s:5:\"order\";i:9;s:9:\"is_active\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:18:\"App\\Models\\Message\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"messages\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:3;s:4:\"name\";s:21:\"Lt Col Md Abdur Rahim\";s:11:\"designation\";s:11:\"M Phil, AEC\";s:7:\"message\";s:2037:\"Ramu Cantonment English School has started its journey in January 2016, with a view to enlighten the light of quality education in Cox’s Bazar area. Since the inception up to till date, the small school has become a big family of more than 500 students, 30 teachers and 13 non-teaching staffs. The school is situated in a pleasant and eye catching natural environment of Ramu Cantonment.\n\nThis school is to nurture young minds and groom them into well trained, focused, committed and praiseworthy adults of tomorrow. We put the child at the center of everything we do. We believe all children have unique potential that should be encouraged. And we know that for children to excel in today’s competitive and technology-driven world, they need a new set of skills—social and emotional, as well as academic. Moreover, a lot of pioneering initiatives have been taken so that the learners of the institution can enhance their eloquence and creative skills through genuinely interesting and appealing learning experience and sagacity.\n\nThis reputed institution is decorated based on the different theme galleries as well as the classrooms are adorned with well thought-out concepts. Every moment spent in any corner of this institution will be more worthy and comfortable because of aesthetic appeal of all natural beauty.\nCreatively and use of imagination are two important aspects which can be nurtured by the curricular, co-curricular and extra-curricular activities, which is focused and given priority in RCESC. Teaching is a noble profession and parents entrust their children to us for education and well-being. As educators, our aim is to take the responsibility of their children and educate them in best manner. Our teachers are also dedicating their best possible effort to support the students and parents.\nI, sincerely, thank all the faculty members of RCESC in accomplishing the mammoth task of engraving the new exclusive reputation.\nLt Col Md Abdur Rahim, M Phil, AEC\nPrincipal\nRamu Cantonment English School and College\";s:9:\"image_url\";s:82:\"https://drive.google.com/file/d/17x2xpQUKtWF4VwZwkUCGJdV2pFK3LyiM/view?usp=sharing\";s:5:\"order\";i:3;}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:3;s:4:\"name\";s:21:\"Lt Col Md Abdur Rahim\";s:11:\"designation\";s:11:\"M Phil, AEC\";s:7:\"message\";s:2037:\"Ramu Cantonment English School has started its journey in January 2016, with a view to enlighten the light of quality education in Cox’s Bazar area. Since the inception up to till date, the small school has become a big family of more than 500 students, 30 teachers and 13 non-teaching staffs. The school is situated in a pleasant and eye catching natural environment of Ramu Cantonment.\n\nThis school is to nurture young minds and groom them into well trained, focused, committed and praiseworthy adults of tomorrow. We put the child at the center of everything we do. We believe all children have unique potential that should be encouraged. And we know that for children to excel in today’s competitive and technology-driven world, they need a new set of skills—social and emotional, as well as academic. Moreover, a lot of pioneering initiatives have been taken so that the learners of the institution can enhance their eloquence and creative skills through genuinely interesting and appealing learning experience and sagacity.\n\nThis reputed institution is decorated based on the different theme galleries as well as the classrooms are adorned with well thought-out concepts. Every moment spent in any corner of this institution will be more worthy and comfortable because of aesthetic appeal of all natural beauty.\nCreatively and use of imagination are two important aspects which can be nurtured by the curricular, co-curricular and extra-curricular activities, which is focused and given priority in RCESC. Teaching is a noble profession and parents entrust their children to us for education and well-being. As educators, our aim is to take the responsibility of their children and educate them in best manner. Our teachers are also dedicating their best possible effort to support the students and parents.\nI, sincerely, thank all the faculty members of RCESC in accomplishing the mammoth task of engraving the new exclusive reputation.\nLt Col Md Abdur Rahim, M Phil, AEC\nPrincipal\nRamu Cantonment English School and College\";s:9:\"image_url\";s:82:\"https://drive.google.com/file/d/17x2xpQUKtWF4VwZwkUCGJdV2pFK3LyiM/view?usp=sharing\";s:5:\"order\";i:3;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:3:{s:9:\"is_active\";s:7:\"boolean\";s:5:\"order\";s:7:\"integer\";s:5:\"style\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:10:{i:0;s:4:\"type\";i:1;s:4:\"name\";i:2;s:4:\"slug\";i:3;s:11:\"designation\";i:4;s:9:\"image_url\";i:5;s:7:\"message\";i:6;s:4:\"link\";i:7;s:5:\"style\";i:8;s:5:\"order\";i:9;s:9:\"is_active\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}',1767100773),('barishal-cantonment-public-school-college-cache-homepage.news_events','O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:3:{i:0;O:20:\"App\\Models\\NewsEvent\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"news_events\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:4;s:5:\"title\";s:31:\"Welcome To RCES- NEWS and Event\";s:4:\"slug\";s:30:\"welcome-to-rces-news-and-event\";s:7:\"excerpt\";N;s:9:\"image_url\";s:171:\"https://acps-c53.s3.us-east-2.amazonaws.com/dws/2025/content_image/Content_Big_Celebrating%20Success%20%E2%80%93%20SSC%202025%20Award%20Ceremony_04-09-2025-10-58-57_s3.jpg\";s:12:\"published_at\";s:19:\"2025-12-14 12:43:03\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:4;s:5:\"title\";s:31:\"Welcome To RCES- NEWS and Event\";s:4:\"slug\";s:30:\"welcome-to-rces-news-and-event\";s:7:\"excerpt\";N;s:9:\"image_url\";s:171:\"https://acps-c53.s3.us-east-2.amazonaws.com/dws/2025/content_image/Content_Big_Celebrating%20Success%20%E2%80%93%20SSC%202025%20Award%20Ceremony_04-09-2025-10-58-57_s3.jpg\";s:12:\"published_at\";s:19:\"2025-12-14 12:43:03\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:3:{s:9:\"is_active\";s:7:\"boolean\";s:12:\"published_at\";s:8:\"datetime\";s:17:\"additional_images\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:9:{i:0;s:5:\"title\";i:1;s:4:\"slug\";i:2;s:7:\"excerpt\";i:3;s:7:\"content\";i:4;s:9:\"image_url\";i:5;s:17:\"additional_images\";i:6;s:6:\"author\";i:7;s:9:\"is_active\";i:8;s:12:\"published_at\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:20:\"App\\Models\\NewsEvent\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"news_events\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:3;s:5:\"title\";s:33:\"Welcome To RCES- NEWS and Event-2\";s:4:\"slug\";s:32:\"welcome-to-rces-news-and-event-2\";s:7:\"excerpt\";N;s:9:\"image_url\";s:171:\"https://acps-c53.s3.us-east-2.amazonaws.com/dws/2025/content_image/Content_Big_Celebrating%20Success%20%E2%80%93%20SSC%202025%20Award%20Ceremony_04-09-2025-10-58-57_s3.jpg\";s:12:\"published_at\";s:19:\"2025-12-14 12:39:04\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:3;s:5:\"title\";s:33:\"Welcome To RCES- NEWS and Event-2\";s:4:\"slug\";s:32:\"welcome-to-rces-news-and-event-2\";s:7:\"excerpt\";N;s:9:\"image_url\";s:171:\"https://acps-c53.s3.us-east-2.amazonaws.com/dws/2025/content_image/Content_Big_Celebrating%20Success%20%E2%80%93%20SSC%202025%20Award%20Ceremony_04-09-2025-10-58-57_s3.jpg\";s:12:\"published_at\";s:19:\"2025-12-14 12:39:04\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:3:{s:9:\"is_active\";s:7:\"boolean\";s:12:\"published_at\";s:8:\"datetime\";s:17:\"additional_images\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:9:{i:0;s:5:\"title\";i:1;s:4:\"slug\";i:2;s:7:\"excerpt\";i:3;s:7:\"content\";i:4;s:9:\"image_url\";i:5;s:17:\"additional_images\";i:6;s:6:\"author\";i:7;s:9:\"is_active\";i:8;s:12:\"published_at\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:20:\"App\\Models\\NewsEvent\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:11:\"news_events\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:2;s:5:\"title\";s:33:\"Welcome To RCES- NEWS and Event-3\";s:4:\"slug\";s:32:\"welcome-to-rces-news-and-event-3\";s:7:\"excerpt\";N;s:9:\"image_url\";s:171:\"https://acps-c53.s3.us-east-2.amazonaws.com/dws/2025/content_image/Content_Big_Celebrating%20Success%20%E2%80%93%20SSC%202025%20Award%20Ceremony_04-09-2025-10-58-57_s3.jpg\";s:12:\"published_at\";s:19:\"2025-12-14 12:05:01\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:2;s:5:\"title\";s:33:\"Welcome To RCES- NEWS and Event-3\";s:4:\"slug\";s:32:\"welcome-to-rces-news-and-event-3\";s:7:\"excerpt\";N;s:9:\"image_url\";s:171:\"https://acps-c53.s3.us-east-2.amazonaws.com/dws/2025/content_image/Content_Big_Celebrating%20Success%20%E2%80%93%20SSC%202025%20Award%20Ceremony_04-09-2025-10-58-57_s3.jpg\";s:12:\"published_at\";s:19:\"2025-12-14 12:05:01\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:3:{s:9:\"is_active\";s:7:\"boolean\";s:12:\"published_at\";s:8:\"datetime\";s:17:\"additional_images\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:9:{i:0;s:5:\"title\";i:1;s:4:\"slug\";i:2;s:7:\"excerpt\";i:3;s:7:\"content\";i:4;s:9:\"image_url\";i:5;s:17:\"additional_images\";i:6;s:6:\"author\";i:7;s:9:\"is_active\";i:8;s:12:\"published_at\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}',1767098973),('barishal-cantonment-public-school-college-cache-homepage.notices','O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:5:{i:0;O:17:\"App\\Models\\Notice\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:7:\"notices\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:14;s:5:\"title\";s:25:\"Recruitment Circular-2025\";s:4:\"file\";s:82:\"https://drive.google.com/file/d/1JKsocypiqPYkItnfgyF9VvE6wK1R3pZG/view?usp=sharing\";s:4:\"link\";s:82:\"https://drive.google.com/file/d/1JKsocypiqPYkItnfgyF9VvE6wK1R3pZG/view?usp=sharing\";s:7:\"page_id\";i:14;s:12:\"published_at\";s:19:\"2025-12-15 11:29:05\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:14;s:5:\"title\";s:25:\"Recruitment Circular-2025\";s:4:\"file\";s:82:\"https://drive.google.com/file/d/1JKsocypiqPYkItnfgyF9VvE6wK1R3pZG/view?usp=sharing\";s:4:\"link\";s:82:\"https://drive.google.com/file/d/1JKsocypiqPYkItnfgyF9VvE6wK1R3pZG/view?usp=sharing\";s:7:\"page_id\";i:14;s:12:\"published_at\";s:19:\"2025-12-15 11:29:05\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:12:\"published_at\";s:8:\"datetime\";s:10:\"expires_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"page\";O:15:\"App\\Models\\Page\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"pages\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:2:\"id\";i:14;s:4:\"slug\";s:32:\"recruitment-circular-2025-notice\";}s:11:\"\0*\0original\";a:2:{s:2:\"id\";i:14;s:4:\"slug\";s:32:\"recruitment-circular-2025-notice\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:3:{s:12:\"is_published\";s:7:\"boolean\";s:12:\"published_at\";s:8:\"datetime\";s:7:\"buttons\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:11:{i:0;s:5:\"title\";i:1;s:4:\"slug\";i:2;s:7:\"content\";i:3;s:12:\"html_content\";i:4;s:7:\"buttons\";i:5;s:14:\"bottom_content\";i:6;s:10:\"meta_title\";i:7;s:16:\"meta_description\";i:8;s:12:\"is_published\";i:9;s:7:\"menu_id\";i:10;s:12:\"published_at\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:5:\"title\";i:1;s:7:\"content\";i:2;s:4:\"file\";i:3;s:4:\"link\";i:4;s:7:\"page_id\";i:5;s:12:\"published_at\";i:6;s:10:\"expires_at\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:17:\"App\\Models\\Notice\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:7:\"notices\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:15;s:5:\"title\";s:30:\"Results of Admission Test-2026\";s:4:\"file\";s:82:\"https://drive.google.com/file/d/1VYEC6M3lrqnGbsXuyNH48XSuo5xoK-Li/view?usp=sharing\";s:4:\"link\";s:82:\"https://drive.google.com/file/d/1VYEC6M3lrqnGbsXuyNH48XSuo5xoK-Li/view?usp=sharing\";s:7:\"page_id\";i:15;s:12:\"published_at\";s:19:\"2025-12-13 11:29:49\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:15;s:5:\"title\";s:30:\"Results of Admission Test-2026\";s:4:\"file\";s:82:\"https://drive.google.com/file/d/1VYEC6M3lrqnGbsXuyNH48XSuo5xoK-Li/view?usp=sharing\";s:4:\"link\";s:82:\"https://drive.google.com/file/d/1VYEC6M3lrqnGbsXuyNH48XSuo5xoK-Li/view?usp=sharing\";s:7:\"page_id\";i:15;s:12:\"published_at\";s:19:\"2025-12-13 11:29:49\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:12:\"published_at\";s:8:\"datetime\";s:10:\"expires_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"page\";O:15:\"App\\Models\\Page\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"pages\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:2:\"id\";i:15;s:4:\"slug\";s:37:\"results-of-admission-test-2026-notice\";}s:11:\"\0*\0original\";a:2:{s:2:\"id\";i:15;s:4:\"slug\";s:37:\"results-of-admission-test-2026-notice\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:3:{s:12:\"is_published\";s:7:\"boolean\";s:12:\"published_at\";s:8:\"datetime\";s:7:\"buttons\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:11:{i:0;s:5:\"title\";i:1;s:4:\"slug\";i:2;s:7:\"content\";i:3;s:12:\"html_content\";i:4;s:7:\"buttons\";i:5;s:14:\"bottom_content\";i:6;s:10:\"meta_title\";i:7;s:16:\"meta_description\";i:8;s:12:\"is_published\";i:9;s:7:\"menu_id\";i:10;s:12:\"published_at\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:5:\"title\";i:1;s:7:\"content\";i:2;s:4:\"file\";i:3;s:4:\"link\";i:4;s:7:\"page_id\";i:5;s:12:\"published_at\";i:6;s:10:\"expires_at\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:17:\"App\\Models\\Notice\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:7:\"notices\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:16;s:5:\"title\";s:23:\"Admission Circular 2026\";s:4:\"file\";s:82:\"https://drive.google.com/file/d/1KoaMDdKVK7z1OcJdrwArQsS75cma7cQc/view?usp=sharing\";s:4:\"link\";s:82:\"https://drive.google.com/file/d/1KoaMDdKVK7z1OcJdrwArQsS75cma7cQc/view?usp=sharing\";s:7:\"page_id\";i:16;s:12:\"published_at\";s:19:\"2025-10-22 11:31:38\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:16;s:5:\"title\";s:23:\"Admission Circular 2026\";s:4:\"file\";s:82:\"https://drive.google.com/file/d/1KoaMDdKVK7z1OcJdrwArQsS75cma7cQc/view?usp=sharing\";s:4:\"link\";s:82:\"https://drive.google.com/file/d/1KoaMDdKVK7z1OcJdrwArQsS75cma7cQc/view?usp=sharing\";s:7:\"page_id\";i:16;s:12:\"published_at\";s:19:\"2025-10-22 11:31:38\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:12:\"published_at\";s:8:\"datetime\";s:10:\"expires_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"page\";O:15:\"App\\Models\\Page\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"pages\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:2:\"id\";i:16;s:4:\"slug\";s:30:\"admission-circular-2026-notice\";}s:11:\"\0*\0original\";a:2:{s:2:\"id\";i:16;s:4:\"slug\";s:30:\"admission-circular-2026-notice\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:3:{s:12:\"is_published\";s:7:\"boolean\";s:12:\"published_at\";s:8:\"datetime\";s:7:\"buttons\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:11:{i:0;s:5:\"title\";i:1;s:4:\"slug\";i:2;s:7:\"content\";i:3;s:12:\"html_content\";i:4;s:7:\"buttons\";i:5;s:14:\"bottom_content\";i:6;s:10:\"meta_title\";i:7;s:16:\"meta_description\";i:8;s:12:\"is_published\";i:9;s:7:\"menu_id\";i:10;s:12:\"published_at\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:5:\"title\";i:1;s:7:\"content\";i:2;s:4:\"file\";i:3;s:4:\"link\";i:4;s:7:\"page_id\";i:5;s:12:\"published_at\";i:6;s:10:\"expires_at\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:3;O:17:\"App\\Models\\Notice\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:7:\"notices\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:17;s:5:\"title\";s:32:\"Admission Open For Class XI-2025\";s:4:\"file\";s:82:\"https://drive.google.com/file/d/1_F05wZ8BjZ4Oe6X988Dq8mHo_syIIoCd/view?usp=sharing\";s:4:\"link\";s:82:\"https://drive.google.com/file/d/1_F05wZ8BjZ4Oe6X988Dq8mHo_syIIoCd/view?usp=sharing\";s:7:\"page_id\";i:17;s:12:\"published_at\";s:19:\"2025-08-01 11:33:18\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:17;s:5:\"title\";s:32:\"Admission Open For Class XI-2025\";s:4:\"file\";s:82:\"https://drive.google.com/file/d/1_F05wZ8BjZ4Oe6X988Dq8mHo_syIIoCd/view?usp=sharing\";s:4:\"link\";s:82:\"https://drive.google.com/file/d/1_F05wZ8BjZ4Oe6X988Dq8mHo_syIIoCd/view?usp=sharing\";s:7:\"page_id\";i:17;s:12:\"published_at\";s:19:\"2025-08-01 11:33:18\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:12:\"published_at\";s:8:\"datetime\";s:10:\"expires_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"page\";O:15:\"App\\Models\\Page\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"pages\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:2:\"id\";i:17;s:4:\"slug\";s:39:\"admission-open-for-class-xi-2025-notice\";}s:11:\"\0*\0original\";a:2:{s:2:\"id\";i:17;s:4:\"slug\";s:39:\"admission-open-for-class-xi-2025-notice\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:3:{s:12:\"is_published\";s:7:\"boolean\";s:12:\"published_at\";s:8:\"datetime\";s:7:\"buttons\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:11:{i:0;s:5:\"title\";i:1;s:4:\"slug\";i:2;s:7:\"content\";i:3;s:12:\"html_content\";i:4;s:7:\"buttons\";i:5;s:14:\"bottom_content\";i:6;s:10:\"meta_title\";i:7;s:16:\"meta_description\";i:8;s:12:\"is_published\";i:9;s:7:\"menu_id\";i:10;s:12:\"published_at\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:5:\"title\";i:1;s:7:\"content\";i:2;s:4:\"file\";i:3;s:4:\"link\";i:4;s:7:\"page_id\";i:5;s:12:\"published_at\";i:6;s:10:\"expires_at\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:4;O:17:\"App\\Models\\Notice\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:7:\"notices\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:6:{s:2:\"id\";i:19;s:5:\"title\";s:29:\"Class Time 2025(Winter) RCESC\";s:4:\"file\";s:82:\"https://drive.google.com/file/d/1pAA7JdgAhT9LoyJ1hRXRUcnjm3n_1x48/view?usp=sharing\";s:4:\"link\";s:82:\"https://drive.google.com/file/d/1pAA7JdgAhT9LoyJ1hRXRUcnjm3n_1x48/view?usp=sharing\";s:7:\"page_id\";i:19;s:12:\"published_at\";s:19:\"2025-01-15 11:37:35\";}s:11:\"\0*\0original\";a:6:{s:2:\"id\";i:19;s:5:\"title\";s:29:\"Class Time 2025(Winter) RCESC\";s:4:\"file\";s:82:\"https://drive.google.com/file/d/1pAA7JdgAhT9LoyJ1hRXRUcnjm3n_1x48/view?usp=sharing\";s:4:\"link\";s:82:\"https://drive.google.com/file/d/1pAA7JdgAhT9LoyJ1hRXRUcnjm3n_1x48/view?usp=sharing\";s:7:\"page_id\";i:19;s:12:\"published_at\";s:19:\"2025-01-15 11:37:35\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:12:\"published_at\";s:8:\"datetime\";s:10:\"expires_at\";s:8:\"datetime\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:4:\"page\";O:15:\"App\\Models\\Page\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"pages\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:2:{s:2:\"id\";i:19;s:4:\"slug\";s:34:\"class-time-2025winter-rcesc-notice\";}s:11:\"\0*\0original\";a:2:{s:2:\"id\";i:19;s:4:\"slug\";s:34:\"class-time-2025winter-rcesc-notice\";}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:3:{s:12:\"is_published\";s:7:\"boolean\";s:12:\"published_at\";s:8:\"datetime\";s:7:\"buttons\";s:5:\"array\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:11:{i:0;s:5:\"title\";i:1;s:4:\"slug\";i:2;s:7:\"content\";i:3;s:12:\"html_content\";i:4;s:7:\"buttons\";i:5;s:14:\"bottom_content\";i:6;s:10:\"meta_title\";i:7;s:16:\"meta_description\";i:8;s:12:\"is_published\";i:9;s:7:\"menu_id\";i:10;s:12:\"published_at\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:5:\"title\";i:1;s:7:\"content\";i:2;s:4:\"file\";i:3;s:4:\"link\";i:4;s:7:\"page_id\";i:5;s:12:\"published_at\";i:6;s:10:\"expires_at\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}',1767098973),('barishal-cantonment-public-school-college-cache-homepage.sliders','O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:3:{i:0;O:17:\"App\\Models\\Slider\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:7:\"sliders\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:1;s:5:\"title\";s:21:\"Welcome to Our Campus\";s:9:\"image_url\";s:80:\"https://drive.google.com/thumbnail?id=11duBeC07CkluxdXpC8v7HYLBfFpaA9cc&sz=w1920\";s:4:\"link\";N;s:5:\"order\";i:1;}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:1;s:5:\"title\";s:21:\"Welcome to Our Campus\";s:9:\"image_url\";s:80:\"https://drive.google.com/thumbnail?id=11duBeC07CkluxdXpC8v7HYLBfFpaA9cc&sz=w1920\";s:4:\"link\";N;s:5:\"order\";i:1;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:9:\"is_active\";s:7:\"boolean\";s:5:\"order\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:5:\"title\";i:1;s:9:\"image_url\";i:2;s:4:\"link\";i:3;s:5:\"order\";i:4;s:9:\"is_active\";i:5;s:14:\"image_position\";i:6;s:9:\"image_fit\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:17:\"App\\Models\\Slider\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:7:\"sliders\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:3;s:5:\"title\";s:16:\"Dictory Day-2025\";s:9:\"image_url\";s:80:\"https://drive.google.com/thumbnail?id=1Puj4Bl9PKjIQ_TwG2y-3aGx_e7CjjBNB&sz=w1920\";s:4:\"link\";N;s:5:\"order\";i:2;}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:3;s:5:\"title\";s:16:\"Dictory Day-2025\";s:9:\"image_url\";s:80:\"https://drive.google.com/thumbnail?id=1Puj4Bl9PKjIQ_TwG2y-3aGx_e7CjjBNB&sz=w1920\";s:4:\"link\";N;s:5:\"order\";i:2;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:9:\"is_active\";s:7:\"boolean\";s:5:\"order\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:5:\"title\";i:1;s:9:\"image_url\";i:2;s:4:\"link\";i:3;s:5:\"order\";i:4;s:9:\"is_active\";i:5;s:14:\"image_position\";i:6;s:9:\"image_fit\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:17:\"App\\Models\\Slider\":33:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:7:\"sliders\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:5:{s:2:\"id\";i:4;s:5:\"title\";s:23:\"Cultural Programme-2025\";s:9:\"image_url\";s:80:\"https://drive.google.com/thumbnail?id=1kYNiQmGadCeCP_JyZ3TAgoa9eei_7liO&sz=w1920\";s:4:\"link\";N;s:5:\"order\";i:3;}s:11:\"\0*\0original\";a:5:{s:2:\"id\";i:4;s:5:\"title\";s:23:\"Cultural Programme-2025\";s:9:\"image_url\";s:80:\"https://drive.google.com/thumbnail?id=1kYNiQmGadCeCP_JyZ3TAgoa9eei_7liO&sz=w1920\";s:4:\"link\";N;s:5:\"order\";i:3;}s:10:\"\0*\0changes\";a:0:{}s:11:\"\0*\0previous\";a:0:{}s:8:\"\0*\0casts\";a:2:{s:9:\"is_active\";s:7:\"boolean\";s:5:\"order\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:5:\"title\";i:1;s:9:\"image_url\";i:2;s:4:\"link\";i:3;s:5:\"order\";i:4;s:9:\"is_active\";i:5;s:14:\"image_position\";i:6;s:9:\"image_fit\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}',1767100773);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
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
-- Table structure for table `footer_settings`
--

DROP TABLE IF EXISTS `footer_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `footer_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `logo_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `school_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Barishal Cantonment Public School & College',
  `contact_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'CONTACT',
  `contact_phones` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `featured_links_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FEATURED LINKS',
  `featured_links` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `facebook_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'OUR FACEBOOK PAGE',
  `facebook_embed_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `facebook_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Copyright ©2024 BCPSC | Developed By Trust Innovation Ltd.',
  `privacy_policy_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footer_settings`
--

LOCK TABLES `footer_settings` WRITE;
/*!40000 ALTER TABLE `footer_settings` DISABLE KEYS */;
INSERT INTO `footer_settings` VALUES (1,'https://drive.google.com/file/d/1F_ymKEjos4EyfD6pj4ajtSniPTYZIIsp/view?usp=sharing','RAMU CANTONMENT ENGLISH SCHOOL & COLLEGE','CONTACT','[{\"label\":\"Contact\",\"number\":\"01769102019\"}]','rces.school@gmail.com','Ramu Cantonment, Ramu, Cox\'s Bazar','Featured Links','[{\"title\":\"Education Board\",\"url\":\"https:\\/\\/www.dhakaeducationboard.gov.bd\\/site\\/\"}]','Facebook Page','https://www.facebook.com/rcescox/','https://www.facebook.com/rcescox/',NULL,'Copyright ©2025 RAMU| Developed By Trust Innovation Ltd..',NULL,'2025-11-22 08:27:15','2025-12-28 04:59:41');
/*!40000 ALTER TABLE `footer_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `header_settings`
--

DROP TABLE IF EXISTS `header_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `header_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phones` json DEFAULT NULL,
  `facebook_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_login_link` tinyint(1) NOT NULL DEFAULT '1',
  `logo_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `favicon_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `site_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BARISHAL CANTONMENT PUBLIC SCHOOL & COLLEGE',
  `site_name_bangla` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'বরিশাল ক্যান্টনমেন্ট পাবলিক স্কুল ও কলেজ',
  `eiin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Barishal Cantonment, EIIN:136998',
  `action_buttons` json DEFAULT NULL,
  `show_notice_ticker` tinyint(1) DEFAULT '1',
  `notice_ticker_limit` int DEFAULT '10',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `header_settings`
--

LOCK TABLES `header_settings` WRITE;
/*!40000 ALTER TABLE `header_settings` DISABLE KEYS */;
INSERT INTO `header_settings` VALUES (1,'rces.school@gmail.com','[{\"number\": \"01769102019\"}]',NULL,NULL,NULL,NULL,NULL,1,'https://drive.google.com/file/d/1F_ymKEjos4EyfD6pj4ajtSniPTYZIIsp/view?usp=drive_link','https://drive.google.com/file/d/1F_ymKEjos4EyfD6pj4ajtSniPTYZIIsp/view?usp=drive_link','RAMU CANTONMENT ENGLISH SCHOOL & COLLEGE','রামু ক্যান্টনমেন্ট ইংলিশ স্কুল এন্ড কলেজ',' School Code : 412040123 || EIIN : 138420','[{\"url\": \"online-admission\", \"label\": \"Admission\", \"order\": \"2\", \"bg_color\": \"#f20000\", \"text_color\": \"#ffffff\"}, {\"url\": \"https://admission.trusteduerp.xyz/job/apply?insId=1018\", \"label\": \"E-Recruement \", \"order\": \"1\", \"bg_color\": \"#004d05\", \"text_color\": \"#ffffff\"}, {\"url\": \"https://s3.trusteduerp.xyz/st/login?insId=1018\", \"label\": \"Online Fee\", \"order\": \"3\", \"bg_color\": \"#001f07\", \"text_color\": \"#ffffff\"}]',1,1,'2025-11-22 08:34:32','2025-12-30 05:59:22');
/*!40000 ALTER TABLE `header_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `important_links`
--

DROP TABLE IF EXISTS `important_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `important_links` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `important_links`
--

LOCK TABLES `important_links` WRITE;
/*!40000 ALTER TABLE `important_links` DISABLE KEYS */;
INSERT INTO `important_links` VALUES (1,'At a glance','https://bacpsc.edu.bd/',1,1,'2025-11-22 04:55:32','2025-11-22 04:55:32'),(2,'Our Vision & Mission','https://bacpsc.edu.bd/',2,1,'2025-11-22 04:55:57','2025-11-22 04:56:14'),(3,' Syllabus','https://bacpsc.edu.bd/',3,1,'2025-12-14 10:39:35','2025-12-14 10:39:53'),(4,'Admission','https://bacpsc.edu.bd/',4,1,'2025-12-14 10:40:24','2025-12-14 10:40:24'),(5,'Academic Facilities','https://bacpsc.edu.bd/',0,1,'2025-12-14 10:40:53','2025-12-14 10:40:53'),(6,'Extra Curricular','https://bacpsc.edu.bd/',0,1,'2025-12-14 10:41:18','2025-12-14 10:41:18'),(7,'Teacher & Staff','https://bacpsc.edu.bd/',0,1,'2025-12-14 10:41:38','2025-12-14 10:41:38'),(8,'Governing Body','https://bacpsc.edu.bd/',0,1,'2025-12-14 10:42:00','2025-12-14 10:42:00');
/*!40000 ALTER TABLE `important_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location_maps`
--

DROP TABLE IF EXISTS `location_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location_maps` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Location (Google Map)',
  `embed_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` int NOT NULL DEFAULT '400',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_maps`
--

LOCK TABLES `location_maps` WRITE;
/*!40000 ALTER TABLE `location_maps` DISABLE KEYS */;
INSERT INTO `location_maps` VALUES (1,'Location (Google Map)','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3715.1903582032132!2d92.11313811113531!3d21.382408080274917!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30adc1909d3fda2b%3A0xe651a7e02084e808!2sRamu%20cantonment%20English%20school%20and%20college!5e0!3m2!1sen!2sbd!4v1766993206371!5m2!1sen!2sbd',400,1,'2025-11-22 08:09:59','2025-12-29 07:27:49');
/*!40000 ALTER TABLE `location_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_card_items`
--

DROP TABLE IF EXISTS `menu_card_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_card_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_card_id` bigint unsigned NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_id` bigint unsigned DEFAULT NULL,
  `order` int NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_card_items_menu_card_id_foreign` (`menu_card_id`),
  KEY `menu_card_items_page_id_foreign` (`page_id`),
  CONSTRAINT `menu_card_items_menu_card_id_foreign` FOREIGN KEY (`menu_card_id`) REFERENCES `menu_cards` (`id`) ON DELETE CASCADE,
  CONSTRAINT `menu_card_items_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_card_items`
--

LOCK TABLES `menu_card_items` WRITE;
/*!40000 ALTER TABLE `menu_card_items` DISABLE KEYS */;
INSERT INTO `menu_card_items` VALUES (1,1,'About Institute','https://bacpsc.edu.bd/',NULL,1,1,'2025-11-22 07:47:46','2025-12-14 10:53:32'),(2,1,'Massage of the Chief Patron','http://barishal.test/message/chief-patron-massage',NULL,2,1,'2025-11-22 07:48:51','2025-12-14 10:52:06'),(3,1,'Massage of the Chief Chairman','http://barishal.test/message/brig-gen-md-solmon-ibne-a-rouf',NULL,3,1,'2025-12-14 10:50:30','2025-12-14 10:52:06'),(4,1,'Message of the Principal','http://barishal.test/message/lt-col-mohammad-sharif-uzzaman',NULL,4,1,'2025-12-14 10:52:06','2025-12-14 10:53:32'),(5,2,'Academic Calendar','https://bacpsc.edu.bd/',NULL,1,1,'2025-12-14 10:55:15','2025-12-14 10:55:15'),(6,2,'Syllabus','https://bacpsc.edu.bd/',NULL,2,1,'2025-12-14 10:55:15','2025-12-14 10:55:15'),(7,2,'Class Routine','https://bacpsc.edu.bd/',NULL,3,1,'2025-12-14 10:55:15','2025-12-14 10:55:15'),(8,2,'Bus Schedule','https://bacpsc.edu.bd/',NULL,4,1,'2025-12-14 10:55:15','2025-12-14 10:55:15');
/*!40000 ALTER TABLE `menu_card_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_card_settings`
--

DROP TABLE IF EXISTS `menu_card_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_card_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_card_settings`
--

LOCK TABLES `menu_card_settings` WRITE;
/*!40000 ALTER TABLE `menu_card_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_card_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_cards`
--

DROP TABLE IF EXISTS `menu_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_cards` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bg_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#0a4d3c',
  `template` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'template_1',
  `order` int NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_cards`
--

LOCK TABLES `menu_cards` WRITE;
/*!40000 ALTER TABLE `menu_cards` DISABLE KEYS */;
INSERT INTO `menu_cards` VALUES (1,'About','https://bacpsc.edu.bd/wp-content/uploads/2024/10/pngwing.com-6-qjw6xoa2zmq0bmfiy0y114xrtalnymruj74dk6aj1k.png','#0a4d3c','template_1',1,1,'2025-11-22 07:47:46','2025-12-14 07:45:10'),(2,'Academic Info','https://bacpsc.edu.bd/wp-content/uploads/2024/10/school-icon-png-14040-pzdxpp8il32glqq3zma2c8b3htb2falm60ey31hv54.png','#0a4d3c','template_1',2,1,'2025-12-09 09:29:59','2025-12-14 10:46:31'),(3,'Student Corner','https://bacpsc.edu.bd/wp-content/uploads/2024/10/school-icon-png-14053-pzdxpq6crx3qxcoqu4oowq2k376fmzpci52fkbggyw.png','#0a4d3c','template_1',3,1,'2025-12-14 10:44:50','2025-12-14 10:47:12'),(4,'Administration','https://bacpsc.edu.bd/wp-content/uploads/2024/10/pngwing.com-2-300x300-1.png','#0a4d3c','template_1',4,1,'2025-12-14 10:45:05','2025-12-14 10:47:41'),(5,'Download','https://bacpsc.edu.bd/wp-content/uploads/2024/10/pngwing.com-1-q1mcc20kb9pnbp6i2e0av4bmi1g44gltvkxcl1p0q0.png','#0a4d3c','template_1',5,1,'2025-12-14 10:45:16','2025-12-14 10:48:15'),(6,'Miscellaneous','https://bacpsc.edu.bd/wp-content/uploads/2024/10/5231713-pzdy71dcn2suqtjir42cbut5xnusebfdvtlcqrsgdk.png','#0a4d3c','template_1',6,1,'2025-12-14 10:45:52','2025-12-14 10:48:36');
/*!40000 ALTER TABLE `menu_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_id` bigint unsigned DEFAULT NULL,
  `parent_id` bigint unsigned DEFAULT NULL,
  `order` int NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_highlighted` tinyint(1) NOT NULL DEFAULT '0',
  `highlight_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menus_parent_id_foreign` (`parent_id`),
  KEY `menus_page_id_foreign` (`page_id`),
  CONSTRAINT `menus_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE SET NULL,
  CONSTRAINT `menus_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Home','/',NULL,NULL,1,1,0,NULL,'2025-11-22 00:44:21','2025-11-22 00:44:21'),(2,'About',NULL,22,NULL,2,1,0,NULL,'2025-11-22 00:44:21','2025-12-29 06:02:15'),(3,'Academic',NULL,25,NULL,3,1,0,NULL,'2025-11-22 00:44:21','2025-12-29 08:37:57'),(4,'Administration',NULL,23,NULL,2,1,0,NULL,'2025-11-22 00:44:21','2025-12-29 08:15:37'),(5,'Notice','http://barishal.test/notices',NULL,NULL,10,1,0,NULL,'2025-11-22 00:44:21','2025-12-09 08:39:16'),(6,'Admission',NULL,27,NULL,6,1,0,NULL,'2025-11-22 00:44:21','2025-12-29 08:57:05'),(8,'Co-Curriculam',NULL,37,NULL,8,1,0,NULL,'2025-11-22 00:44:21','2025-12-29 12:02:53'),(9,'Facilities',NULL,32,NULL,9,1,0,NULL,'2025-11-22 00:44:21','2025-12-29 11:27:19'),(11,'Login','/admin',NULL,NULL,11,1,0,NULL,'2025-11-22 00:44:21','2025-11-22 00:44:21'),(33,'Link BG',NULL,12,NULL,10,0,1,'#ff0000','2025-12-17 00:33:24','2025-12-29 05:54:33'),(34,'Gallery','#',NULL,NULL,10,1,0,NULL,'2025-12-17 01:19:27','2025-12-17 01:20:26'),(35,'Photo Gallery','/gallery',NULL,34,1,1,0,NULL,'2025-12-17 01:21:20','2025-12-29 10:57:17'),(36,'Video Gallery','http://barishal.test/video-gallery',NULL,34,2,1,0,NULL,'2025-12-17 01:22:47','2025-12-17 01:22:47'),(37,'At a Glance',NULL,20,2,1,1,0,NULL,'2025-12-29 05:58:44','2025-12-29 05:58:44'),(38,'History',NULL,21,2,2,1,0,NULL,'2025-12-29 06:00:45','2025-12-29 06:00:45'),(39,'Why study RCESC',NULL,22,2,3,1,0,NULL,'2025-12-29 06:02:37','2025-12-29 06:02:37'),(40,'Message of Chief Patron','https://demo.mosconicuplive.com/message/chief-patron-massage',NULL,4,1,1,0,NULL,'2025-12-29 06:04:58','2025-12-29 06:04:58'),(41,'Message of the Chairman','https://demo.mosconicuplive.com/message/brig-gen-md-solmon-ibne-a-rouf',NULL,4,2,1,0,NULL,'2025-12-29 06:08:17','2025-12-29 06:08:17'),(42,'Message of Principal','https://demo.mosconicuplive.com/message/lt-col-mohammad-sharif-uzzaman',NULL,4,3,1,0,NULL,'2025-12-29 06:08:57','2025-12-29 06:08:57'),(43,'Teacher & Staff','https://s3.trusteduerp.xyz/op/teacher?insId=1018',NULL,4,3,1,0,NULL,'2025-12-29 06:11:13','2025-12-29 06:11:13'),(44,'Governing Body',NULL,23,4,0,1,0,NULL,'2025-12-29 07:24:52','2025-12-29 07:24:52'),(45,'Syllabus',NULL,24,3,0,1,0,NULL,'2025-12-29 08:34:38','2025-12-29 08:34:38'),(46,'Class Routine','#',NULL,3,2,1,0,NULL,'2025-12-29 08:35:28','2025-12-29 08:35:28'),(47,'Academic calendar',NULL,25,3,3,1,0,NULL,'2025-12-29 08:38:53','2025-12-29 08:38:53'),(48,'Admission Circular',NULL,NULL,6,1,1,0,NULL,'2025-12-29 08:54:07','2025-12-29 08:55:55'),(49,'Prospectus',NULL,27,6,2,1,0,NULL,'2025-12-29 08:57:26','2025-12-29 08:57:26'),(50,'Online Admission','#',NULL,6,0,1,0,NULL,'2025-12-29 08:58:20','2025-12-29 08:58:20'),(51,'Library','https://s3.trusteduerp.xyz/st/login?insId=1018',NULL,NULL,10,1,0,NULL,'2025-12-29 10:40:30','2025-12-29 10:44:44'),(52,'School Library','https://s3.trusteduerp.xyz/op/library?insId=1018',NULL,51,1,1,0,NULL,'2025-12-29 10:42:05','2025-12-29 10:42:05'),(53,'Online Fee','#',NULL,NULL,9,1,1,'#dc3545','2025-12-29 10:43:20','2025-12-29 10:50:12'),(55,'Multimedia Class Room',NULL,28,9,1,1,0,NULL,'2025-12-29 11:27:40','2025-12-29 11:27:40'),(56,'Indoor Game',NULL,29,9,2,1,0,NULL,'2025-12-29 11:27:53','2025-12-29 11:27:53'),(57,'Outdoor Games',NULL,30,9,3,1,0,NULL,'2025-12-29 11:28:08','2025-12-29 11:28:08'),(58,'Library',NULL,31,9,4,1,0,NULL,'2025-12-29 11:28:23','2025-12-29 11:28:23'),(59,'Science Lab',NULL,32,9,5,1,0,NULL,'2025-12-29 11:28:39','2025-12-29 11:28:39'),(60,'Language Club',NULL,33,8,1,1,0,NULL,'2025-12-29 11:31:53','2025-12-29 11:31:53'),(61,'Debate Club',NULL,34,8,2,1,0,NULL,'2025-12-29 11:54:40','2025-12-29 11:54:40'),(62,'GK and Current Affairs',NULL,35,8,3,1,0,NULL,'2025-12-29 11:56:20','2025-12-29 11:56:20'),(63,'Quranic Club',NULL,36,8,4,1,0,NULL,'2025-12-29 12:03:19','2025-12-29 12:03:19'),(64,'Calligraphy and arts and crafts Society',NULL,37,8,5,1,0,NULL,'2025-12-29 12:03:33','2025-12-29 12:03:33');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Principal',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `style` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `order` int NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `messages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'Chief Patron','Maj Gen Mohammad Asadullah Minhazul Alam','chief-patron-massage','ndu, psc, PhD GOC 10 Infantry Division & Area Commander Cox\'s Bazar Area','https://drive.google.com/file/d/1Y7qYL8kiNGRpbs7WjB0jfaEMfE-q6TkS/view?usp=sharing','https://bacpsc.edu.bd/wp-content/uploads/2020/01/principal.jpg','Ramu Cantonment English School and College is successfully going forward excellently on its way to the world of perfection with experience, wisdom and specialization. It has developed many bright characters who all are well established in the society. Ramu Cantonment English School and College is always an enthusiastic host to play a significant role in grooming minds fit in all respects to be the leaders of next generation.  I like to draw the attention of all students to get ready to face every challenge of the modern world optimistically. Believe in yourself and your unlimited potential. ‘No limit to potential’ may be your guiding force to go ahead. With your whole-hearted participation and co- operation Ramu Cantonment English School and College is sure to go a long way to perfection. I wish this noble institution a grand success.\n\n \n\nMaj Gen Mohammad Asadullah Minhazul Alam, ndu, psc, PhD\nGOC\n10 Infantry Division & Area Commander\nCox\'s Bazar Area &\nChief Patron\nRamu Cantonment English   School and College','https://bacpsc.edu.bd/','{\"image_width\": \"90\", \"border_color\": null, \"border_width\": null, \"image_height\": null, \"border_radius\": null}',1,1,'2025-11-21 22:42:45','2025-12-28 04:08:58'),(2,'Chairman','Brig Gen Md Khademul Bashar','brig-gen-md-solmon-ibne-a-rouf','PBGMS, psc Commander, 65 Infantry Brigade','https://drive.google.com/file/d/1c1S0LftMeWrKugw7OMleUpNwIHX0Y7Gq/view?usp=sharing','https://bacpsc.edu.bd/wp-content/uploads/2020/01/chairman.jpg','\"May the sapling grow into a sturdy tree and spread its branches \"\n\nRamu Cantonment English School and College is one of the best schools in Cox\'s Bazar district. I am honored and feel very privileged to be the Chairman of this renowned institution.\n\nEducation is the basis of all progress. The Bangladesh Army planted the seed in 2017 with the goal of fostering education, and it quickly grew into strong seedlings. The school has advanced to illuminate education and clear the way for every student to achieve excellence. Our experience has taught us that progress is possible only, if men and women are equally well-educated.\n\nThe entire purpose of education is not to restrict itself to imparting bookish knowledge only but inculcate humanitarian values like wisdom, compassion, courage, humility, integrity and reliability in a student. I am always excited and look forward to working with our students,staffs and parents to make Ramu Cantonment English School and College the best school it can be.\n\nWe at RCESC build the characters and shape the personalities of every individual. Our aim is to prepare the students to be winners, keen learners, progressive thinkers, good communicators and responsible citizens.\n\nBrig Gen Md Khademul Bashar, PBGMS, psc\nCommander, 65 Infantry Brigade\n&\nChairman, Ramu Cantonment English School and College','https://bacpsc.edu.bd/',NULL,2,1,'2025-11-21 22:42:45','2025-12-28 04:10:28'),(3,'Principal','Lt Col Md Abdur Rahim','lt-col-mohammad-sharif-uzzaman','M Phil, AEC','https://drive.google.com/file/d/17x2xpQUKtWF4VwZwkUCGJdV2pFK3LyiM/view?usp=sharing',NULL,'Ramu Cantonment English School has started its journey in January 2016, with a view to enlighten the light of quality education in Cox’s Bazar area. Since the inception up to till date, the small school has become a big family of more than 500 students, 30 teachers and 13 non-teaching staffs. The school is situated in a pleasant and eye catching natural environment of Ramu Cantonment.\n\nThis school is to nurture young minds and groom them into well trained, focused, committed and praiseworthy adults of tomorrow. We put the child at the center of everything we do. We believe all children have unique potential that should be encouraged. And we know that for children to excel in today’s competitive and technology-driven world, they need a new set of skills—social and emotional, as well as academic. Moreover, a lot of pioneering initiatives have been taken so that the learners of the institution can enhance their eloquence and creative skills through genuinely interesting and appealing learning experience and sagacity.\n\nThis reputed institution is decorated based on the different theme galleries as well as the classrooms are adorned with well thought-out concepts. Every moment spent in any corner of this institution will be more worthy and comfortable because of aesthetic appeal of all natural beauty.\nCreatively and use of imagination are two important aspects which can be nurtured by the curricular, co-curricular and extra-curricular activities, which is focused and given priority in RCESC. Teaching is a noble profession and parents entrust their children to us for education and well-being. As educators, our aim is to take the responsibility of their children and educate them in best manner. Our teachers are also dedicating their best possible effort to support the students and parents.\nI, sincerely, thank all the faculty members of RCESC in accomplishing the mammoth task of engraving the new exclusive reputation.\nLt Col Md Abdur Rahim, M Phil, AEC\nPrincipal\nRamu Cantonment English School and College','https://bacpsc.edu.bd/','{\"image_width\": null, \"border_color\": null, \"border_width\": null, \"image_height\": null, \"border_radius\": null}',3,1,'2025-11-22 03:45:44','2025-12-28 04:12:21');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2025_11_22_043613_create_sliders_table',1),(5,'2025_11_22_043615_create_notices_table',1),(6,'2025_11_22_043616_create_messages_table',1),(7,'2025_11_22_044141_create_settings_table',1),(8,'2025_11_22_064221_create_menus_table',2),(9,'2025_11_22_050000_add_image_fields_to_sliders_table',3),(10,'2025_11_22_060000_update_messages_and_create_sidebar_widgets',4),(11,'2025_11_22_070000_make_message_nullable_in_messages_table',5),(12,'2025_11_22_080000_add_style_to_messages_table',6),(13,'2025_11_22_090000_create_important_links_table',7),(14,'2025_11_22_100000_add_link_to_notices_table',8),(15,'2025_11_22_110000_create_pages_table',9),(16,'2025_11_22_110001_add_page_id_to_menus_table',9),(17,'2025_11_22_120000_add_page_id_to_notices_table',10),(18,'2025_11_22_130000_add_expires_at_to_notices_table',11),(19,'2025_11_22_140000_create_welcome_sections_table',12),(20,'2025_11_22_150000_create_menu_cards_table',13),(21,'2025_11_22_160000_create_news_events_table',14),(22,'2025_11_22_170000_create_location_maps_table',15),(23,'2025_11_22_180000_create_footer_settings_table',16),(24,'2025_11_22_190000_create_header_settings_table',17),(25,'2025_11_22_145402_add_image_fit_to_sliders_table',18),(26,'2025_11_22_150542_add_favicon_url_to_header_settings_table',19),(27,'2025_11_22_153019_create_permission_tables',20),(28,'2025_11_22_173758_create_theme_settings_table',21),(29,'2025_11_22_175204_add_additional_colors_to_theme_settings_table',22),(30,'2025_11_22_183705_add_body_bg_color_to_theme_settings_table',23),(31,'2025_11_22_200000_add_favicon_url_to_header_settings_table',24),(32,'2025_12_09_063825_enhance_header_settings_table',24),(34,'2025_12_09_084404_add_ticker_colors_to_theme_settings_table',25),(35,'2025_12_09_090249_add_slug_to_messages_table',26),(36,'2025_12_09_105701_add_html_content_to_pages_table',27),(37,'2025_12_09_112500_drop_json_constraint_from_pages_table',28),(38,'2025_12_09_140000_ensure_notice_menu_exists',29),(39,'2025_12_09_153113_create_photo_galleries_table',30),(40,'2025_12_14_135322_add_template_to_menu_cards_table',31),(41,'2025_12_14_135925_create_menu_card_settings_table',32),(42,'2025_12_14_144941_create_achievements_table',32),(43,'2025_12_14_152222_add_additional_images_to_news_events_and_achievements_tables',33),(44,'2025_12_14_171525_add_performance_indexes_to_tables',34),(45,'2025_12_16_093752_add_homepage_template_to_theme_settings_table',35),(46,'2025_12_17_062954_add_highlight_fields_to_menus_table',36),(47,'2025_12_17_064707_add_buttons_to_pages_table',37),(48,'2025_12_17_065330_add_bottom_content_to_pages_table',38),(49,'2025_12_17_070504_create_video_galleries_table',39),(50,'2025_12_17_073347_add_created_by_to_video_galleries_table',40),(51,'2025_12_17_075124_add_google_drive_folder_link_to_photo_galleries_table',41),(52,'2025_12_17_080025_add_thumbnail_image_id_to_photo_galleries_table',42),(53,'2025_12_17_083133_add_manual_thumbnail_to_photo_galleries_table',43),(54,'2025_12_18_122837_add_message_card_fields_to_theme_settings_table',44),(55,'2025_12_18_150132_add_card_color_fields_to_theme_settings_table',45),(56,'2025_12_18_150916_add_card_name_text_color_to_theme_settings_table',46),(57,'2025_12_18_151417_add_card_designation_text_color_to_theme_settings_table',47),(58,'2025_12_18_152622_add_card_image_border_color_to_theme_settings_table',48),(59,'2025_12_18_152758_add_card_image_border_color_to_theme_settings_table',48),(60,'2025_12_20_141942_add_sidebar_title_to_theme_settings_table',49),(61,'2025_12_20_144537_add_section_titles_to_theme_settings_table',50),(62,'2025_12_20_145924_add_google_drive_folder_to_achievements_table',51),(63,'2025_12_24_151333_add_google_drive_bg_image_to_theme_settings_table',52),(64,'2025_12_28_052939_create_popups_table',53),(65,'2025_12_28_054702_add_button_colors_to_popups_table',54),(66,'2025_12_28_094718_remove_image_column_from_sliders_table',55),(67,'2025_12_28_105507_add_contact_address_to_footer_settings_table',56);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\Models\\User',1),(1,'App\\Models\\User',3),(3,'App\\Models\\User',4),(1,'App\\Models\\User',6),(3,'App\\Models\\User',7),(3,'App\\Models\\User',8);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_events`
--

DROP TABLE IF EXISTS `news_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_events` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `additional_images` json DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'barisal-admin',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `news_events_slug_unique` (`slug`),
  KEY `news_active_published_idx` (`is_active`,`published_at`),
  KEY `news_slug_idx` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_events`
--

LOCK TABLES `news_events` WRITE;
/*!40000 ALTER TABLE `news_events` DISABLE KEYS */;
INSERT INTO `news_events` VALUES (1,'Welcome To RCES- NEWS and Event-4','welcome-to-rces-news-and-event-4',NULL,'<p><a href=\"https://bacpsc.edu.bd/2025/04/26/bncc-tour/\">BNCC Tour</a></p>','https://bacpsc.edu.bd/wp-content/uploads/2025/04/1.jpeg',NULL,'barisal-admin',1,'2025-11-22 07:58:52','2025-11-22 08:02:08','2025-12-29 12:08:50'),(2,'Welcome To RCES- NEWS and Event-3','welcome-to-rces-news-and-event-3',NULL,'<p>A proud moment captured as the brilliant achievers of SSC Examination 2025 are honored in a vibrant award ceremony. Surrounded by the honorable Chairman, Principal and school authorities, the students were recognized for their dedication and excellence. The event was filled with joy, pride and inspiration for future milestones. A heartfelt tribute to hard work and academic success!</p>','https://acps-c53.s3.us-east-2.amazonaws.com/dws/2025/content_image/Content_Big_Celebrating%20Success%20%E2%80%93%20SSC%202025%20Award%20Ceremony_04-09-2025-10-58-57_s3.jpg',NULL,'barisal-admin',1,'2025-12-14 06:05:01','2025-12-14 06:05:37','2025-12-29 12:07:47'),(3,'Welcome To RCES- NEWS and Event-2','welcome-to-rces-news-and-event-2',NULL,'<p><strong>Celebrating Success – SSC 2025 Award CeremonyCelebrating Success – SSC 2025 Award CeremonyCelebrating Success – SSC 2025 Award CeremonyCelebrating Success – SSC 2025 Award CeremonyCelebrating Success – SSC 2025 Award Ceremony</strong></p>','https://acps-c53.s3.us-east-2.amazonaws.com/dws/2025/content_image/Content_Big_Celebrating%20Success%20%E2%80%93%20SSC%202025%20Award%20Ceremony_04-09-2025-10-58-57_s3.jpg',NULL,'barisal-admin',1,'2025-12-14 06:39:04','2025-12-14 06:39:33','2025-12-29 12:08:17'),(4,'Welcome To RCES- NEWS and Event','welcome-to-rces-news-and-event',NULL,'<p><strong>Celebrating Success – SSC 2025 Award Ceremony...Celebrating Success – SSC 2025 Award Ceremony...Celebrating Success – SSC 2025 Award Ceremony...Celebrating Success – SSC 2025 Award Ceremony...Celebrating Success – SSC 2025 Award Ceremony...Celebrating Success – SSC 2025 Award Ceremony...Celebrating Success – SSC 2025 Award Ceremony...Celebrating Success – SSC 2025 Award Ceremony...Celebrating Success – SSC 2025 Award Ceremony...Celebrating Success – SSC 2025&nbsp;</strong></p>','https://acps-c53.s3.us-east-2.amazonaws.com/dws/2025/content_image/Content_Big_Celebrating%20Success%20%E2%80%93%20SSC%202025%20Award%20Ceremony_04-09-2025-10-58-57_s3.jpg',NULL,'barisal-admin',1,'2025-12-14 06:43:03','2025-12-14 06:43:57','2025-12-29 12:08:59');
/*!40000 ALTER TABLE `news_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notices`
--

DROP TABLE IF EXISTS `notices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_id` bigint unsigned DEFAULT NULL,
  `published_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notices_page_id_foreign` (`page_id`),
  KEY `notices_published_idx` (`published_at`),
  KEY `notices_page_idx` (`page_id`),
  CONSTRAINT `notices_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notices`
--

LOCK TABLES `notices` WRITE;
/*!40000 ALTER TABLE `notices` DISABLE KEYS */;
INSERT INTO `notices` VALUES (13,'Class Routine-2025','<p>Download here</p>','https://drive.google.com/file/d/1werVuElbp8chJ49pWj-KnJv_nIeg_0p_/view?usp=sharing',NULL,13,'2025-01-07 05:30:09',NULL,'2025-12-28 05:31:23','2025-12-28 05:32:38'),(14,'Recruitment Circular-2025','<p>Vacancy Announcement</p>','https://drive.google.com/file/d/1JKsocypiqPYkItnfgyF9VvE6wK1R3pZG/view?usp=sharing','https://drive.google.com/file/d/1JKsocypiqPYkItnfgyF9VvE6wK1R3pZG/view?usp=sharing',14,'2025-12-15 05:29:05',NULL,'2025-12-29 05:29:49','2025-12-29 10:54:15'),(15,'Results of Admission Test-2026','<p>Results of Admission Test-2026</p>','https://drive.google.com/file/d/1VYEC6M3lrqnGbsXuyNH48XSuo5xoK-Li/view?usp=sharing','https://drive.google.com/file/d/1VYEC6M3lrqnGbsXuyNH48XSuo5xoK-Li/view?usp=sharing',15,'2025-12-13 05:29:49',NULL,'2025-12-29 05:31:38','2025-12-29 10:55:27'),(16,'Admission Circular 2026','<p>Admission Circular 2026</p>','https://drive.google.com/file/d/1KoaMDdKVK7z1OcJdrwArQsS75cma7cQc/view?usp=sharing','https://drive.google.com/file/d/1KoaMDdKVK7z1OcJdrwArQsS75cma7cQc/view?usp=sharing',16,'2025-10-22 05:31:38',NULL,'2025-12-29 05:33:18','2025-12-29 10:55:33'),(17,'Admission Open For Class XI-2025','<p>Admission Open For Class XI-2025</p>','https://drive.google.com/file/d/1_F05wZ8BjZ4Oe6X988Dq8mHo_syIIoCd/view?usp=sharing','https://drive.google.com/file/d/1_F05wZ8BjZ4Oe6X988Dq8mHo_syIIoCd/view?usp=sharing',17,'2025-08-01 05:33:18',NULL,'2025-12-29 05:35:14','2025-12-29 10:55:38'),(18,'Academic Calendar-2025','<p>Academic Calendar-2025</p>','https://drive.google.com/file/d/1jeXXSGRLB3gY8DAlM1TsD4R458EVO23k/view?usp=sharing',NULL,18,'2024-11-03 05:35:14',NULL,'2025-12-29 05:37:35','2025-12-29 05:37:35'),(19,'Class Time 2025(Winter) RCESC','<p>Class Time 2025(Winter) RCESC</p>','https://drive.google.com/file/d/1pAA7JdgAhT9LoyJ1hRXRUcnjm3n_1x48/view?usp=sharing','https://drive.google.com/file/d/1pAA7JdgAhT9LoyJ1hRXRUcnjm3n_1x48/view?usp=sharing',19,'2025-01-15 05:37:35',NULL,'2025-12-29 05:39:39','2025-12-29 10:55:45');
/*!40000 ALTER TABLE `notices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `html_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `buttons` json DEFAULT NULL,
  `bottom_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `menu_id` bigint unsigned DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`),
  KEY `pages_menu_id_foreign` (`menu_id`),
  KEY `pages_published_idx` (`is_published`,`published_at`),
  CONSTRAINT `pages_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (3,'Parent Teacher Meeting','parent-teacher-meeting-notice-3','[{\"data\": {\"level\": \"h2\", \"content\": \"Parent Teacher Meeting\", \"alignment\": \"center\"}, \"type\": \"heading\"}, {\"data\": {\"content\": \"<p>Notice content will be added here.</p>\"}, \"type\": \"paragraph\"}]',NULL,NULL,NULL,NULL,NULL,1,NULL,'2025-11-17 22:42:45','2025-11-22 05:32:35','2025-11-22 05:32:35'),(12,'Button','button','\n\n\nনিচের বাট ক্লিক করুন','নিচের বাট ক্লিক করুননিচের বাট ক্লিক করুননিচের বাট ক্লিক করুননিচের বাট ক্লিক করুন','[{\"url\": \"https://facebook.com\", \"icon\": \"fa-link\", \"text\": \"Online Admission \", \"color\": \"danger\", \"open_new_tab\": false}]','নিচের বাট ক্লিক করুননিচের বাট ক্লিক করুননিচের বাট ক্লিক করুননিচের বাট ক্লিক করুন',NULL,NULL,1,33,'2025-12-17 00:41:55','2025-12-17 00:44:28','2025-12-17 00:57:11'),(13,'Class Routine-2025','class-routine-2025-notice','<p>Download here</p>',NULL,NULL,NULL,NULL,NULL,1,NULL,'2025-12-28 05:30:09','2025-12-28 05:31:23','2025-12-28 05:31:23'),(14,'Recruitment Circular-2025','recruitment-circular-2025-notice','<p>Vacancy Announcement</p>',NULL,NULL,NULL,NULL,NULL,1,NULL,'2025-12-15 05:29:05','2025-12-29 05:29:49','2025-12-29 05:29:49'),(15,'Results of Admission Test-2026','results-of-admission-test-2026-notice','<p>Results of Admission Test-2026</p>',NULL,NULL,NULL,NULL,NULL,1,NULL,'2025-12-13 05:29:49','2025-12-29 05:31:38','2025-12-29 05:31:38'),(16,'Admission Circular 2026','admission-circular-2026-notice','<p>Admission Circular 2026</p>',NULL,NULL,NULL,NULL,NULL,1,NULL,'2025-10-22 05:31:38','2025-12-29 05:33:18','2025-12-29 05:33:18'),(17,'Admission Open For Class XI-2025','admission-open-for-class-xi-2025-notice','<p>Admission Open For Class XI-2025</p>',NULL,NULL,NULL,NULL,NULL,1,NULL,'2025-08-01 05:33:18','2025-12-29 05:35:14','2025-12-29 05:35:14'),(18,'Academic Calendar-2025','academic-calendar-2025-notice','<p>Academic Calendar-2025</p>',NULL,NULL,NULL,NULL,NULL,1,NULL,'2024-11-03 05:35:14','2025-12-29 05:37:35','2025-12-29 05:37:35'),(19,'Class Time 2025(Winter) RCESC','class-time-2025winter-rcesc-notice','<p>Class Time 2025(Winter) RCESC</p>',NULL,NULL,NULL,NULL,NULL,1,NULL,'2025-01-15 05:37:35','2025-12-29 05:39:39','2025-12-29 05:39:39'),(20,'At a Glance','at-a-glance','The Glorious Beginning             : 17 January 2016\n\nLocation                           :  Narikel Bagan, Ramu Cantonment\nArea                               :  7373 Acres\nTotal students                     :  555\nTeacher Student Ratio              : 1:17\nSupporting Staff                   : 22\nNumber of Classroom                : 25\nCurriculum                         : National Curriculum\nMedium of Instruction              : English (Play to Class Twelve)\nFacilities Available:\nCongenial educational environment with strict military discipline Multimedia class room facilities. Web based education management, Digital attendance, Modern science lab and ICT lab, Library facilities, Online payment system (Bkash, Nagad t-cash. Bank), Cafeteria, Medical care facilities, Transport facilities CCTV monitoring. Information through Websites and Mobile apps, Highly educated and qualified faculty members.\n\n**Co-curricular Activities:**\nLanguage club, Debate club, General knowledge club and Current Affairs club, Quranic club, Calligraphy and Arts and Crafts Society, Science club, Mathematics club, Music club, Dance and Drama club',NULL,'[]',NULL,NULL,NULL,1,NULL,'2025-12-29 05:56:03','2025-12-29 05:58:17','2025-12-29 06:00:31'),(21,'History','history','RCESC IN THE MIRROR OF REMEMBERANCE\n\nRamu Upazila situated at the southernmost point of Bangladesh, near to the longest beach in the world. It’s surrounded by beautiful scenic views of mountains and the sea. It has the history of oldest human habitation and once it was a center place for king of the Arakan and Mog. Endless natural beauty, ancient Buddha antique, Ashoka temple, tunnel of king Kana, high bank and other natural resources as well as the diversity livelihood of indigenous people are remarkable of this Upazila. Unfortunately, the literacy rate is very poor than that of other parts of Bangladesh.  literacy 26%; male 29.6%, female 22.3%.\n\nAs a part of social responsibility, leadership of Ramu Cantonment decided to establish a school to join the fight against illiteracy.   23 September 2015 was a golden day for Ramu, when Major General Ataul Hakim Sarwar Hasan, SBP, SGP, ndc, afwc, psc, PhD, GOC 10 Infantry Division and Madam Farzan Hasan laid the foundation stone of Ramu Cantonment English School and College. Few other enthusiastic and generous people quickly joined hands and started the academic curricula of the school on 16th January 2016, turning it into the first ever English version school of cox\'s Bazar.\n\n“Future Begins Here” the motto of RCESC influenced us to enlighten the torch of education among the people of the country especially Ramu.  In 2016, RCESC instigated with 7 classes (Play to Class 4), 11 dignified teachers, some non-teaching staffs and 285 students. In 2017, three new classes from Class 5 to Class 7 were initiated. In 2018, Class 8 and 9 were introduced. Now, it received the permission of Higher Secondary from ministry Education and Education Board Chattagram.   \n\nNow, there are 31 faculty members and around 520 students. We have marvelous school campus with spacious ground for energetic youngsters and have a highly motivated teaching staff to provide excellent and scientifically equipped modern education. Our managing committee is selflessly dedicated and our respected guardians are warmheartedly cooperative. This school is walking towards some specific purposes; where a child will learn academic, moral, social and physical development and thus become a good human being and good citizen of Bangladesh.',NULL,'[]',NULL,NULL,NULL,1,NULL,'2025-12-29 05:58:17','2025-12-29 06:00:31','2025-12-29 06:02:15'),(22,'Why study RCESC','why-study-rcesc','1. We provide quality & modern education with world class infrastructure,beautiful location and clean environment.\n\n2.We ensure execution of expected curriculum ,attractive accumulation  of present demand ,attracting high  qualified and  well trained teachers and result based adoption of modern facilities.\n\n3.We ensure wide spread practise of cocurriculum activities to inspire students implementing their creativity and imagination.\n\n4.We have well secured campus inside the cantonment  and round the clock security system with CCTV cameras \n\n5.We closely maintain and supervise the grooming up of every student with great care.\n\n6.We put importance on ethical,morality,customs,etiquettes and courtesy  development of students as an ideal citizen of the country.\n\n* 7.We prepare our students to become expert in social ,academic ,physical  and mental aspect.',NULL,'[]',NULL,NULL,NULL,1,39,'2025-12-29 06:00:31','2025-12-29 06:02:15','2025-12-29 06:02:37'),(23,'Governing Body','governing-body','.','<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n    <meta charset=\"UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n    <title>Governing Body - RCESC</title>\n    <style>\n        .gb-container {\n            max-width: 1100px;\n            margin: 0 auto;\n            padding: 20px;\n            font-family: \'Arial\', sans-serif;\n            text-align: center;\n        }\n\n        .gb-title {\n            color: #1a5c2e;\n            font-size: 32px;\n            margin-bottom: 40px;\n            border-bottom: 2px solid #1a5c2e;\n            display: inline-block;\n            padding-bottom: 10px;\n        }\n\n        /* Top Single Card */\n        .chief-section {\n            display: flex;\n            justify-content: center;\n            margin-bottom: 40px;\n        }\n\n        /* Grid for 3 columns */\n        .members-grid {\n            display: grid;\n            grid-template-columns: repeat(3, 1fr); /* এক লাইনে ৩টি */\n            gap: 25px;\n        }\n\n        .member-card {\n            background: #fff;\n            border: 1px solid #ddd;\n            border-top: 5px solid #1a5c2e;\n            border-radius: 8px;\n            padding: 20px;\n            box-shadow: 0 4px 10px rgba(0,0,0,0.05);\n            display: flex;\n            flex-direction: column;\n            align-items: center;\n        }\n\n        .chief-card {\n            width: 350px; /* Chief Patron একটু বড় */\n            border-top-color: #d4af37; /* Gold border */\n        }\n\n        .member-photo {\n            width: 140px;\n            height: 160px;\n            background-color: #f0f0f0;\n            margin-bottom: 15px;\n            border-radius: 5px;\n            object-fit: cover;\n            border: 1px solid #eee;\n        }\n\n        .m-name {\n            font-size: 16px;\n            font-weight: bold;\n            color: #333;\n            margin-bottom: 8px;\n            line-height: 1.3;\n        }\n\n        .m-desig {\n            font-size: 14px;\n            color: #666;\n            margin-bottom: 12px;\n            min-height: 40px; /* এলাইনমেন্ট ঠিক রাখার জন্য */\n        }\n\n        .m-role {\n            background: #1a5c2e;\n            color: #fff;\n            font-size: 12px;\n            padding: 5px 15px;\n            border-radius: 20px;\n            text-transform: uppercase;\n        }\n\n        /* Mobile Responsive */\n        @media (max-width: 900px) {\n            .members-grid { grid-template-columns: repeat(2, 1fr); }\n        }\n        @media (max-width: 600px) {\n            .members-grid { grid-template-columns: 1fr; }\n            .chief-card { width: 100%; }\n        }\n    </style>\n</head>\n<body>\n\n<div class=\"gb-container\">\n    <h1 class=\"gb-title\">GOVERNING BODY</h1>\n\n    <div class=\"chief-section\">\n        <div class=\"member-card chief-card\">\n            <img src=\"https://drive.google.com/thumbnail?id=1c1S0LftMeWrKugw7OMleUpNwIHX0Y7Gq&sz=w800\" alt=\"Chief Patron\" class=\"member-photo\">\n            <div class=\"m-name\">Maj Gen Mohammad Asadullah Minhazul Alam, ndu, psc, PhD</div>\n            <div class=\"m-desig\">GOC, 10 Inf Div & Area Commander, Cox\'s Bazar Area</div>\n            <div class=\"m-role\">Chief Patron</div>\n        </div>\n    </div>\n    <div class=\"members-grid\">\n        <div class=\"member-card\">\n            <img src=\"https://drive.google.com/thumbnail?id=1me1hfGslY5SCT-66zUWv4zHgZeJh89C0&sz=w800\"  alt=\"Chairman\" class=\"member-photo\">\n            <div class=\"m-name\">Brig Gen Md Khademul Bashar, PBGMS, psc</div>\n            <div class=\"m-desig\">Commander, 65 Infantry Brigade</div>\n            <div class=\"m-role\">Chairman</div>\n        </div>\n\n        <div class=\"member-card\">\n            <img src=\"https://drive.google.com/thumbnail?id=1rLSq0VGMdJ5N4AeIT0rRQMkKBPMt8Ig0&sz=w800\" alt=\"Member Secretary\" class=\"member-photo\">\n            <div class=\"m-name\">Lecturer H. M Syeedur Rahman</div>\n            <div class=\"m-desig\">Teachers Representative</div>\n            <div class=\"m-role\">Member</div>\n        </div>\n        <div class=\"member-card\">\n            <img src=\"https://drive.google.com/thumbnail?id=1kIBpAsS61YOuE30ywg3BXmdsR8lYGOiP&sz=w800\" alt=\"Member\" class=\"member-photo\">\n            <div class=\"m-name\">Sr. Teacher Tasnim Sauda Saki</div>\n            <div class=\"m-desig\">Teachers Representative</div>\n            <div class=\"m-role\">Member</div>\n        </div>\n        \n        <div class=\"member-card\">\n            <img src=\"https://drive.google.com/thumbnail?id=1WB4V-25Tg0Lx0MqC95NQ6HSBXJG9VP5M&sz=w800\" alt=\"Member\" class=\"member-photo\">\n            <div class=\"m-name\">Asst Teacher Mohammad Saifullah</div>\n            <div class=\"m-desig\">Teachers Representative</div>\n            <div class=\"m-role\">Member</div>\n        </div>\n\n<div class=\"member-card\">\n            <img src=\"https://drive.google.com/thumbnail?id=1rLSq0VGMdJ5N4AeIT0rRQMkKBPMt8Ig0&sz=w800\" alt=\"Member\" class=\"member-photo\">\n            <div class=\"m-name\">Lt Col M Iqbal Khalid, psc, ADST</div>\n            <div class=\"m-desig\">Guardian Representative</div>\n            <div class=\"m-role\">Member</div>\n        </div>\n\n<div class=\"member-card\">\n            <img src=\"https://drive.google.com/thumbnail?id=1rLSq0VGMdJ5N4AeIT0rRQMkKBPMt8Ig0&sz=w800\" alt=\"Member\" class=\"member-photo\">\n            <div class=\"m-name\">Lt Col Z M Mahmudul Islam, psc, Engrs</div>\n            <div class=\"m-desig\">Guardian Representative</div>\n            <div class=\"m-role\">Member</div>\n        </div>\n\n      <div class=\"member-card\">\n            <img src=\"https://drive.google.com/thumbnail?id=1rLSq0VGMdJ5N4AeIT0rRQMkKBPMt8Ig0&sz=w800\" alt=\"Member\" class=\"member-photo\">\n            <div class=\"m-name\">Asst Prof Shormin Siddiqa Lima</div>\n            <div class=\"m-desig\">Guardian Representative</div>\n            <div class=\"m-role\">Member</div>\n        </div>\n\n        <div class=\"member-card\">\n              <img src=\"https://drive.google.com/thumbnail?id=1rLSq0VGMdJ5N4AeIT0rRQMkKBPMt8Ig0&sz=w800\" alt=\"Member\" class=\"member-photo\">\n              <div class=\"m-name\">Lt Col Mahtab Khan, psc</div>\n              <div class=\"m-desig\">Co-opt Member</div>\n              <div class=\"m-role\">Member</div>\n        </div>\n\n       <div class=\"member-card\">\n              <img src=\"https://drive.google.com/thumbnail?id=1rLSq0VGMdJ5N4AeIT0rRQMkKBPMt8Ig0&sz=w800\" alt=\"Member\" class=\"member-photo\">\n              <div class=\"m-name\">Maj M Zahid Hassan Maroof, AEC</div>\n              <div class=\"m-desig\">Co-opt Member</div>\n              <div class=\"m-role\">Member</div>\n        </div>\n\n <div class=\"member-card\">\n              <img src=\"https://drive.google.com/thumbnail?id=12usXBZF8Qxib4L0xHjba32B3knfgNI8a&sz=w800\" alt=\"Member\" class=\"member-photo\">\n              <div class=\"m-name\">Maj Md Rashedul Kabir,Inf</div>\n              <div class=\"m-desig\">Co-opt Member</div>\n              <div class=\"m-role\">Member</div>\n        </div>\n\n <div class=\"member-card\">\n              <img src=\"https://drive.google.com/thumbnail?id=1QCP4gbU9jkxdMYPGSfqvhM7vd0TXHVXu&sz=w800\" alt=\"Member\" class=\"member-photo\">\n              <div class=\"m-name\">Lt Col Md Abdur Rahim, M Phil, AEC</div>\n              <div class=\"m-desig\">Principal & </div>\n              <div class=\"m-role\"> Member Secretary</div>\n        </div>\n    </div>\n</div>\n\n</body>\n</html>','[]',NULL,NULL,NULL,1,44,'2025-12-29 06:15:36','2025-12-29 06:16:13','2025-12-29 07:24:52'),(24,'Syllabus','syllabus','Syllabus-2025 and Booklist',NULL,'[{\"url\": \"https://demo.mosconicuplive.com/\", \"icon\": \"fa-file-pdf\", \"text\": \"Class X Book List & Syllabus-2025\", \"color\": \"success\", \"open_new_tab\": true}, {\"url\": \"https://demo.mosconicuplive.com/\", \"icon\": \"fa-file-pdf\", \"text\": \"Class IX Book List & Syllabus-2025\", \"color\": \"danger\", \"open_new_tab\": true}, {\"url\": \"https://demo.mosconicuplive.com/\", \"icon\": \"fa-file-pdf\", \"text\": \"Class VIII Book List & Syllabus-2025\", \"color\": \"warning\", \"open_new_tab\": true}, {\"url\": \"https://demo.mosconicuplive.com/\", \"icon\": \"fa-file-pdf\", \"text\": \"Class VII Book List & Syllabus-2025\", \"color\": \"success\", \"open_new_tab\": true}, {\"url\": \"https://demo.mosconicuplive.com/\", \"icon\": \"fa-file-pdf\", \"text\": \"Class-VI Book List & Syllabus-2025\", \"color\": \"danger\", \"open_new_tab\": false}, {\"url\": \"https://demo.mosconicuplive.com/\", \"icon\": \"fa-file-pdf\", \"text\": \"Class-V Book List & Syllabus-2025\", \"color\": \"warning\", \"open_new_tab\": true}, {\"url\": \"https://demo.mosconicuplive.com/\", \"icon\": \"fa-file-pdf\", \"text\": \"Class-IV Book List & Syllabus-2025\", \"color\": \"success\", \"open_new_tab\": true}, {\"url\": \"https://demo.mosconicuplive.com/\", \"icon\": \"fa-file-pdf\", \"text\": \"Class-III Book List & Syllabus-2025\", \"color\": \"danger\", \"open_new_tab\": true}, {\"url\": \"https://demo.mosconicuplive.com/\", \"icon\": \"fa-file-pdf\", \"text\": \"Class-II Book List & Syllabus-2025\", \"color\": \"warning\", \"open_new_tab\": true}, {\"url\": \"https://demo.mosconicuplive.com/\", \"icon\": \"fa-file-pdf\", \"text\": \"Class-I Book List & Syllabus-2025\", \"color\": \"success\", \"open_new_tab\": true}, {\"url\": \"https://demo.mosconicuplive.com/\", \"icon\": \"fa-file-pdf\", \"text\": \"Class-Nursery Book List & Syllabus-2025\", \"color\": \"danger\", \"open_new_tab\": true}, {\"url\": \"https://demo.mosconicuplive.com/\", \"icon\": \"fa-file-pdf\", \"text\": \"Class-KG Book List & Syllabus-2025\", \"color\": \"warning\", \"open_new_tab\": true}]',NULL,NULL,NULL,1,NULL,'2025-12-29 08:21:27','2025-12-29 08:23:09','2025-12-29 08:37:57'),(25,'Academic calendar','academic-calendar','Academic calendar',NULL,'[{\"url\": \"https://demo.mosconicuplive.com/syllabus\", \"icon\": \"fa-info-circle\", \"text\": \"Academic Calendar 2025\", \"color\": \"success\", \"open_new_tab\": true}, {\"url\": \"https://demo.mosconicuplive.com/syllabus\", \"icon\": \"fa-info-circle\", \"text\": \"Academic Calendar 2024\", \"color\": \"success\", \"open_new_tab\": false}, {\"url\": \"https://demo.mosconicuplive.com/syllabus\", \"icon\": \"fa-info-circle\", \"text\": \"Academic Calendar 2023\", \"color\": \"success\", \"open_new_tab\": true}]',NULL,NULL,NULL,1,47,'2025-12-29 08:36:23','2025-12-29 08:37:57','2025-12-29 08:38:53'),(26,'Admission Circular','admission-circular','<img src=\"https://drive.google.com/thumbnail?id=1JHKzK_yF4UQLuu9un0HKv9JZHJ-MIyEZ&sz=w800\" alt=\"Admission\" class=\"circular-photo\">',NULL,'[]',NULL,NULL,NULL,1,NULL,'2025-12-29 08:40:51','2025-12-29 08:41:32','2025-12-29 08:55:55'),(27,'Prospectus','prospectus','<img src=\"https://drive.google.com/thumbnail?id=1AOlTyhJmgGK_5v6-729jF9EEkyqwcZBw&sz=w800\" alt=\"Admission\" class=\"circular-photo\">',NULL,'[]',NULL,NULL,NULL,1,49,'2025-12-29 08:56:05','2025-12-29 08:57:05','2025-12-29 08:57:26'),(28,'Multimedia Class Room','multimedia-class-room','<img src=\"https://drive.google.com/thumbnail?id=1eKdeiWUv6ECKvuEZ_xUHAmy3Js6Ka2Md&sz=w800\" alt=\"Admission\" class=\"circular-photo\">',NULL,'[]',NULL,NULL,NULL,1,55,'2025-12-29 11:16:36','2025-12-29 11:20:45','2025-12-29 11:27:40'),(29,'Indoor Game','indoor-game','<img src=\"https://drive.google.com/thumbnail?id=1FACC3BelDSHaQqLXPItbwA4kv70gHlwT&sz=w800\" alt=\"Admission\" class=\"circular-photo\">',NULL,'[]',NULL,NULL,NULL,1,56,'2025-12-29 11:20:44','2025-12-29 11:22:59','2025-12-29 11:27:53'),(30,'Outdoor Games','outdoor-games','<img src=\"https://drive.google.com/thumbnail?id=18dFRXFCUHH5k0ypmCTi2QWWJUm_aPI_j&sz=w800\" alt=\"Admission\" class=\"circular-photo\">',NULL,'[]',NULL,NULL,NULL,1,57,'2025-12-29 11:22:59','2025-12-29 11:24:21','2025-12-29 11:28:08'),(31,'Library','library','<img src=\"https://drive.google.com/thumbnail?id=1c25UwcgFcvtgEnU3TrO_mFfF6rugKTFd&sz=w800\" alt=\"Admission\" class=\"circular-photo\">',NULL,'[]',NULL,NULL,NULL,1,58,'2025-12-29 11:24:21','2025-12-29 11:25:47','2025-12-29 11:28:23'),(32,'Science Lab','science-lab','<img src=\"https://drive.google.com/thumbnail?id=1hmAeHiKETcMO1M5qf8xYTu_dN6TuGOFp&sz=w800\" alt=\"Admission\" class=\"circular-photo\">',NULL,'[]',NULL,NULL,NULL,1,59,'2025-12-29 11:25:47','2025-12-29 11:27:19','2025-12-29 11:28:39'),(33,'Language Club','language-club','<img src=\"https://drive.google.com/thumbnail?id=1X9KOhq8VAvbQd5pi-F1oeWPJ34UaVT0D&sz=w800\" alt=\"Admission\" class=\"circular-photo\">',NULL,'[]',NULL,NULL,NULL,1,NULL,'2025-12-29 11:27:19','2025-12-29 11:31:36','2025-12-29 11:54:21'),(34,'Debate Club','debate-club','<img src=\"https://drive.google.com/thumbnail?id=1xRRPdVWAmjhGtaqY1RLZbU5x4ypFgJOJ&sz=w800\" alt=\"Admission\" class=\"circular-photo\">',NULL,'[]',NULL,NULL,NULL,1,NULL,'2025-12-29 11:31:36','2025-12-29 11:54:21','2025-12-29 11:56:05'),(35,'GK and Current Affairs','gk-and-current-affairs','<img src=\"https://drive.google.com/thumbnail?id=1PNxRqDCSqRHJ3u7b7HmVpELtIaqiMiDw&sz=w800\" alt=\"Admission\" class=\"circular-photo\">',NULL,'[]',NULL,NULL,NULL,1,NULL,'2025-12-29 11:54:21','2025-12-29 11:56:05','2025-12-29 12:01:24'),(36,'Quranic Club','quranic-club','<img src=\"https://drive.google.com/thumbnail?id=1Yl-BC-_PfdA6amDkspIQfPosIGqaiKbH&sz=w800\" alt=\"Admission\" class=\"circular-photo\">',NULL,'[]',NULL,NULL,NULL,1,63,'2025-12-29 11:56:05','2025-12-29 12:01:24','2025-12-29 12:03:19'),(37,'Calligraphy and arts and crafts Society','calligraphy-and-arts-and-crafts-society','<img src=\"https://drive.google.com/thumbnail?id=1-XpDK2d61aRZqNg5odOeiT9eV4EG-m5Q&sz=w800\" alt=\"Admission\" class=\"circular-photo\">',NULL,'[]',NULL,NULL,NULL,1,64,'2025-12-29 12:01:24','2025-12-29 12:02:53','2025-12-29 12:03:33');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'view_important::link','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(2,'view_any_important::link','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(3,'create_important::link','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(4,'update_important::link','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(5,'restore_important::link','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(6,'restore_any_important::link','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(7,'replicate_important::link','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(8,'reorder_important::link','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(9,'delete_important::link','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(10,'delete_any_important::link','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(11,'force_delete_important::link','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(12,'force_delete_any_important::link','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(13,'view_location::map','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(14,'view_any_location::map','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(15,'create_location::map','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(16,'update_location::map','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(17,'restore_location::map','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(18,'restore_any_location::map','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(19,'replicate_location::map','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(20,'reorder_location::map','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(21,'delete_location::map','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(22,'delete_any_location::map','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(23,'force_delete_location::map','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(24,'force_delete_any_location::map','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(25,'view_menu','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(26,'view_any_menu','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(27,'create_menu','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(28,'update_menu','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(29,'restore_menu','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(30,'restore_any_menu','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(31,'replicate_menu','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(32,'reorder_menu','web','2025-11-22 09:39:03','2025-11-22 09:39:03'),(33,'delete_menu','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(34,'delete_any_menu','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(35,'force_delete_menu','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(36,'force_delete_any_menu','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(37,'view_menu::card','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(38,'view_any_menu::card','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(39,'create_menu::card','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(40,'update_menu::card','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(41,'restore_menu::card','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(42,'restore_any_menu::card','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(43,'replicate_menu::card','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(44,'reorder_menu::card','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(45,'delete_menu::card','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(46,'delete_any_menu::card','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(47,'force_delete_menu::card','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(48,'force_delete_any_menu::card','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(49,'view_message','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(50,'view_any_message','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(51,'create_message','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(52,'update_message','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(53,'restore_message','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(54,'restore_any_message','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(55,'replicate_message','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(56,'reorder_message','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(57,'delete_message','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(58,'delete_any_message','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(59,'force_delete_message','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(60,'force_delete_any_message','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(61,'view_news::event','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(62,'view_any_news::event','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(63,'create_news::event','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(64,'update_news::event','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(65,'restore_news::event','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(66,'restore_any_news::event','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(67,'replicate_news::event','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(68,'reorder_news::event','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(69,'delete_news::event','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(70,'delete_any_news::event','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(71,'force_delete_news::event','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(72,'force_delete_any_news::event','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(73,'view_notice','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(74,'view_any_notice','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(75,'create_notice','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(76,'update_notice','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(77,'restore_notice','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(78,'restore_any_notice','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(79,'replicate_notice','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(80,'reorder_notice','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(81,'delete_notice','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(82,'delete_any_notice','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(83,'force_delete_notice','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(84,'force_delete_any_notice','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(85,'view_page','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(86,'view_any_page','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(87,'create_page','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(88,'update_page','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(89,'restore_page','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(90,'restore_any_page','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(91,'replicate_page','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(92,'reorder_page','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(93,'delete_page','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(94,'delete_any_page','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(95,'force_delete_page','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(96,'force_delete_any_page','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(97,'view_sidebar::widget','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(98,'view_any_sidebar::widget','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(99,'create_sidebar::widget','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(100,'update_sidebar::widget','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(101,'restore_sidebar::widget','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(102,'restore_any_sidebar::widget','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(103,'replicate_sidebar::widget','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(104,'reorder_sidebar::widget','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(105,'delete_sidebar::widget','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(106,'delete_any_sidebar::widget','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(107,'force_delete_sidebar::widget','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(108,'force_delete_any_sidebar::widget','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(109,'view_slider','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(110,'view_any_slider','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(111,'create_slider','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(112,'update_slider','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(113,'restore_slider','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(114,'restore_any_slider','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(115,'replicate_slider','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(116,'reorder_slider','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(117,'delete_slider','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(118,'delete_any_slider','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(119,'force_delete_slider','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(120,'force_delete_any_slider','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(121,'view_user','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(122,'view_any_user','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(123,'create_user','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(124,'update_user','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(125,'restore_user','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(126,'restore_any_user','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(127,'replicate_user','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(128,'reorder_user','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(129,'delete_user','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(130,'delete_any_user','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(131,'force_delete_user','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(132,'force_delete_any_user','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(133,'view_welcome::section','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(134,'view_any_welcome::section','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(135,'create_welcome::section','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(136,'update_welcome::section','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(137,'restore_welcome::section','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(138,'restore_any_welcome::section','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(139,'replicate_welcome::section','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(140,'reorder_welcome::section','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(141,'delete_welcome::section','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(142,'delete_any_welcome::section','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(143,'force_delete_welcome::section','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(144,'force_delete_any_welcome::section','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(145,'page_ManageFooter','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(146,'page_ManageHeader','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(147,'page_ManageSidebarDesign','web','2025-11-22 09:39:04','2025-11-22 09:39:04'),(148,'view_role','web','2025-11-22 09:41:42','2025-11-22 09:41:42'),(149,'view_any_role','web','2025-11-22 09:41:42','2025-11-22 09:41:42'),(150,'create_role','web','2025-11-22 09:41:42','2025-11-22 09:41:42'),(151,'update_role','web','2025-11-22 09:41:42','2025-11-22 09:41:42'),(152,'delete_role','web','2025-11-22 09:41:42','2025-11-22 09:41:42'),(153,'delete_any_role','web','2025-11-22 09:41:42','2025-11-22 09:41:42'),(154,'view_setting','web','2025-11-22 09:41:42','2025-11-22 09:41:42'),(155,'view_any_setting','web','2025-11-22 09:41:42','2025-11-22 09:41:42'),(156,'create_setting','web','2025-11-22 09:41:42','2025-11-22 09:41:42'),(157,'update_setting','web','2025-11-22 09:41:42','2025-11-22 09:41:42'),(158,'restore_setting','web','2025-11-22 09:41:42','2025-11-22 09:41:42'),(159,'restore_any_setting','web','2025-11-22 09:41:42','2025-11-22 09:41:42'),(160,'replicate_setting','web','2025-11-22 09:41:42','2025-11-22 09:41:42'),(161,'reorder_setting','web','2025-11-22 09:41:42','2025-11-22 09:41:42'),(162,'delete_setting','web','2025-11-22 09:41:42','2025-11-22 09:41:42'),(163,'delete_any_setting','web','2025-11-22 09:41:42','2025-11-22 09:41:42'),(164,'force_delete_setting','web','2025-11-22 09:41:42','2025-11-22 09:41:42'),(165,'force_delete_any_setting','web','2025-11-22 09:41:42','2025-11-22 09:41:42');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo_galleries`
--

DROP TABLE IF EXISTS `photo_galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photo_galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_drive_folder_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_image_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manual_thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` json DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `published_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `photo_galleries_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo_galleries`
--

LOCK TABLES `photo_galleries` WRITE;
/*!40000 ALTER TABLE `photo_galleries` DISABLE KEYS */;
INSERT INTO `photo_galleries` VALUES (4,'Fresher\'s Reception (HSC)-2025','freshers-reception-hsc-2025','https://drive.google.com/drive/folders/1rB8SRPTpy54fh8joB2WfPCzpwG7mCdmk?usp=sharing','/1NpvarAu9A6AI5MtUjWYFK74Ywn_5ESfJ/view','galleries/thumbnails/01KDMWA1MNFFTKCR3D3EZK283X.jpg',NULL,NULL,1,'2025-12-29','2025-12-29 11:01:18','2025-12-29 11:11:33');
/*!40000 ALTER TABLE `photo_galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `popups`
--

DROP TABLE IF EXISTS `popups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `popups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_bg_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#006a4e',
  `button_text_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#ffffff',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `display_on` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'homepage',
  `show_once_per_session` tinyint(1) NOT NULL DEFAULT '1',
  `auto_close_seconds` int DEFAULT NULL,
  `priority` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `popups`
--

LOCK TABLES `popups` WRITE;
/*!40000 ALTER TABLE `popups` DISABLE KEYS */;
INSERT INTO `popups` VALUES (1,'১৬ ডিসেম্বর মহান বিজয় দিবস',NULL,'https://drive.google.com/file/d/1a2gNWIuk9lZYv1dMwF6aS8lseiFkIl-V/view?usp=sharing','Apply Now','https://amarschool.co','#006a4e','#ffffff',0,'homepage',1,NULL,1,'2025-12-27 23:37:14','2025-12-29 05:15:35');
/*!40000 ALTER TABLE `popups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1),(101,1),(102,1),(103,1),(104,1),(105,1),(106,1),(107,1),(108,1),(109,1),(110,1),(111,1),(112,1),(113,1),(114,1),(115,1),(116,1),(117,1),(118,1),(119,1),(120,1),(121,1),(122,1),(123,1),(124,1),(125,1),(126,1),(127,1),(128,1),(129,1),(130,1),(131,1),(132,1),(133,1),(134,1),(135,1),(136,1),(137,1),(138,1),(139,1),(140,1),(141,1),(142,1),(143,1),(144,1),(145,1),(146,1),(147,1),(148,1),(149,1),(150,1),(151,1),(152,1),(153,1),(154,1),(155,1),(156,1),(157,1),(158,1),(159,1),(160,1),(161,1),(162,1),(163,1),(164,1),(165,1),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(11,2),(12,2),(13,2),(14,2),(15,2),(16,2),(17,2),(18,2),(19,2),(20,2),(21,2),(22,2),(23,2),(24,2),(25,2),(26,2),(27,2),(28,2),(29,2),(30,2),(31,2),(32,2),(33,2),(34,2),(35,2),(36,2),(37,2),(38,2),(39,2),(40,2),(41,2),(42,2),(43,2),(44,2),(45,2),(46,2),(47,2),(48,2),(49,2),(50,2),(51,2),(52,2),(53,2),(54,2),(55,2),(56,2),(57,2),(58,2),(59,2),(60,2),(61,2),(62,2),(63,2),(64,2),(65,2),(66,2),(67,2),(68,2),(69,2),(70,2),(71,2),(72,2),(73,2),(74,2),(75,2),(76,2),(77,2),(78,2),(79,2),(80,2),(81,2),(82,2),(83,2),(84,2),(85,2),(86,2),(87,2),(88,2),(89,2),(90,2),(91,2),(92,2),(93,2),(94,2),(95,2),(96,2),(97,2),(98,2),(99,2),(100,2),(101,2),(102,2),(103,2),(104,2),(105,2),(106,2),(107,2),(108,2),(109,2),(110,2),(111,2),(112,2),(113,2),(114,2),(115,2),(116,2),(117,2),(118,2),(119,2),(120,2),(121,2),(122,2),(123,2),(124,2),(125,2),(126,2),(127,2),(128,2),(129,2),(130,2),(131,2),(132,2),(133,2),(134,2),(135,2),(136,2),(137,2),(138,2),(139,2),(140,2),(141,2),(142,2),(143,2),(144,2),(145,2),(146,2),(147,2),(1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(8,3),(9,3),(10,3),(11,3),(12,3),(25,3),(26,3),(27,3),(28,3),(29,3),(30,3),(31,3),(32,3),(33,3),(34,3),(35,3),(36,3),(37,3),(38,3),(39,3),(40,3),(41,3),(42,3),(43,3),(44,3),(45,3),(46,3),(47,3),(48,3),(49,3),(50,3),(51,3),(52,3),(53,3),(54,3),(55,3),(56,3),(57,3),(58,3),(59,3),(60,3),(61,3),(62,3),(63,3),(64,3),(65,3),(66,3),(67,3),(68,3),(69,3),(70,3),(71,3),(72,3),(73,3),(74,3),(75,3),(76,3),(77,3),(78,3),(79,3),(80,3),(81,3),(82,3),(83,3),(84,3),(85,3),(86,3),(87,3),(88,3),(89,3),(90,3),(91,3),(92,3),(93,3),(94,3),(95,3),(96,3),(97,3),(98,3),(99,3),(100,3),(101,3),(102,3),(103,3),(104,3),(105,3),(106,3),(107,3),(108,3),(109,3),(110,3),(111,3),(112,3),(113,3),(114,3),(115,3),(116,3),(117,3),(118,3),(119,3),(120,3),(133,3),(134,3),(135,3),(136,3),(137,3),(138,3),(139,3),(140,3),(141,3),(142,3),(143,3),(144,3);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'super_admin','web','2025-11-22 09:32:11','2025-11-22 09:32:11'),(2,'admin','web','2025-11-22 09:36:24','2025-11-22 09:36:24'),(3,'panel_user','web','2025-11-22 09:36:24','2025-11-22 09:36:24');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('QjWFqF5bEYVQHNjNdycidEBabTTDfnomfJR1Kq4I',NULL,'103.177.200.243','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoia0JKbm5MRmcxSWJlODh4N1Z5elY1UGNxbGlKWVlrTUNUV1Ntam9qbSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vZGVtby5tb3Njb25pY3VwbGl2ZS5jb20iO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1767005781),('Qo9zRp8K8zw5UOJeHHabogkeALze6HqgkToOXknQ',1,'144.48.108.41','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','YTo4OntzOjY6Il90b2tlbiI7czo0MDoicVJQMXdVTTZYRGNOTG1jQ1lWMmRZa2JSSkRRNW5rZWRtMzNySDUwYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjI6e3M6MzoidXJsIjtzOjMxOiJodHRwczovL2RlbW8ubW9zY29uaWN1cGxpdmUuY29tIjtzOjU6InJvdXRlIjtOO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkN1lpLmoyTEl0NzMzQ2NManFLdVJkZURjanhSOU1HUlVNT0ZPaFVndW9hQ3NEL1ZaS05PLjIiO3M6ODoiZmlsYW1lbnQiO2E6MDp7fXM6NjoidGFibGVzIjthOjI6e3M6NDE6IjAwMGZmMmNkMThjMzljMWY1NGM2MDRlZWU3OWIxYjQ4X3Blcl9wYWdlIjtzOjI6IjUwIjtzOjQxOiIzNjJkYzA1YzczYmI4MGU3NzBlZGMxOWExOWYyNjMzNV9wZXJfcGFnZSI7czozOiJhbGwiO319',1767010148);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site_name','RAMU CANTONMENT ENGLISH SCHOOL & COLLEGE','2025-11-21 22:42:45','2025-12-18 11:03:06'),(2,'site_tagline','Discipline, Knowledge, Morality','2025-11-21 22:42:45','2025-11-21 22:42:45'),(3,'phone','+8801769026044','2025-11-21 22:42:45','2025-11-21 22:42:45'),(4,'email','info@bacpsc.edu.bd','2025-11-21 22:42:45','2025-11-21 22:42:45'),(5,'address','Barishal Cantonment, Barishal','2025-11-21 22:42:45','2025-11-21 22:42:45'),(6,'facebook','#','2025-11-21 22:42:45','2025-11-21 22:42:45'),(7,'youtube','#','2025-11-21 22:42:45','2025-11-21 22:42:45'),(8,'logo','https://bacpsc.edu.bd/wp-content/uploads/2024/10/barisal-logo.png','2025-11-21 22:42:45','2025-11-22 00:35:19'),(9,'site_name_bangla','বরিশাল ক্যান্টনমেন্ট পাবলিক স্কুল ও কলেজ','2025-11-22 00:33:18','2025-11-22 00:33:18'),(10,'eiin','Barishal Cantonment, EIIN:136998','2025-11-22 00:33:19','2025-11-22 00:33:19'),(11,'erecruitment_url','https://admission.trusteduerp.xyz/job/apply?insId=1006','2025-11-22 00:33:19','2025-11-22 00:38:06'),(12,'online_admission_url','https://bacpsc.edu.bd/online-admission/','2025-11-22 00:33:19','2025-11-22 00:39:16'),(13,'online_fee_url','https://s2.trusteduerp.xyz/st/login?insId=1006','2025-11-22 00:33:19','2025-11-22 00:39:42'),(14,'sidebar_header_bg','#0f3d3e','2025-11-22 04:23:17','2025-11-22 04:23:17'),(15,'sidebar_body_bg','#1a4d2e','2025-11-22 04:23:17','2025-11-22 04:23:17'),(16,'sidebar_title_color','#ffc107','2025-11-22 04:23:17','2025-11-22 04:23:17'),(17,'sidebar_text_color','#ffffff','2025-11-22 04:23:17','2025-11-22 04:23:17'),(18,'sidebar_btn_bg','#28a745','2025-11-22 04:23:17','2025-11-22 04:23:17'),(19,'sidebar_btn_text_color','#0d9100','2025-11-22 04:23:17','2025-12-18 08:52:16'),(20,'sidebar_aspect_ratio','3/4','2025-11-22 04:23:17','2025-11-22 04:23:17'),(21,'sidebar_image_width','70','2025-11-22 04:23:17','2025-11-22 04:25:04'),(22,'sidebar_image_position','top center','2025-11-22 04:23:17','2025-11-22 04:23:17'),(23,'sidebar_image_fit','cover','2025-11-22 04:23:17','2025-11-22 04:23:17'),(24,'sidebar_border_radius','20px','2025-11-22 04:23:17','2025-11-22 04:24:27'),(25,'sidebar_border_width','5px','2025-11-22 04:23:17','2025-11-22 04:25:04'),(26,'sidebar_border_color','#ffffff','2025-11-22 04:23:17','2025-11-22 04:23:17'),(27,'sidebar_title_font_size','1.1rem','2025-11-22 04:23:17','2025-11-22 04:23:17'),(28,'sidebar_desig_font_size','0.875rem','2025-11-22 04:23:17','2025-11-22 04:23:17'),(29,'sidebar_card_padding','1rem','2025-11-22 04:23:17','2025-11-22 04:23:17'),(30,'menu_card_template','template_1','2025-12-14 08:12:43','2025-12-22 02:34:05'),(31,'info_header_bg','#0f3d3e','2025-12-18 07:29:17','2025-12-18 07:29:17'),(32,'info_body_bg','#1a4d2e','2025-12-18 07:29:17','2025-12-18 07:29:17'),(33,'info_text_color','#ffc107','2025-12-18 07:29:17','2025-12-18 07:29:17'),(34,'info_icon_color','#ffc107','2025-12-18 07:29:17','2025-12-18 07:29:17'),(35,'info_border_color','rgba(255, 193, 7, 0.3)','2025-12-18 07:29:17','2025-12-18 07:29:17'),(36,'notice_header_bg','#0f3d3e','2025-12-18 07:29:17','2025-12-18 07:29:17'),(37,'notice_body_bg','#f0f8f0','2025-12-18 07:29:17','2025-12-18 07:29:17'),(38,'notice_title_color','#0066cc','2025-12-18 07:29:17','2025-12-18 07:29:17'),(39,'notice_date_color','#dc3545','2025-12-18 07:29:17','2025-12-18 07:29:17');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sidebar_widgets`
--

DROP TABLE IF EXISTS `sidebar_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sidebar_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'image_link',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sidebar_widgets`
--

LOCK TABLES `sidebar_widgets` WRITE;
/*!40000 ALTER TABLE `sidebar_widgets` DISABLE KEYS */;
INSERT INTO `sidebar_widgets` VALUES (1,'Academic Calendar','calendar',NULL,NULL,NULL,1,1,'2025-11-22 04:28:43','2025-11-22 04:28:43'),(2,'Video','video','https://youtu.be/_vfTzbVWAoE',NULL,NULL,2,1,'2025-11-22 04:29:45','2025-12-29 09:41:03'),(3,'How to Pay Tuition Fees Using TAP','video','https://youtu.be/Bocc6ZMHbOo',NULL,NULL,3,0,'2025-11-22 04:34:43','2025-12-29 09:41:24'),(4,'Publisher Corner','link','ম্যাগাজিন',NULL,'https://drive.google.com/file/d/1ZfBTcXcY2nizJ7YlD-lRgTVzJVGkj6Sd/view',4,1,'2025-11-22 04:35:59','2025-11-22 04:44:01'),(5,'Help Line','image_link',NULL,'https://drive.google.com/file/d/1A3zT4tH3ht3VerOcS2xHruHjIdA4fxmH/view?usp=sharing',NULL,5,1,'2025-11-22 04:37:49','2025-11-22 04:37:49');
/*!40000 ALTER TABLE `sidebar_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'center',
  `image_fit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'contain',
  `order` int NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` VALUES (1,'Welcome to Our Campus','https://drive.google.com/thumbnail?id=11duBeC07CkluxdXpC8v7HYLBfFpaA9cc&sz=w1920',NULL,'center','cover',1,1,'2025-11-21 22:42:45','2025-12-28 04:03:23'),(3,'Dictory Day-2025','https://drive.google.com/thumbnail?id=1Puj4Bl9PKjIQ_TwG2y-3aGx_e7CjjBNB&sz=w1920',NULL,'center','contain',2,1,'2025-12-28 03:53:09','2025-12-28 04:05:17'),(4,'Cultural Programme-2025','https://drive.google.com/thumbnail?id=1kYNiQmGadCeCP_JyZ3TAgoa9eei_7liO&sz=w1920',NULL,'center','contain',3,1,'2025-12-28 05:10:25','2025-12-29 12:04:56');
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theme_settings`
--

DROP TABLE IF EXISTS `theme_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theme_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `homepage_template` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'template_1',
  `sidebar_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BCPSC INFORMATION',
  `news_events_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NEWS AND EVENTS',
  `achievements_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACHIEVEMENTS',
  `all_notices_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ALL PUBLISHED NOTICE',
  `primary_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#006a4e',
  `secondary_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#f42a41',
  `accent_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#f8f9fa',
  `text_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#333333',
  `link_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#006a4e',
  `topbar_bg_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#5a9a7a',
  `header_bg_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#2d6a4f',
  `navbar_bg_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#1e5540',
  `navbar_hover_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'rgba(255,255,255,0.15)',
  `footer_bg_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#2c3e50',
  `footer_bottom_bg_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#1a252f',
  `body_bg_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#f4f6f9',
  `ticker_bg_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#006a4e',
  `ticker_text_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#ffffff',
  `message_card_design` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'solid',
  `message_card_bg_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_card_bg_image_gdrive` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `card_header_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#134B50',
  `card_name_text_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#e8f5e9',
  `card_designation_text_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#ffffff',
  `card_image_border_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#ffffff',
  `card_button_bg_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#134B50',
  `card_button_text_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#ffffff',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theme_settings`
--

LOCK TABLES `theme_settings` WRITE;
/*!40000 ALTER TABLE `theme_settings` DISABLE KEYS */;
INSERT INTO `theme_settings` VALUES (1,'template_3','INFORMATION','NEWS AND EVENTS','ACHIEVEMENTS','ALL PUBLISHED NOTICE','#1b8500','#068f00','#e8f5e9','#212121','#2e7d32','#2eab00','#005e00','#1f7800','rgba(255,255,255,0.15)','#148c00','#0a3000','#e8f5e9','#1a9101','#ffffff','image','message-cards/01KD8FEV6Y7DCAAY4GG2B1YKQD.png','https://drive.google.com/file/d/188f3e1cMyQWEzyduweYY5OY-mAEjEGy6/view?usp=sharing','#056b00','#006108','#013003','#044001','#22b300','#ffffff','2025-11-22 11:45:32','2025-12-29 10:48:23'),(2,'template_1','BCPSC INFORMATION','NEWS AND EVENTS','ACHIEVEMENTS','ALL PUBLISHED NOTICE','#006a4e','#f42a41','#f8f9fa','#333333','#006a4e','#5a9a7a','#2d6a4f','#1e5540','rgba(255,255,255,0.15)','#2c3e50','#1a252f','#f4f6f9','#006a4e','#ffffff','solid',NULL,NULL,'#134B50','#e8f5e9','#ffffff','#ffffff','#134B50','#ffffff','2025-11-22 12:00:06','2025-11-22 12:00:06');
/*!40000 ALTER TABLE `theme_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@bacpsc.edu.bd','2025-12-17 03:20:44','$2y$12$7Yi.j2LIt733CcLjqKuRdeDcjxR9MGRUMOFOhUguoaCsD/VZKNO.2','QJSCEUOrJR6DbHGiFDyT0oI4LbxQS3dqZpTvDuDd3iJc77kYSgCKttA8XuMZ','2025-11-22 00:11:21','2025-12-17 03:20:44'),(3,'zahid','zahid@bacpsc.edu.bd',NULL,'$2y$12$t0q4sY.xXXN39gZQZr1kiu9Fmp5Ek/bPiXyU2mxdJ5rqdJbV77K7y',NULL,'2025-11-22 09:25:56','2025-11-22 09:25:56'),(4,'Sumon','sumon@bacpsc.edu.bd',NULL,'$2y$12$ovQeIopk1Pq5cnmXvcOTZuA8S/gu7ei4MDAZJoa/efmB.N2F6ML8q',NULL,'2025-11-22 09:40:05','2025-11-22 09:43:53'),(5,'Super Admin','admin@admin.com','2025-12-17 03:16:55','$2y$12$IICjR6LmvWDRezRqkM0..uu20lpjTvyO4RKuNIe1sTI/MZT9ttihm',NULL,'2025-12-17 03:16:55','2025-12-17 03:16:55'),(6,'Shimul (Super Admin)','shimul.amarschool@gmail.com',NULL,'$2y$12$mwnwiEzvmH4yAK1UNpdJau.72AEfy9PIT0aIppIMA6AT7crSeMDD.',NULL,'2025-12-22 06:51:24','2025-12-22 06:54:49'),(7,'Regular User','user@test.com',NULL,'$2y$12$5PazZvIKHPFDsSzh1747R.oGNkQxbYFk.OOk6lTLYC0Gh1tz5FVRm',NULL,'2025-12-22 06:51:25','2025-12-22 06:51:25'),(8,'Shimul Hossain','shimulvisa@gmail.com',NULL,'$2y$12$LnMNgqqhgf902QVmmgMbWeRhD1z76jGPr9bizXkIQ/04qKe9Dw2zC',NULL,'2025-12-22 22:32:15','2025-12-22 22:32:15');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_galleries`
--

DROP TABLE IF EXISTS `video_galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video_galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `videos` json DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `published_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `video_galleries_slug_unique` (`slug`),
  KEY `video_galleries_created_by_foreign` (`created_by`),
  CONSTRAINT `video_galleries_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_galleries`
--

LOCK TABLES `video_galleries` WRITE;
/*!40000 ALTER TABLE `video_galleries` DISABLE KEYS */;
INSERT INTO `video_galleries` VALUES (2,'এসো বাংলা শিখি','eso-bangla-sikhi-hzebqx',1,'[{\"info\": null, \"title\": \"এসো বাংলা শিখি\", \"youtube_url\": \"https://youtu.be/XfvEBZT--LY\"}]',1,NULL,'2025-12-17 01:38:30','2025-12-17 01:38:30');
/*!40000 ALTER TABLE `video_galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `welcome_sections`
--

DROP TABLE IF EXISTS `welcome_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `welcome_sections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Welcome To BCPSC',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `welcome_sections`
--

LOCK TABLES `welcome_sections` WRITE;
/*!40000 ALTER TABLE `welcome_sections` DISABLE KEYS */;
INSERT INTO `welcome_sections` VALUES (1,'Welcome To RCES','Ramu Upazila situated at the southernmost point of Bangladesh, near to the longest beach in the world. It’s surrounded by beautiful scenic views of mountains and the sea. It has the history of oldest human habitation and once it was a center place for king of the Arakan and Mog. Endless natural beauty, ancient Buddha antique, Ashoka temple, tunnel of king Kana, high bank and other natural resources as well as the diversity livelihood of indigenous people are remarkable of this Upazila. Unfortunately, the literacy rate is very poor than that of other parts of Bangladesh.  literacy 26%; male 29.6%, female 22.3%. \n\nAs a part of social responsibility, leadership of Ramu Cantonment decided to establish a school to join the fight against illiteracy.   23 September 2015 was a golden day for Ramu, when Major General Ataul Hakim Sarwar Hasan, SBP, SGP, ndc, afwc, psc, PhD, GOC 10 Infantry Division and Madam Farzan Hasan laid the foundation stone of Ramu Cantonment English School and College. Few other enthusiastic and generous people quickly joined hands and started the academic curricula of the school on 16th January 2016, turning it into the first ever English version school of cox\'s Bazar.\n\n“Future Begins Here” the motto of RCESC influenced us to enlighten the torch of education among the people of the country especially Ramu.  In 2016, RCESC instigated with 7 classes (Play to Class 4), 11 dignified teachers, some non-teaching staffs and 285 students. In 2017, three new classes from Class 5 to Class 7 were initiated. In 2018, Class 8 and 9 were introduced. Now, it received the permission of Higher Secondary from ministry Education and Education Board Chattagram.   \n\nNow, there are 31 faculty members and around 520 students. We have marvelous school campus with spacious ground for energetic youngsters and have a highly motivated teaching staff to provide excellent and scientifically equipped modern education. Our managing committee is selflessly dedicated and our respected guardians are warmheartedly cooperative. This school is walking towards some specific purposes; where a child will learn academic, moral, social and physical development and thus become a good human being and good citizen of Bangladesh.','https://drive.google.com/file/d/1oJ1tqRX_G-8_WA6ldS0rJfuWG0HsoR4X/view?usp=sharing','Details ','https://bacpsc.edu.bd/details',1,'2025-11-22 07:33:10','2025-12-28 05:26:58');
/*!40000 ALTER TABLE `welcome_sections` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-30 19:05:04
