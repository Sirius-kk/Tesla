<template>
  <div>
    <div class="header">
    <my-header></my-header>
    </div>
    <!-- 第一部分 -->
    <div class="div_1">
      <img class="img_1" src="../assets/imgs/wall-connector.jpg" alt="" />
      <div>
        <P>点击购买 家庭充电包服务</P>
        <P>随时在家为特斯拉充电</P>
      </div>
    </div>
    <!-- 第二部分 -->
    <div class="div_2">
      <h3>畅销商品</h3>
      <a href="javascropt:;">查看全部</a>
    </div>
    <!-- 第三部分 -->
    <div class="div_3">
      <!-- 左右侧箭头 -->
      <div class="prev a1">
        <img src="../assets/imgs/prev.png" alt="" />
      </div>
      <div class="next a1">
        <img src="../assets/imgs/next.png" alt="" />
      </div>
      <!-- 轮播区域 -->
      <div class="bigbox">
        <div class="box">
          <ul >
            <li  v-for="(item,i) of carsou" :key=i class="a1"  >
              <img :src="item.src" alt="">
              <p>{{item.title}}</p>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <!-- 第四部分 -->
    <div class="div_4">
      <div>
        <img class="img_1 a1" src="../assets/imgs/model3@2x.jpg" alt="" />
        <p>Model 3 配件</p>
      </div>
      <div style="padding-right: 24px">
        <img class="img_1 a1" src="../assets/imgs/modelx.jpg" alt="" />
        <p>Model X 配件</p>
      </div>
    </div>
    <!-- 第五部分 -->
    <div class="div_5">
      <div><img class="img_1 a1" src="../assets/imgs/models.jpg" alt="" /></div>
      <p>Model S 配件</p>
    </div>
    <!-- 第六部分 -->
    <div class="div_6">
      <!-- 左侧部分 -->
      <div class="div_6-1">
        <img
          style="width: 100%; height: 100%"
          class="a1"
          src="../assets/imgs/charging-gen3.jpg"
          alt=""
        />
        <p>充电产品</p>
      </div>
      <!-- 右侧部分 -->
      <div class="div_6-2">
        <div class="div_6-2-1">
          <img class="img_1 a1" src="../assets/imgs/mens.jpg" alt="" />
          <p style="color: #fff">男装</p>
        </div>
        <div class="div_6-2-2">
          <img class="img_1 a1" src="../assets/imgs/womens.jpg" alt="" />
          <p>女装</p>
        </div>
      </div>
    </div>
  </div>
</template>
<style  scoped>
.header{z-index: 5;}
.div_1 {
  position: relative;
}
.img_1 {
  width: 100%;
  height: 100%;
}
.div_1 div {
  position: absolute;
  top: 27%;
  left: 40%;
  text-align: center;
}
.div_1 div p:first-child {
  font-size: 17px;
  font-weight: 700;
  color: white;
  margin-bottom: 25px;
}
.div_1 div p:last-child {
  font-size: 26px;
  font-weight: 700;
  color: white;
}
.div_2 {
  padding: 20px;
  font-weight: 600;
  position: relative;
}
.div_2 a {
  position: absolute;
  right: 30px;
  top: 21px;
  font-size: 12px;
  color: #666666;
}
.div_3 {
  width: 100%;
  height: 637px;
 
  position: relative;
}
.prev,
.next {
  width: 5%;
  height: 100%;
  position: absolute;
  background-color:#f8f8f8;
}
.prev img,
.next img {
  margin: 220px 0 0 20px;
}
.prev {
  left: 0;
}
.next {
  right: 0;
}
.bigbox {
  width: 90%;
  position: absolute;
  left: 5%;
  right: 5%;
  height: 100%;
}
.box{
  position: relative;
  width: 100%;
  height: 100%;
  overflow: hidden;
}
.box ul {
  width: 1000px;
  height: 100%;
  position: absolute;
  left: 0;
  transition: left 1s linear 
}
.box ul li {
  height: 100%;
  background-color: #f8f8f8;
  margin-left: 20px;
  float: left;
  width: 100px;
  text-align: center;
}
.box ul li>img{width: 100%;height: 541px;}
.div_4 {
  width: 100%;
  display: flex;
}
.div_4 div {
  width: 915px;
  height: 450px;
  padding-top: 24px;
  padding-left: 24px;
  position: relative;
}
.div_4 div p {
  position: absolute;
  right: 40%;
  top: 50%;
  font-size: 24px;
  color: white;
}
.div_5 {
  width: 100%;
  position: relative;
}
.div_5 p {
  position: absolute;
  right: 15%;
  top: 50%;
  font-size: 24px;
  color: #000;
}
.div_5 div {
  padding-right: 24px;
  padding-left: 24px;
  padding-top: 24px;
}
.div_6 {
  height: 944px;
  display: flex;
  margin-bottom: 60px;
}
.div_6 > div {
  padding-top: 24px;
  padding-left: 24px;
  width: 50%;
}
.div_6-1 {
  position: relative;
  height: 920px;
}
.div_6-1 p {
  position: absolute;
  right: 46%;
  top: 21%;
  font-size: 24px;
  color: #000;
}
.div_6-2 {
  padding-right: 24px;
}
.div_6-2 div {
  position: relative;
  width: 100%;
  height: 450px;
}
.div_6-2 div p {
  position: absolute;
  top: 40%;
  left: 50%;
  font-size: 24px;
  color: #000;
}
.div_6-2-2 {
  padding-top: 20px;
}
.a1:hover {
  box-shadow: 0px 0px 10px #888888;
  transition: all 0.5 linear 
}
img:hover {
  cursor: pointer;
}
</style>
<script>
export default {
  data() {
    return {
      carsou:[
        {src:require("../assets/imgs/7528845-00-A--mens-t-embroidery-tee-grey.jpg"),title:"男装 T标 短袖T恤"},
        {src:require("../assets/imgs/1133634-00-A.jpg"),title:"Model 3 全天候前备/后备箱地垫"},
        {src:require("../assets/imgs/1103026-00-A.jpg"),title:"Model X 全天候地垫"},
        {src:require("../assets/imgs/7528823-00-A--womens-small-chest-wordmark-tee-white.jpg"),title:"女装 小Tesla Logo 短袖T恤"},
        {src:require("../assets/imgs/1103026-00-A.jpg"),title:"Model S 全天候脚垫套装"},
        {src:require("../assets/imgs/1133009-00-A.jpg"),title:"轮胎修理工具包"},
        {src:require("../assets/imgs/1474952-00-A_0.jpg"),title:"Model S 1:18 汽车模型"}
        ],
    }
  },
  methods: {
    // 轮播图代码
    add() {
     let boxEle=document.getElementsByClassName("box")[0]
     let ulEle=boxEle.children[0]
     let li=ulEle.children
      ulEle.innerHTML+=ulEle.innerHTML
     let widthEle=(boxEle.offsetWidth-80)/3
     ulEle.style.width=widthEle*(li.length+1)+"px"
     for(var item of li){
       item.style.width=widthEle+"px"
     }
      let jump=widthEle+20
      let counent=li.length
       let aa=0;
     setInterval(()=>{
       aa+=jump
       if(aa>=jump*(li.length-3)){aa=0;}
       ulEle.style.left='-'+aa+'px'
      },2000)
    }
    // 轮播图结束
  },
  mounted() {
    this.add();
  },
};
</script>