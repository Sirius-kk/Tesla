/* ************************路由基础配置*************************** */
//创建路由器
const express = require('express');
const r = express.Router();
//引入连接池模块
const pool = require('../pool.js');//引入上一级目录下的pool.js
// console.log(pool);//已测试,引入OK
/* ************************路由基础配置*************************** */

/* ***************************************************接口配置****************************************** */
/* 主頁輪播圖 */
r.get("/carsou",(req,res)=>{
  let sql = "SELECT title,pic,pid,mian FROM ts_part_product";
  pool.query(sql,(err,result) => {
    if(err) throw err; 
    res.send({code: 1,result: result});
  });
});
/* 主頁輪播圖 */

/* 店铺活动 */
r.get("/list_activity", (req, res) => {
  let fnames = '';
  let product = '';
  function familyType() {
    // /* 获取店铺活动家族类型 */
    let sql = "SELECT id,family_name FROM ts_activity_family";
    let fnames = '';
    pool.query(sql, (err, result) => {
      if (err) throw err;
      fnames = result;
      // console.log(fnames);
      Product(fnames);
    });
    // /* 获取店铺活动家族类型 */
  }
  function Product(fnames) {
    // /* 获取商品 */
    let sql = "SELECT class,pid,family_id,price,title,pic,pic2,mian FROM ts_activity_product";
    pool.query(sql, (err, result) => {
      if (err) throw err;
      product = result;
      // console.log(product);
      res.send({ product: product, fnames: fnames });
    });
    // /* 获取商品 */
  }
  familyType();
  /* **********************************通过回调解决一下 */
});
/* 店铺活动 */

/* 充电产品 */
r.get("/list_charge", (req, res) => {
  let fnames = '';
  let product = '';
  function familyType() {
    // /* 获取充电产品家族类型 */
    let sql1 = "SELECT id,family_name FROM ts_charge_family";
    pool.query(sql1, (err, result) => {
      if (err) throw err;
      fnames = result;
      // console.log(fnames);// √
      Product(fnames);
    });
    // /* 获取充电产品家族不同类型 */
  }
  function Product(fnames) {
    // /* 获取商品 */
    let sql3 = "SELECT class,pid,family_id,price,title,pic,pic2,mian FROM ts_charge_product";
    pool.query(sql3, (err, result) => {
      if (err) throw err;
      product = result;
      // console.log(product);
      res.send({ fnames: fnames, product: product });
    });
    // /* 获取商品 */
  }
  familyType();
  /* **********************************通过回调解决一下 */
});
/* 充电产品 */

/* 优选配件 */
r.get("/list_part", (req, res) => {
  let fnames = '';
  let title2 = '';
  let product = '';
  function familyType() {
    // /* 获取充电产品家族类型 */
    let sql1 = "SELECT id,family_name FROM ts_part_family";
    pool.query(sql1, (err, result) => {
      if (err) throw err;
      fnames = result;
      // console.log(fnames);
      productTitle2(fnames);
    });
    // /* 获取充电产品家族不同类型 */
  }
  function productTitle2(fnames) {
    // /* 获取二级标题 */
    let sql2 = "SELECT DISTINCT class FROM ts_part_product ";
    pool.query(sql2, (err, result) => {
      if (err) throw err;
      title2 = result;
      // console.log(title2);
      Product(fnames,title2);
    });
  }
  function Product(fnames,title2) {
    // /* 获取商品 */
    let sql3 = "SELECT class,pid,family_id,price,title,pic,pic2,mian FROM ts_part_product";
    pool.query(sql3, (err, result) => {
      if (err) throw err;
      product = result;
      // console.log(product);
      res.send({ title2: title2, fnames: fnames, product: product });
    });
    // /* 获取商品 */
  }
  familyType();
  /* **********************************通过回调解决一下 */
});
/* 优选配件 */

/* 精选服饰 */
r.get("/list_dress", (req, res) => {
  let fnames = '';
  let title2 = '';
  let product = '';
  function familyType() {
    // /* 获取充电产品家族类型 */
    let sql1 = "SELECT id,family_name FROM ts_dress_family";
    pool.query(sql1, (err, result) => {
      if (err) throw err;
      fnames = result;
      // console.log(fnames);
      productTitle2(fnames);
    });
    // /* 获取充电产品家族不同类型 */
  }
  function productTitle2(fnames) {
    // /* 获取二级标题 */
    let sql2 = "SELECT DISTINCT class FROM ts_dress_product";
    pool.query(sql2, (err, result) => {
      if (err) throw err;
      title2 = result;
      // console.log(title2);
      Product(fnames,title2);
    });
  }
  function Product(fnames,title2) {
    // /* 获取商品 */
    let sql3 = "SELECT class,pid,family_id,price,title,pic,pic2,mian FROM ts_dress_product";
    pool.query(sql3, (err, result) => {
      if (err) throw err;
      product = result;
      // console.log(product);
      res.send({ title2: title2, fnames: fnames, product: product });
    });
    // /* 获取商品 */
  }
  familyType();
  /* **********************************通过回调解决一下 */
});
/* 精选服饰 */

/* 周边精品 */
r.get("/list_surround", (req, res) => {
  let fnames = '';
  let product = '';
  function familyType() {
    // /* 获取周邊精品家族类型 */
    let sql1 = "SELECT id,family_name FROM ts_surround_family";
    pool.query(sql1, (err, result) => {
      if (err) throw err;
      fnames = result;
      // console.log(fnames);// √
      Product(fnames);
    });
    // /* 获取周邊精品家族类型 */
  }
  function Product(fnames) {
    // /* 获取商品 */
    let sql3 = "SELECT class,pid,family_id,price,title,pic,pic2,mian FROM ts_surround_product";
    pool.query(sql3, (err, result) => {
      if (err) throw err;
      product = result;
      // console.log(product);
      res.send({ fnames: fnames, product: product });
    });
    // /* 获取商品 */
  }
  familyType();
  /* **********************************通过回调解决一下 */
});
/* 周边精品 */

/* 商品詳情 */  /* 店鋪活動 */
r.get("/detail_product",(req,res) => {
  console.log(req.query);
  /* 获取地址栏中的pid和tableName */
  // let pid = 1;/* √ */
  let tableName = req.query.tableName;
  let pid = req.query.pid;
  switch(tableName) {
    case '1':
      tableName = 'ts_activity_product';
      break;
    case '2':
      tableName = 'ts_charge_product';
      break;
    case '3':
      tableName = 'ts_part_product';
      break;
    case '4':
      tableName = 'ts_dress_product';
      break;
    case '5':
      tableName = 'ts_surround_product';
      break;
  };
  console.log(pid,tableName);
  /* 查询语句 */
  let sql = "SELECT pid,class,title,price,tp,color,size,ds,pic_detais FROM "+ tableName +" WHERE pid=?";
  pool.query(sql,[pid],(err,result) => {
    // pool.query(sql,[tableName,pid],(err,res) => {
    if(err) throw err;
    console.log(result);
    res.send({code: 1,result: result});/* res.send  */
  });
  /*  */
  // res.send({code: 1}); √
});
/* 商品詳情 */

/* 主页模糊查询 */  /* √√√ */
r.get("/select",(req,res) => {
  // 获取地址栏中的模糊条件的关键字
  let key = req.query.key;
  /* 拿到的值要先在前台用 encodeURL(值) 进行编码 */
  console.log(key);
  /* 5个查询语句(同时查询5个数据表) */
  let sql1 = "SELECT class,pid,family_id,price,title,pic,pic2,mian FROM ts_activity_product WHERE title LIKE ?";
  let sql2 = "SELECT class,pid,family_id,price,title,pic,pic2,mian FROM ts_charge_product WHERE title LIKE ?";
  let sql3 = "SELECT class,pid,family_id,price,title,pic,pic2,mian FROM ts_part_product WHERE title LIKE ?";
  let sql4 = "SELECT class,pid,family_id,price,title,pic,pic2,mian FROM ts_dress_product WHERE title LIKE ?";
  let sql5 = "SELECT class,pid,family_id,price,title,pic,pic2,mian FROM ts_surround_product WHERE title LIKE ?";
  let product = [];
  function Product1() {// 店铺活动
    // /* 获取商品 */
    pool.query(sql1,[key],(err, result) => {
      if (err) throw err;
      console.log(result);
      if(result.length != 0){
        product.push(result);
      }
      // console.log(product);
    });
    // /* 获取商品 */
    Product2(product);
  }
  function Product2(product) {// 充电产品
    // /* 获取商品 */
    pool.query(sql2,[key],(err, result) => {
      if (err) throw err;
      console.log(result);
      if(result.length != 0){
        product.push(result);
      }
      // console.log(product);
      Product3(product);
    });
    // /* 获取商品 */
  }
  function Product3(product) {// 优选配件
    // /* 获取商品 */
    pool.query(sql3,[key],(err, result) => {
      if (err) throw err;
      console.log(result);
      if(result.length != 0){
        product.push(result);
      }
      // console.log(product);
      Product4(product);
    });
    // /* 获取商品 */
  }
  function Product4(product) {// 精选服饰
    // /* 获取商品 */
    pool.query(sql4,[key],(err, result) => {
      if (err) throw err;
      console.log(result);
      if(result.length != 0){
        product.push(result);
      }
      // console.log(product);
      Product5(product);
      // console.log(product);
    });
    // /* 获取商品 */
  }
  function Product5(product) {// 精选服饰
    // /* 获取商品 */
    pool.query(sql5,[key],(err, result) => {
      if (err) throw err;
      console.log(result);
      if(result.length != 0){
        product.push(result);
      }
      if(product.length != 0) {
        res.send({product: product,code: 1});
        console.log(product);
      } else {
        res.send({product: product,code: 0});
      }
    });
    // /* 获取商品 */
  }
  Product1();
  // res.send({code :1});
});
/* 主页模糊查询 */

/* ****************************购物车********************** */
r.get("/shopping_car",(req,res) => {  /* √√√ */
  /* 获取查询字符串 */
  let pid = req.query.pid;
  let tableName = req.query.mian;
  console.log(req.query);
  switch(tableName) {
    case '1':
      tableName = 'ts_activity_product';
      break;
    case '2':
      tableName = 'ts_charge_product';
      break;
    case '3':
      tableName = 'ts_part_product';
      break;
    case '4':
      tableName = 'ts_dress_product';
      break;
    case '5':
      tableName = 'ts_surround_product';
      break;
  };
  console.log(tableName);
  /* 查询语句 */
  let sql = "SELECT pid,title,price,pic FROM " + tableName + " WHERE pid=?";
  /* 执行sql命令查询 */
  pool.query(sql, [pid], (err, result) => {
    if(err) throw err; 
    res.send({result: result});
  });
});
/* ****************************购物车********************** */

/* ***************************************************接口配置****************************************** */

/* *************************路由导出****************************** */
//导出路由器模块
module.exports = r;
/* *************************路由导出****************************** */
