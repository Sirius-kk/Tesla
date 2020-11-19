<template>
  <div class="header">
    <el-row>
      <el-col :span="9">
        <!-- 左侧部分开始 -->
        <div class="left">
          <div class="img_logo">
            <img src="../assets/img/header/logo.jpg" />
          </div>
          <div></div>
          <div>在线商城</div>
        </div>
        <!-- 左侧部分结束 -->
      </el-col>
      <el-col :span="6">
        <!-- 中间部分开始 -->
        <div class="middle">
          <div class="middle_up">
            <ul class="menu_1" @mouseleave="kard_none">
              <li @mouseenter="kard_block1">
                <!-- <router-link to="">  </router-link> -->
                店铺活动
              </li>
              <li @mouseenter="kard_block2">
                <!-- <router-link to="">  </router-link> -->
                充电产品
              </li>
              <li @mouseenter="kard_block3">
                <!-- <router-link to="">  </router-link> -->
                优选配件
              </li>
              <li @mouseenter="kard_block4">
                <!-- <router-link to="">  </router-link> -->
                精选服饰
              </li>
              <li @mouseenter="kard_block5">
                <!-- <router-link to="">  </router-link> -->
                周边精品
              </li>
            </ul>
          </div>
        </div>
        <!-- 中间部分结束 -->
      </el-col>
      <el-col :span="9">
        <!-- 右侧部分开始 -->
        <div class="right">
          <div class="shopping">
            <img src="../assets/img/header/shopping.png" />
          </div>
          <div class="search">
            <img src="../assets/img/header/search.png" />
          </div>
          <div>登录</div>
        </div>
        <!-- 右侧部分结束 -->
      </el-col>
    </el-row>
    <!-- 悬浮导航开始 -->
    <div class="middle_down" v-if="kard" @mouseleave="kard_none">
      <div class="middle_down_ul">
        <div v-if="kard == 1" class="menu_2 menu_21" @mouseenter="kard_block1">
          <div>
            <p>特斯拉宠粉季</p>
          </div>
        </div>
        <div
          v-else-if="kard == 2"
          class="menu_2 menu_22"
          @mouseenter="kard_block2"
        >
          <div>
            <p>家庭充电</p>
          </div>
          <div>
            <p>旅行充电</p>
          </div>
          <span class="middle_down_img">
            <img src="../assets/img/header/kard_1.jpg" />
            <h1>Model 3 地毯脚垫套装</h1>
          </span>
        </div>
        <div
          v-else-if="kard == 3"
          class="menu_2 menu_22"
          @mouseenter="kard_block3"
        >
          <div>
            <p>Module S</p>
            <ul class="menu_3">
              <li>畅销商品</li>
              <li>内饰</li>
              <li>外观</li>
              <li>轮毂和轮胎</li>
              <li>脚垫</li>
            </ul>
          </div>
          <div>
            <p>Module 3</p>
            <ul class="menu_3">
              <li>畅销商品</li>
              <li>内饰</li>
              <li>外观</li>
              <li>轮毂和轮胎</li>
              <li>脚垫</li>
            </ul>
          </div>
          <div>
            <p>Module X</p>
            <ul class="menu_3">
              <li>畅销商品</li>
              <li>内饰</li>
              <li>外观</li>
              <li>轮毂和轮胎</li>
              <li>脚垫</li>
            </ul>
          </div>
          <span class="middle_down_img">
            <img src="../assets/img/header/kard_2.jpg" />
            <h1>家庭充电服务包 (国标)</h1>
          </span>
        </div>
        <div
          v-else-if="kard == 4"
          class="menu_2 menu_21"
          @mouseenter="kard_block4"
        >
          <div>
            <p>男装</p>
            <ul class="menu_3">
              <li>T恤</li>
              <li>帽子</li>
            </ul>
          </div>
          <div>
            <p>女装</p>
            <ul class="menu_3">
              <li>T恤</li>
              <li>帽子</li>
            </ul>
          </div>
          <div>
            <P>童装</P>
            <ul class="menu_3">
              <li>童装</li>
              <li>上衣</li>
            </ul>
          </div>
        </div>
        <div v-else-if="kard == 5" class="menu_23" @mouseenter="kard_block5">
          <div class="menu_231">
            <div class="double">
              <P>畅销商品</P>
              <P>玩具</P>
            </div>
            <div class="double">
              <P>户外商品</P>
              <P>科技</P>
            </div>
            <div>
              <P>水杯</P>
            </div>
            <div>
              <P>收藏品</P>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 悬浮导航结束 -->
  </div>
</template>

<script>
export default {
  data() {
    return {
      kard: "",
      // kard: 1,
    };
  },
  methods: {
    kard_block1() {
      this.kard = 1;
    },
    kard_block2() {
      this.kard = 2;
    },
    kard_block3() {
      this.kard = 3;
    },
    kard_block4() {
      this.kard = 4;
    },
    kard_block5() {
      this.kard = 5;
    },
    kard_none() {
      this.kard = "";
    },
    top_lable() {
      // 获取超出页面上方的距离
      let scrollTop =
        document.body.scrollTop || document.documentElement.scrollTop;
      let headerEle = document.getElementsByClassName("header")[0];
      // 设置滚动阈值
      // 当滚动距离为40px时，则给标签页添加固定定位
      if (scrollTop > 50) {
        headerEle.style.background = "rgba(255,255,255,1)";
      } else {
        headerEle.style.background = "rgba(255,255,255,0)";
      }
    },
  },
  mounted() {
    window.addEventListener("scroll", this.top_lable);
  },
  destroyed() {
    this.top_lable = null;
  },
};
</script>

<style scoped>
/* 整体样式开始 */
.header {
  height: 58px;
  position: relative;
}
/* 清除高度坍塌 */
.header::after {
  content: "";
  display: block;
  clear: both;
}
/* 设置公共头部整体高度 */
.el-col-9,
.el-col-6 {
  height: 50px;
  line-height: 58px;
}
.el-col-9 .left .img_logo {
  line-height: 50px;
}
.el-row {
  min-width: 1100px;
}
/* 整体样式结束 */
/* 左侧结构样式开始 */
.left > div {
  float: left;
}
.left > div:nth-child(2) {
  height: 24px;
  border: 1px solid;
  margin: 15px 20px 0;
  opacity: 0.3;
}
/* logo图标 */
.left .img_logo {
  height: 50px;
}
.left .img_logo > img {
  height: 100%;
}
/* 左侧结构样式结束 */
/* 中间部分列表样式开始 */
.middle_down {
  width: 100vw;
  height: 460px;
  background: #f8f8f8;
  position: absolute;
  top: 58px;
  font-size: 18px;
  font-weight: 600;
}
.middle .menu_1 {
  min-width: 350px;
  display: flex;
  justify-content: space-around;
}
.middle .menu_1 > li {
  min-width: 56px;
  cursor: pointer;
}
.middle_down::after {
  content: "";
  display: block;
  clear: both;
}
.menu_2 {
  display: flex;
  padding: 60px 100px;
}
.menu_2 p,
.menu_23 p {
  height: 20px;
  padding-bottom: 5px;
  border-bottom: 5px solid #999;
}
.menu_21 div {
  margin-right: 24px;
  width: 24%;
}
.menu_22 > div {
  width: 15%;
  margin-right: 24px;
}
.menu_23 {
  padding: 60px 100px;
}
.menu_23 > div {
  display: flex;
}
.menu_23 > div div {
  margin-right: 24px;
  width: 24%;
}
.menu_231 div:last-child {
  margin-right: 0;
}
.menu_3 {
  margin: 30px 0 8px;
  font-size: 16px;
  font-weight: 400;
}
.menu_3 li {
  padding-bottom: 10px;
}
.middle_down_img {
  position: absolute;
  right: 100px;
}
.middle_down_img .middle_down_img img {
  height: 340px;
}
.middle_down_img h1 {
  padding: 25px 0 8px;
  font-size: 22px;
  text-align: center;
}
.double > p + p {
  margin-top: 30px;
}
/* 中间部分列表样式结束 */
/* 右侧图标样式 */
.right > div {
  float: right;
  cursor: pointer;
  margin-right: 20px;
}
.right > div img {
  width: 21px;
  margin-bottom: 4px;
}
/* 滚动事件涉及样式 */
.header {
  background: rgba(255, 255, 255, 0);
  position: fixed;
  z-index: 888;
  width: 100%;
}
/* 滚动事件涉及样式 */
</style>