




DROP TABLE IF EXISTS `t_jieshu`;
CREATE TABLE `t_jieshu` (
  `Id` int(11) NOT NULL auto_increment COMMENT '主键',
  `jieshutime` varchar(255) default NULL COMMENT '借书时间',
  `huanshutime` varchar(255) default NULL COMMENT '还书时间',
  `userid` int(11) default NULL COMMENT '关联的读者ID，外键',
  `username` varchar(255) default NULL COMMENT '借书证号',
  `xingming` varchar(255) default NULL COMMENT '读者姓名',
  `lianxifangshi` varchar(255) default NULL COMMENT '读者联系方式',
  `tushuid` int(11) default NULL COMMENT '关联的图书ID，外键',
  `bianhao` varchar(255) default NULL COMMENT '图书编号',
  `shuming` varchar(255) default NULL COMMENT '书名',
  `jieshustatus` varchar(255) default NULL COMMENT '借书状态 已借书  已还书',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



LOCK TABLES `t_jieshu` WRITE;

UNLOCK TABLES;



DROP TABLE IF EXISTS `t_leixing`;
CREATE TABLE `t_leixing` (
  `Id` int(11) NOT NULL auto_increment COMMENT '主键',
  `lxname` varchar(255) default NULL COMMENT '图书分类名',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



LOCK TABLES `t_leixing` WRITE;

UNLOCK TABLES;



DROP TABLE IF EXISTS `t_tushu`;
CREATE TABLE `t_tushu` (
  `Id` int(11) NOT NULL auto_increment COMMENT '主键',
  `bianhao` varchar(255) default NULL COMMENT '图书编号',
  `shuming` varchar(255) default NULL COMMENT '书名',
  `zuozhe` varchar(255) default NULL COMMENT '作者',
  `chubanriqi` varchar(255) default NULL COMMENT '出版日期',
  `chubanshe` varchar(255) default NULL COMMENT '出版社',
  `jiage` double default NULL COMMENT '图书价格',
  `zongshu` int(11) default NULL COMMENT '图书总数',
  `jieshu` int(11) default NULL COMMENT '已借图书数量',
  `leixingid` int(11) default NULL COMMENT '关联图书分类的id 外键',
  `lxname` varchar(255) default NULL COMMENT '分类名称',
  `jianjie` text COMMENT '图书简介',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



LOCK TABLES `t_tushu` WRITE;

UNLOCK TABLES;



DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `Id` int(11) NOT NULL auto_increment COMMENT '主键',
  `username` varchar(255) default NULL COMMENT '用户名 借书证号',
  `password` varchar(255) default NULL COMMENT '密码',
  `shijian` varchar(255) default NULL COMMENT '添加时间',
  `role` varchar(255) default NULL COMMENT '用户角色 管理员 读者',
  `xingming` varchar(255) default NULL COMMENT '真实姓名',
  `lianxifangshi` varchar(255) default NULL COMMENT '联系方式',
  `dizhi` varchar(255) default NULL COMMENT '地址',
  `zhuangtai` varchar(255) default NULL COMMENT '状态 正常 挂失   退卡',
  `num` int(11) default NULL COMMENT '读者每次最多能借书的数量',
  `yijie` int(11) default NULL COMMENT '读者已借的图书数量',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;



LOCK TABLES `t_user` WRITE;

INSERT INTO `t_user` VALUES (1,'admin','111111',NULL,'管理员',NULL,NULL,NULL,NULL,0,0);

UNLOCK TABLES;

