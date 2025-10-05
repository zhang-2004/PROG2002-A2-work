-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: charityevents_db
-- ------------------------------------------------------
-- Server version	9.4.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `full_description` text,
  `event_date` datetime NOT NULL,
  `location` varchar(255) NOT NULL,
  `venue_details` text,
  `purpose` text,
  `ticket_price` decimal(10,2) DEFAULT '0.00',
  `goal_amount` decimal(10,2) DEFAULT '0.00',
  `current_amount` decimal(10,2) DEFAULT '0.00',
  `organization_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `organization_id` (`organization_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `events_ibfk_1` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`id`),
  CONSTRAINT `events_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `event_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'星光慈善晚宴','优雅的正式晚宴，为贫困儿童筹款','加入我们的星光慈善晚宴，享受美食、娱乐和无声拍卖。所有收益将用于资助贫困儿童的教育项目。','2025-10-15 18:30:00','悉尼歌剧院','Bennelong餐厅','为贫困儿童教育筹款',150.00,50000.00,25000.00,1,1,'/images/gala-dinner.jpg',1,'2025-10-05 16:01:10'),(2,'希望趣味跑2025','5公里趣味跑步活动','穿上跑鞋，加入希望趣味跑！适合所有年龄和体能水平。包含娱乐活动、食品摊位和颁奖仪式。','2025-09-20 08:00:00','百年纪念公园','主入口集合点','为儿童医疗基金筹款',25.00,30000.00,15000.00,1,2,'/images/fun-run.jpg',1,'2025-10-05 16:01:10'),(3,'艺术无声拍卖','本地艺术家作品拍卖','欣赏并竞拍本地艺术家的精美作品。所有拍卖收益将支持新兴艺术家发展计划。','2025-11-05 19:00:00','墨尔本艺术中心','展览厅A','支持本地艺术家',0.00,20000.00,8000.00,2,3,'/images/auction.jpg',1,'2025-10-05 16:01:10'),(4,'爱心音乐会','古典音乐慈善晚会','享受世界级音乐家的精彩表演，同时为慈善事业贡献力量。演出包括古典和现代作品。','2025-10-28 19:30:00','悉尼市政厅','音乐厅','为音乐教育项目筹款',80.00,40000.00,20000.00,1,4,'/images/concert.jpg',1,'2025-10-05 16:01:10'),(5,'绿色社区市集','环保主题社区活动','探索可持续生活方式，购买本地有机产品，参与环保工作坊。适合全家参与。','2025-09-12 10:00:00','布里斯班植物园','中央草坪区','推广环保意识',0.00,10000.00,4500.00,2,5,'/images/market.jpg',1,'2025-10-05 16:01:10'),(6,'冬季慈善晚宴','温馨的冬季筹款活动','在寒冷的冬季夜晚，用温暖的心支持无家可归者。包含三道菜晚餐和现场音乐。','2025-06-20 19:00:00','堪培拉国家会议中心','宴会厅','帮助无家可归者',120.00,35000.00,18000.00,1,1,'/images/winter-gala.jpg',1,'2025-10-05 16:01:10'),(7,'海岸清洁跑','跑步同时保护环境','沿着美丽的海岸线跑步，同时清理海滩垃圾。健康与环保的完美结合！','2025-08-15 07:30:00','黄金海岸','冲浪者天堂海滩','环境保护筹款',15.00,15000.00,7000.00,2,2,'/images/beach-run.jpg',1,'2025-10-05 16:01:10'),(8,'儿童慈善日','家庭友好型社区活动','充满乐趣的一天！包括面部彩绘、手工工作坊、游戏和娱乐表演。所有活动适合儿童。','2025-07-25 11:00:00','阿德莱德植物园','儿童游乐区','支持儿童医院',10.00,25000.00,12000.00,1,5,'/images/kids-day.jpg',1,'2025-10-05 16:01:10'),(9,'星光慈善晚宴','优雅的正式晚宴，为贫困儿童筹款','加入我们的星光慈善晚宴，享受美食、娱乐和无声拍卖。所有收益将用于资助贫困儿童的教育项目。','2025-10-15 18:30:00','悉尼歌剧院','Bennelong餐厅','为贫困儿童教育筹款',150.00,50000.00,25000.00,1,1,'/images/gala-dinner.jpg',1,'2025-10-05 16:01:14'),(10,'希望趣味跑2025','5公里趣味跑步活动','穿上跑鞋，加入希望趣味跑！适合所有年龄和体能水平。包含娱乐活动、食品摊位和颁奖仪式。','2025-09-20 08:00:00','百年纪念公园','主入口集合点','为儿童医疗基金筹款',25.00,30000.00,15000.00,1,2,'/images/fun-run.jpg',1,'2025-10-05 16:01:14'),(11,'艺术无声拍卖','本地艺术家作品拍卖','欣赏并竞拍本地艺术家的精美作品。所有拍卖收益将支持新兴艺术家发展计划。','2025-11-05 19:00:00','墨尔本艺术中心','展览厅A','支持本地艺术家',0.00,20000.00,8000.00,2,3,'/images/auction.jpg',1,'2025-10-05 16:01:14'),(12,'爱心音乐会','古典音乐慈善晚会','享受世界级音乐家的精彩表演，同时为慈善事业贡献力量。演出包括古典和现代作品。','2025-10-28 19:30:00','悉尼市政厅','音乐厅','为音乐教育项目筹款',80.00,40000.00,20000.00,1,4,'/images/concert.jpg',1,'2025-10-05 16:01:14'),(13,'绿色社区市集','环保主题社区活动','探索可持续生活方式，购买本地有机产品，参与环保工作坊。适合全家参与。','2025-09-12 10:00:00','布里斯班植物园','中央草坪区','推广环保意识',0.00,10000.00,4500.00,2,5,'/images/market.jpg',1,'2025-10-05 16:01:14'),(14,'冬季慈善晚宴','温馨的冬季筹款活动','在寒冷的冬季夜晚，用温暖的心支持无家可归者。包含三道菜晚餐和现场音乐。','2025-06-20 19:00:00','堪培拉国家会议中心','宴会厅','帮助无家可归者',120.00,35000.00,18000.00,1,1,'/images/winter-gala.jpg',1,'2025-10-05 16:01:14'),(15,'海岸清洁跑','跑步同时保护环境','沿着美丽的海岸线跑步，同时清理海滩垃圾。健康与环保的完美结合！','2025-08-15 07:30:00','黄金海岸','冲浪者天堂海滩','环境保护筹款',15.00,15000.00,7000.00,2,2,'/images/beach-run.jpg',1,'2025-10-05 16:01:14'),(16,'儿童慈善日','家庭友好型社区活动','充满乐趣的一天！包括面部彩绘、手工工作坊、游戏和娱乐表演。所有活动适合儿童。','2025-07-25 11:00:00','阿德莱德植物园','儿童游乐区','支持儿童医院',10.00,25000.00,12000.00,1,5,'/images/kids-day.jpg',1,'2025-10-05 16:01:14');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-06  0:28:08
