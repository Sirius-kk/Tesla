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

/**创建主页轮播图片数据表**/
/*丢弃数据表，如果存在数据表'ts_index_rotationPicture'*/
DROP TABLE IF EXISTS ts_index_rotationPicture;
/*创建主页轮播图片数据表'ts_index_rotationPicture'*/
CREATE TABLE ts_index_rotationPicture (
  indexr_id TINYINT PRIMARY KEY AUTO_INCREMENT,          #主页轮播图片详情编号
  indexr_tables VARCHAR(30),    #图片来源数据表
  indexr_pid TINYINT            #产品详情编号
);
/* ************************************* */

-- /* *******************商品模块数据表****************** */

-- /* *********************商品主类表******************* */
-- /**创建商品主类表数据表**/
-- /*丢弃数据表，如果存在数据表'ts_product'*/
-- DROP TABLE IF EXISTS ts_product;
-- /*创建商品主类表数据表'ts_product'*/
-- CREATE TABLE ts_product (
--   product_id TINYINT PRIMARY KEY AUTO_INCREMENT,        #类目编号
--   product_tp VARCHAR(30)    #类目名称
-- );


-- /* !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!我要改表 */
-- /* *********************商品主类表******************* */


/**创建类别数据表**/

/*丢弃数据表，如果存在数据表'ts_activity_family'*/
DROP TABLE IF EXISTS ts_activity_family;
/*创建商铺活动数据表'ts_activity_family'*/
CREATE TABLE ts_activity_family(
  id INT PRIMARY KEY AUTO_INCREMENT,              #商铺活动类别编号
  family_name VARCHAR(45)    #商品活动类别名称
);
/*丢弃数据表，如果存在数据表'ts_charge_family'*/
DROP TABLE IF EXISTS ts_charge_family;
/*创建充电产品数据表'ts_charge_family'*/
CREATE TABLE ts_charge_family(
  id INT PRIMARY KEY AUTO_INCREMENT,              #充电产品类别编号
  family_name VARCHAR(45)    #充电产品类别名称
);
/*丢弃数据表，如果存在数据表'ts_part_family'*/
DROP TABLE IF EXISTS ts_part_family;
/**创建优选配件数据表'ts_part_family'**/
CREATE TABLE ts_part_family (
  id INT PRIMARY KEY AUTO_INCREMENT,                #优选配件类别编号
  family_name VARCHAR(45)      #优选配件类别名称
);
/*丢弃数据表，如果存在数据表'ts_dress_family'*/
DROP TABLE IF EXISTS ts_dress_family;
/**创建精品服饰数据表'ts_dress_family'**/
CREATE TABLE ts_dress_family (
  id INT PRIMARY KEY AUTO_INCREMENT,               #精品服饰类别编号
  family_name VARCHAR(45)     #精品服饰类别名称
);
/*丢弃数据表，如果存在数据表'ts_surround_family'*/
DROP TABLE IF EXISTS ts_surround_family;
/*创建周边精品数据表'ts_surround_family'*/
CREATE TABLE ts_surround_family (
  id INT PRIMARY KEY AUTO_INCREMENT,            #周边精品类别编号
  family_name VARCHAR(45)  #周边精品类别名称
);

/**创建详情数据表**/


/*丢弃数据表，如果存在数据表'ts_activity_product'*/
DROP TABLE IF EXISTS ts_activity_product;
/*店铺活动详情数据表'ts_activity_product'*/
CREATE TABLE ts_activity_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,  #店铺活动详情编号
  family_id TINYINT,         #所属型号家族编号
  class VARCHAR(10),         #产品分类
  title VARCHAR(30),         #主标题
  price VARCHAR(30),         #价格
  tp VARCHAR(50),          #类型
  color VARCHAR(50),         #颜色
  size VARCHAR(50),          #尺寸
  ds VARCHAR(200),         #商品描述
  apic VARCHAR(50),           #图片
  apic2 VARCHAR(50),          #切换图片
  pic_detais VARCHAR(100),    #详情图片
  mian TINYINT               #家族
);
/*丢弃数据表，如果存在数据表'ts_charge_product'*/
DROP TABLE IF EXISTS ts_charge_product;
/*充电产品详情数据表'ts_charge_product'*/
CREATE TABLE ts_charge_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,  #充电产品详情编号
  family_id TINYINT,         #所属型号家族编号
  class VARCHAR(10),         #产品分类
  title VARCHAR(30),         #主标题
  price VARCHAR(30),         #价格
  tp VARCHAR(50),            #类型
  color VARCHAR(50),         #颜色
  size VARCHAR(50),          #尺寸
  ds VARCHAR(500),         #商品描述
  pic VARCHAR(50),           #图片
  pic2 VARCHAR(50),          #切换图片
  pic_detais VARCHAR(100),    #详情图片
  mian TINYINT               #家族
);
/*丢弃数据表，如果存在数据表'ts_part_product'*/
DROP TABLE IF EXISTS ts_part_product;
/*优选配件详情数据表'ts_part_product'*/
CREATE TABLE ts_part_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,  #优选配件详情编号
  family_id TINYINT,         #所属型号家族编号
  class VARCHAR(10),         #产品分类1
  title VARCHAR(30),         #主标题
  price VARCHAR(30),         #价格
  tp VARCHAR(50),          #类型
  color VARCHAR(50),         #颜色
  size VARCHAR(50),          #尺寸
  ds VARCHAR(200),         #商品描述
  pic VARCHAR(50),           #图片
  pic2 VARCHAR(50),          #切换图片
  pic_detais VARCHAR(100),    #详情图片
  mian TINYINT               #家族
);
/*丢弃数据表，如果存在数据表'ts_dress_product'*/
DROP TABLE IF EXISTS ts_dress_product;
/*精品服饰详情数据表'ts_dress_product'*/
CREATE TABLE ts_dress_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,  #精品服饰详情编号
  family_id TINYINT,         #所属型号家族编号
  class VARCHAR(10),         #产品分类
  title VARCHAR(30),         #主标题
  price VARCHAR(30),         #价格
  tp VARCHAR(50),          #类型
  color VARCHAR(50),         #颜色
  size VARCHAR(50),          #尺寸
  ds VARCHAR(200),         #商品描述
  pic VARCHAR(50),           #图片
  pic2 VARCHAR(50),          #切换图片
  pic_detais VARCHAR(100),    #详情图片
  mian TINYINT               #家族
);
/*丢弃数据表，如果存在数据表'ts_surround_product'*/
DROP TABLE IF EXISTS ts_surround_product;
/*周边精品详情数据表'ts_surround_product'*/
CREATE TABLE ts_surround_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,  #周边精品详情编号
  family_id TINYINT,         #所属型号家族编号
  class VARCHAR(10),         #产品分类
  title VARCHAR(30),         #主标题
  price VARCHAR(30),         #价格
  tp VARCHAR(50),          #类型
  color VARCHAR(50),          #颜色
  size VARCHAR(50),           #尺寸
  ds VARCHAR(200),         #商品描述
  pic VARCHAR(50),           #图片
  pic2 VARCHAR(50),          #切换图片
  pic_detais VARCHAR(100),    #详情图片
  mian TINYINT               #家族
);


/*******************/
/******数据导入******/
-- INSERT INTO 表名 VALUES
-- (...),
-- (...);
/*******************/
-- /* ***********************商品主类目********************* */
-- INSERT INTO ts_product VALUES
--   (NULL,'店铺活动'),
--   (NULL,'充电产品'),
--   (NULL,'优选配件'),
--   (NULL,'精选服饰'),
--   (NULL,'周边精品');
/* ***********************商品主类目********************* */
/* *******************主页图片详情数据表****************** */
INSERT INTO ts_index_rotationPicture VALUES
  (NULL,'ts_charge_product',2),
  (NULL,'ts_charge_product',7),
  (NULL,'ts_part_product',6),
  (NULL,'ts_part_product',5),
  (NULL,'ts_part_product',12),
  (NULL,'ts_dress_product',1),
  (NULL,'ts_dress_product',2),
  (NULL,'ts_surround_product',1);
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
  (NULL,
  1,
  NULL,
  'Model 3 车主专属福利',
  '{p1:"0"}',
  NULL,
  NULL,
  NULL,
  '<p>Model 3 畅销配件，组合购买可享受8折优惠。</p>
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
    <p>特斯拉保留法律允许范围内的解释权。</p>',
  'activity11.jpg',
  'activity12.jpg',
  '{p1:"1448752-00-B_2.jpg",p2:"1449859-00-D_0.jpg",p3:"1135832-00-A_0.jpg"}',1
  );
/* ***************************************************** */
/* *******************充电产品详情数据表****************** */
/* 家庭充电 3个,旅途充电 3个 */
INSERT INTO ts_charge_product VALUES/* 这里商品描述缺少一个最外层DIV及其样式 */
  (NULL,
  1,
  NULL,
  '家庭充电服务包 (国标)',
  '{p1:"8000"}',
  NULL,
  NULL,
  NULL,
  '<p>随时在家充电。</p>
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
  <p>购买产品即表示您同意<a href="https://www.tesla.cn/go/home-charging-package">《家庭充电服务包条款与条件》</a></p>',
  'charge_home11.png',
  'charge_home12.jpg',
  '{p1:"1050067-01-E_0.png",p2:"1050067-00-E_alt.jpg"}',2
  ),
  (NULL,
  1,
  NULL,
  '充电线缆整理器',
  '{p1:"275"}',
  NULL,
  NULL,
  NULL,
  '<p>使用新版充电线缆整理器固定您的 Tesla 移动充电连接器设备。线缆固定卡扣可将线缆整齐地挂在墙上，搭配控制器固定托架，可以有效减少适配器和插座的额外磨损。</p>
  <p>包含：</p>
	<p>1 个线缆固定卡扣</p>
  <p>1 个控制器托架</p>
  <p>1 套安装工具</p>',
  'charge_home21.jpg',
  'charge_home22.jpg',
  '{p1:"1521226-00-A_0.jpg",p2:"1521226-00-A_1.jpg",p3:"1521226-00-A_3.jpg",p4:"1521226-00-A_4.jpg"}',2
  ),
  (NULL,
  1,
  NULL,
  '家庭充电服务包 (欧标)',
  '{p1:"8000"}',
  NULL,
  NULL,
  NULL,
  '<p>随时在家充电。</p>
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
  <p>购买产品即表示您同意<a href="https://www.tesla.cn/go/home-charging-package">《家庭充电服务包条款与条件》</a></p>',
  'charge_home31.jpg',
  'charge_home32.jpg',
  '{p1:"1050073-03-G_0.jpg",p2:"1050067-00-E_alt2.jpg"}',2
  ),
  (NULL,
  2,
  NULL,
  '移动充电连接器 (国标)',
  '{p1:"2550"}',
  NULL,
  NULL,
  NULL,
  '<p>国标移动式连接器支持 100-240V (单相) 50Hz 交流电并且配有正确接地的专用电路插座，最大电流 13A ，适合任何 Tesla 国标车辆。</p><p>移动充电器长度为6米，最大程度支持您的充电便捷性。</p>','charge_travel11.jpg','charge_travel12.jpg',
  '{p1:"1142848-00-E_0.jpg",p2:"1142848-00-E_1.jpg"}',2
  ),
  (NULL,
  2,
  NULL,
  '移动充电连接器 (欧标)',
  '{p1:"4750"}',
  NULL,
  NULL,
  NULL,
  '<p>欧标移动式连接器可以让您在任何符合230V（单相）或230V/400V（三相）50Hz交流电，配有正确接地的专用电路的插座即时补给充电，适合任何 Tesla 欧标车辆。</p><p>移动充电器长度为6米，最大程度支持您的充电便捷性。</p>',
  'charge_travel21.jpg',
  'charge_travel22.jpg',
  '{p1:"1142848-00-E_1.jpg",p2:"1055691-00-F_1.jpg",p3:"1055691-00-F_2.jpg"}',2
  ),
  (NULL,
  2,
  NULL,
  '国标直流(DC)适配器',
  '{p1:"2750"}',
  NULL,
  NULL,
  NULL,
  '<p>搭载非新国标 (IEC tp 2) 充电接口的 Tesla Model S 和 Tesla Model X 可通过新国标适配器连接至新国标充电设备充电。</p><p>直流 (DC) 充电适配器使用时，一端连接 Tesla 充电接口，另一端连接新国标充电连接器。</p>',
  'charge_travel31.jpg',
  'charge_travel32.jpg',
  '{p1:"1084688-00-F_0.jpg"}',2
  ),
  (NULL,
  2,
  NULL,
  '国标交流(AC)适配器',
  '{p1:"2750"}',
  NULL,
  NULL,
  NULL,
  '<p>搭载非新国标 (IEC tp 2) 充电接口的 Tesla Model S 和 Tesla Model X 可通过新国标适配器连接至新国标充电设备充电。</p><p>交流 (AC) 充电适配器使用时，一端连接 Tesla 充电接口，另一端连接新国标充电连接器。</p>','charge_travel41.jpg','charge_travel42.jpg',
  '{p1:"1102683-00-D_0.jpg"}',2
  );
/* ***************************************************** */
/* *******************优选配件详情数据表****************** */
/* Model S  类型编号: 1  畅销商品 */
INSERT INTO ts_part_product VALUES
  (NULL,
  1,
  '畅销商品',
  'Model S 固定式玻璃车顶遮阳帘',
  '{p1:"580"}',
  NULL,
  NULL,
  NULL,
  '<p>由轻质网状织物和可折叠的高锰钢框架组成，可阻挡三分之二的太阳能热负荷。拆卸简便，通过专用卡扣安装于玻璃车顶内部。不使用时可折叠存放在约 46 平方厘米的配套收纳袋中。</p> <p>包含：
					</p> <ul> <li>1 个固定式玻璃车顶遮阳帘</li> <li>1 个拉链式收纳袋</li> </ul> <p>适用于配备固定式玻璃车顶的 Model
					S 车型。 </p>','part_bestsell11.jpg','part_bestsell12.jpg',
          '{p1:"1130555-00-A_0.jpg",p2:"1130555-00-A_1.jpg",p3:"1130555-00-A_2.jpg"}',3
  ),
  (NULL,
  1,
  '畅销商品',
  'Model S 全天候脚垫套装',
  '{p1:"2160"}',
  NULL,
  NULL,
  NULL,
  '<p>新版 Tesla Model S 全天候脚垫套装采用先进的数字激光测量技术定制而成。确保与车辆紧密贴合，全方位隔离灰尘和液体。脚垫为 TPE 材质，不含镉、铅、乳胶、PVC，100%
					可回收，内含刚性芯体，强度高且易于清理。</p> <p> 与旧版相比，新版增加了前垫固定贴片以便于安装，并增加了围挡高度以更好地保护车辆前部底板。 </p> <p>包含：</p> <ul>
					<li>1 个驾驶位脚垫</li> <li>1 个副驾位脚垫</li> <li>1 个第二排脚垫</li> </ul>','part_bestsell21.jpg','part_bestsell22.jpg',
          '{p1:"1019290-00-B_0.jpg",p2:"1019290-00-B_1.jpg",p3:"1019290-00-B_2.jpg",p4:"1019290-00-B_3.jpg",p5:"1019290-00-B_4.jpg"}',3
  ),
  /* Model S  类型编号: 2  内饰 */
  (NULL,
  1,
  '内饰',
  'Model S/X 快速连接手机底座',
  '{p1:"300",p2:"325",p3:"350"}',
  '{t1:"iPhone",t2:"USB-C",t3:"Micro USB"}',
  NULL,
  NULL,
  '<p>安装快速连接手机充电底座后，充电操作更符合人体工程学。杂乱的充电线被隐藏，外观更整洁。支持盲插，可快速、安全地为智能手机充电。</p> <p>包含：</p>
					<ul> <li>1 个通用底座</li> <li>2 个设备托架，宽、窄各 1 个</li> <li>1 个充电线，可选择充电接口 iPhoneLighting® 、Micro-USB 或 USB-C 。</li> </ul> <p>注意：配备集成中控台的车型可以自行安装，无需前往服务中心。目前兼容 iPhone 6 Plus 及更高版本设备。</p> <p>不适用于配备第一代插入式中控台的车型。</p>
				</div>','part_inner11.jpg','part_inner12.jpg',
        '{p1:"1060583-00-B_0.jpg",p2:"1060583-00-B_1.png",p3:"1060583-00-B_2.png",p4:"1060583-00-B_3.png",p5:"1060583-00-B_0.png",p6:"1060583-00-B_1.png",p7:"1060583-00-B_2.png",p8:"1060583-00-B_3.png"}',3
  ),
  (NULL,
  1,
  '内饰',
  'Model S/X 手机无线充电器',
  '{p1:"875"}',
  NULL,
  NULL,
  NULL,
  '<p>Model S/X 手机无线充电器，让你告别数据线，手机不断电。 充电器支持任一款配备Qi 无线充电技术的智能手机，即插即充，快速安全。充电功率可高达 7.5W。</p>
    <p>浏览 <a href="https://www.tesla.cn/support/do-it-yourself-model-s#wireless-phone-charger" title="DIY 操作指南">DIY 操作指南</a>，轻松安装。</p>
    <p><em>注意：充电器可容纳的手机规格为 —— 高 165 毫米，宽 80.5 毫米，厚 11.9 毫米以内。</em></p>',
    'part_inner21.jpg','part_inner22.jpg',
    '{p1:"1562264-00-A_0.jpg",p2:"1562264-00-A_1.jpg",p3:"1562264-00-A_2.jpg",p4:"1562264-00-A_3.jpg",p5:"1562264-00-A_4.jpg"}',3
  ),
  (NULL,
  1,
  '内饰',
  'Model S 硅胶钥匙带',
  '{p1:"145"}',
  NULL,
  NULL,
  NULL,
  '<p>定制款 Tesla 通用钥匙带，适用于所有车型的遥控钥匙。钥匙带为硅胶材质，饰以 Tesla "T" Logo，钥匙圈为金属材质，外观简洁，使用方便。</p> <p><em>注意：产品不包括遥控钥匙。</em></p>',
  'part_inner31.jpg',
  'part_inner32.jpg',
  '{p1:"1490875-00-A_3.jpg",p2:"1490875-00-A_0.jpg",p3:"1490875-00-A_0.jpg",p4:"1490875-00-A_2.jpg"}',3
  ),
  /* Model S  类型编号: 1  外观 */
  (NULL,
  1,
  '外观',
  'Model S 车衣 (国标)',
  '{p1:"2050",p2:"2900"}',
  '{t1:"室内",t2:"室外"}',
  NULL,
  NULL,
  '<h3>室内车衣</h3>
  <p>弹力缎面，像手套一样贴合车身，可有效防止漆面刮擦或尘埃积聚。充电端口处有专门的开口，可正常连接充电器。通风网孔在充电时有利于车辆散热。</p>
					<p> 特色： </p>
          <ul> 
          <li>丝滑黑色缎面</li> 
          <li>内层材质柔软</li> 
          </ul> 
          <p> 包含： </p>
					<ul> 
          <li>1 个车衣</li> 
          <li>1 个收纳袋</li> 
          </ul> 
          <br><br> 
          <h3>户外车衣</h3> 
          <p>保护您的爱车免受恶劣天气等户外因素的影响。车衣中间层采用热塑性聚氨酯材料，里层和外层采用机织聚酯材料，透气性和耐水性俱佳。充电端口处有专门的开口，可正常连接充电器。通风网孔在充电时有利于车辆散热。</p><p>
					</p>
          <p> 特色： </p> 
          <ul> 
          <li>外层结实耐用</li> 
          <li>内层材质柔软</li> 
          <li>防盗钢丝锁</li> 
          </ul>
					<p> 包含： </p> 
          <ul> 
          <li>1 个车衣</li> 
          <li>1 个收纳袋</li> 
          </ul>',
  '1017723-00-A_0.jpg',
  '1017723-00-A_alt.jpg',
  '{p1:"1017723-00-A_0.jpg",p2:"1017723-00-A_1.jpg",p3:"1017723-00-A_2.jpg",p4:"1017723-00-A_alt.jpg",p5:"1017723-01-A_0.jpg",p6:"1017723-01-A_1.jpg",p7:"1017723-01-A_2.jpg",p8:"1017723-01-A_alt.jpg"}',3
  ),   #后边还有一个雨刷可以加进去
  /* Model S  类型编号: 1  轮毂和轮胎 */
  (NULL,
  1,
  '轮毂和轮胎',
  '轮胎修理工具包',
  '{p1:"875"}',
  NULL,
  NULL,
  NULL,
  '<p>随车携带一个小型轮胎修理工具包，在出现爆胎事故时即可快速处理并继续行驶。</p> 
  <p>新一代 Tesla
	轮胎修理工具包含用于定期补充胎压的空气压缩机，以及用于修补刺孔的一体式密封胶罐。如果出现扎胎的情况，只需将工具包顶部的透明软管连接到轮胎气门嘴，并将插头连接到车辆的 12V
	插座，即可开始修理刺孔并为轮胎充气。传感器安全系统将以电子方式检查密封胶软管与轮胎气门嘴之间的安全连接，防止误操作。</p> 
  <p>包含：</p> 
  <ul> 
  <li>1 瓶密封胶</li>
	<li>1 个空气压缩机</li> 
  <li>1 个充气针</li> 
  <li>1 个锥形气嘴</li> 
  <li>1 个 Tesla logo 收纳袋</li>
	</ul> 
  <p>注意：本产品仅作为应急处理方案。轮胎损坏后请尽快更换，自行修补的轮胎行驶距离不得超过 300 公里。如果轮胎刺孔直径超过 6
	毫米，或在胎面的其他位置发现其他刺孔，请立即致电道路救援，请勿使用本产品自行修补。压缩机的连续工作时间不得超过 20 分钟。损坏的轮胎与 TPMS 传感器都应该尽快更换，更换服务不在 Tesla 车辆质量保证范围内。</p>
  ',
  '1133009-00-A_0.jpg',
  '1133009-00-A_alt.jpg',
  '{p1:"1133009-00-A_0.jpg",p2:"1133009-00-A_1.jpg",p3:"1133009-00-A_2.jpg",p4:"1133009-00-A_alt.jpg"}',3
  ), #后边还有
  /* Model S  类型编号: 1  脚垫 */
  (NULL,
  1,
  '脚垫',
  'Model S 全天候脚垫套装',
  '{p1:"275"}',
  NULL,
  NULL,
  NULL,
  '<p>新版 Tesla Model S 全天候脚垫套装采用先进的数字激光测量技术定制而成。确保与车辆紧密贴合，全方位隔离灰尘和液体。脚垫为 TPE 材质，不含镉、铅、乳胶、PVC，100%
		可回收，内含刚性芯体，强度高且易于清理。</p> 
    <p> 与旧版相比，新版增加了前垫固定贴片以便于安装，并增加了围挡高度以更好地保护车辆前部底板。 </p> 
    <p>包含：</p> 
    <ul>
		<li>1 个驾驶位脚垫</li> 
    <li>1 个副驾位脚垫</li> 
    <li>1 个第二排脚垫</li> 
    </ul>',
    'part_bestsell21.jpg',
    'part_bestsell22.jpg',
    '{p1:"1019290-00-B_0.jpg",p2:"1019290-00-B_1.jpg",p3:"1019290-00-B_2.jpg",p4:"1019290-00-B_3.jpg",p5:"1019290-00-B_4.jpg"}' ,3
  ), 
  -- #后边还有
  /* Model 3  类型编号: 2  畅销商品 */
  (NULL,
  2,
  '畅销商品',
  'Model 3 车主专属福利',
  '{p1:"0"}',
  NULL,
  NULL,
  NULL,
  '<p>Model 3 畅销配件，组合购买可享受8折优惠。</p>
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
  <p>特斯拉保留法律允许范围内的解释权。</p>',
  '1448752-00-B_2.jpg',
  '1448752-00-B_2.jpg',
  '{p1:"1448752-00-B_2.jpg",p2:"1449859-00-D_0.jpg",p3:"1135832-00-A_0.jpg"}',3),
  /* Model 3  类型编号: 2  内饰 */
  (NULL,
  2,
  '内饰',
  'Model 3/Y 遥控钥匙',
  '{p1:"1200"}',
  NULL,
  NULL,
  NULL,
  '<p>此商品与下列商品组合购买可享受8折优惠</p>
  <ul>
  <li><a href="https://shop.tesla.cn/product/model-3-all-weather-interior-mats" title="Model 3 全天候脚垫套装">Model 3 全天候脚垫套装</a>&nbsp;&nbsp;(点击链接，加购物车)</li>
  <li><a href="https://shop.tesla.cn/product/model-3-glass-roof-sunshade?sku=1135832-00-A" title="Model 3 玻璃车顶遮阳帘 (前)">Model 3 玻璃车顶遮阳帘 (前)</a>&nbsp;&nbsp;(点击链接，加购物车)</li>
  </ul>
  <p>无需动手操作，锁定和解锁 Tesla 从未如此简便。只需将遥控钥匙放在口袋中并拉动门把手，即可自动解锁车辆。打开行李箱的方式与之相同。遥控钥匙的功能会在与车辆配对后自动启用。</p>
	<p>礼品盒包括遥控钥匙和纽扣电池。</p> 
  <p>有关 Model 3/Model Y 遥控钥匙的更多信息，请参阅我们的<a href="https://www.tesla.cn/support/model-3-key-fob">支持页面</a>。</p>',
  '1449859-00-D_0.jpg',
  '1449859-00-D_1.jpg',
  '{p1:"1449859-00-D_0.jpg",p2:"1449859-00-D_1.jpg",p3:"1449859-00-D_2.jpg",p4"1449859-00-D_3.jpg"}',3),
  /* Model 3  类型编号: 2  外观 */
  (NULL,
  2,
  '外观',
  'Model 3 雨刮器',
  '{p1:"183"}',
  '{t1:"右(副驾驶)",t2:"左(驾驶位)"}',
  NULL,
  NULL,
  '<p>为 Model 3 雨刮器片选择正规的替换产品以确保能够正确安装，并实现相同的使用效果和性能。</p>
  <p>包含：</p>
  <ul>
  <li>1 x 雨刮器片</li>
  </ul>
  <p><a href="https://www.tesla.cn/support/do-it-yourself-model-3#replacing-wiper-blades">Model 3 雨刮器片更换手册</a></p>',
  '1456933-00-A_1.jpg',
  '1456933-00-A_1.jpg',
  '{p1:"1456933-00-A_1.jpg"}',3),
  /* Model 3  类型编号: 2  轮毂和轮胎 */
  (NULL,
  2,
  '轮毂和轮胎',
  'Model 3 碳纤维轮毂螺帽套件',
  '{p1:"2400"}',
  NULL,
  NULL,
  NULL,
  '<p>适用于 Model 3 运动轮毂和高性能轮毂。流线型定制轮毂标，突显个性。由轻型交叉编织的碳纤维制成，哑光表面。</p> 
  <p>包含：</p> 
  <p>4 个碳纤维 Tesla 轮毂标</p> 
  <p>1 个轮毂螺帽拆卸钳</p> 
  <p><em>注意：仅适用于 19 英寸运动轮毂和 20 英寸高性能轮毂，包括出厂标配和售后改装的轮毂。</em></p>',
  '1518543-00-A_0.jpg',
  '1518543-00-A_2.jpg',
  '{t1:"1518543-00-A_0.jpg",t2:"1518543-00-A_2.jpg",t3:"1518543-00-A_3.jpg"}',3),
  /* Model 3  类型编号: 2  脚垫 */
  (NULL,
  2,
  '脚垫',
  'Model 3 全天候前备/后备箱地垫',
  '{p1:"655",p2:"955"}',
  '{t1:"前备箱",t2:"后备箱"}',
  NULL,
  NULL,
  '<p>地垫为 TPE 材质，不含镉、铅、乳胶、PVC，100% 可回收，内含刚性芯体，强度高且易于清理。</p> 
  <p><strong>前备箱垫包括：</strong></p>
	<ul> 
  <li>1 个前备箱地垫</li> 
  </ul> 
  <p><strong>后备箱垫包括：</strong></p> 
  <ul> 
  <li>1 个后备箱垫</li> 
  </ul>',
  '1133634-00-A_0.jpg',
  '1133634-00-A_alt.jpg',
  '{p1:"1133634-00-A_0.jpg",p2:"1133634-00-A_alt.jpg"}',3);
/* 还有好多........ */
  
/* ***************************************************** */
/* *******************精选服饰详情数据表****************** */
INSERT INTO ts_dress_product VALUES
  /* 男装  类型编号: 1  T恤 */
  (NULL,
  1,
  'T恤',
  'Made on Earth by Humans 短袖T恤',
  '{p1:"249"}',
  NULL,
  '{c1:"#808080",c2:"#04010a",c3:"#ffffff"}',
  '{s1:"S",s2:"M",s3:"L",s4:"XL"}',
  '<p>在一次具有历史意义的发射任务中，一辆 Tesla Roadster 跑车和它的“驾驶员” Starman 搭乘火箭来到太空，开启了一段漫长的太空之旅。这辆 Roadster 的电路板上刻有一句话，“Made on Earth by Humans”，意思是“地球出品，人类制造”。穿上这款T恤，表达你对太空探索和前沿科技创新的支持。由 100% 纯棉制成。</p>
  <ul>
  <li>S (165/84A) : 胸围 48.5cm，肩宽 41.5cm</li>
  <li>M (170/92A) : 胸围 51.5cm，肩宽 43.0cm</li>
  <li>L (175/100A) : 胸围 54.5cm，肩宽 44.5cm</li>
  <li>XL (180/108B) : 胸围 58.5cm，肩宽 46.5cm</li>
  </ul>',
  '1478245-02-A_0.jpg',
  '1478244-00-A_1.jpg',
  '{p1:"1478245-02-A_0.jpg",p2:"1478244-00-A_1.jpg",p3:"1478232-02-A_0.jpg",p4:"1478231-00-A_1.jpg",p5:"1478239-02-A_0.jpg",p6:"1478238-00-A_1.jpg"}',4
  ), #待补充
  /* 男装  类型编号: 1  帽子 */
  (NULL,
  1,
  '帽子',
  'Tesla T标棒球帽',
  '{p1:"169"}',
  NULL,
  '{c1:"#04010a",c2:"#ffffff",c3:"#d00"}',
  NULL,
  '<p>经典棒球帽款式，软顶帽身，弧形帽檐，饰有 Tesla “T” 标。100% 纯棉制造。有黑色、红色和白色三种颜色可选。</p>',
  '1462061-00-A_0.jpg',
  '1462061-00-A_2.jpg',
  '{p1:"1462062-00-A_0.jpg",p2:"1462062-00-A_2.jpg",p3:"1462063-00-A_0.jpg",p4:"1462063-00-A_2.jpg",p5:"1462061-00-A_0.jpg",p6:"1462061-00-A_2.jpg"}',4);
/* 还有呢 */
/* ***************************************************** */
/* *******************周边精品详情数据表****************** */
INSERT INTO ts_surround_product VALUES
--   /* 周边精品  类型编号: 1  畅销商品 */
  (NULL,
  1,
  NULL,
  'Roadster 1:18 汽车模型',
  '{p1:"1750"}',
  NULL,
  NULL,
  NULL,
  '<p>Roadster 2.0 等比例压铸汽车模型由 Tesla 官方授权制造，加州设计团队监制，每个细节均精心处理。使用 Roadster 真车 3D CAD 数据打造，等比例还原车辆的每一处细节、曲线和表面。</p>
  <p>1:18 Roadster 汽车模型的特点：</p>
  <ul>
    <li>180 多个金属和塑料零件</li>
    <li>精致内饰</li>
    <li>压铸金属材质</li>
    <li>所有车门和行李箱均可打开</li>
    <li>敞篷车顶</li>
    <li>橡胶轮胎</li>
    <li>车轮可转向</li>
    <li>行李箱垫和绒面内饰</li>
    <li>织物座椅安全带</li>
  </ul>
  <p>产品详情：</p>
  <ul>
    <li>尺寸：长 252 毫米 x 宽 109.5 毫米 x 高 70 毫米</li>
    <li>重量：0.875 千克</li>
  </ul>
  <p>Tesla 独家销售。 </p>
  <p><em>警告：窒息危险。内含小零件。不适合 14 岁以下儿童。</em></p>',
  'MTUyNDAwMS0wMC1BXzA=.jpg',
  'MTE1MjQwMDEtMDAtQV83.jpg',
  '{p1:"MTUyNDAwMS0wMC1BXzA=.jpg",p2:"MTUyNDAwMS0wMC1BXzE=.jpg",p3:"MTUyNDAwMS0wMC1BXzQ=.jpg",p4:"MTUyNDAwMS0wMC1BXzY=.jpg"}',5);
/* ***************************************************** */







