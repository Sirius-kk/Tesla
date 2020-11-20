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
  // res.send({code: 1,result: "获取成功"});
  // 1. 查询商品
  let sql = "SELECT * FROM ts_activity_product";
  pool.query(sql,(err,result) => {
    if(err) throw err;
    res.send({code: 1,result: result});
  });
  // 2.
});
/* 充电产品 */
r.get("/list_charge_detail",(req,res) => {
  let sql1 = "SELECT id,family_name FROM ts_charge_family ";
  let fs = '';
  pool.query(sql1,(err,result) => {
    if(err) throw err;
    fs = result;
    console.log(fs);
  });
  let sql3 = "SELECT pid,family_id,price,title,pic,pic2,mian FROM ts_charge_product";
  pool.query(sql3,(err,result) => {
    if(err) throw err;
    res.send({result: result,fs: fs});
  });
});
/* 优选配件 */
/* 精选服饰 */
/* 周边精品 */
/* *************************接口配置****************************** */

/* *************************路由导出****************************** */
//导出路由器模块
module.exports=r;	
/* *************************路由导出****************************** */
