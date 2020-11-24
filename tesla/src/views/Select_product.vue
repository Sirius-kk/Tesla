<template>
  <div>
    <my-header-list></my-header-list>
    <!-- 页面开始 -->
    <!-- 一级标题+容器开始 -->
    <div class="container">
      <div class="t1">{{ title }}</div>
      <!-- 二级标题+容器开始 -->
      <!-- <div v-for="(item1, index1) of title2" :key="index1"> -->
      <div v-if="img_sorry" class="img_s">
        <img src="../assets/imgs/u=1080315010,2709859418&fm=26&gp=0.jpg" alt="">
      </div>
      <div>
        <!-- <div class="t2">{{ item1.family_name }}</div> -->
        <!-- 商品块开始 -->
        <!-- <ul class="pro_all" @mouseover="ima_blo" @mouseleave="ima_non"> -->
        <ul class="pro_all">
          <!-- 单个商品开始 -->
          <li v-for="(item, index) of pro" :key="index" class="product">
            <div class="pro_cont">
              <div class="pro_img">
                <router-link :to="`/detail/${item.pid}`">
                  <img :src="item.pic" alt="" />
                  <!-- <img :src="item.pic" alt="" /> -->
                </router-link>
              </div>
              <div class="pro_buy">
                <button>查看详情</button>
                <div></div>
                <button>立即购买</button>
              </div>
              <!-- <div class="pro_detail"></div> -->
            </div>
            <div class="pro_title">{{ item.title }}</div>
            <div class="pro_price">¥ {{ item.price }}</div>
          </li>
          <!-- 单个商品结束 -->
        </ul>
        <!-- 商品块结束 -->
      </div>
      <!-- 二级标题+容器结束 -->
    </div>
    <!-- 一级标题+容器结束 -->
    <!-- 页面结束 -->
  </div>
</template>
<style scoped>
* {
  box-sizing: border-box;
}
.container {
  padding: 58px 24px;
  min-width: 1100px;
}
.t1 {
  padding-top: 40px;
  font-size: 32px;
  font-weight: 700;
}
/* .t2 {
  margin-top: 40px;
  font-size: 22px;
} */
.pro_all {
  margin: 15px 0 0;
  padding: 0;
  display: flex;
  justify-content: space-between;
  flex-flow: row wrap;
}
.pro_all::after {
  content: "";
  width: 30%;
  margin: 25px 0;
}
.product {
  width: 30%;
  margin: 25px 0;
}
.product:hover .pro_buy {
  display: flex;
}
.pro_cont {
  position: relative;
  margin-bottom: 4px;
}
.pro_img > a {
  display: block;
}
.pro_img img {
  width: 100%;
}
.pro_buy {
  position: absolute;
  bottom: 0;
  width: 100%;
  padding: 8% 4%;
  display: flex;
  justify-content: center;
  background: #fff;
  display: none;
  box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.2), 0 1px 10px 0 rgba(0, 0, 0, 0.19);
}
.pro_buy button {
  display: block;
  font-size: 18px;
  cursor: pointer;
  background: #fff;
  border: 0;
  font-weight: 700;
  text-align: center;
  width: 50%;
}
.pro_buy div {
  width: 1px;
  background: #999;
}
.pro_title,
.pro_price {
  font-size: 14px;
  font-weight: 700;
  padding-top: 8px;
  font-family: PingFangSC, "Microsoft YaHei", -apple-system, BlinkMacSystemFont,
    "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
  transition: color 0.2s linear;
}
.pro_title:hover {
  color: #f00;
  cursor: pointer;
}
.img_s {
  width: 360px;
  height: 360px;
  margin: 0 auto;
  margin-top: 100px;
}
.img_s img {
  width: 100%;
}
</style>
<script>
export default {
  data() {
    return {
      title: "",
      pro: [],
      img_sorry: false
    };
  },
  methods: {},
  methods: {
    ima_blo(e) {
      if (e.target.nodeName == "IMG") {
        console.log("你好");
        e.target.style.display == "none";
      }
    },
    ima_non() {
      console.log("886");
    },
  },
  mounted() {
    /* activity  \  charge  \  part   \  dress  \  surround */
    /* activity charge surround 一组*/
    /* part dress 一组 */
    console.log(this.$route.params.key);// 3
    let key = `%${this.$route.params.key}%`;
    key = encodeURI(key);  
    console.log(key);
    this.axios.get(`/product/select?key=${key}`).then((res) => {
      console.log(res.data);
      // let data = res.date;
      if(res.data.code == 0){
        this.title = "您再試著搜搜別的商品?";
        this.img_sorry = true;
      } else {
        this.img_sorry = false;
        let data = res.data.product;
        for(var item1 of data) {
          for(var item2 of item1) {
            item2.pic = require(`../assets/img/pro_list/${item2.pic}`);
            item2.pic2 = require(`../assets/img/pro_list/${item2.pic2}`);
            this.pro.push(item2);
          }
        }
        console.log(this.pro);
      }
    });
  },
};
</script>

