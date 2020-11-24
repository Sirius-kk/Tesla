/* ************************路由基础配置*************************** */
//创建路由器
const express = require('express');
const r = express.Router();
//引入连接池模块
const pool = require('../pool.js');//引入上一级目录下的pool.js
// console.log(pool); // 已测试引入OK 
/* ************************路由基础配置*************************** */

/* **************************接口配置***************************** */
/* ***************************用户注册 */
r.post("/userReg",(req,res) => {
//获取用户名和密码
  let username = req.body.username;
  let password = req.body.password;
  //查找用户是否存在
  let sql = 'SELECT uid FROM ts_user WHERE username=?';
  pool.query(sql, [username], (error, result) => {
    if (error) throw error;
    //如果用户不存在,则插入记录
    if (result.length == 0) {
      sql = 'INSERT INTO ts_user(username,password) VALUES(?,MD5(?))';
      pool.query(sql, [username, password], (error, result) => {
        if (error) throw error;
        res.send({code: 1 });
      })
    } else { //否则产生合理的错误提示
      res.send({code: 0 });
    }
  })
});
/* ***************************用户注册 */
/* ***************************用户登录 */
r.post("/userLog",(req,res) => {
  //获取用户名和密码
  let username = req.body.username;
  let password = req.body.password;
  //以用户名和密码为条件进行查找
  let sql = 'SELECT uid,uname,phone,email,avatar,gender FROM ts_user WHERE username=? AND password=MD5(?)';
  pool.query(sql, [username, password], (error, result) => {
    if (error) throw error;
    if (result.length == 0) {
      res.send({ code: 0 });
    } else {
      res.send({code: 1, userInfo: result[0]});
    }
  });
});
/* ***************************用户登录 */
/* **************************接口配置***************************** */

/* *************************路由导出****************************** */
//导出路由器模块
module.exports=r;	
/* *************************路由导出****************************** */