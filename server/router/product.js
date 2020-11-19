/* ************************路由基础配置*************************** */
//创建路由器
const express = require('express');
const r = express.Router();
//引入连接池模块
const pool = require('../pool.js');//引入上一级目录下的pool.js
// console.log(pool);//已测试,引入OK
/* ************************路由基础配置*************************** */

/* *************************接口配置****************************** */
r.get("/list_activity",(req,res) => {
  console.log("132456");
  // res.send({code: 1,result: "获取成功"});
  // 1. 查询商品
  let sql = "SELECT * FROM ts_activity_product";
  pool.query(sql,(err,result) => {
    if(err) throw err;
    console.log(result);
    res.send({code: 1,result: result});
  });
  // 2.
});
/* *************************接口配置****************************** */

/* *************************路由导出****************************** */
//导出路由器模块
module.exports=r;	
/* *************************路由导出****************************** */
