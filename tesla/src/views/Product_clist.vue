<template>
  <div>
    <my-header-list></my-header-list>
    <!-- 页面开始 -->
    <!-- 一级标题+容器开始 -->
    <div class="container">
      <div class="t1">{{ title1[num] }}</div>
      <!-- 二级标题+容器开始 -->
      <div v-for="(item2, index2) of title2" :key="index2">
        <div class="t2">{{ item2.family_name }}</div>
        <!-- 商品块开始 -->
        <ul class="pro_all" @mouseover="ima_blo" @mouseleave="ima_non">
          <!-- 单个商品开始 -->
          <li
            v-for="(item3, index3) of pro_list[index2]"
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
      num: 0,
      title2: [],
      pro: [],
      pro_list: [],
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
    this.axios.get("/product/list_charge").then((res) => {
      console.log(res.data);
      this.pro = res.data.product;
      this.title1 = [
        "店铺活动",
        "充电产品",
        "优选配件",
        "精选服饰",
        "周边精品",
      ];
      this.num = parseInt(res.data.product[0].mian - 1);
      /* 且把商品类目名赋值给title2 */
      this.title2 = res.data.fnames;
      // console.log(this.title2);
      // }
      /* 二级标题 */
      /* 图片拼接 */
      this.pro.forEach((item) => {
        item.pic = require(`../assets/img/pro_list/${item.pic}`);
        item.pic2 = require(`../assets/img/pro_list/${item.pic2}`);
      });
      /* *************利用逻辑去写商品的分类********** */
      let p = [];
      for (let i = 0; i < this.title2.length; i++) {
        p.push([]);
      }
      // console.log(p); // 获取和二级标题个数对应的空数组
      for (let i = 0; i < this.pro.length; i++) {
        // console.log(this.pro[i]);//7个obj
        for (let k = 0; k < p.length; k++) {
          if (this.pro[i].family_id == this.title2[k].id) {
            p[k].push(this.pro[i]);
          }
        }
      }
      console.log(p);
      this.pro_list = p;
      /* *************利用逻辑去写商品的分类************ */
    });
  },
};
</script>

