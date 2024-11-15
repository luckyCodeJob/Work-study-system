/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - qingongzhuxue
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`qingongzhuxue` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `qingongzhuxue`;

/*Table structure for table `bumenguanli` */

DROP TABLE IF EXISTS `bumenguanli`;

CREATE TABLE `bumenguanli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `bumenguanli_name` varchar(200) DEFAULT NULL COMMENT '部门管理员姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `bumenguanli_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `bumenguanli_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `bumenguanli_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `bumenguanli_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='部门管理员';

/*Data for the table `bumenguanli` */

insert  into `bumenguanli`(`id`,`username`,`password`,`bumenguanli_name`,`sex_types`,`bumenguanli_id_number`,`bumenguanli_phone`,`bumenguanli_email`,`bumenguanli_photo`,`create_time`) values (1,'333','123456','部门管理员1',1,'410882199111111111','17796688971','1111@qq.com','http://localhost:8080/qingongzhuxue/file/download?fileName=1621063906638.jpg','2021-05-15 15:07:37'),(2,'444','123456','部门管理员2',2,'410882199212222222','17796632972','2222@qq.com','http://localhost:8080/qingongzhuxue/file/download?fileName=1621063898883.jpg','2021-05-15 15:09:05');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gongchengcailiao/upload/1614999756013.jpg'),(2,'picture2','http://localhost:8080/gongchengcailiao/upload/1614999769770.jpg'),(3,'picture3','http://localhost:8080/gongchengcailiao/upload/1614999778981.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-05-15 14:51:36'),(2,'sex_types','性别',2,'女',NULL,'2021-05-15 14:51:36'),(3,'news_types','公告类型名称',1,'公告类型1',NULL,'2021-05-15 14:51:36'),(4,'news_types','公告类型名称',2,'公告类型2',NULL,'2021-05-15 14:51:36'),(5,'kaohepingjia_types','申请类型',1,'入职',NULL,'2021-05-15 14:51:36'),(6,'kaohepingjia_types','申请类型',2,'离职',NULL,'2021-05-15 14:51:36'),(7,'shenqingshenhe_types','审核状态',1,'未审核',NULL,'2021-05-15 14:51:36'),(8,'shenqingshenhe_types','审核状态',2,'通过',NULL,'2021-05-15 14:51:36'),(9,'shenqingshenhe_types','审核状态',3,'拒绝',NULL,'2021-05-15 14:51:36'),(10,'gangwei_types','岗位类型名称',1,'岗位类型1',NULL,'2021-05-15 14:51:36'),(11,'gangwei_types','岗位类型名称',2,'岗位类型2',NULL,'2021-05-15 14:51:36'),(12,'gangwei_types','岗位类型名称',3,'岗位类型3',NULL,'2021-05-15 14:51:36');

/*Table structure for table `gangwei` */

DROP TABLE IF EXISTS `gangwei`;

CREATE TABLE `gangwei` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gangwei_name` varchar(200) DEFAULT NULL COMMENT '岗位名称 Search111',
  `gangwei_types` int(200) DEFAULT NULL COMMENT '岗位类型 Search111',
  `gangwei_money` decimal(10,2) DEFAULT NULL COMMENT '岗位薪资',
  `gangwei_yaoqiu` varchar(200) DEFAULT NULL COMMENT '岗位要求',
  `gangwei_shijian` int(200) DEFAULT NULL COMMENT '工作时间/时',
  `gangwei_content` text COMMENT '岗位介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='岗位信息';

/*Data for the table `gangwei` */

insert  into `gangwei`(`id`,`gangwei_name`,`gangwei_types`,`gangwei_money`,`gangwei_yaoqiu`,`gangwei_shijian`,`gangwei_content`,`create_time`) values (1,'岗位名称1',1,'10000.00','岗位要求1',24,'岗位介绍1\r\n','2021-05-15 15:43:10'),(2,'岗位名称2',2,'20000.00','岗位要求2',48,'岗位介绍2\r\n','2021-05-15 15:43:27'),(3,'岗位名称3',3,'30000.00','岗位要求3',72,'岗位介绍3\r\n','2021-05-15 15:43:58'),(4,'岗位名称4',3,'40000.00','岗位要求4',96,'岗位介绍4\r\n','2021-05-15 19:32:58');

/*Table structure for table `gongzuo` */

DROP TABLE IF EXISTS `gongzuo`;

CREATE TABLE `gongzuo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '录入用户',
  `gongzuo_content` text COMMENT '工作内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='工作日志';

/*Data for the table `gongzuo` */

insert  into `gongzuo`(`id`,`yonghu_id`,`gongzuo_content`,`insert_time`,`create_time`) values (1,1,'工作内容1111\r\n','2021-05-15 19:00:42','2021-05-15 19:00:42'),(2,2,'工作内容11111\r\n\r\n','2021-05-15 19:38:15','2021-05-15 19:38:15');

/*Table structure for table `kaohepingjia` */

DROP TABLE IF EXISTS `kaohepingjia`;

CREATE TABLE `kaohepingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '评价用户',
  `kaohepingjia_content` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='考核评价';

/*Data for the table `kaohepingjia` */

insert  into `kaohepingjia`(`id`,`yonghu_id`,`kaohepingjia_content`,`insert_time`,`create_time`) values (1,1,'评价内容1\r\n','2021-05-15 16:32:32','2021-05-15 16:32:32'),(2,2,'评价内容2131\r\n\r\n','2021-05-15 19:39:27','2021-05-15 19:39:27');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告信息名称 Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型 Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告信息图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告信息时间',
  `news_content` text COMMENT '公告信息详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (3,'公告1',1,'http://localhost:8080/qingongzhuxue/file/download?fileName=1621078082731.jpg','2021-05-15 19:28:05','公告信息详情1\r\n\r\n','2021-05-15 19:28:05'),(4,'公告2',2,'http://localhost:8080/qingongzhuxue/file/download?fileName=1621078091525.jpg','2021-05-15 19:28:13','公告信息详情2\r\n\r\n','2021-05-15 19:28:13');

/*Table structure for table `shenqingshenhe` */

DROP TABLE IF EXISTS `shenqingshenhe`;

CREATE TABLE `shenqingshenhe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '申请用户',
  `gangwei_id` int(11) DEFAULT NULL COMMENT '申请岗位',
  `kaohepingjia_types` int(200) DEFAULT NULL COMMENT '申请类型 Search111',
  `shenqingshenhe_file` varchar(255) DEFAULT NULL COMMENT '申请文件',
  `shenqingshenhe_types` int(11) DEFAULT NULL COMMENT '审核状态 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='申请审核';

/*Data for the table `shenqingshenhe` */

insert  into `shenqingshenhe`(`id`,`yonghu_id`,`gangwei_id`,`kaohepingjia_types`,`shenqingshenhe_file`,`shenqingshenhe_types`,`insert_time`,`create_time`) values (2,1,3,1,'http://localhost:8080/qingongzhuxue/file/download?fileName=1621068919345.doc',2,'2021-05-15 16:55:20','2021-05-15 16:55:20'),(3,1,3,2,'http://localhost:8080/qingongzhuxue/file/download?fileName=1621076360690.doc',2,'2021-05-15 18:59:21','2021-05-15 18:59:21'),(4,2,4,1,'http://localhost:8080/qingongzhuxue/file/download?fileName=1621078563423.doc',2,'2021-05-15 19:36:04','2021-05-15 19:36:04'),(5,2,4,2,'http://localhost:8080/qingongzhuxue/file/download?fileName=1621079160406.JPG',2,'2021-05-15 19:46:01','2021-05-15 19:46:01');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','cqqt40xnpl9dvroxq85i9qb97ey40w46','2021-05-15 15:05:59','2021-05-15 20:30:49'),(2,1,'111','yonghu','用户','z0sp57te73eer06ag6mtc5ulult5zm4i','2021-05-15 18:55:51','2021-05-15 20:24:10'),(3,2,'444','bumenguanli','部门管理员','4ghgkvpnkofews7ohzalm8ibj14pt1fv','2021-05-15 19:10:06','2021-05-15 20:46:07'),(4,1,'333','bumenguanli','部门管理员','f9ef7m5o547avfpymcrwcv1709q39b0q','2021-05-15 19:18:06','2021-05-15 20:38:42'),(5,2,'222','yonghu','用户','e27a1e8t5n4l61agdqt5zuuit47gy65l','2021-05-15 19:35:42','2021-05-15 20:45:53');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `xinzifafang` */

DROP TABLE IF EXISTS `xinzifafang`;

CREATE TABLE `xinzifafang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '发放用户',
  `xinzifafang_money` decimal(10,2) DEFAULT NULL COMMENT '发放薪资',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发放时间',
  `xinzifafang_content` text COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='薪资发放';

/*Data for the table `xinzifafang` */

insert  into `xinzifafang`(`id`,`yonghu_id`,`xinzifafang_money`,`insert_time`,`xinzifafang_content`,`create_time`) values (1,1,'10000.00','2021-05-15 19:27:49','备注1\r\n\r\n','2021-05-15 19:27:49'),(2,2,'20000.00','2021-05-15 19:40:30','备注123\r\n\r\n','2021-05-15 19:40:30');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `gangwei` int(200) DEFAULT NULL COMMENT '岗位信息',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_email`,`yonghu_photo`,`gangwei`,`create_time`) values (1,'111','123456','用户1',1,'410882198912111111','17789966591','1111@qq.com','http://localhost:8080/qingongzhuxue/file/download?fileName=1621064532888.jpg',0,'2021-05-15 15:42:14'),(2,'222','123456','用户2',2,'410882198912111112','17789966592','2222@qq.com','http://localhost:8080/qingongzhuxue/file/download?fileName=1621064550943.jpg',0,'2021-05-15 15:42:34');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
