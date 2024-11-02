/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm9i0w1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm9i0w1` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm9i0w1`;

/*Table structure for table `banji` */

DROP TABLE IF EXISTS `banji`;

CREATE TABLE `banji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banji` varchar(200) NOT NULL COMMENT '班级',
  PRIMARY KEY (`id`),
  UNIQUE KEY `banji` (`banji`)
) ENGINE=InnoDB AUTO_INCREMENT=1616809606319 DEFAULT CHARSET=utf8 COMMENT='班级';

/*Data for the table `banji` */

insert  into `banji`(`id`,`addtime`,`banji`) values (21,'2021-03-27 09:42:23','班级1'),(22,'2021-03-27 09:42:23','班级2'),(23,'2021-03-27 09:42:23','班级3'),(24,'2021-03-27 09:42:23','班级4'),(25,'2021-03-27 09:42:23','班级5'),(26,'2021-03-27 09:42:23','班级6'),(1616809606318,'2021-03-27 09:46:45','生工1902班');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm9i0w1/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm9i0w1/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm9i0w1/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `gonggaoxinxi` */

DROP TABLE IF EXISTS `gonggaoxinxi`;

CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) NOT NULL COMMENT '公告标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616809597218 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggaoxinxi` */

insert  into `gonggaoxinxi`(`id`,`addtime`,`gonggaobiaoti`,`tupian`,`neirong`,`faburiqi`) values (11,'2021-03-27 09:42:23','公告标题1','http://localhost:8080/ssm9i0w1/upload/1616809443523.jpg','<p>内容1</p>','2021-03-27'),(12,'2021-03-27 09:42:23','公告标题2','http://localhost:8080/ssm9i0w1/upload/1616809450895.jpg','<p>内容2</p>','2021-03-27'),(13,'2021-03-27 09:42:23','公告标题3','http://localhost:8080/ssm9i0w1/upload/1616809458509.jpg','<p>内容3</p>','2021-03-27'),(14,'2021-03-27 09:42:23','公告标题4','http://localhost:8080/ssm9i0w1/upload/1616809466278.png','<p>内容4</p>','2021-03-27'),(15,'2021-03-27 09:42:23','公告标题5','http://localhost:8080/ssm9i0w1/upload/1616809474482.jpg','<p>内容5</p>','2021-03-27'),(16,'2021-03-27 09:42:23','公告标题6','http://localhost:8080/ssm9i0w1/upload/1616809483695.jpg','<p>内容6</p>','2021-03-27'),(1616809597217,'2021-03-27 09:46:36','关于选课通知','http://localhost:8080/ssm9i0w1/upload/1616809580065.jpg','<p>网上选课时间为：3.28-3.29</p><p><img src=\"http://localhost:8080/ssm9i0w1/upload/1616809594726.jpg\"></p>','2021-03-27');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616809634320 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`jiaoshigonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhaopian`,`nianling`,`zhicheng`,`lianxidianhua`) values (41,'2021-03-27 09:42:23','教师1','123456','教师姓名1','男','http://localhost:8080/ssm9i0w1/upload/jiaoshi_zhaopian1.jpg',1,'职称1','13823888881'),(42,'2021-03-27 09:42:23','教师2','123456','教师姓名2','男','http://localhost:8080/ssm9i0w1/upload/jiaoshi_zhaopian2.jpg',2,'职称2','13823888882'),(43,'2021-03-27 09:42:23','教师3','123456','教师姓名3','男','http://localhost:8080/ssm9i0w1/upload/jiaoshi_zhaopian3.jpg',3,'职称3','13823888883'),(44,'2021-03-27 09:42:23','教师4','123456','教师姓名4','男','http://localhost:8080/ssm9i0w1/upload/jiaoshi_zhaopian4.jpg',4,'职称4','13823888884'),(45,'2021-03-27 09:42:23','教师5','123456','教师姓名5','男','http://localhost:8080/ssm9i0w1/upload/jiaoshi_zhaopian5.jpg',5,'职称5','13823888885'),(46,'2021-03-27 09:42:23','教师6','123456','教师姓名6','男','http://localhost:8080/ssm9i0w1/upload/jiaoshi_zhaopian6.jpg',6,'职称6','13823888886'),(1616809634319,'2021-03-27 09:47:14','1','1','张悦','女','http://localhost:8080/ssm9i0w1/upload/1616809622945.jpg',35,'中级教师','12345678978');

/*Table structure for table `kebiaoxinxi` */

DROP TABLE IF EXISTS `kebiaoxinxi`;

CREATE TABLE `kebiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `xingqi` varchar(200) DEFAULT NULL COMMENT '星期',
  `diyijie` varchar(200) DEFAULT NULL COMMENT '第一节',
  `dierjie` varchar(200) DEFAULT NULL COMMENT '第二节',
  `disanjie` varchar(200) DEFAULT NULL COMMENT '第三节',
  `disijie` varchar(200) DEFAULT NULL COMMENT '第四节',
  `diwujie` varchar(200) DEFAULT NULL COMMENT '第五节',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616809693311 DEFAULT CHARSET=utf8 COMMENT='课表信息';

/*Data for the table `kebiaoxinxi` */

insert  into `kebiaoxinxi`(`id`,`addtime`,`banji`,`xueqi`,`xingqi`,`diyijie`,`dierjie`,`disanjie`,`disijie`,`diwujie`) values (61,'2021-03-27 09:42:23','班级1','上学期','星期一','第一节1','第二节1','第三节1','第四节1','第五节1'),(62,'2021-03-27 09:42:23','班级2','上学期','星期一','第一节2','第二节2','第三节2','第四节2','第五节2'),(63,'2021-03-27 09:42:23','班级3','上学期','星期一','第一节3','第二节3','第三节3','第四节3','第五节3'),(64,'2021-03-27 09:42:23','班级4','上学期','星期一','第一节4','第二节4','第三节4','第四节4','第五节4'),(65,'2021-03-27 09:42:23','班级5','上学期','星期一','第一节5','第二节5','第三节5','第四节5','第五节5'),(66,'2021-03-27 09:42:23','班级6','上学期','星期一','第一节6','第二节6','第三节6','第四节6','第五节6'),(1616809677365,'2021-03-27 09:47:57','生工1902班','上学期','星期一','商务英语','工程制图','物理化学','高等数学','课程名称1'),(1616809693310,'2021-03-27 09:48:13','生工1902班','上学期','星期二','商务英语','工程制图','物理化学','课程名称1','课程名称2');

/*Table structure for table `kechengmingcheng` */

DROP TABLE IF EXISTS `kechengmingcheng`;

CREATE TABLE `kechengmingcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengmingcheng` (`kechengmingcheng`)
) ENGINE=InnoDB AUTO_INCREMENT=1616809660397 DEFAULT CHARSET=utf8 COMMENT='课程名称';

/*Data for the table `kechengmingcheng` */

insert  into `kechengmingcheng`(`id`,`addtime`,`kechengmingcheng`) values (51,'2021-03-27 09:42:23','课程名称1'),(52,'2021-03-27 09:42:23','课程名称2'),(53,'2021-03-27 09:42:23','课程名称3'),(54,'2021-03-27 09:42:23','课程名称4'),(55,'2021-03-27 09:42:23','课程名称5'),(56,'2021-03-27 09:42:23','课程名称6'),(1616809642475,'2021-03-27 09:47:22','高等数学'),(1616809648981,'2021-03-27 09:47:28','物理化学'),(1616809654630,'2021-03-27 09:47:33','工程制图'),(1616809660396,'2021-03-27 09:47:39','商务英语');

/*Table structure for table `kechengxinxi` */

DROP TABLE IF EXISTS `kechengxinxi`;

CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) NOT NULL COMMENT '课程类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616809745590 DEFAULT CHARSET=utf8 COMMENT='课程信息';

/*Data for the table `kechengxinxi` */

insert  into `kechengxinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`tupian`,`banji`,`xueqi`,`faburiqi`,`jiaoshigonghao`,`jiaoshixingming`) values (71,'2021-03-27 09:42:23','课程名称1','公共课','http://localhost:8080/ssm9i0w1/upload/1616809496746.jpg','班级1','上学期','2021-03-27','教师工号1','教师姓名1'),(72,'2021-03-27 09:42:23','课程名称2','公共课','http://localhost:8080/ssm9i0w1/upload/1616809503475.jpg','班级2','上学期','2021-03-27','教师工号2','教师姓名2'),(73,'2021-03-27 09:42:23','课程名称3','公共课','http://localhost:8080/ssm9i0w1/upload/1616809511385.jpg','班级3','上学期','2021-03-27','教师工号3','教师姓名3'),(74,'2021-03-27 09:42:23','课程名称4','公共课','http://localhost:8080/ssm9i0w1/upload/1616809519424.jpg','班级4','上学期','2021-03-27','教师工号4','教师姓名4'),(75,'2021-03-27 09:42:23','课程名称5','公共课','http://localhost:8080/ssm9i0w1/upload/1616809532764.jpg','班级5','上学期','2021-03-27','教师工号5','教师姓名5'),(76,'2021-03-27 09:42:23','课程名称6','公共课','http://localhost:8080/ssm9i0w1/upload/1616809543141.jpg','班级6','上学期','2021-03-27','教师工号6','教师姓名6'),(1616809745589,'2021-03-27 09:49:05','高等数学','公共课','http://localhost:8080/ssm9i0w1/upload/1616809738016.jpg','生工1902班','上学期','2021-03-27','1','张悦');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','1duxtsawh69wardnjctsh57fux1f4xiz','2021-03-27 09:43:39','2021-03-27 10:52:11'),(2,1616809634319,'1','jiaoshi','教师','jfmatj4maz64ezfc227qa0pbg76wn0zo','2021-03-27 09:49:27','2021-03-27 10:51:42'),(3,1616809796741,'2','xuesheng','学生','10tgk7u7jbq66qfz6u8ribmhfurkrdmm','2021-03-27 09:50:01','2021-03-27 10:51:23');

/*Table structure for table `tuikexinxi` */

DROP TABLE IF EXISTS `tuikexinxi`;

CREATE TABLE `tuikexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `xuankeriqi` varchar(200) DEFAULT NULL COMMENT '选课日期',
  `tuikeshuoming` varchar(200) DEFAULT NULL COMMENT '退课说明',
  `tuikeriqi` date DEFAULT NULL COMMENT '退课日期',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616809896057 DEFAULT CHARSET=utf8 COMMENT='退课信息';

/*Data for the table `tuikexinxi` */

insert  into `tuikexinxi`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`banji`,`xueqi`,`xuankeriqi`,`tuikeshuoming`,`tuikeriqi`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`sfsh`,`shhf`) values (91,'2021-03-27 09:42:23','课程名称1','课程类型1','班级1','学期1','选课日期1','退课说明1','2021-03-27','教师工号1','教师姓名1','学号1','学生姓名1','是',''),(92,'2021-03-27 09:42:23','课程名称2','课程类型2','班级2','学期2','选课日期2','退课说明2','2021-03-27','教师工号2','教师姓名2','学号2','学生姓名2','是',''),(93,'2021-03-27 09:42:23','课程名称3','课程类型3','班级3','学期3','选课日期3','退课说明3','2021-03-27','教师工号3','教师姓名3','学号3','学生姓名3','是',''),(94,'2021-03-27 09:42:23','课程名称4','课程类型4','班级4','学期4','选课日期4','退课说明4','2021-03-27','教师工号4','教师姓名4','学号4','学生姓名4','是',''),(95,'2021-03-27 09:42:23','课程名称5','课程类型5','班级5','学期5','选课日期5','退课说明5','2021-03-27','教师工号5','教师姓名5','学号5','学生姓名5','是',''),(96,'2021-03-27 09:42:23','课程名称6','课程类型6','班级6','学期6','选课日期6','退课说明6','2021-03-27','教师工号6','教师姓名6','学号6','学生姓名6','是',''),(1616809896056,'2021-03-27 09:51:35','高等数学','公共课','生工1902班','上学期','2021-03-29','选错','2021-03-29','1','张悦','2','陈一','是','ok');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-27 09:42:23');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616809796742 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`banji`,`shouji`,`youxiang`) values (31,'2021-03-27 09:42:23','学生1','123456','学生姓名1','男','http://localhost:8080/ssm9i0w1/upload/xuesheng_touxiang1.jpg','班级1','13823888881','773890001@qq.com'),(32,'2021-03-27 09:42:23','学生2','123456','学生姓名2','男','http://localhost:8080/ssm9i0w1/upload/xuesheng_touxiang2.jpg','班级2','13823888882','773890002@qq.com'),(33,'2021-03-27 09:42:23','学生3','123456','学生姓名3','男','http://localhost:8080/ssm9i0w1/upload/xuesheng_touxiang3.jpg','班级3','13823888883','773890003@qq.com'),(34,'2021-03-27 09:42:23','学生4','123456','学生姓名4','男','http://localhost:8080/ssm9i0w1/upload/xuesheng_touxiang4.jpg','班级4','13823888884','773890004@qq.com'),(35,'2021-03-27 09:42:23','学生5','123456','学生姓名5','男','http://localhost:8080/ssm9i0w1/upload/xuesheng_touxiang5.jpg','班级5','13823888885','773890005@qq.com'),(36,'2021-03-27 09:42:23','学生6','123456','学生姓名6','男','http://localhost:8080/ssm9i0w1/upload/xuesheng_touxiang6.jpg','班级6','13823888886','773890006@qq.com'),(1616809796741,'2021-03-27 09:49:56','2','2','陈一','女','http://localhost:8080/ssm9i0w1/upload/1616809809453.jpg','生工1902班','12345678963','159@qq.com');

/*Table structure for table `xueshengxuanke` */

DROP TABLE IF EXISTS `xueshengxuanke`;

CREATE TABLE `xueshengxuanke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `xuankeriqi` date DEFAULT NULL COMMENT '选课日期',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616809848444 DEFAULT CHARSET=utf8 COMMENT='学生选课';

/*Data for the table `xueshengxuanke` */

insert  into `xueshengxuanke`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`banji`,`xueqi`,`xuankeriqi`,`zhuangtai`,`jiaoshigonghao`,`jiaoshixingming`,`xuehao`,`xueshengxingming`,`beizhu`,`sfsh`,`shhf`) values (81,'2021-03-27 09:42:23','课程名称1','课程类型1','班级1','学期1','2021-03-27','正常','教师工号1','教师姓名1','学号1','学生姓名1','备注1','是',''),(82,'2021-03-27 09:42:23','课程名称2','课程类型2','班级2','学期2','2021-03-27','正常','教师工号2','教师姓名2','学号2','学生姓名2','备注2','是',''),(83,'2021-03-27 09:42:23','课程名称3','课程类型3','班级3','学期3','2021-03-27','正常','教师工号3','教师姓名3','学号3','学生姓名3','备注3','是',''),(84,'2021-03-27 09:42:23','课程名称4','课程类型4','班级4','学期4','2021-03-27','正常','教师工号4','教师姓名4','学号4','学生姓名4','备注4','是',''),(85,'2021-03-27 09:42:23','课程名称5','课程类型5','班级5','学期5','2021-03-27','正常','教师工号5','教师姓名5','学号5','学生姓名5','备注5','是',''),(86,'2021-03-27 09:42:23','课程名称6','课程类型6','班级6','学期6','2021-03-27','正常','教师工号6','教师姓名6','学号6','学生姓名6','备注6','是',''),(1616809848443,'2021-03-27 09:50:48','高等数学','公共课','生工1902班','上学期','2021-03-29','已退课','1','张悦','2','陈一','','是','ok');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
