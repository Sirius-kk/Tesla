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
  let sql = "SELECT title,pic FROM ts_part_product";
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send({code:1});
  })
});
/* 主頁輪播圖 */

/* 店铺活动 */
r.get("/list_activity", (req, res) => {
  let fnames = '';
  let product = '';
  function familyType() {
    // /* 获取店铺活动家族类型 */
    let sql1 = "SELECT id,family_name FROM ts_activity_family";
    let fnames = '';
    pool.query(sql1, (err, result) => {
      if (err) throw err;
      fnames = result;
      // console.log(fnames);
      Product(fnames);
    });
    // /* 获取店铺活动家族类型 */
  }
  function Product(fnames) {
    // /* 获取商品 */
    let sql3 = "SELECT class,pid,family_id,price,title,pic,pic2,mian FROM ts_activity_product";
    pool.query(sql3, (err, result) => {
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
    let sql2 = "SELECT DISTINCT class FROM ts_dress_product ";
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

/* 商品詳情 */
r.get("/detail_product",(req,res) => {
  // 获取地址栏中客户端传递过来的pid，该参数表示的分类的ID
  let pid = req.query.pid;
  let sql = "SELECT pid,class,title,price,tp,color,size,ds,pic_details FROM ts_part_product WHERE pid=?";
  pool.query(sql,[pid],(err,result) => {
    if(err) throw err;
    res.send({code: 1,result: result[0]});
  });
});
/* 商品詳情 */

/* ***************************************************接口配置****************************************** */

/* *************************路由导出****************************** */
//导出路由器模块
module.exports = r;
/* *************************路由导出****************************** */
