/* ************************路由基础配置*************************** */
//创建路由器
const express = require('express');
const r = express.Router();
//引入连接池模块
const pool = require('../pool.js');//引入上一级目录下的pool.js
// console.log(pool);//已测试,引入OK
/* ************************路由基础配置*************************** */

/* *************************接口配置****************************** */
/* 店铺活动 */
r.get("/list_activity",(req,res) => {
  /* 获取充电产品家族类型 */
  let sql1 = "SELECT id,family_name FROM ts_activity_family ";
  let fs = '';
  pool.query(sql1,(err,result) => {
    if(err) throw err;
    fs = result;
    // console.log(fs);
  });
  let sql3 = "SELECT class,pid,family_id,price,title,pic,pic2,mian FROM ts_charge_product";
  pool.query(sql3,(err,result) => {
    if(err) throw err;
    res.send({result: result,fs: fs});
  });
});
/* 店铺活动 */
/* 充电产品 */
r.get("/list_charge",(req,res) => {
  /* 获取充电产品家族类型 */
  let sql1 = "SELECT id,family_name FROM ts_charge_family ";
  let fs = '';
  pool.query(sql1,(err,result) => {
    if(err) throw err;
    fs = result;
    // console.log(fs);
  });
  let sql3 = "SELECT class,pid,family_id,price,title,pic,pic2,mian FROM ts_charge_product";
  pool.query(sql3,(err,result) => {
    if(err) throw err;
    res.send({result: result,fs: fs});
  });
});
/* 充电产品 */
/* 优选配件 */
r.get("/list_part",(req,res) => {
  /* 获取充电产品家族类型 */
  let sql1 = "SELECT id,family_name FROM ts_part_product ";
  let fs = '';
  pool.query(sql1,(err,result) => {
    if(err) throw err;
    fs = result;
    // console.log(fs);
  });
  let sql3 = "SELECT class,pid,family_id,price,title,pic,pic2,mian FROM ts_part_product";
  pool.query(sql3,(err,result) => {
    if(err) throw err;
    res.send({result: result,fs: fs});
  });
});
/* 优选配件 */
/* 精选服饰 */
r.get("/list_dress",(req,res) => {
  /* 获取充电产品家族类型 */
  let sql1 = "SELECT id,family_name FROM ts_part_product ";
  let fs = '';
  pool.query(sql1,(err,result) => {
    if(err) throw err;
    fs = result;
    // console.log(fs);
  });
  let sql3 = "SELECT class,pid,family_id,price,title,pic,pic2,mian FROM ts_dress_product";
  pool.query(sql3,(err,result) => {
    if(err) throw err;
    res.send({result: result,fs: fs});
  });
});
/* 精选服饰 */
/* 周边精品 */
r.get("/list_surround",(req,res) => {
  /* 获取充电产品家族类型 */
  let sql1 = "SELECT id,family_name FROM ts_part_product ";
  let fs = '';
  pool.query(sql1,(err,result) => {
    if(err) throw err;
    fs = result;
    // console.log(fs);
  });
  let sql3 = "SELECT class,pid,family_id,price,title,pic,pic2,mian FROM ts_surround_product";
  pool.query(sql3,(err,result) => {
    if(err) throw err;
    res.send({result: result,fs: fs});
  });
});
/* 周边精品 */
/* *************************接口配置****************************** */

/* *************************路由导出****************************** */
//导出路由器模块
module.exports=r;	
/* *************************路由导出****************************** */
