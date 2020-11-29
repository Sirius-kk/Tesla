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
    <!-- firstStep 确认订单 开始 -->
    <div v-if="completeOrder == 1">
      <!-- first 主体部分 开始 -->
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
            <div class="bottom_adr" v-show="adrs.length == 0">
              <div class="bottom_adr_tip">
                <div>地址不能为空</div>
                <img src="../assets/imgs/warnning_tip.svg" alt="" />
              </div>
            </div>
            <div>
              <button @click="nextStep1">提交订单</button>
            </div>
          </div>
          <!-- 提交主体 结束 -->
        </div>
        <!-- 主体下部 -- 提交订单  结束 -->
      </div>
      <!-- first 主体部分 结束 -->
    </div>
    <!-- firstStep 确认订单 结束 -->
    <!-- secendStep 确认支付 开始 -->
    <div v-else-if="completeOrder == 2" class="cont">
      <!-- second 主体部分 开始 -->
      <div class="pay_cont body_cont">
        <!-- 提交成功提示 成功 -->
        <div class="submit_tip">
          <!-- 图标 开始 -->
          <div>
            <img src="../assets/imgs/correct.svg" alt="" />
          </div>
          <!-- 图标 结束 -->
          <!-- 提示文字 开始 -->
          <div class="submit_text">订单提交成功，只剩付款了 ~</div>
          <!-- 提示文字 结束 -->
        </div>
        <!-- 提交成功提示 结束 -->
        <!-- 支付主体 开始 -->
        <div class="pay_content">
          <!-- 订单号 开始 -->
          <div>
            订单号 : <span>{{ order_num }}</span>
          </div>
          <!-- 订单号 结束 -->
          <!-- 支付金额提醒 开始 -->
          <div>
            订单金额 : <span>{{ total }}</span>
          </div>
          <!-- 支付金额提醒 结束 -->
          <!-- 时间提示 开始 -->
          <div>
            <span>{{ order_time }}</span
            >后订单将自动取消
          </div>
          <!-- 时间提示 结束 -->
          <!-- 支付按钮 开始 -->
          <div class="submit_btn">
            <button @click="nextStep2">确认支付</button>
          </div>
          <!-- 支付按钮 结束 -->
          <!-- 订单详情按钮 开始 -->
          <div class="order_detail" @click="orderShow">订单详情</div>
          <!-- 订单详情按钮 结束 -->
        </div>
        <!-- 支付主体 开始 -->
      </div>
      <!-- second 主体部分 结束 -->
      <!-- second 收货提示部分 开始 -->
      <div class="recive_tip" v-show="tip_show">
        <div class="recive_container body_cont">
          <!-- 收货信息标题 开始 -->
          <div class="recive_title">
            <!-- 收货人信息标题 开始 -->
            <div class="">收货信息</div>
            <!-- 收货人信息标题 结束 -->
            <!-- 商品信息标题 开始 -->
            <div class="">商品信息</div>
            <!-- 商品信息标题 结束 -->
            <!-- 购买时间信息 开始 -->
            <div class="">购买时间</div>
            <!-- 购买时间信息 结束 -->
          </div>
          <!-- 收货信息标题 结束 -->
          <!-- 收货信息详情 开始 -->
          <div class="recive_detail">
            <div class="">
              <div>收货人 : {{ reciveMan }}</div>
              <div>联系方式 : {{ recivePhone }}</div>
            </div>
            <!-- 商品信息内容 开始 -->
            <div class="">
              <div
                class="recive_body"
                v-for="(item3, index3) of pro_title"
                :key="index3"
              >
                {{ item3 }}
              </div>
            </div>
            <!-- 商品信息内容 结束 -->
            <div class="">
              <div class="recive_body">{{ timeBuy }}</div>
            </div>
          </div>
          <!-- 收货信息详情 结束 -->
        </div>
      </div>
      <!-- second 收货提示部分 结束 -->
    </div>
    <!-- secendStep 确认支付 结束 -->
    <!-- thirdStep 支付完成 开始 -->
    <div v-else class="over">
      <!-- 跳转提示 开始 -->
      <div class="over_cont body_cont">
        <!-- 跳转标题 开始 -->
        <div>
          <div>
            <img src="../assets/imgs/correct.svg" alt="" />
          </div>
          <div class="submit_text">订单提交成功，只剩付款了 ~</div>
        </div>
        <!-- 跳转标题 结束 -->
        <!-- 跳转主体 开始 -->
        <div>
          <div><span>{{ wait_time }}</span>后自动返回首页</div>
          <div>返回首页</div>
        </div>
        <!-- 跳转主体 结束 -->
      </div>
      <!-- 跳转提示 结束 -->
    </div>
    <!-- thirdStep 支付完成 结束 -->
    <!-- 尾部开始 -->
    <div id="footer">
      <my-footer class="footer"></my-footer>
    </div>
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
  padding-top: 18px;
  color: #1c1c25;
  font-size: 18px;
  font-weight: 700;
}
.head_right > div {
  width: 300px;
  margin-top: 5px;
}
/* 头部样式 结束 */
/* firstStep 主体部分 开始 */
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
/* 主体下部 开始 */
.bottom_body > div:not(:last-child) {
  margin-bottom: 12px;
}
.bottom_body {
  text-align: right;
  font-size: 16px;
}
.bottom_body span {
  font-size: 22px;
  font-weight: 700;
  color: #f00;
}
.bottom_body img {
  width: 17px;
}
.bottom_adr_tip {
  float: right;
  display: flex;
  flex-direction: row-reverse;
  padding: 5px 10px;
  border: 1px solid #f00;
  border-radius: 5px;
}
.bottom_adr::after {
  content: "";
  display: block;
  clear: both;
}
.bottom_adr_tip > div {
  margin-left: 6px;
  line-height: 17px;
  color: #f00;
}
.bottom_body button {
  padding: 10px 32px;
  border-radius: 5px;
  outline: 0;
  border: 2px solid #9a8f8f;
  font-size: 16px;
  font-weight: 600;
  color: #4c2a2a;
}
.bottom_body button:active {
  background: #666;
}
/* 主体下部 结束 */
/* firstStep 主体部分 结束 */
/* secondStep 主体部分 开始 */
.pay_cont {
  width: 45%;
  margin: 75px auto 0;
}
.submit_tip {
  display: flex;
  justify-content: center;
}
.submit_tip img {
  width: 72px;
}
.submit_text {
  margin-left: 10px;
  line-height: 72px;
  font-size: 24px;
  color: #241313;
}
.pay_content {
  padding-top: 35px;
  text-align: center;
  font-size: 16px;
}
.pay_content > div:not(:last-child) {
  margin-bottom: 20px;
}
.submit_btn button {
  padding: 10px 32px;
  border-radius: 5px;
  outline: 0;
  border: 2px solid #9a8f8f;
  font-size: 16px;
  font-weight: 600;
  color: #4c2a2a;
}
.submit_btn button:active {
  background: #666;
}
.order_detail {
  text-align: right;
  margin-top: 25px;
  padding-right: 55px;
  text-decoration: underline;
  font-weight: 600;
  cursor: pointer;
}
.recive_tip {
  margin: 0 auto;
  margin-top: 15px;
  width: 850px;
  text-align: center;
  position: relative;
  overflow: hidden;
}
.recive_title > div,
.recive_detail > div {
  width: 30%;
}
.recive_detail > div {
  display: flex;
  flex-direction: column;
  justify-content: center;
  color: #241313;
}
.recive_detail > div > div {
  padding: 4px 0;
}
.recive_title > div:nth-child(2),
.recive_detail > div:nth-child(2) {
  width: 40%;
}
.recive_title,
.recive_detail {
  display: flex;
  justify-content: space-around;
}
.recive_detail {
  padding-top: 15px;
}
.recive_title {
  padding: 10px 10px 25px 10px;
  border-bottom: 2px solid #cac5c5;
  font-size: 18px;
  font-weight: 700;
}
.recive_title > div:even {
  background: #f00;
}
/* 订单详情的下拉效果 开始 */
.recive_container {
  position: absolute;
  top: -244px;
  left: 0;
  width: 850px;
  transition: top 0.5s;
}
.recive_container.on {
  top: 0px;
}
/* 订单详情的下拉效果 开始 */
/* secondStep 主体部分 结束 */
/* thirdStep 开始 */
.over {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: 666;
  background: rgba(00, 00, 00, 0.5);
}
/* thirdStep 结束 */
#footer {
  position: fixed;
  bottom: 0;
}
.footer {
  width: 100%;
}
</style>
<script>
export default {
  data() {
    return {
      /* 确认订单三步走 */
      // completeOrder: 1,
      completeOrder: 1,
      /* 头部订单序号三步走 */
      step: 0,
      // firstStep 开始
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
      // firstStep 开始
      // secendStep 开始
      /* 订单号 */
      order_num: "1234567890",
      /* 订单持续时间 */
      order_time: "2:00:00",
      /* 收货人信息 */
      reciveMan: "黄经理",
      /* 收货信息详情 */
      recivePhone: "4399678",
      /* 商品内容信息 */
      pro_title: [
        "Tesla S 超级无敌跑车",
        "Tesla S 超级无敌跑车",
        "Tesla S 超级无敌跑车",
        "Tesla S 超级无敌跑车",
        "Tesla S 超级无敌跑车",
      ],
      /* timeBuy */
      timeBuy: "2020年11月28号14:25:30",
      /* 订单详情 */
      tip_show: true,
      // secendStep 结束
      // thirdStep 开始
      wait_time: "10s"
      // thirdStep 结束
    };
  },
  methods: {
    /* 从第一步到第二步 */
    nextStep1() {
      this.step = 1;
      this.completeOrder = 2;
    },
    /* 从第一步到第二步 */
    nextStep2() {
      this.step = 2;
      this.completeOrder = 3;
    },
    /* 下拉详情 */
    orderShow() {
      if (this.completeOrder == 2) {
        /* 解决因为绝对定位而导致的父元素高度缺失和宽度问题 */
        let reciveTitleHeight = document.getElementsByClassName(
          "recive_title"
        )[0].offsetHeight;
        let reciveDetailHeight = document.getElementsByClassName(
          "recive_detail"
        )[0].offsetHeight;
        let reciveContainerHeight = reciveTitleHeight + reciveDetailHeight;
        document.getElementsByClassName("recive_container")[0].style.height =
          reciveContainerHeight + "px";
        /* 让动态容器高度和被绝对定位的父元素高度一样 */
        document.getElementsByClassName("recive_tip")[0].style.height =
          document.getElementsByClassName("recive_container")[0].offsetHeight +
          "px";
        /* 让动态容器宽度和被绝对定位的父元素宽度一样 */
        document.getElementsByClassName("recive_tip")[0].style.width =
          document.getElementsByClassName("recive_container")[0].offsetWidth +
          "px";
      }
      let reciveContainer = document.getElementsByClassName(
        "recive_container"
      )[0];
      if (reciveContainer.className == "recive_container body_cont") {
        reciveContainer.className = "recive_container body_cont on";
      } else {
        reciveContainer.className = "recive_container body_cont";
      }
    },
  },
  mounted() {},
};
</script>
