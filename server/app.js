/* ****************************服务器基础搭建********************************** */
// 引入express模块
const express = require('express');
// 创建Web服务器
const server = express();

/* ****************************服务器基础搭建********************************** */
/* ******************************静态资源************************************* */
// //托管静态资源
// server.use(express.static('./public'));
/* ******************************静态资源************************************* */
/* ****************************应用模块导入*********************************** */
// 引入body-parser模块                      /* 用来解析req的请求主体中的信息 */
const bodyParser = require("body-parser");
/* 引入md5模块 */                           /* 用来加密用户信息 */
const md5 = require("md5");
// 引入CORS模块
const cors = require("cors");               /* 使用cors解决跨域 */
/* ****************************应用模块导入*********************************** */

/* ****************************引入模块配置*********************************** */
// 将bodyParser作为中间件
server.use(bodyParser.urlencoded({
  extended: false
}));
// // 将cors作为中间件
// server.use(cors({
//   origin: ["http://127.0.0.1:8080", "http://localhost:8080"]
// }));
/* ****************************引入模块配置*********************************** */

/* **************************引入各个模块的路由器***************************** */
//引入用户路由器，并挂载
const userRouter = require('./router/user.js');
// console.log(userRouter); // 已测试,引入OK
server.use('/user', userRouter);//添加前缀并挂载
//引入商品路由器,并挂载
const productRouter = require('./router/product.js');
server.use('/product', productRouter);
// console.log(productRouter); //已测试引入OK
/* **************************引入各个模块的路由器***************************** */

// 指定Web服务器的端口
server.listen(3003);