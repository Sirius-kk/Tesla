<template>
  <div>
    <my-header-list></my-header-list>
    <!-- 页面开始 -->
    <!-- 一级标题+容器开始 -->
    <div class="container" v-for="(item1, index1) of title1" :key="index1">
      <div class="t1">{{ item1.family_name }}</div>
      <!-- 二级标题+容器开始 -->
      <div v-for="(item2, index2) of title2" :key="index2">
        <div class="t2">{{ item2 }}</div>
        <!-- 商品块开始 -->
        <ul class="pro_all" @mouseover="ima_blo" @mouseleave="ima_non">
          <!-- 单个商品开始 -->
          <li
            v-for="(item3, index3) of pro_list[index1][index2]"
            :key="index3"
            class="product"
          >
            <div class="pro_cont">
              <div class="pro_img">
                <router-link :to="`/detail/${item3.pid}&${item3.mian}`">
                  <img :src="item3.pic" alt="" />
                  <!-- <img :src="item2.pic2" alt="" /> -->
                </router-link>
              </div>
              <div class="pro_buy">
                <button>
                  <router-link :to="`/detail/${item3.pid}&${item3.mian}`">
                    查看详情
                  </router-link>
                </button>
                <div></div>
                <button>立即购买</button>
              </div>
            </div>
            <div class="pro_title">{{ item3.title }}</div>
            <div class="pro_price">¥ {{ item3.price }}</div>
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
  font-size: 26px;
  font-weight: 700;
}
.t2 {
  margin-top: 40px;
  font-size: 22px;
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
</style>
<script>
export default {
  data() {
    return {
      title1: [],
      title2: [],
      pro: [],
      pro_list: [],
      pro_list2: [],
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
    this.axios.get("/product/list_part").then((res) => {
      console.log(res.data); //fnames title2 product
      /** 一级标题获取 */
      /** fnames.family_name */
      for (let item of res.data.fnames) {
        this.title1.push(item);
      }
      // console.log(this.title1);// 一级标题
      /** 一级标题获取 */

      /** 二级标题获取 */
      for (let item of res.data.title2) {
        this.title2.push(item.class);
      }
      // console.log(this.title2);// 二级标题
      /** 二级标题获取 */

      /**  商品信息 */
      this.pro = res.data.product;
      this.pro.forEach((item) => {
        item.pic = require(`../assets/img/pro_list/${item.pic}`);
        item.pic2 = require(`../assets/img/pro_list/${item.pic2}`);
      });

      /* *************商品分类********** */
      let p1 = [];
      /* 商品一级分类容器 */
      for (let i = 0; i < this.title1.length; i++) {
        p1.push([]);
      }
      // console.log(p1); // 获取和一级标题个数对应的空数组,[[],[],[]]
      /* 商品一级分类容器 */
      /* 循环遍历商品,先按照family_id完成类目一分类 */
      for (let i = 0; i < this.pro.length; i++) {
        /* 循环遍历family_id,并与每一个商品进行比较筛选,把商品放进对应的一级标题内 */
        // console.log(this.pro[i].family_id);
        for (let k = 0; k < res.data.fnames.length; k++) {
          if (this.pro[i].family_id == res.data.fnames[k].id) {
            p1[k].push(this.pro[i]);
          }
        }
      }
      for (let i = 0; i < p1.length; i++) {
        // console.log(p1[i]);// [...],[...],[...]
        /* 商品二级分类容器 */
        let p2 = [];
        for (let i = 0; i < this.title2.length; i++) {
          p2.push([]);
        }
        // console.log(p2);
        /* 商品二级分类容器 */
        /* 对一级分类后的商品进行二级分类 */
        for (let k = 0; k < p1[i].length; k++) {
          // console.log(p1[i][k]);// 1
          for (let n = 0; n < this.title2.length; n++) {
            if (p1[i][k].class == this.title2[n]) {
              p2[n].push(p1[i][k]);
            }
          }
        }
        /* 对一级分类后的商品进行二级分类 */
        /* 用二级筛选过后的二级商品容器代替以及容器中的空数组 */
        p1[i] = p2;
        /* 用二级筛选过后的二级商品容器代替以及容器中的空数组 */
      }
      console.log(p1);
      this.pro_list = p1;
      /* *************商品分类************ */
      /**  商品信息 */
    });
  },
};
</script>

