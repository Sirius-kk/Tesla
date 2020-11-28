<template>
  <div>
    <!-- 头部开始 -->
    <div class="header bottom_mar">
      <!-- 头部内容区 开始 -->
      <div class="head_cont cont">
        <!-- 左侧信息开始 -->
        <div class="head_left">
          <img src="../assets/img/header/logo.jpg" />
          <div>确认订单</div>
        </div>
        <!-- 左侧信息结束 -->
        <!-- 右侧信息开始 -->
        <div class="head_right">
          <div>
            <el-steps :active="step" finish-status="success" align-center>
              <el-step title="填写核对订单"></el-step>
              <el-step title="成功提交订单"></el-step>
            </el-steps>
          </div>
        </div>
        <!-- 右侧信息结束 -->
      </div>
      <!-- 头部内容区 结束 -->
    </div>
    <!-- 头部结束 -->
    <!-- 主体部分 开始 -->
    <div class="cont">
      <!-- 主体上部 -- 新增地址  开始 -->
      <div class="body_cont">
        <!-- 新增地址内容区 开始 -->
        <div>
          <!-- 标题 开始 -->
          <div class="title">收货地址</div>
          <!-- 标题 结束 -->
          <!-- 地址内容 开始 -->
          <div class="address_cont">
            <!-- 地址显示内容 开始 -->
            <div
              v-for="(item1, index1) of adrs"
              :key="index1"
              class="new_address"
              v-show="true"
            >
              <!-- 循环生成部分: 如果数组为空则不显示,数组有内容则显示 -->
              <!-- 地址标题 开始 -->
              <div class="add_top">
                <div>{{ item1.name }}</div>
                <div>{{ item1.phone }}</div>
              </div>
              <!-- 地址标题 结束 -->
              <!-- 详细地址 开始 -->
              <div>
                <div>{{ item1.province }}</div>
                <div>{{ item1.city }}</div>
                <div>{{ item1.area }}</div>
                <div>{{ item1.detail }}</div>
              </div>
              <!-- 详细地址 结束 -->
            </div>
            <!-- 地址显示内容 结束 -->
            <!-- 地址添加按钮 开始 -->
            <div class="address_add">
              <div>
                <!-- !!!!!!!!!!!!!!!!!!!!!!!! 添加事件选择地址,Element-Ui -->
                <button>＋ 新增地址</button>
              </div>
            </div>
            <!-- 地址添加按钮 结束 -->
          </div>
          <!-- 地址内容 结束 -->
        </div>
        <!-- 新增地址内容区 结束 -->
      </div>
      <!-- 主体上部 -- 新增地址  结束 -->
      <!-- 主体中部 -- 商品信息  开始 -->
      <div class="body_middle">
        <!-- 商品部分 开始 -->
        <div class="middle_left body_cont">
          <!-- 商品信息标题 开始 -->
          <div class="title">商品信息</div>
          <!-- 商品信息标题 结束 -->
          <!-- 购物车内商品信息 开始  (循环生成商品的部分)-->
          <div
            class="left_cont"
            v-for="(item2, index2) of pro_details"
            :key="index2"
          >
            <!-- 商品信息 开始 -->
            <div class="cont_top">
              <div class="pro_img">
                <img :src="item2.img" alt="" />
              </div>
              <div class="pro_name">{{ item2.title }}</div>
              <div class="pro_num">× {{ item2.count }}</div>
              <div class="pro_price">¥ {{ item2.price }}</div>
              <div class="pro_subtotal">小计: ¥ {{ item2.subtotal }}</div>
            </div>
            <!-- 商品信息 开始 -->
            <!-- 分割线 开始 -->
            <el-divider></el-divider>
          </div>
          <!-- 购物车内商品信息 结束 -->
        </div>
        <!--商品部分 结束 -->
      </div>
      <!-- 主体中部 -- 商品信息  结束 -->
      <!-- 主体下部 -- 提交订单  开始 -->
      <div class="body_bottom body_cont">
        <!-- 提交订单标题 开始 -->
        <div class="title">提交订单</div>
        <!-- 提交订单标题 开始 -->
        <!-- 提交主体 开始 -->
        <div class="bottom_body">
          <div>
            应付金额 : <span>¥ {{ total }}</span>
          </div>
          <div v-show="true">地址为空的提示</div>
          <div>
            <button>提交订单</button>
          </div>
        </div>
        <!-- 提交主体 结束 -->
      </div>
      <!-- 主体下部 -- 提交订单  结束 -->
    </div>
    <!-- 主体部分 结束 -->
    <!-- 尾部开始 -->
    <my-footer></my-footer>
    <!-- 尾部结束 -->
  </div>
</template>
<style scoped>
/* 整体样式 开始 */
.cont {
  width: 1000px;
  margin: 0 auto;
}
.bottom_mar {
  margin-bottom: 20px;
}
.pad {
  padding: 6px 8px;
}
.body_cont {
  padding: 32px 25px;
  margin-bottom: 15px;
  border-radius: 5px;

  background: #f6f2f2;
}
/* 整体样式 结束 */
/* 头部样式 开始 */
.header {
  background: #fff;
}
.head_cont {
  padding: 20px 0 10px 0;
  height: 50px;
  display: flex;
  justify-content: space-between;
}
.head_left {
  display: flex;
  width: 720px;
}
.head_left img {
  height: 100%;
}
.head_left div {
  padding-left: 15px;
  padding-top: 21px;
  color: #c0c4cc;
  font-size: 16px;
}
.head_right > div {
  width: 300px;
  margin-top: 5px;
}
/* 头部样式 结束 */
/* 主体部分 开始 */
/* 主体上部 开始 */
.title {
  padding-bottom: 15px;
  font-size: 22px;
}
.address_cont {
  display: flex;
  justify-content: space-around;
  flex-wrap: wrap;
}
.add_top {
  display: flex;
  justify-content: space-between;
}
.new_address {
  margin-bottom: 10px;
  padding: 15px 20px;
  width: 220px;
  border: 2px solid;
  box-sizing: border-box;
  border-radius: 5px;
}
.add_top {
  margin-bottom: 10px;
}
.address_add button {
  width: 220px;
  height: 114px;
  background: #f6f2f2;
  border: 2px dotted;
  border-radius: 5px;
}
/* 主体上部 结束 */
/* 主体中部 开始 */
.middle_left {
  width: 100%;
  box-sizing: border-box;
}
/* .middle_right {
  width: 35%;
} */
.cont_top {
  display: flex;
  justify-content: space-around;
  text-align: center;
}
.cont_top > div:not(:first-child) {
  line-height: 89px;
}
.pro_img {
  width: 20%;
  background: #0aa1ed;
}
.pro_img img {
  height: 90px;
}
.pro_name {
  width: 40%;
  background: #eaa1ed;
}
.pro_num {
  width: 13.3333%;
  background: #8aa1ed;
}
.pro_price {
  width: 13.3333%;
  background: #caa1ed;
}
.pro_subtotal {
  width: 13.3333%;
  background: #caffed;
  font-size: 16px;
  font-weight: 600;
}
.el-divider--horizontal {
  margin: 12px 0 12px;
}
/* 主体中部 结束 */
/* 主体西部 开始 */
.bottom_body > div:not(:last-child) {
  margin-bottom: 12px;
}
.bottom_body {
  text-align: right;
  font-size: 16px;
}
.bottom_body span {
  font-size: 18px;
  font-weight: 700;
  color: #f00;
}
/* 主体西部 结束 */
/* 主体部分 结束 */
</style>
<script>
export default {
  data() {
    return {
      step: 0,
      /* 用户的地址容器 (有默认地址为默认地址,否则显示实时生成地址) */
      adrs: [
        {
          name: "清欢",
          phone: "18020029511",
          province: "上海",
          city: "上海",
          area: "徐汇区",
          detail: "汇银广场707",
        },
        {
          name: "黄花狸",
          phone: "18011029511",
          province: "上海",
          city: "上海",
          area: "徐汇区",
          detail: "徐汇公寓15栋",
        },
      ],
      /* 商品详情容器(展示用户购物车提交的商品) */
      pro_details: [
        {
          img:
            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1606554734452&di=e8cfc64f4ca13d8bb2013a408b7b39d2&imgtype=0&src=http%3A%2F%2Fcdnimg103.lizhi.fm%2Falbum_cover%2F2015%2F01%2F05%2F17044033086163356_320x320.png",
          title: "Tesla S 超级无敌跑车",
          count: 2,
          price: 800,
          subtotal: 1600,
        },
        {
          img:
            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1606554734452&di=e8cfc64f4ca13d8bb2013a408b7b39d2&imgtype=0&src=http%3A%2F%2Fcdnimg103.lizhi.fm%2Falbum_cover%2F2015%2F01%2F05%2F17044033086163356_320x320.png",
          title: "Tesla S 超级无敌跑车",
          count: 2,
          price: 800,
          subtotal: 1600,
        },
      ],
      /* 最终总价 */
      total: "3200",
    };
  },
  methods: {
    nextStep() {
      this.step++;
    },
  },
  mounted() {},
};
</script>
