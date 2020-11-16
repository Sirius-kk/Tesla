/***建库***/
/* 编码方式设定为UTF8 */
SET NAMES UTF8;
/**丢弃数据库，如果存在'tesla'**/
DROP DATABASE IF EXISTS tesla;
/**创建数据库'tesla'，并设置编码方式为'UTF8'**/
CREATE DATABASE tesla CHARSET=UTF8;
/**进入'tesla'数据库**/

USE tesla;

/*******************/
/******数据表编写******/
/*******************/

/* *******************主页模块数据表****************** */

/**创建主页数据表**/
/*丢弃数据表，如果存在数据表'ts_index_picture'*/
DROP TABLE IF EXISTS ts_index_picture;
/*创建主页图片详情数据表'ts_index_picture'*/
CREATE TABLE ts_index_picture (
  indexp_id TINYINT PRIMARY KEY AUTO_INCREMENT,          #充电产品类别编号
  indexp_picture VARCHAR(45)     #主页图片名称
);
/* ************************************* */

/* *******************商品模块数据表****************** */

/**创建类别数据表**/


/*丢弃数据表，如果存在数据表'ts_activity_family'*/
DROP TABLE IF EXISTS ts_activity_family;
/*创建商铺活动数据表'ts_activity_family'*/
CREATE TABLE ts_activity_family(
  activity_id INT PRIMARY KEY AUTO_INCREMENT,              #商铺活动类别编号
  activityf_type VARCHAR(45)    #商品活动类别名称
);
/*丢弃数据表，如果存在数据表'ts_charge_family'*/
DROP TABLE IF EXISTS ts_charge_family;
/*创建充电产品数据表'ts_charge_family'*/
CREATE TABLE ts_charge_family(
  charge_id INT PRIMARY KEY AUTO_INCREMENT,              #充电产品类别编号
  chargef_type VARCHAR(45)    #充电产品类别名称
);
/*丢弃数据表，如果存在数据表'ts_part_family'*/
DROP TABLE IF EXISTS ts_part_family;
/**创建优选配件数据表'ts_part_family'**/
CREATE TABLE ts_part_family (
  part_id INT PRIMARY KEY AUTO_INCREMENT,                #优选配件类别编号
  partf_type VARCHAR(45)      #优选配件类别名称
);
/*丢弃数据表，如果存在数据表'ts_dress_family'*/
DROP TABLE IF EXISTS ts_dress_family;
/**创建精品服饰数据表'ts_dress_family'**/
CREATE TABLE ts_dress_family (
  dress_id INT PRIMARY KEY AUTO_INCREMENT,               #精品服饰类别编号
  dressf_type VARCHAR(45)     #精品服饰类别名称
);
/*丢弃数据表，如果存在数据表'ts_surround_family'*/
DROP TABLE IF EXISTS ts_surround_family;
/*创建周边精品数据表'ts_surround_family'*/
CREATE TABLE ts_surround_family (
  surround_id INT PRIMARY KEY AUTO_INCREMENT,            #周边精品类别编号
  surroundf_type VARCHAR(45)  #周边精品类别名称
);

/**创建详情数据表**/


/*丢弃数据表，如果存在数据表'ts_activity_product'*/
DROP TABLE IF EXISTS ts_activity_product;
/*店铺活动详情数据表'ts_activity_product'*/
CREATE TABLE ts_activity_product(
  apid INT PRIMARY KEY AUTO_INCREMENT,  #店铺活动详情编号
  afamily_id TINYINT,         #所属型号家族编号
  atitle VARCHAR(30),         #主标题
  aprice DECIMAL(10,2),       #价格
  adesc VARCHAR(200),         #商品描述
  apic VARCHAR(50),           #图片
  apic2 VARCHAR(50)           #切换图片
);
/*丢弃数据表，如果存在数据表'ts_charge_product'*/
DROP TABLE IF EXISTS ts_charge_product;
/*充电产品详情数据表'ts_charge_product'*/
CREATE TABLE ts_charge_product(
  cpid INT PRIMARY KEY AUTO_INCREMENT,  #充电产品详情编号
  cfamily_id TINYINT,         #所属型号家族编号
  ctitle VARCHAR(30),         #主标题
  cprice DECIMAL(10,2),       #价格
  cdesc VARCHAR(200),         #商品描述
  cpic VARCHAR(50),           #图片
  cpic2 VARCHAR(50)           #切换图片
);
/*丢弃数据表，如果存在数据表'ts_part_product'*/
DROP TABLE IF EXISTS ts_part_product;
/*优选配件详情数据表'ts_part_product'*/
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
/*丢弃数据表，如果存在数据表'ts_dress_product'*/
DROP TABLE IF EXISTS ts_dress_product;
/*精品服饰详情数据表'ts_dress_product'*/
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
/*丢弃数据表，如果存在数据表'ts_surround_product'*/
DROP TABLE IF EXISTS ts_surround_product;
/*周边精品详情数据表'ts_surround_product'*/
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
/*丢弃数据表，如果存在数据表'ts_product_piture'*/
DROP TABLE IF EXISTS ts_product_piture;
/*商品详情图片数据表'ts_product_piture'*/
CREATE TABLE ts_product_piture(
  picture_id INT PRIMARY KEY AUTO_INCREMENT,  #商品详情图片编号
  picture_pid TINYINT,            #图片所属商品类型编号
  picture_detail_pid INT,     #图片所属商品编号
  picture_names VARCHAR(100)  #图片对象
);
/* ************************************* */


/*******************/
/******数据导入******/
-- INSERT INTO 表名 VALUES
-- (...),
-- (...);
/*******************/

/* *******************主页图片详情数据表****************** */
INSERT INTO ts_index_picture VALUES
  (NULL,'background.jpg'),
  (NULL,'floor1_1.jpg'),
  (NULL,'floor1_2.jpg'),
  (NULL,'floor1_3.jpg'),
  (NULL,'floor2_1.jpg'),
  (NULL,'floor2_2.jpg'),
  (NULL,'floor2_3.jpg'),
  (NULL,'rotation1.jpg'),
  (NULL,'rotation2.jpg'),
  (NULL,'rotation3.jpg'),
  (NULL,'rotation4.jpg'),
  (NULL,'rotation5.jpg'),
  (NULL,'rotation6.jpg'),
  (NULL,'rotation7.jpg');
/* ***************************************************** */

/* *******************店铺活动类别数据表****************** */
INSERT INTO ts_activity_family VALUES
(NULL,'特斯拉宠粉季');
/* ***************************************************** */
/* *******************充电产品类别数据表****************** */
INSERT INTO ts_charge_family VALUES
  (NULL,'家庭充电'),
  (NULL,'旅途充电');
/* ***************************************************** */
/* *******************优选配件类别数据表****************** */
INSERT INTO ts_part_family VALUES
  (NULL,'Model S'),
  (NULL,'Model 3'),
  (NULL,'Model X');
/* ***************************************************** */
/* *******************精品服饰类别数据表****************** */
INSERT INTO ts_dress_family VALUES
  (NULL,'男装'),
  (NULL,'女装'),
  (NULL,'童装');
/* ***************************************************** */
/* *******************周边精品类别数据表****************** */
INSERT INTO ts_surround_family VALUES
  (NULL,'畅销商品'),
  (NULL,'户外用品'),
  (NULL,'水杯'),
  (NULL,'收藏品'),
  (NULL,'收藏品'),
  (NULL,'玩具'),
  (NULL,'科技');
/* ***************************************************** */


/* *******************店铺活动数据表****************** */
INSERT INTO ts_activity_product VALUES
  (NULL,1,'Model 3 车主专属福利',0.00,'<p>Model 3 畅销配件，组合购买可享受8折优惠。</p>
<p>产品组合：</p>
<ul>
<li><a href="https://shop.tesla.cn/product/model-3_y-key-fob" title="Model 3 遥控钥匙">Model 3 遥控钥匙</a>&nbsp;&nbsp;(点击链接，加购物车)</li>
<li><a href="https://shop.tesla.cn/product/model-3-all-weather-interior-mats" title="Model 3 全天候脚垫套装">Model 3 全天候脚垫套装</a>&nbsp;&nbsp;(点击链接，加购物车)</li>
<li><a href="https://shop.tesla.cn/product/model-3-glass-roof-sunshade?sku=1135832-00-A" title="Model 3 玻璃车顶遮阳帘 (前)">Model 3 玻璃车顶遮阳帘 (前)</a>&nbsp;&nbsp;(点击链接，加购物车)</li>
</ul>
<p>购买规则：</p>
<ul>
<li>在同一订单中购买上述三款商品，加入购物车自动改价，享受8折优惠</li>
<li>享受优惠价格购买的商品组合，退货按实际支付金额退款，需三件商品同时退货，不可只退其中一件或者两件商品，订单中未享受优惠的其他商品退货不受此限制</li>
<li>一个订单可优惠购买一套组合商品</li>
</ul>
<p>特斯拉保留法律允许范围内的解释权。</p>','activity11.jpg','activity12.jpg');
/* ***************************************************** */
/* *******************充电产品详情数据表****************** */
/* 家庭充电 3个,旅途充电 3个 */
INSERT INTO ts_charge_product VALUES/* 这里商品描述缺少一个最外层DIV及其样式 */
  (NULL,1,'家庭充电服务包 (国标)',8000.00,`<p>随时在家充电。</p>
					<p>就像为手机充电一样，我们为您提供最优质便捷的充电方案，只需在晚上把您的Tesla车辆接上电源，翌日清晨醒来便可满电出发。</p>
					<p>特斯拉壁挂式连接器是220V和380V通用充电器，双重适配，充电效率单相所有车型为32A，7KW；三相Model3为16A，11KW，其余车型为24A，16KW（以上为典型值，仅供参考）。</p>
					<p>我们充电器的工作温度为-30~50℃，绝大多数的地区可以适用，在严寒区域建议室内安装；充电器的防护等级为IP55，除台风等极端天气地区，户内户外均可适用，此外我们的产品外壳全绝缘且配有可靠接地，能最大程度上保证您的安全，充电枪线长度7.4米，符合更多家庭的安装要求，使您充电无忧。</p>
					<p>购买后您将获得：</p>
					<ul> <li>Tesla 家用充电器一台</li>
					<li>80 米内线缆材料及基础施工费用</li>
					<li>一 次成功的勘测</li>
					<li>施工方案设计及报价</li>
					<li>一个空气开关和漏电保护器及其安装</li>
					<li>充电器安装及送电调试</li>
					<li>安装工程长达两年的质保</li>
					<li>电缆施工过程中必要的辅材</li></ul>
<p>实际电缆必要安装长度小于限定优惠米数的，以实际安装必要长度为准，差值米数不以任何形式赠送或返还。</p>
					<p>我们的安装服务质保期是自您签署《充电器安装确认书》之日起的2年内，壁挂式连接器的质保是自您购买之日起的4年内。需要注意的是，充电器仅在您具备安装条件后寄送至服务商带桩上门（不具备安装条件可申请全额退款）。服务商与您取得确认后现场拆封，若无质量问题恕不支持退款。</p>
<p>购买产品即表示您同意<a href=\"https://www.tesla.cn/go/home-charging-package\">《家庭充电服务包条款与条件》</a></p>`,'charge_home11.png','charge_home12.jpg'),
  (NULL,1,'充电线缆整理器',275.00,'<p>使用新版充电线缆整理器固定您的 Tesla 移动充电连接器设备。线缆固定卡扣可将线缆整齐地挂在墙上，搭配控制器固定托架，可以有效减少适配器和插座的额外磨损。</p> <p>包含：</p>
					<p>1 个线缆固定卡扣</p> <p>1 个控制器托架</p> <p>1 套安装工具</p>','charge_home21.jpg','charge_home22.jpg'),
  (NULL,1,'家庭充电服务包 (欧标)',8000.00,'<p>随时在家充电。</p>
					<p>就像为手机充电一样，我们为您提供最优质便捷的充电方案，只需在晚上把您的Tesla车辆接上电源，翌日清晨醒来便可满电出发。</p>
					<p>特斯拉壁挂式连接器是220V和380V通用充电器，双重适配，充电效率单相所有车型为32A，7KW；三相Model3为16A，11KW，其余车型为24A，16KW（以上为典型值，仅供参考）。</p>
					<p>我们充电器的工作温度为-30~50℃，绝大多数的地区可以适用，在严寒区域建议室内安装；充电器的防护等级为IP55，除台风等极端天气地区，户内户外均可适用，此外我们的产品外壳全绝缘且配有可靠接地，能最大程度上保证您的安全，充电枪线长度7.4米，符合更多家庭的安装要求，使您充电无忧。</p>
					<p>购买后您将获得：</p>
					<ul> <li>Tesla 家用充电器一台</li>
					<li>80 米内线缆材料及基础施工费用</li>
					<li>一 次成功的勘测</li>
					<li>施工方案设计及报价</li>
					<li>一个空气开关和漏电保护器及其安装</li>
					<li>充电器安装及送电调试</li>
					<li>安装工程长达两年的质保</li>
					<li>电缆施工过程中必要的辅材</li></ul>
<p>实际电缆必要安装长度小于限定优惠米数的，以实际安装必要长度为准，差值米数不以任何形式赠送或返还。</p>
					<p>我们的安装服务质保期是自您签署《充电器安装确认书》之日起的2年内，壁挂式连接器的质保是自您购买之日起的4年内。需要注意的是，充电器仅在您具备安装条件后寄送至服务商带桩上门（不具备安装条件可申请全额退款）。服务商与您取得确认后现场拆封，若无质量问题恕不支持退款。</p>
<p>购买产品即表示您同意<a href="https://www.tesla.cn/go/home-charging-package">《家庭充电服务包条款与条件》</a></p>','charge_home31.jpg','charge_home32.jpg'),
  (NULL,2,'移动充电连接器 (国标)',2550.00,'<p>国标移动式连接器支持 100-240V (单相) 50Hz 交流电并且配有正确接地的专用电路插座，最大电流 13A ，适合任何 Tesla 国标车辆。</p><p>移动充电器长度为6米，最大程度支持您的充电便捷性。</p>','charge_travel11.jpg','charge_travel12.jpg'),
  (NULL,2,'移动充电连接器 (欧标)',4775.00,'<p>欧标移动式连接器可以让您在任何符合230V（单相）或230V/400V（三相）50Hz交流电，配有正确接地的专用电路的插座即时补给充电，适合任何 Tesla 欧标车辆。</p><p>移动充电器长度为6米，最大程度支持您的充电便捷性。</p>','charge_travel21.jpg','charge_travel22.jpg'),
  (NULL,2,'国标直流(DC)适配器',2750.00,'<p>搭载非新国标 (IEC TYPE 2) 充电接口的 Tesla Model S 和 Tesla Model X 可通过新国标适配器连接至新国标充电设备充电。</p><p>直流 (DC) 充电适配器使用时，一端连接 Tesla 充电接口，另一端连接新国标充电连接器。</p>','charge_travel31.jpg','charge_travel32.jpg'),
/* ***************************************************** */
/* *******************优选配件详情数据表****************** */
-- INSERT INTO ts_part_product VALUES
--   (NULL,'男装'),
--   (NULL,'女装'),
--   (NULL,'童装');
/* ***************************************************** */
/* *******************精选服饰详情数据表****************** */
-- INSERT INTO ts_dress_product VALUES
--   (NULL,'男装'),
--   (NULL,'女装'),
--   (NULL,'童装');
/* ***************************************************** */
/* *******************周边精品详情数据表****************** */
-- INSERT INTO ts_surround_product VALUES
--   (NULL,'男装'),
--   (NULL,'女装'),
--   (NULL,'童装');
/* ***************************************************** */
/* *******************详情图片数据表****************** */
-- INSERT INTO ts_product_piture VALUES
--   (NULL,1,1,'{p1:''1448752-00-B_2.jpg'',p2:''1449859-00-D_0.jpg'',p3:''1135832-00-A_0.jpg''}');
/* ***************************************************** */







