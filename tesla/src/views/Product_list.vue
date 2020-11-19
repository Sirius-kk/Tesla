<template>
  <div>
    <my-header></my-header>
    <!-- 页面开始 -->
    <!-- 一级标题+容器开始 -->
    <div class="container">
      <div class="t1">{{ title1 }}</div>
      <!-- 二级标题+容器开始 -->
      <div v-for="(t2, i1) of title2" :key="i1">
        <div class="t2">{{ t2 }}</div>
        <!-- 商品块开始 -->
        <ul class="pro_all">
          <!-- 单个商品开始 -->
          <li v-for="(pro, i2) of product" :key="i2" class="product">
            <div class="pro_cont">
              <div class="pro_img">
                <a href="#">
                  <img v-if="true" src="" alt="" />
                  <img v-else src="" alt="" />
                </a>
              </div>
              <div class="pro_buy">
                <button>查看详情</button>
                <div></div>
                <button>立即购买</button>
              </div>
              <!-- <div class="pro_detail"></div> -->
            </div>
            <div class="pro_title"></div>
            <div class="pro_price"></div>
            {{ pro.cont }}
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
  padding: 0px 24px;
  min-width: 1100px;
}
.t1 {
  padding-top: 40px;
  font-size: 26px;
  font-weight: 700;
  color: #f00;
}
.t2 {
  margin-top: 40px;
  font-size: 22px;
  color: #f0f;
}
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
  /* ****************************** */
  height: 556.5px;
  background: cornflowerblue;
  /* ****************************** */
}
.pro_cont {
  position: relative;
  margin-bottom: 4px;
}
.pro_img > a {
  display: block;
}
.pro_img img {
  position: absolute;
  top: 0;
  left: 0;
  height: 556.5px;
}
.pro_buy {
  height: 20%;
  padding: 8% 4%;
  display: flex;
  justify-content: center;
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
</style>
<script>
export default {
  data() {
    return {
      title1: "一",
      title2: ["二.1", "二.2"],
      product: [
        { a: 1, cont: "二.1" },
        { a: 1, cont: "二.2" },
        { a: 1, cont: "二.3" },
        { a: 2, cont: "二.2" },
        { a: 2, cont: "二.2" },
      ],
    };
  },
  methods: {

  },
  mounted(){
    this.axios.get("/product/list_activity").then( res => {
      console.log(res.data);
    });
  }
};
</script>