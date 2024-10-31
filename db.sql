/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - kyz-ssmj
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kyz-ssmj` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `kyz-ssmj`;

/*Table structure for table `car` */

DROP TABLE IF EXISTS `car`;

CREATE TABLE `car` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `car_name` varchar(200) DEFAULT NULL COMMENT '车辆名字    Search111',
  `car_driver` varchar(200) DEFAULT NULL COMMENT '司机    Search111',
  `repair_content` varchar(200) DEFAULT NULL COMMENT '车辆描述',
  `car_types` int(11) DEFAULT NULL COMMENT '车辆类型  Search111 ',
  `car_number` varchar(200) DEFAULT NULL COMMENT '车牌号 Search111 ',
  `start` varchar(200) DEFAULT NULL COMMENT '始发站 Search111 ',
  `end` varchar(200) DEFAULT NULL COMMENT '终点站 Search111 ',
  `sell_money` decimal(10,2) DEFAULT NULL COMMENT '车票金额',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='车辆';

/*Data for the table `car` */

insert  into `car`(`id`,`car_name`,`car_driver`,`repair_content`,`car_types`,`car_number`,`start`,`end`,`sell_money`,`create_time`) values (1,'小型巴士1','张1','这辆车用了很长时间了\r\n',3,'415445w','郑州','开封','98.65','2021-02-24 10:40:35'),(2,'小型巴士2','张三1','这是小型巴士22的图片\r\n',3,'98','郑州','罗王','78.30','2021-02-24 10:48:54'),(3,'9','9','9        9    9        9    9\r\n',3,'9','9','9','9.00','2021-02-24 10:50:39'),(4,'车辆1','司机11111','<img src=\"http://localhost:8080/kyz-ssmj/upload/1614146569442.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/kyz-ssmj/upload/1614146569442.jpg\">车辆颜色蓝色,车子用了很长时间了\r\n',3,'988','郑州','海南','19.00','2021-02-24 14:03:23'),(5,'车里哦昂2','司机2','<img src=\"http://localhost:8080/kyz-ssmj/upload/1614148047921.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/kyz-ssmj/upload/1614148047921.jpg\">车辆刚买的  11玩\r\n',3,'89','开封1','北京','175.00','2021-02-24 14:27:54'),(6,'车1','司1','内容\r\n',1,'87','开封1','海南','98.65','2021-02-24 14:50:42');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspmm2ql6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmm2ql6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmm2ql6/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/jspmm2ql6/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/jspmm2ql6/upload/picture5.jpg'),(6,'homepage',NULL);

/*Table structure for table `diaodu` */

DROP TABLE IF EXISTS `diaodu`;

CREATE TABLE `diaodu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `car_id` varchar(200) DEFAULT NULL COMMENT '车辆id',
  `scheduling_types` int(11) DEFAULT NULL COMMENT '排班  Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='车辆调度';

/*Data for the table `diaodu` */

insert  into `diaodu`(`id`,`car_id`,`scheduling_types`,`create_time`) values (1,'1',11,'2021-02-24 11:00:39'),(2,'2',7,'2021-02-24 14:05:17'),(3,'4',11,'2021-02-24 14:29:26'),(4,'6',11,'2021-02-24 14:51:07');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (16,'car_types','车辆类型',1,'大巴',NULL,'2021-02-24 10:39:35'),(17,'car_types','车辆类型',2,'中巴',NULL,'2021-02-24 10:39:35'),(18,'car_types','车辆类型',3,'小巴',NULL,'2021-02-24 10:39:35'),(19,'scheduling_types','排班管理',1,'00:00 - 02:00',NULL,'2021-02-24 10:39:35'),(20,'scheduling_types','排班管理',2,'02:00 - 04:00',NULL,'2021-02-24 10:39:35'),(21,'scheduling_types','排班管理',3,'04:00 - 06:00',NULL,'2021-02-24 10:39:35'),(22,'scheduling_types','排班管理',4,'06:00 - 08:00',NULL,'2021-02-24 10:39:35'),(23,'scheduling_types','排班管理',5,'08:00 - 10:00',NULL,'2021-02-24 10:39:35'),(24,'scheduling_types','排班管理',6,'10:00 - 12:00',NULL,'2021-02-24 10:39:35'),(25,'scheduling_types','排班管理',7,'12:00 - 14:00',NULL,'2021-02-24 10:39:35'),(26,'scheduling_types','排班管理',8,'14:00 - 16:00',NULL,'2021-02-24 10:39:35'),(27,'scheduling_types','排班管理',9,'16:00 - 18:00',NULL,'2021-02-24 10:39:35'),(28,'scheduling_types','排班管理',10,'18:00 - 20:00',NULL,'2021-02-24 10:39:35'),(29,'scheduling_types','排班管理',11,'20:00 - 22:00',NULL,'2021-02-24 10:39:35'),(30,'scheduling_types','排班管理',12,'22:00 - 24:00',NULL,'2021-02-24 10:39:35'),(31,'shoupiao_types','售票状态',1,'已售',NULL,'2021-02-24 10:39:35'),(32,'shoupiao_types','售票状态',2,'已检票',NULL,'2021-02-24 10:39:35');

/*Table structure for table `shoupiao` */

DROP TABLE IF EXISTS `shoupiao`;

CREATE TABLE `shoupiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `car_id` varchar(200) DEFAULT NULL COMMENT '车辆id',
  `actual_money` decimal(10,2) DEFAULT NULL COMMENT '售卖金额',
  `shoupiao_types` int(11) DEFAULT NULL COMMENT '售票状态  Search111  ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='售票';

/*Data for the table `shoupiao` */

insert  into `shoupiao`(`id`,`car_id`,`actual_money`,`shoupiao_types`,`create_time`) values (1,'2','98.00',1,'2021-02-24 13:19:13'),(2,'3','78.00',2,'2021-02-24 13:20:07'),(3,'2','2.00',1,'2021-02-24 13:29:40'),(4,'1','77.00',2,'2021-02-24 13:55:24'),(5,'2','78.00',2,'2021-02-24 13:56:45'),(6,'4','89.00',1,'2021-02-24 14:09:32'),(7,'3','78.00',1,'2021-02-24 14:13:19'),(8,'2','766.00',2,'2021-02-24 14:14:43'),(9,'5','78.00',2,'2021-02-24 14:41:36'),(10,'2','78.00',2,'2021-02-24 14:45:31'),(11,'6','78.00',2,'2021-02-24 14:54:16');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','vg1owkzodrtcxn1o6xot3le96cytizgf','2020-12-17 17:09:11','2021-02-03 11:47:45'),(2,1,'1','dangyuan','党员','lrlu96f87l1btzsvhmq0cx248eoowb3t','2020-12-17 17:17:02','2020-12-17 18:17:03'),(3,1,'1','zhibu','支部','w8efhq9xkrz3c3fz6dgztk9trch8dnk8','2020-12-17 17:18:21','2020-12-17 18:18:21'),(4,1608197383165,'001','zhibu','支部','7q33efdzk68psx37dpjek8p8h6uwq7ow','2020-12-17 17:36:24','2021-01-22 10:38:07'),(5,1608198583190,'001','dangyuan','党员','p64k1bj6iwvrditvy4jzanyq44zbq6ed','2020-12-17 17:52:50','2020-12-17 18:52:50'),(6,1608199057450,'003','dangyuan','党员','g26ivuguh0qebktkl0hyj1jymxt2svnn','2020-12-17 18:03:00','2020-12-17 19:03:01'),(7,1608199181916,'004','zhibu','支部','13u05cup4ivaoeyin2shic24xi7oge2f','2020-12-17 18:03:40','2020-12-17 19:03:41'),(8,6,'admin1','users','学院管理员','y46uj8gv4ezllt5p5ufrge1f2bpjv3cs','2021-01-29 14:52:36','2021-02-03 11:47:53'),(9,7,'admin2','users','宿舍管理员','qrx3mk3gn2e5ye90s0ab3gq54nouf8rw','2021-02-02 12:02:15','2021-02-03 11:59:01'),(10,10,'11','users','学生','u31dzvfagnj9tppkjr9nvxtzbhukx5vx','2021-02-02 13:21:38','2021-02-03 12:39:22'),(11,1,'abo','users','学院管理员','f2ul3z66wpuo4a0rl77sk921n9yf8mkb','2021-02-03 10:52:40','2021-02-03 11:52:40'),(12,8,'admin3','users','财务管理员','9ymzdcsml2b96mln6x6cs3i2xi661643','2021-02-03 11:05:39','2021-02-03 15:10:11'),(13,11,'999','users','学生','mya6tv1l67d8s6r6tan7ezy7z4w8lgzw','2021-02-03 11:29:09','2021-02-03 14:45:27'),(14,4,'999','yonghu','用户','1ahtqregeq3nku278h35h1479bb0iy04','2021-02-04 13:40:27','2021-02-23 16:37:12'),(15,1,'99','yonghu','用户','8ql2zqwd0wm3ugg19omnr4q6bs9dvl61','2021-02-04 14:52:51','2021-02-20 19:03:24'),(16,7,'admin2','users','初审管理员','3mqhpytktmhhpz29r6dtrbynyvtl525i','2021-02-04 15:50:09','2021-02-22 11:07:10'),(17,3,'77','users','用户','ilp5dd2mcbvdfe7bw72ngwe6ez3o44m1','2021-02-18 09:42:20','2021-02-22 11:05:19'),(18,6,'admin1','users','管理员','2zadz8i9ajtrec3u0ba9mu6x2bvl1f1p','2021-02-19 16:42:49','2021-02-24 15:53:32'),(19,6,'88','yonghu','用户','yw7yxi7we78b3vh9kkvl2sk98m0pl24c','2021-02-20 10:35:45','2021-02-20 11:39:03'),(20,2,'22','yonghu','用户','m3qi8ns8kwjwk2fbb3x74ppv5ftmf00p','2021-02-20 10:54:51','2021-02-22 10:27:37'),(21,8,'admin3','users','政审管理员','p1vflp8rs17msr05d6vwo622f1bk095c','2021-02-20 11:39:06','2021-02-22 11:09:33'),(22,9,'admin4','users','武装部管理员','0ljqhzh9zhhlq3ftkczskvs9ur5oj1fy','2021-02-20 13:31:20','2021-02-20 19:06:45'),(23,5,'55','yonghu','用户','jzxw4912iminddl1v1csr7md5g9z04uz','2021-02-20 17:25:51','2021-02-23 17:15:21'),(24,13,'77','users','舍管管理员','gt28ff27xhxzmvjc7oy74s3jgfr7gstx','2021-02-23 15:21:29','2021-02-23 16:21:29'),(25,14,'admin2','users','舍管管理员','wm7ners2segz27n1g4sojmx8ios2d0jk','2021-02-23 16:03:05','2021-02-23 17:03:47'),(26,14,'admin2','users','售票管理员','iwqonlhzy22vjgsh90jxc016vvpr8i1e','2021-02-24 13:54:16','2021-02-24 15:53:23'),(27,15,'admin3','users','检票管理员','z9q6tdj8nv7mgs31rpdr40s881nqz9zx','2021-02-24 13:57:11','2021-02-24 15:54:32'),(28,18,'78','users','售票管理员','bxbiasroyq8hgxljhgygmils0450zegz','2021-02-24 14:53:44','2021-02-24 15:53:45');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin11','111','管理员','2021-01-29 14:51:13'),(14,'admin2','123456','售票管理员','2021-02-23 15:54:21'),(15,'admin3','123456','检票管理员','2021-02-24 10:24:54'),(18,'78','123456','售票管理员','2021-02-24 14:50:05');

/*Table structure for table `xitonggonggao` */

DROP TABLE IF EXISTS `xitonggonggao`;

CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题 Search111',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `neirong` longtext COMMENT '内容',
  `riqi` timestamp NULL DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统公告';

/*Data for the table `xitonggonggao` */

insert  into `xitonggonggao`(`id`,`addtime`,`biaoti`,`leixing`,`neirong`,`riqi`) values (1,'2021-02-23 09:35:27','系统更新','系统更新','2021-02-23 09:35:27的晚上要进行系统更新,所以到时候无法登陆,请各位悉知','2021-02-23 09:35:27'),(2,'2021-02-23 09:35:27','附近通知','附近通知','2021-02-23 09:35:27附近有不明人员出没,注意安全','2021-02-23 09:35:27'),(5,'2021-02-24 14:07:24','公告1','公告1','近期领导要过来检查,所以各位人员请注意','2021-02-24 14:07:24'),(6,'2021-02-24 14:30:32','公告1','功法1','领导检查,下午大扫除','2021-02-24 14:30:32'),(7,'2021-02-24 14:52:30','公告题目','公告l;eixing','领导检车','2021-02-24 14:52:30');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
