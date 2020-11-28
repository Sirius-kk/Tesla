/* ************************路由基础配置*************************** */
//创建路由器
const express = require('express');
const r = express.Router();
//引入连接池模块
const pool = require('../pool.js');//引入上一级目录下的pool.js
// console.log(pool); // 已测试引入OK 
/* ************************路由基础配置*************************** */

/* **************************接口配置***************************** */
/* ***************************用户注册 */   /* 用戶名還是手機號和郵箱?????? */
/* 用户名失去焦点是验证用户名 */ 
r.get("/reguname",(req,res)=>{
    let uname=req.query.uname;
    let sql=`SELECT COUNT(uid) AS count FROM ts_user WHERE uname=?`;
    pool.query(sql,[uname],(err,result)=>{
      if (err)throw err;
      if (result[0].count == 0){
        res.send({code:0})
      }else
      {res.send({code:1})}
    });
  });
  /* 用户注册 */
  r.post("/reglogin",(req,res)=>{
    let username=req.body.username;
    let password=req.body.password;
    let sql='INSERT INTO ts_user(uname,upwd) VALUES(?,MD5(?))'
    pool.query(sql,[username,password],(err,result)=>{
      if(err) throw err;
     if(result.affectedRows>0){
       res.send({code:1});
     }else{
       res.send({code:0});
     };
    });
  });
/* ***************************用户注册 */
/* ***************************用户登录 */
r.post("/login",(req,res)=>{
    let username=req.body.username;
    let password=req.body.password;
    let sql='SELECT uid FROM ts_user WHERE uname=? AND upwd=MD5(?)';
    pool.query(sql,[username,password],(err,result)=>{
      if (err) throw err;
        if(result.length>0){
          res.send({code:1,result:result});
        }else{
          res.send({code:0});
        };
    });
  });
/* ***************************用户登录 */
/* **************************接口配置***************************** */

/* *************************路由导出****************************** */
//导出路由器模块
module.exports=r;	
/* *************************路由导出****************************** */