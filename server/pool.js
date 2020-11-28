// 引入mysql模块
const mysql = require("mysql");
// 创建连接池对象
const pool = mysql.createPool({
  // 数据库地址
  host: "127.0.0.1",
  // 数据库端口号
  port: 3306,
  // 数据库用户名
  user: "root",
  // 数据库用户密码
  password: "",
  // 数据库名称
  database: "tesla",
  // 编码方式
  charset: "utf8",
  // 最大连接数
  connectionLimit: 20
});
//导出对象，                        /* 在各个路由器中进行引入 */
module.exports = pool;