<template>
  <div>
    <my-header></my-header>
    <!-- 页面开始 -->
    <!-- 一级标题+容器开始 -->
    <div class="container">
      <div class="t1">{{ title1[num] }}</div>
      <!-- 二级标题+容器开始 -->
      <div v-for="(item1, index1) of title2" :key="index1">
        <div class="t2">{{ item1 }}</div>
        <!-- 商品块开始 -->
        <ul class="pro_all" @mouseover="ima_blo" @mouseleave="ima_non">
          <!-- 单个商品开始 -->
          <li v-for="(item2, index2) of pro" :key="index2" class="product">
            <div class="pro_cont">
              <div class="pro_img">
                <a href="#">
                  <img :src="item2.pic" alt="" />
                  <!-- <img :src="item2.pic2" alt="" /> -->
                </a>
              </div>
              <div class="pro_buy">
                <button>查看详情</button>
                <div></div>
                <button>立即购买</button>
              </div>
              <!-- <div class="pro_detail"></div> -->
            </div>
            <div class="pro_title">{{ item2.title }}</div>
            <div class="pro_price">¥ {{ item2.price }}</div>
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
    this.axios.get("/product/list_dress").then((res) => {
      /* 把值取出来 */
      this.pro = res.data.result;
      /** 给当前的页面添加一级标题 */
      /** 判断当前的一级标题是用family_name还是用title自带 */
      /** fnames.family_name */
      /** title1: ["店铺活动","充电产品","优选配件","精选服饰","周边精品"], */
      /** 在于判断class是否为null */
      /** 如果为null，则使用title自带 */
      if (this.pro[0].class) {
        /* 
          存在class字段,
          把样式表的名存进title1 
        */
        // let fnames = res.data.fnames;
        // fnames.forEach((item) => {
        //   this.title1.push(item.family_name);
        // });
        for (let item in res.data.fnames) {
          this.title1.push(item.family_name);
        }
        /*  
          同时添加二级标题
          并且把class字段存进title
        */
        let t2 = res.data.title2;
        t2.forEach(item => {
          this.title2.push(item.class);
        });
        /*  
          再同时把二级标题下同级商品存进下标与title2对应的二级数组中
          !!!!!!  利用 title2[i] 去判断相同的放进同一个数组,最后把形成的数组在放进一个数组形成而技术组
        */
        // for(var i of res.data.result){
        //   for(var k of this.title2){
        //     if(i.class == k){

        //     }
        //   }
        // }
        console.log(this.title1,this.title2);
      } else {
        /* 
          不存在class字段,
          把事先准备好的一级标题名放进title1 
        */
        this.title1 = [
          "店铺活动",
          "充电产品",
          "优选配件",
          "精选服饰",
          "周边精品",
        ];
        this.num = parseInt(res.data.result[0].mian - 1);
        /* 且把商品类目名赋值给title2 */
        this.title2 = res.data.fnames;
        // console.log(this.title1,this.title2);
      }
      /* 二级标题 */
      // console.log(res.data);
      // console.log(res.data);
      // console.log(this.title2);
      /* 图片拼接 */
      this.pro.forEach((item) => {
        item.pic = require(`../assets/img/pro_list/${item.pic}`);
        item.pic2 = require(`../assets/img/pro_list/${item.pic2}`);
      });
    });
  },
};
</script>

