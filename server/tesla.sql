/***建库***/

/**丢弃数据库，如果存在"tesla"**/
DROP DATABASE  IF EXISTS `tesla`;
/**创建数据库"tesla"，并设置编码方式为"UTF8"**/
CREATE DATABASE IF  NOT EXISTS  `tesla` DEFAULT  CHARACTER SET 'utf8';
/**进入"tesla"数据库**/

USE `tesla`;

/*******************/
/******数据表编写******/
/*******************/

/* *******************主页模块数据表****************** */

/**创建主页数据表**/
/*丢弃数据表，如果存在数据表"ts_index_picture"*/
DROP TABLE IF EXISTS `ts_index_picture`;
/*创建主页图片详情数据表"ts_index_picture"*/
CREATE TABLE `ts_index_picture` (
  indexp_id TINYINT PRIMARY KEY AUTO_INCREMENT,          #充电产品类别编号
  indexp_picture VARCHAR(45)     #主页图片名称
);
/* ************************************* */

/* *******************商品模块数据表****************** */

/**创建类别数据表**/
/*丢弃数据表，如果存在数据表"ts_charge_family"*/
DROP TABLE IF EXISTS `ts_charge_family`;
/*创建充电产品数据表"ts_charge_family"*/
CREATE TABLE `ts_charge_family` (
  charge_id INT,              #充电产品类别编号
  chargef_id INT,             #充电产品类别名称
);
/*丢弃数据表，如果存在数据表"ts_part_family"*/
DROP TABLE IF EXISTS `ts_part_family`;
/**创建优选配件数据表"ts_part_family"**/
CREATE TABLE `ts_part_family` (
  part_id INT,                #优选配件类别编号
  partf_id INT,               #优选配件类别名称
);
/*丢弃数据表，如果存在数据表"ts_dress_family"*/
DROP TABLE IF EXISTS `ts_dress_family`;
/**创建精品服饰数据表"ts_dress_family"**/
CREATE TABLE `ts_dress_family` (
  dress_id INT,               #精品服饰类别编号
  dressf_id INT,              #精品服饰类别名称
);
/*丢弃数据表，如果存在数据表"ts_surround_family"*/
DROP TABLE IF EXISTS `ts_surround_family`;
/*创建周边精品数据表"ts_surround_family"*/
CREATE TABLE `ts_surround_family` (
  surround_id INT,            #周边精品类别编号
  surroundf_id INT,           #周边精品类别名称
);

/**创建详情数据表**/
/*丢弃数据表，如果存在数据表"ts_charge_product"*/
DROP TABLE IF EXISTS `ts_charge_product`;
/*充电产品详情数据表"ts_charge_product"*/
CREATE TABLE ts_charge_product(
  cpid INT PRIMARY KEY AUTO_INCREMENT,  #充电产品详情编号
  cfamily_id TINYINT,         #所属型号家族编号
  ctitle VARCHAR(30),         #主标题
  cprice DECIMAL(10,2),       #价格
  cdesc VARCHAR(200),         #商品描述
  cpic VARCHAR(50),           #图片
  cpic2 VARCHAR(50)           #切换图片
);
/*丢弃数据表，如果存在数据表"ts_part_product"*/
DROP TABLE IF EXISTS `ts_part_product`;
/*优选配件详情数据表"ts_part_product"*/
CREATE TABLE ts_part_product(
  ppid INT PRIMARY KEY AUTO_INCREMENT,  #优选配件详情编号
  pfamily_id TINYINT,         #所属型号家族编号
  pclass VARCHAR(10),         #产品分类
  ptitle VARCHAR(30),         #主标题
  pprice DECIMAL(10,2),       #价格
  pdesc VARCHAR(200),         #商品描述
  ppic VARCHAR(50),           #图片
  ppic2 VARCHAR(50)           #切换图片
);
/*丢弃数据表，如果存在数据表"ts_dress_product"*/
DROP TABLE IF EXISTS `ts_dress_product`;
/*精品服饰详情数据表"ts_dress_product"*/
CREATE TABLE ts_dress_product(
  dpid INT PRIMARY KEY AUTO_INCREMENT,  #精品服饰详情编号
  dfamily_id TINYINT,         #所属型号家族编号
  dclass VARCHAR(10),         #产品分类
  dtitle VARCHAR(30),         #主标题
  dprice DECIMAL(10,2),       #价格
  dcolor VARCHAR(5),          #颜色
  dsize VARCHAR(5),           #尺寸
  ddesc VARCHAR(200),         #商品描述
  dpic VARCHAR(50),           #图片
  dpic2 VARCHAR(50)           #切换图片
);
/*丢弃数据表，如果存在数据表"ts_surround_product"*/
DROP TABLE IF EXISTS `ts_surround_product`;
/*周边精品详情数据表"ts_surround_product"*/
CREATE TABLE ts_surround_product(
  spid INT PRIMARY KEY AUTO_INCREMENT,  #周边精品详情编号
  sfamily_id TINYINT,         #所属型号家族编号
  sclass VARCHAR(10),         #产品分类
  stitle VARCHAR(30),         #主标题
  sprice DECIMAL(10,2),       #价格
  scolor VARCHAR(5),          #颜色
  sdesc VARCHAR(200),         #商品描述
  spic VARCHAR(50),           #图片
  spic2 VARCHAR(50)           #切换图片
);
/* ************************************* */


/*******************/
/******数据导入******/
-- INSERT INTO 表名 VALUES
-- (...)
/*******************/

/* *******************主页图片详情数据表****************** */
INSERT INTO ts_index_picture VALUES
(NULL,"background.jpg"),
(NULL,"floor1_1.jpg"),
(NULL,"floor1_2.jpg"),
(NULL,"floor1_3.jpg"),
(NULL,"floor2_1.jpg"),
(NULL,"floor2_2.jpg"),
(NULL,"floor2_3.jpg"),
(NULL,"rotation1.jpg"),
(NULL,"rotation2.jpg"),
(NULL,"rotation3.jpg"),
(NULL,"rotation4.jpg"),
(NULL,"rotation5.jpg"),
(NULL,"rotation6.jpg"),
(NULL,"rotation7.jpg");
/* ************************************* *

/**插入充电产品类别数据**/
-- INSERT INTO ts_charge_family VALUES
-- (...)






