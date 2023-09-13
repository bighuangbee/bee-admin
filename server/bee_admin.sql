

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
-- Position to start replication or point-in-time recovery from
--

-- CHANGE MASTER TO MASTER_LOG_FILE='binlog.000006', MASTER_LOG_POS=157;

--
-- Table structure for table `casbin_rule`
--

DROP TABLE IF EXISTS `casbin_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casbin_rule` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ptype` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v0` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v1` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v2` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v3` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v4` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v5` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_casbin_rule` (`ptype`,`v0`,`v1`,`v2`,`v3`,`v4`,`v5`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casbin_rule`
--

LOCK TABLES `casbin_rule` WRITE;
/*!40000 ALTER TABLE `casbin_rule` DISABLE KEYS */;
INSERT INTO `casbin_rule` VALUES (2,'p','888','/api/createApi','POST','','',''),(5,'p','888','/api/deleteApi','POST','','',''),(8,'p','888','/api/deleteApisByIds','DELETE','','',''),(7,'p','888','/api/getAllApis','POST','','',''),(4,'p','888','/api/getApiById','POST','','',''),(3,'p','888','/api/getApiList','POST','','',''),(6,'p','888','/api/updateApi','POST','','',''),(9,'p','888','/authority/copyAuthority','POST','','',''),(11,'p','888','/authority/createAuthority','POST','','',''),(12,'p','888','/authority/deleteAuthority','POST','','',''),(13,'p','888','/authority/getAuthorityList','POST','','',''),(14,'p','888','/authority/setDataAuthority','POST','','',''),(10,'p','888','/authority/updateAuthority','PUT','','',''),(89,'p','888','/authorityBtn/canRemoveAuthorityBtn','POST','','',''),(88,'p','888','/authorityBtn/getAuthorityBtn','POST','','',''),(87,'p','888','/authorityBtn/setAuthorityBtn','POST','','',''),(42,'p','888','/casbin/getPolicyPathByAuthorityId','POST','','',''),(41,'p','888','/casbin/updateCasbin','POST','','',''),(50,'p','888','/customer/customer','DELETE','','',''),(47,'p','888','/customer/customer','GET','','',''),(49,'p','888','/customer/customer','POST','','',''),(48,'p','888','/customer/customer','PUT','','',''),(51,'p','888','/customer/customerList','GET','','',''),(35,'p','888','/fileUploadAndDownload/breakpointContinue','POST','','',''),(34,'p','888','/fileUploadAndDownload/breakpointContinueFinish','POST','','',''),(38,'p','888','/fileUploadAndDownload/deleteFile','POST','','',''),(39,'p','888','/fileUploadAndDownload/editFileName','POST','','',''),(33,'p','888','/fileUploadAndDownload/findFile','GET','','',''),(40,'p','888','/fileUploadAndDownload/getFileList','POST','','',''),(36,'p','888','/fileUploadAndDownload/removeChunk','POST','','',''),(37,'p','888','/fileUploadAndDownload/upload','POST','','',''),(43,'p','888','/jwt/jsonInBlacklist','POST','','',''),(17,'p','888','/menu/addBaseMenu','POST','','',''),(19,'p','888','/menu/addMenuAuthority','POST','','',''),(21,'p','888','/menu/deleteBaseMenu','POST','','',''),(23,'p','888','/menu/getBaseMenuById','POST','','',''),(18,'p','888','/menu/getBaseMenuTree','POST','','',''),(15,'p','888','/menu/getMenu','POST','','',''),(20,'p','888','/menu/getMenuAuthority','POST','','',''),(16,'p','888','/menu/getMenuList','POST','','',''),(22,'p','888','/menu/updateBaseMenu','POST','','',''),(85,'p','888','/simpleUploader/checkFileMd5','GET','','',''),(86,'p','888','/simpleUploader/mergeFileMd5','GET','','',''),(84,'p','888','/simpleUploader/upload','POST','','',''),(75,'p','888','/sysDictionary/createSysDictionary','POST','','',''),(76,'p','888','/sysDictionary/deleteSysDictionary','DELETE','','',''),(72,'p','888','/sysDictionary/findSysDictionary','GET','','',''),(74,'p','888','/sysDictionary/getSysDictionaryList','GET','','',''),(73,'p','888','/sysDictionary/updateSysDictionary','PUT','','',''),(69,'p','888','/sysDictionaryDetail/createSysDictionaryDetail','POST','','',''),(71,'p','888','/sysDictionaryDetail/deleteSysDictionaryDetail','DELETE','','',''),(67,'p','888','/sysDictionaryDetail/findSysDictionaryDetail','GET','','',''),(70,'p','888','/sysDictionaryDetail/getSysDictionaryDetailList','GET','','',''),(68,'p','888','/sysDictionaryDetail/updateSysDictionaryDetail','PUT','','',''),(79,'p','888','/sysOperationRecord/createSysOperationRecord','POST','','',''),(81,'p','888','/sysOperationRecord/deleteSysOperationRecord','DELETE','','',''),(82,'p','888','/sysOperationRecord/deleteSysOperationRecordByIds','DELETE','','',''),(77,'p','888','/sysOperationRecord/findSysOperationRecord','GET','','',''),(80,'p','888','/sysOperationRecord/getSysOperationRecordList','GET','','',''),(78,'p','888','/sysOperationRecord/updateSysOperationRecord','PUT','','',''),(46,'p','888','/system/getServerInfo','POST','','',''),(44,'p','888','/system/getSystemConfig','POST','','',''),(45,'p','888','/system/setSystemConfig','POST','','',''),(1,'p','888','/user/admin_register','POST','','',''),(29,'p','888','/user/changePassword','POST','','',''),(28,'p','888','/user/deleteUser','DELETE','','',''),(24,'p','888','/user/getUserInfo','GET','','',''),(27,'p','888','/user/getUserList','POST','','',''),(32,'p','888','/user/resetPassword','POST','','',''),(26,'p','888','/user/setSelfInfo','PUT','','',''),(31,'p','888','/user/setUserAuthorities','POST','','',''),(30,'p','888','/user/setUserAuthority','POST','','',''),(25,'p','888','/user/setUserInfo','PUT','','',''),(133,'p','9528','/api/createApi','POST','','',''),(136,'p','9528','/api/deleteApi','POST','','',''),(138,'p','9528','/api/getAllApis','POST','','',''),(135,'p','9528','/api/getApiById','POST','','',''),(134,'p','9528','/api/getApiList','POST','','',''),(137,'p','9528','/api/updateApi','POST','','',''),(139,'p','9528','/authority/createAuthority','POST','','',''),(140,'p','9528','/authority/deleteAuthority','POST','','',''),(141,'p','9528','/authority/getAuthorityList','POST','','',''),(142,'p','9528','/authority/setDataAuthority','POST','','',''),(169,'p','9528','/autoCode/createTemp','POST','','',''),(160,'p','9528','/casbin/getPolicyPathByAuthorityId','POST','','',''),(159,'p','9528','/casbin/updateCasbin','POST','','',''),(167,'p','9528','/customer/customer','DELETE','','',''),(165,'p','9528','/customer/customer','GET','','',''),(166,'p','9528','/customer/customer','POST','','',''),(164,'p','9528','/customer/customer','PUT','','',''),(168,'p','9528','/customer/customerList','GET','','',''),(161,'p','9528','/jwt/jsonInBlacklist','POST','','',''),(145,'p','9528','/menu/addBaseMenu','POST','','',''),(147,'p','9528','/menu/addMenuAuthority','POST','','',''),(149,'p','9528','/menu/deleteBaseMenu','POST','','',''),(151,'p','9528','/menu/getBaseMenuById','POST','','',''),(146,'p','9528','/menu/getBaseMenuTree','POST','','',''),(143,'p','9528','/menu/getMenu','POST','','',''),(148,'p','9528','/menu/getMenuAuthority','POST','','',''),(144,'p','9528','/menu/getMenuList','POST','','',''),(150,'p','9528','/menu/updateBaseMenu','POST','','',''),(162,'p','9528','/system/getSystemConfig','POST','','',''),(163,'p','9528','/system/setSystemConfig','POST','','',''),(132,'p','9528','/user/admin_register','POST','','',''),(152,'p','9528','/user/changePassword','POST','','',''),(170,'p','9528','/user/getUserInfo','GET','','',''),(153,'p','9528','/user/getUserList','POST','','',''),(154,'p','9528','/user/setUserAuthority','POST','','','');
/*!40000 ALTER TABLE `casbin_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exa_customers`
--

DROP TABLE IF EXISTS `exa_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exa_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '客户名',
  `customer_phone_data` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '客户手机号',
  `sys_user_id` bigint unsigned DEFAULT NULL COMMENT '管理ID',
  `sys_user_authority_id` bigint unsigned DEFAULT NULL COMMENT '管理角色ID',
  PRIMARY KEY (`id`),
  KEY `idx_exa_customers_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exa_customers`
--

LOCK TABLES `exa_customers` WRITE;
/*!40000 ALTER TABLE `exa_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `exa_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exa_file_chunks`
--

DROP TABLE IF EXISTS `exa_file_chunks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exa_file_chunks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `exa_file_id` bigint unsigned DEFAULT NULL,
  `file_chunk_number` bigint DEFAULT NULL,
  `file_chunk_path` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_exa_file_chunks_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exa_file_chunks`
--

LOCK TABLES `exa_file_chunks` WRITE;
/*!40000 ALTER TABLE `exa_file_chunks` DISABLE KEYS */;
/*!40000 ALTER TABLE `exa_file_chunks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exa_file_upload_and_downloads`
--

DROP TABLE IF EXISTS `exa_file_upload_and_downloads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exa_file_upload_and_downloads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文件名',
  `url` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文件地址',
  `tag` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文件标签',
  `key` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '编号',
  PRIMARY KEY (`id`),
  KEY `idx_exa_file_upload_and_downloads_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exa_file_upload_and_downloads`
--

LOCK TABLES `exa_file_upload_and_downloads` WRITE;
/*!40000 ALTER TABLE `exa_file_upload_and_downloads` DISABLE KEYS */;
INSERT INTO `exa_file_upload_and_downloads` VALUES (1,'2023-09-06 16:14:27.013','2023-09-06 16:14:27.013',NULL,'10.png','https://xxx.png','png','158787308910.png'),(2,'2023-09-06 16:14:27.013','2023-09-06 16:14:27.013',NULL,'logo.png','https://xxx.png','png','1587973709logo.png');
/*!40000 ALTER TABLE `exa_file_upload_and_downloads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exa_files`
--

DROP TABLE IF EXISTS `exa_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exa_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_md5` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_path` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `chunk_total` bigint DEFAULT NULL,
  `is_finish` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_exa_files_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exa_files`
--

LOCK TABLES `exa_files` WRITE;
/*!40000 ALTER TABLE `exa_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `exa_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jwt_blacklists`
--

DROP TABLE IF EXISTS `jwt_blacklists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jwt_blacklists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `jwt` text COLLATE utf8mb4_general_ci COMMENT 'jwt',
  PRIMARY KEY (`id`),
  KEY `idx_jwt_blacklists_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jwt_blacklists`
--

--
-- Table structure for table `sys_apis`
--

DROP TABLE IF EXISTS `sys_apis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_apis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'api路径',
  `description` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'api中文描述',
  `api_group` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'api组',
  `method` varchar(191) COLLATE utf8mb4_general_ci DEFAULT 'POST' COMMENT '方法',
  PRIMARY KEY (`id`),
  KEY `idx_sys_apis_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_apis`
--

LOCK TABLES `sys_apis` WRITE;
/*!40000 ALTER TABLE `sys_apis` DISABLE KEYS */;
INSERT INTO `sys_apis` VALUES (1,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/jwt/jsonInBlacklist','jwt加入黑名单(退出，必选)','jwt','POST'),(2,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/user/deleteUser','删除用户','系统用户','DELETE'),(3,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/user/admin_register','用户注册','系统用户','POST'),(4,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/user/getUserList','获取用户列表','系统用户','POST'),(5,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/user/setUserInfo','设置用户信息','系统用户','PUT'),(6,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/user/setSelfInfo','设置自身信息(必选)','系统用户','PUT'),(7,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/user/getUserInfo','获取自身信息(必选)','系统用户','GET'),(8,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/user/setUserAuthorities','设置权限组','系统用户','POST'),(9,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/user/changePassword','修改密码（建议选择)','系统用户','POST'),(10,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/user/setUserAuthority','修改用户角色(必选)','系统用户','POST'),(11,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/user/resetPassword','重置用户密码','系统用户','POST'),(12,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/api/createApi','创建api','api','POST'),(13,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/api/deleteApi','删除Api','api','POST'),(14,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/api/updateApi','更新Api','api','POST'),(15,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/api/getApiList','获取api列表','api','POST'),(16,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/api/getAllApis','获取所有api','api','POST'),(17,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/api/getApiById','获取api详细信息','api','POST'),(18,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/api/deleteApisByIds','批量删除api','api','DELETE'),(19,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/authority/copyAuthority','拷贝角色','角色','POST'),(20,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/authority/createAuthority','创建角色','角色','POST'),(21,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/authority/deleteAuthority','删除角色','角色','POST'),(22,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/authority/updateAuthority','更新角色信息','角色','PUT'),(23,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/authority/getAuthorityList','获取角色列表','角色','POST'),(24,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/authority/setDataAuthority','设置角色资源权限','角色','POST'),(25,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/casbin/updateCasbin','更改角色api权限','casbin','POST'),(26,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/casbin/getPolicyPathByAuthorityId','获取权限列表','casbin','POST'),(27,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/menu/addBaseMenu','新增菜单','菜单','POST'),(28,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/menu/getMenu','获取菜单树(必选)','菜单','POST'),(29,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/menu/deleteBaseMenu','删除菜单','菜单','POST'),(30,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/menu/updateBaseMenu','更新菜单','菜单','POST'),(31,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/menu/getBaseMenuById','根据id获取菜单','菜单','POST'),(32,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/menu/getMenuList','分页获取基础menu列表','菜单','POST'),(33,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/menu/getBaseMenuTree','获取用户动态路由','菜单','POST'),(34,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/menu/getMenuAuthority','获取指定角色menu','菜单','POST'),(35,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/menu/addMenuAuthority','增加menu和角色关联关系','菜单','POST'),(44,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/system/getServerInfo','获取服务器信息','系统服务','POST'),(45,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/system/getSystemConfig','获取配置文件内容','系统服务','POST'),(46,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/system/setSystemConfig','设置配置文件内容','系统服务','POST'),(47,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/customer/customer','更新客户','客户','PUT'),(48,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/customer/customer','创建客户','客户','POST'),(49,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/customer/customer','删除客户','客户','DELETE'),(50,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/customer/customer','获取单一客户','客户','GET'),(51,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/customer/customerList','获取客户列表','客户','GET'),(67,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/sysDictionaryDetail/updateSysDictionaryDetail','更新字典内容','系统字典详情','PUT'),(68,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/sysDictionaryDetail/createSysDictionaryDetail','新增字典内容','系统字典详情','POST'),(69,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/sysDictionaryDetail/deleteSysDictionaryDetail','删除字典内容','系统字典详情','DELETE'),(70,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/sysDictionaryDetail/findSysDictionaryDetail','根据ID获取字典内容','系统字典详情','GET'),(71,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/sysDictionaryDetail/getSysDictionaryDetailList','获取字典内容列表','系统字典详情','GET'),(72,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/sysDictionary/createSysDictionary','新增字典','系统字典','POST'),(73,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/sysDictionary/deleteSysDictionary','删除字典','系统字典','DELETE'),(74,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/sysDictionary/updateSysDictionary','更新字典','系统字典','PUT'),(75,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/sysDictionary/findSysDictionary','根据ID获取字典','系统字典','GET'),(76,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/sysDictionary/getSysDictionaryList','获取字典列表','系统字典','GET'),(77,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/sysOperationRecord/createSysOperationRecord','新增操作记录','操作记录','POST'),(78,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/sysOperationRecord/findSysOperationRecord','根据ID获取操作记录','操作记录','GET'),(79,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/sysOperationRecord/getSysOperationRecordList','获取操作记录列表','操作记录','GET'),(80,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/sysOperationRecord/deleteSysOperationRecord','删除操作记录','操作记录','DELETE'),(81,'2023-09-06 16:14:26.245','2023-09-06 16:14:26.245',NULL,'/sysOperationRecord/deleteSysOperationRecordByIds','批量删除操作历史','操作记录','DELETE');
/*!40000 ALTER TABLE `sys_apis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_authorities`
--

DROP TABLE IF EXISTS `sys_authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_authorities` (
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `authority_id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `authority_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '角色名',
  `parent_id` bigint unsigned DEFAULT NULL COMMENT '父角色ID',
  `default_router` varchar(191) COLLATE utf8mb4_general_ci DEFAULT 'dashboard' COMMENT '默认菜单',
  PRIMARY KEY (`authority_id`),
  UNIQUE KEY `authority_id` (`authority_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9529 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_authorities`
--

LOCK TABLES `sys_authorities` WRITE;
/*!40000 ALTER TABLE `sys_authorities` DISABLE KEYS */;
INSERT INTO `sys_authorities` VALUES ('2023-09-06 16:14:26.306','2023-09-06 20:57:14.295',NULL,888,'普通用户',0,'dashboard');
/*!40000 ALTER TABLE `sys_authorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_authority_btns`
--

DROP TABLE IF EXISTS `sys_authority_btns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_authority_btns` (
  `authority_id` bigint unsigned DEFAULT NULL COMMENT '角色ID',
  `sys_menu_id` bigint unsigned DEFAULT NULL COMMENT '菜单ID',
  `sys_base_menu_btn_id` bigint unsigned DEFAULT NULL COMMENT '菜单按钮ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_authority_btns`
--

LOCK TABLES `sys_authority_btns` WRITE;
/*!40000 ALTER TABLE `sys_authority_btns` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_authority_btns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_authority_menus`
--

DROP TABLE IF EXISTS `sys_authority_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_authority_menus` (
  `sys_base_menu_id` bigint unsigned NOT NULL,
  `sys_authority_authority_id` bigint unsigned NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_base_menu_id`,`sys_authority_authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_authority_menus`
--

LOCK TABLES `sys_authority_menus` WRITE;
/*!40000 ALTER TABLE `sys_authority_menus` DISABLE KEYS */;
INSERT INTO `sys_authority_menus` VALUES (1,888),(3,888),(4,888),(5,888),(6,888),(7,888),(8,888),(9,888),(10,888),(11,888),(24,888);
/*!40000 ALTER TABLE `sys_authority_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_base_menu_btns`
--

DROP TABLE IF EXISTS `sys_base_menu_btns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_base_menu_btns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '按钮关键key',
  `desc` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sys_base_menu_id` bigint unsigned DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`),
  KEY `idx_sys_base_menu_btns_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_base_menu_btns`
--

LOCK TABLES `sys_base_menu_btns` WRITE;
/*!40000 ALTER TABLE `sys_base_menu_btns` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_base_menu_btns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_base_menu_parameters`
--

DROP TABLE IF EXISTS `sys_base_menu_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_base_menu_parameters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `sys_base_menu_id` bigint unsigned DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地址栏携带参数为params还是query',
  `key` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地址栏携带参数的key',
  `value` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '地址栏携带参数的值',
  PRIMARY KEY (`id`),
  KEY `idx_sys_base_menu_parameters_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_base_menu_parameters`
--

LOCK TABLES `sys_base_menu_parameters` WRITE;
/*!40000 ALTER TABLE `sys_base_menu_parameters` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_base_menu_parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_base_menus`
--

DROP TABLE IF EXISTS `sys_base_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_base_menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `menu_level` bigint unsigned DEFAULT NULL,
  `parent_id` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '父菜单ID',
  `path` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '路由path',
  `name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '路由name',
  `hidden` tinyint(1) DEFAULT NULL COMMENT '是否在列表隐藏',
  `component` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '对应前端文件路径',
  `sort` bigint DEFAULT NULL COMMENT '排序标记',
  `active_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '附加属性',
  `keep_alive` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  `default_menu` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  `title` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '附加属性',
  `icon` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '附加属性',
  `close_tab` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  PRIMARY KEY (`id`),
  KEY `idx_sys_base_menus_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_base_menus`
--

LOCK TABLES `sys_base_menus` WRITE;
/*!40000 ALTER TABLE `sys_base_menus` DISABLE KEYS */;
INSERT INTO `sys_base_menus` VALUES (1,'2023-09-06 16:14:26.641','2023-09-06 16:14:26.641',NULL,0,'0','dashboard','dashboard',0,'view/dashboard/index.vue',1,'',0,0,'仪表盘','odometer',0),(2,'2023-09-06 16:14:26.641','2023-09-06 16:14:26.641','2023-09-06 16:31:24.638',0,'0','about','about',0,'view/about/index.vue',9,'',0,0,'关于我们','info-filled',0),(3,'2023-09-06 16:14:26.641','2023-09-06 16:14:26.641',NULL,0,'0','admin','superAdmin',0,'view/superAdmin/index.vue',3,'',0,0,'超级管理员','user',0),(4,'2023-09-06 16:14:26.641','2023-09-06 16:14:26.641',NULL,0,'3','authority','authority',0,'view/superAdmin/authority/authority.vue',1,'',0,0,'角色管理','avatar',0),(5,'2023-09-06 16:14:26.641','2023-09-06 16:14:26.641',NULL,0,'3','menu','menu',0,'view/superAdmin/menu/menu.vue',2,'',1,0,'菜单管理','tickets',0),(6,'2023-09-06 16:14:26.641','2023-09-06 16:14:26.641',NULL,0,'3','api','api',0,'view/superAdmin/api/api.vue',3,'',1,0,'api管理','platform',0),(7,'2023-09-06 16:14:26.641','2023-09-06 16:14:26.641',NULL,0,'3','user','user',0,'view/superAdmin/user/user.vue',4,'',0,0,'用户管理','coordinate',0),(8,'2023-09-06 16:14:26.641','2023-09-06 16:14:26.641',NULL,0,'3','dictionary','dictionary',0,'view/superAdmin/dictionary/sysDictionary.vue',5,'',0,0,'字典管理','notebook',0),(9,'2023-09-06 16:14:26.641','2023-09-06 16:14:26.641',NULL,0,'3','dictionaryDetail/:id','dictionaryDetail',1,'view/superAdmin/dictionary/sysDictionaryDetail.vue',1,'dictionary',0,0,'字典详情-${id}','list',0),(10,'2023-09-06 16:14:26.641','2023-09-06 16:14:26.641',NULL,0,'3','operation','operation',0,'view/superAdmin/operation/sysOperationRecord.vue',6,'',0,0,'操作历史','pie-chart',0),(11,'2023-09-06 16:14:26.641','2023-09-06 16:14:26.641',NULL,0,'0','person','person',1,'view/person/person.vue',4,'',0,0,'个人信息','message',0),(24,'2023-09-06 16:14:26.641','2023-09-06 16:14:26.641',NULL,0,'0','state','state',0,'view/system/state.vue',8,'',0,0,'服务器状态','cloudy',0),(25,'2023-09-06 16:14:26.641','2023-09-06 16:14:26.641','2023-09-06 16:33:23.665',0,'0','plugin','plugin',0,'view/routerHolder.vue',6,'',0,0,'插件系统','cherry',0),(27,'2023-09-06 16:14:26.641','2023-09-06 16:14:26.641','2023-09-06 16:30:36.596',0,'25','installPlugin','installPlugin',0,'view/systemTools/installPlugin/index.vue',1,'',0,0,'插件安装','box',0),(28,'2023-09-06 16:14:26.641','2023-09-06 16:14:26.641','2023-09-06 16:30:40.345',0,'25','autoPlug','autoPlug',0,'view/systemTools/autoPlug/autoPlug.vue',2,'',0,0,'插件模板','folder',0),(29,'2023-09-06 16:14:26.641','2023-09-06 16:14:26.641','2023-09-06 16:30:44.277',0,'25','pubPlug','pubPlug',0,'view/systemTools/pubPlug/pubPlug.vue',3,'',0,0,'打包插件','files',0);
/*!40000 ALTER TABLE `sys_base_menus` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `sys_data_authority_id`
--

DROP TABLE IF EXISTS `sys_data_authority_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_data_authority_id` (
  `sys_authority_authority_id` bigint unsigned NOT NULL COMMENT '角色ID',
  `data_authority_id_authority_id` bigint unsigned NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_authority_authority_id`,`data_authority_id_authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_data_authority_id`
--

LOCK TABLES `sys_data_authority_id` WRITE;
/*!40000 ALTER TABLE `sys_data_authority_id` DISABLE KEYS */;
INSERT INTO `sys_data_authority_id` VALUES (888,888),(888,8881),(888,9528);
/*!40000 ALTER TABLE `sys_data_authority_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dictionaries`
--

DROP TABLE IF EXISTS `sys_dictionaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dictionaries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '字典名（中）',
  `type` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '字典名（英）',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `desc` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`),
  KEY `idx_sys_dictionaries_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dictionaries`
--

LOCK TABLES `sys_dictionaries` WRITE;
/*!40000 ALTER TABLE `sys_dictionaries` DISABLE KEYS */;
INSERT INTO `sys_dictionaries` VALUES (1,'2023-09-06 16:14:26.406','2023-09-06 16:14:26.433',NULL,'性别','gender',1,'性别字典');
/*!40000 ALTER TABLE `sys_dictionaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dictionary_details`
--

DROP TABLE IF EXISTS `sys_dictionary_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dictionary_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `label` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '展示值',
  `value` bigint DEFAULT NULL COMMENT '字典值',
  `status` tinyint(1) DEFAULT NULL COMMENT '启用状态',
  `sort` bigint DEFAULT NULL COMMENT '排序标记',
  `sys_dictionary_id` bigint unsigned DEFAULT NULL COMMENT '关联标记',
  PRIMARY KEY (`id`),
  KEY `idx_sys_dictionary_details_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dictionary_details`
--

LOCK TABLES `sys_dictionary_details` WRITE;
/*!40000 ALTER TABLE `sys_dictionary_details` DISABLE KEYS */;
INSERT INTO `sys_dictionary_details` VALUES (1,'2023-09-06 16:14:26.441','2023-09-06 16:14:26.441',NULL,'男',1,1,1,1),(2,'2023-09-06 16:14:26.441','2023-09-06 16:14:26.441',NULL,'女',2,1,2,1);
/*!40000 ALTER TABLE `sys_dictionary_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_operation_records`
--

DROP TABLE IF EXISTS `sys_operation_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_operation_records` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '请求ip',
  `method` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '请求方法',
  `path` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '请求路径',
  `status` bigint DEFAULT NULL COMMENT '请求状态',
  `latency` bigint DEFAULT NULL COMMENT '延迟',
  `agent` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '代理',
  `error_message` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '错误信息',
  `body` text COLLATE utf8mb4_general_ci COMMENT '请求Body',
  `resp` text COLLATE utf8mb4_general_ci COMMENT '响应Body',
  `user_id` bigint unsigned DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `idx_sys_operation_records_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_operation_records`
--

LOCK TABLES `sys_operation_records` WRITE;
/*!40000 ALTER TABLE `sys_operation_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_operation_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_authority`
--

DROP TABLE IF EXISTS `sys_user_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_authority` (
  `sys_user_id` bigint unsigned NOT NULL,
  `sys_authority_authority_id` bigint unsigned NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_user_id`,`sys_authority_authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_authority`
--

LOCK TABLES `sys_user_authority` WRITE;
/*!40000 ALTER TABLE `sys_user_authority` DISABLE KEYS */;
INSERT INTO `sys_user_authority` VALUES (1,888);
/*!40000 ALTER TABLE `sys_user_authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_users`
--

DROP TABLE IF EXISTS `sys_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户UUID',
  `username` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户登录名',
  `password` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户登录密码',
  `nick_name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT '系统用户' COMMENT '用户昵称',
  `side_mode` varchar(191) COLLATE utf8mb4_general_ci DEFAULT 'dark' COMMENT '用户侧边主题',
  `header_img` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `base_color` varchar(191) COLLATE utf8mb4_general_ci DEFAULT '#fff' COMMENT '基础颜色',
  `active_color` varchar(191) COLLATE utf8mb4_general_ci DEFAULT '#1890ff' COMMENT '活跃颜色',
  `authority_id` bigint unsigned DEFAULT '888' COMMENT '用户角色ID',
  `phone` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户手机号',
  `email` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户邮箱',
  `enable` bigint DEFAULT '1' COMMENT '用户是否被冻结 1正常 2冻结',
  PRIMARY KEY (`id`),
  KEY `idx_sys_users_deleted_at` (`deleted_at`),
  KEY `idx_sys_users_uuid` (`uuid`),
  KEY `idx_sys_users_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_users`
--

LOCK TABLES `sys_users` WRITE;
/*!40000 ALTER TABLE `sys_users` DISABLE KEYS */;
INSERT INTO `sys_users` VALUES (1,'2023-09-06 16:14:26.820','2023-09-11 16:20:02.278',NULL,'815f04ac-8356-4372-95ef-3804a70070a2','admin','$2a$10$KpQEDKsohi/YF/d8gjPUb.9rHXhgeGbSc1AQc.znV6bXUh3rZH7RW','admin','light',NULL,'#fff','#1890ff',888,NULL,NULL,1);
/*!40000 ALTER TABLE `sys_users` ENABLE KEYS */;
UNLOCK TABLES;
