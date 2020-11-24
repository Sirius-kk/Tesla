<template>
  <div>
    <div class="header">
      <my-header-index></my-header-index>
    </div>
    <!-- 第一部分 -->
    <div class="div_1">
      <img class="img_1" src="../assets/imgs/wall-connector.jpg" alt="" />
      <div @click="charge">
        <P>
          <!--  -->
          <span> 点击购买 家庭充电包服务 </span>
          <!--  -->
        </P>
        <router-link :to="`/detail/${1}&${'ts_charge_product'}`"
          ><p>随时在家为特斯拉充电</p></router-link
        >
      </div>
    </div>
    <!-- 第二部分 -->
    <div class="div_2">
      <h3>畅销商品</h3>
      <!-- <a href="javascropt:;"> -->
      <span> <router-link to="/pro_slist"> 查看全部 </router-link></span>
      <!-- </a> -->
    </div>
    <!-- 第三部分 -->
    <div class="div_3">
      <!-- 左右侧箭头 -->
      <div @click="prev" class="prev a1">
        <img src="../assets/imgs/prev.png" alt="" />
      </div>
      <div @click="next" class="next a1">
        <img src="../assets/imgs/next.png" alt="" />
      </div>
      <!-- 轮播区域 -->
      <div class="bigbox">
        <div class="box">
          <ul :style="{ width: ulwidth + 'px', left: '-' + left1 + 'px' }">
            <li
              v-for="(item, i) of carsou"
              :key="i"
              class="a1"
              :style="{ width: liwidth + 'px' }"
            >
              <router-link :to="`/detail/${1}&${'ts_charge_product'}`">
                <img :src="item.pic" alt="" />
                <p style="margin-top: 20px; font-size: 18px">
                  {{ item.title }}
                </p>
              </router-link>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <!-- 第四部分 -->
    <div class="div_4">
      <div>
        <router-link to="/pro_plist">
          <img class="img_1 a1" src="../assets/imgs/model3@2x.jpg" alt="" />
          <p>Model 3 配件</p>
        </router-link>
      </div>
      <div style="padding-right: 24px">
        <router-link to="/pro_plist">
          <img class="img_1 a1" src="../assets/imgs/modelx.jpg" alt="" />
          <p>Model X 配件</p>
        </router-link>
      </div>
    </div>
    <!-- 第五部分 -->
    <div class="div_5">
      <router-link to="/pro_plist">
        <div>
          <img class="img_1 a1" src="../assets/imgs/models.jpg" alt="" />
        </div>
        <p>Model S 配件</p>
      </router-link>
    </div>
    <!-- 第六部分 -->
    <div class="div_6">
      <!-- 左侧部分 -->
      <div class="div_6-1">
        <router-link to="/pro_clist">
          <img
            style="width: 100%; height: 100%"
            class="a1"
            src="../assets/imgs/charging-gen3.jpg"
            alt=""
          />
          <p>充电产品</p>
        </router-link>
      </div>
      <!-- 右侧部分 -->
      <div class="div_6-2">
        <div class="div_6-2-1">
          <router-link to="/pro_dlist">
            <img class="img_1 a1" src="../assets/imgs/mens.jpg" alt="" />
            <p style="color: #fff">男装</p>
          </router-link>
        </div>

        <div class="div_6-2-2">
          <router-link to="/pro_dlist">
            <img class="img_1 a1" src="../assets/imgs/womens.jpg" alt="" />
            <p>女装</p>
          </router-link>
        </div>
      </div>
    </div>
  </div>
</template>
<style  scoped>
.header {
  z-index: 5;
}
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
  cursor: pointer;
}
.div_1 div p:first-child span {
  font-size: 17px;
  font-weight: 700;
  color: white;
  margin-bottom: 25px;
  display: inline-block;
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
.div_2 span {
  position: absolute;
  right: 30px;
  top: 21px;
  font-size: 12px;
  color: #666666;
  cursor: pointer;
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
  background-color: #f8f8f8;
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
.box {
  position: relative;
  width: 100%;
  height: 100%;
  overflow: hidden;
}
.box ul {
  height: 100%;
  position: absolute;
  transition: left 1s linear;
}
.box ul li {
  height: 100%;
  background-color: #f8f8f8;
  margin-left: 20px;
  float: left;
  text-align: center;
  overflow: hidden;
}
.box ul li img {
  height: 541px;
}
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
  box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.2), 0 1px 10px 0 rgba(0, 0, 0, 0.19);
  transition: all 0.5 linear;
}
img:hover {
  cursor: pointer;
}
</style>
<script>
export default {
  data() {
    return {
      liwidth: 0,
      ulwidth: 0,
      aa: "",
      carsou: [],
      left1: 0,
    };
  },
  methods: {
    prev() {
      if (this.left1 > 0) {
        this.left1 -= this.liwidth + 20;
      }
    },
    next() {
      this.left1 += this.liwidth + 20;
    },
    charge() {
      this.$router.push(`/detail/${1}&${"ts_charge_product"}`);
    }
  },
  mounted() {
    this.axios.get("/product/carsou").then((res) => {
      console.log(res.data);
      let data = res.data.result;
      data.forEach((item) => {
        if (item.pic != null) {
          item.pic = require(`../assets/img/pro_list/` + item.pic);
        }
        this.carsou.push(item);
      });
      //  定义轮播图函数
      let boxEle = document.getElementsByClassName("box")[0];
      let liEle = document.getElementsByClassName("li")[0];
      this.liwidth = (boxEle.offsetWidth - 80) / 3;
      this.ulwidth = this.liwidth * this.carsou.length;
      setInterval(() => {
        let a = this.liwidth + 20;
        this.left1 += a;
        if (this.left1 > a * (this.carsou.length - 4)) {
          this.left1 = 0;
        }
      }, 5000);
    });
  },
};
</script>