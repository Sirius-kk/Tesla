/* ************************路由基础配置*************************** */
//创建路由器
const express = require('express');
const r = express.Router();
//引入连接池模块
const pool = require('../pool.js');//引入上一级目录下的pool.js
// console.log(pool);//已测试,引入OK
/* ************************路由基础配置*************************** */

/* ***************************************************接口配置****************************************** */
/* 店铺活动 */
r.get("/list_activity",(req,res) => {
    /* 获取充电产品家族类型 */
    let sql1 = "SELECT id,family_name FROM ts_activity_family";
    let fnames = '';
    pool.query(sql1,(err,result) => {
      if(err) throw err;
      fnames = result;
      // console.log(fnames);
    });
    /* 获取商品 */
    let sql3 = "SELECT class,pid,family_id,price,title,pic,pic2,mian FROM ts_activity_product";
    pool.query(sql3,(err,result) => {
      if(err) throw err;
      if(!result.length){
        res.send({code: 0});
      } else {
        res.send({result: result,fnames: fnames});
      }
    });
  });
/* 店铺活动 */
/* 充电产品 */
r.get("/list_charge",(req,res) => {
  /* 获取充电产品家族类型 */
  let sql1 = "SELECT id,family_name FROM ts_charge_family ";
  let fnames = [];
  pool.query(sql1,(err,result) => {
    if(err) throw err;
    fnames = result;
    // console.log(fnames.length);// √
  });
  /* 获取商品 */
  let sql3 = "SELECT class,pid,family_id,price,title,pic,pic2,mian FROM ts_charge_product";
  pool.query(sql3,(err,result) => {
    if(err) throw err;
    if(!result.length){
      res.send({code: 0});
    } else {
      res.send({result: result,fnames: fnames});
    }
  });
});
/* 充电产品 */
r.get("/list_charge_pro_type",(req,res) => {
  let fname = req.query.fname;
  let pro_show = [];
  for(let i of fname){
    let sql = "SELECT class,pid,family_id,price,title,pic,pic2,mian FROM ts_activity_product WHERE family_id=?";
    pool.query(sql,[i],(err,result) => {
      if(err) throw err;
      let pro = result;
      pro_show.push(pro);
      console.log(pro_show);
    })
  };
  res.send({pro_show: pro_show});
})
/* 充电产品 */

/*  */
/* 优选配件 */
r.get("/list_part",(req,res) => {
  /* 获取充电产品家族类型 */
  let sql1 = "SELECT id,family_name FROM ts_part_family ";
  let fnames = '';
  pool.query(sql1,(err,result) => {
    if(err) throw err;
    fnames = result;
    // console.log(fnames);
  });
  /* 获取充电产品家族不同类型 */
  let sql2 = "SELECT DISTINCT class FROM ts_part_product ";
  let title2 = '';
  pool.query(sql2,(err,result) => {
    if(err) throw err;
    title2 = result;
    // console.log(title2);
  });
  /* 获取商品 */
  let sql3 = "SELECT class,pid,family_id,price,title,pic,pic2,mian FROM ts_part_product";
  pool.query(sql3,(err,result) => {
    if(err) throw err;
    if(!result.length){
      res.send({code: 0});
    } else {
      res.send({result: result,title2: title2,fnames: fnames});
    } 
  });
});
/* 优选配件 */
/* 精选服饰 */
r.get("/list_dress",(req,res) => {
  /* 获取充电产品家族类型 */
  let sql1 = "SELECT id,family_name FROM ts_part_family ";
  let fnames = '';
  pool.query(sql1,(err,result) => {
    if(err) throw err;
    fnames = result;
    // console.log(fnames);
  });
  /* 获取商品 */
  let sql3 = "SELECT class,pid,family_id,price,title,pic,pic2,mian FROM ts_dress_product";
  pool.query(sql3,(err,result) => {
    if(err) throw err;
    if(!result.length){
      res.send({code: 0});
    } else {
      res.send({result: result,fnames: fnames});
    } 
  });
});
/* 精选服饰 */
/* 周边精品 */
r.get("/list_surround",(req,res) => {
  /* 获取充电产品家族类型 */
  let sql1 = "SELECT id,family_name FROM ts_part_family ";
  let fnames = '';
  pool.query(sql1,(err,result) => {
    if(err) throw err;
    fnames = result;
    // console.log(fnames);
  });
  /* 获取商品 */
  let sql3 = "SELECT class,pid,family_id,price,title,pic,pic2,mian FROM ts_surround_product";
  pool.query(sql3,(err,result) => {
    if(err) throw err;
    if(!result.length){
      res.send({code: 0});
    } else {
      res.send({result: result,fnames: fnames});
    } 
  });
});
/* 周边精品 */
/* 商品详情获取 */
r.get("/detail_product",(req,res) => {
  // 获取地址栏中客户端传递过来的pid，该参数表示的分类的ID
  let pid = req.query.pid;
  let sql = "SELECT pid,family_id,class,title,price,tp,color,size,ds,pic_detais,mian WHERE pid=?";
  pool.query(sql,[pid],(err,result) => {
    if(err) throw err;
    if(!result.length){
      res.send({code: 0});
    } else {
      res.send({code: 1,result: result});
    }  
  });
});
/* 商品详情获取 */
/* ***************************************************接口配置****************************************** */

/* *************************路由导出****************************** */
//导出路由器模块
module.exports=r;	
/* *************************路由导出****************************** */
