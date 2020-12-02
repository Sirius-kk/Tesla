<template>
  <div class="head_index" @mouseenter="h_show" @mouseleave="h_hide">
    <el-row>
      <el-col :span="9">
        <!-- 左侧部分开始 -->
        <div class="left" @click="jumpIndex">
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
            <ul class="menu_1" @mouseleave="kard_none" @click="jumpList">
              <li @mouseenter="kard_block1" class="activity">
                <!-- <router-link to="">  </router-link> -->
                店铺活动
              </li>
              <li @mouseenter="kard_block2" class="charge">
                <!-- <router-link to="">  </router-link> -->
                充电产品
              </li>
              <li @mouseenter="kard_block3" class="part">
                <!-- <router-link to="">  </router-link> -->
                优选配件
              </li>
              <li @mouseenter="kard_block4" class="dress">
                <!-- <router-link to="">  </router-link> -->
                精选服饰
              </li>
              <li @mouseenter="kard_block5" class="surround">
                <!-- <router-link to="">  </router-link> -->
                周边精品
              </li>
            </ul>
          </div>
        </div>
        <!-- 中间部分结束 -->
      </el-col>
      <el-col :span="8" :offset="1">
        <!-- 右侧部分开始 -->
        <div class="right">
          <div class="shopping">
            <div class="shopping_tip">2</div>
            <img src="../assets/img/header/shopping1.svg" v-if="shop_car" />
            <img src="../assets/img/header/shopping2.svg" v-else />
          </div>
          <div class="search">
            <img
              src="../assets/img/header/sousuo1.svg"
              v-if="search_s"
              @click="input_Show"
            />
            <img
              src="../assets/img/header/sousuo2.svg"
              v-else
              @click="input_Show"
            />
          </div>
          <div class="search search1">
            <input
              v-model="inp_value"
              class="sousuo_inp"
              type="text"
              v-if="input_show"
              placeholder="搜索"
            />
          </div>
          <div id="log" v-if="this.$store.state.isLogined == 1">
            <router-link to="/userlist"
              >您好,{{ this.$store.state.userInfo.uname }}</router-link
            >
            <span class="division">|</span>
            <span @click="logout">注销</span>
          </div>
          <div @click="login" v-else>登录</div>
        </div>
        <!-- 右侧部分结束 -->
      </el-col>
    </el-row>
    <!-- 悬浮导航开始 -->
    <div class="middle_down" v-if="kard" @mouseleave="kard_none">
      <div class="middle_down_ul">
        <div v-if="kard == 1" class="menu_2 menu_21" @mouseenter="kard_block1">
          <div>
            <router-link to="/pro_alist"> 特斯拉宠粉季 </router-link>
          </div>
        </div>
        <div
          v-else-if="kard == 2"
          class="menu_2 menu_22"
          @mouseenter="kard_block2"
        >
          <div>
            <p>
              <router-link to="/pro_clist"> 家庭充电 </router-link>
            </p>
          </div>
          <div>
            <p>旅行充电</p>
          </div>
          <span class="middle_down_img">
            <img src="../assets/img/header/kard_1.jpg" />
            <h1>
              <router-link to="/detail"> Model 3 地毯脚垫套装 </router-link>
            </h1>
          </span>
        </div>
        <div
          v-else-if="kard == 3"
          class="menu_2 menu_22"
          @mouseenter="kard_block3"
        >
          <div>
            <p>
              <router-link to="/pro_plist"> Module S </router-link>
            </p>
            <ul class="menu_3">
              <li>
                <router-link to=""> 畅销商品 </router-link>
              </li>
              <li>
                <router-link to=""> 内饰 </router-link>
              </li>
              <li>
                <router-link to=""> 外观 </router-link>
              </li>
              <li>
                <router-link to=""> 轮毂和轮胎 </router-link>
              </li>
              <li>
                <router-link to=""> 脚垫 </router-link>
              </li>
            </ul>
          </div>
          <div>
            <p>Module 3</p>
            <ul class="menu_3">
              <li>
                <router-link to=""> 畅销商品 </router-link>
              </li>
              <li>
                <router-link to=""> 内饰 </router-link>
              </li>
              <li>
                <router-link to=""> 外观 </router-link>
              </li>
              <li>
                <router-link to=""> 轮毂和轮胎 </router-link>
              </li>
              <li>
                <router-link to=""> 脚垫 </router-link>
              </li>
            </ul>
          </div>
          <div>
            <p>
              <router-link to=""> Module X </router-link>
            </p>
            <ul class="menu_3">
              <li>
                <router-link to=""> 畅销商品 </router-link>
              </li>
              <li>
                <router-link to=""> 内饰 </router-link>
              </li>
              <li>
                <router-link to=""> 外观 </router-link>
              </li>
              <li>
                <router-link to=""> 轮毂和轮胎 </router-link>
              </li>
              <li>
                <router-link to=""> 脚垫 </router-link>
              </li>
            </ul>
          </div>
          <span class="middle_down_img">
            <img src="../assets/img/header/kard_2.jpg" />
            <h1>
              <router-link to=""> 家庭充电服务包 (国标) </router-link>
            </h1>
          </span>
        </div>
        <div
          v-else-if="kard == 4"
          class="menu_2 menu_21"
          @mouseenter="kard_block4"
        >
          <div>
            <p>
              <router-link to="/pro_dlist"> 男装 </router-link>
            </p>
            <ul class="menu_3">
              <li>
                <router-link to=""> T恤 </router-link>
              </li>
              <li>
                <router-link to=""> 帽子 </router-link>
              </li>
            </ul>
          </div>
          <div>
            <p>
              <router-link to=""> 女装 </router-link>
            </p>
            <ul class="menu_3">
              <li>
                <router-link to=""> T恤 </router-link>
              </li>
              <li>
                <router-link to=""> 帽子 </router-link>
              </li>
            </ul>
          </div>
          <div>
            <P>
              <router-link to=""> 童装 </router-link>
            </P>
            <ul class="menu_3">
              <li>
                <router-link to=""> 上衣 </router-link>
              </li>
              <li>
                <router-link to=""> 玩具 </router-link>
              </li>
            </ul>
          </div>
        </div>
        <div v-else-if="kard == 5" class="menu_23" @mouseenter="kard_block5">
          <div class="menu_231">
            <div class="double">
              <P>
                <router-link to="/pro_slist"> 畅销商品 </router-link>
              </P>
              <P>
                <router-link to=""> 玩具 </router-link>
              </P>
            </div>
            <div class="double">
              <P>
                <router-link to=""> 户外商品 </router-link>
              </P>
              <P>
                <router-link to=""> 科技 </router-link>
              </P>
            </div>
            <div>
              <P>
                <router-link to=""> 水杯 </router-link>
              </P>
            </div>
            <div>
              <P>
                <router-link to=""> 收藏品 </router-link>
              </P>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 悬浮导航结束 -->
    <div></div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      kard: "",
      input_show: true,
      shop_car: true,
      search_s: true,
      inp_value: "",
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
    /* 跳轉主頁 */
    jumpIndex() {
      this.$router.push("/");
    },
    /* 搜索商品 */
    input_Show() {
      // 獲取當前輸入框的值然後跳轉并傳值到search頁面
      if (this.inp_value.length != 0) {
        this.$router.push(`/select/${this.inp_value}`);
      }
    },
    /* 搜索商品 */
    /*  */
    /* 跳轉主頁 */
    /* 一級導航的跳轉 */
    jumpList(e) {
      if (e.target.className == "activity") {
        this.$router.push("/pro_alist");
      } else if (e.target.className == "charge") {
        this.$router.push("/pro_clist");
      } else if (e.target.className == "part") {
        this.$router.push("/pro_plist");
      } else if (e.target.className == "dress") {
        this.$router.push("/pro_dlist");
      } else if (e.target.className == "surround") {
        this.$router.push("/pro_slist");
      }
    },
    /* 一級導航的跳轉 */
    /* 二級導航跳轉 */
    // ******
    /* 二級導航跳轉 */
    /* 注销 开始 */
    logout() {
      this.$store.commit("logout_out_mu");
      localStorage.clear();
    },
    /* 注销 结束 */
    /* 登錄跳轉 */
    login() {
      this.$router.push("/log");
    },
    /* 登錄跳轉 */
    /* 主頁頭部的變色設置 */
    top_lable() {
      // 获取超出页面上方的距离
      // console.log(111111111);
      let scrollTop =
        document.body.scrollTop || document.documentElement.scrollTop;
      let headerEle = document.getElementsByClassName("head_index")[0];
      let shopping_tipEle = document.getElementsByClassName("shopping_tip")[0];
      // console.log(headerEle);
      // 设置滚动阈值
      // 当滚动距离为40px时，则给标签页添加固定定位
      // console.log(scrollTop);
      if (scrollTop > 50) {
        headerEle.style.background = "rgba(255,255,255,1)";
        headerEle.style.color = "#000";
        shopping_tipEle.style.background = "#000";
        shopping_tipEle.style.color = "#fff";
        document.querySelector("a").style.color = "#000";
        this.search_s = false;
        this.shop_car = false;
        
      } else {
        headerEle.style.background = "rgba(255,255,255,0)";
        headerEle.style.color = "#fff";
        shopping_tipEle.style.background = "#fff";
        shopping_tipEle.style.color = "#000";
        document.querySelector("a").style.color = "#fff";
        this.search_s = true;
        this.shop_car = true;
      }
    },
    /* 主頁頭部的變色設置 */
    /* 頭部鼠標懸停顯示 */
    h_show() {
      let headerEle = document.getElementsByClassName("head_index")[0];
      let shopping_tipEle = document.getElementsByClassName("shopping_tip")[0];
      document.getElementsByClassName("sousuo_inp")[0].style.color = "#000";
      headerEle.style.background = "rgba(255,255,255,1)";
      headerEle.style.color = "#000";
      shopping_tipEle.style.background = "#000";
      shopping_tipEle.style.color = "#fff";
      document.querySelector("a").style.color = "#000";
      this.search_s = false;
      this.shop_car = false;
    },
    h_hide() {// 当滚动距离超过50px后，就不需要鼠标移出的隐藏了
      // 获取超出页面上方的距离
      let scrollTop =
        document.body.scrollTop || document.documentElement.scrollTop;
      if( scrollTop <= 50 ){
        let headerEle = document.getElementsByClassName("head_index")[0];
        let shopping_tipEle = document.getElementsByClassName("shopping_tip")[0];
        document.getElementsByClassName("sousuo_inp")[0].style.color = "#fff";
        headerEle.style.background = "rgba(255,255,255,0)";
        shopping_tipEle.style.background = "#fff";
        shopping_tipEle.style.color = "#000";
        headerEle.style.color = "#fff";
        document.querySelector("a").style.color = "#fff";
        this.search_s = true;
        this.shop_car = true;
      }
    },
    /* 頭部鼠標懸停顯示 */
  },
  mounted() {
    window.addEventListener("scroll", this.top_lable);
    console.log(document.getElementsByClassName("sousuo_inp")[0]);
    document
      .getElementsByClassName("sousuo_inp")[0]
      .addEventListener("keyup", (e) => {
        console.log(12132546);
        if (e.keyCode == 13) {
          this.input_Show();
        }
      });
  },
  destroyed() {
    window.removeEventListener("scroll", this.top_lable);
  },
};
</script>

<style scoped>
/* 整体样式开始 */
.head_index {
  height: 58px;
  position: relative;
  color: #fff;
}
/* 清除高度坍塌 */
.head_index::after {
  content: "";
  display: block;
  clear: both;
}
/* 设置公共头部整体高度 */
.el-col-9,
.el-col-6,
.el-col-8 {
  height: 50px;
  line-height: 58px;
}
.el-col-9 .left .img_logo {
  line-height: 50px;
}
.el-row {
  min-width: 1100px;
}
li,
p,
h1,
.left {
  cursor: pointer;
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
  padding-bottom: 15px;
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
/* 右侧样式開始 */
.right > div {
  float: right;
  cursor: pointer;
  margin-right: 20px;
}
.right > div img {
  width: 21px;
  margin-bottom: 4px;
}
.right .division {
  padding: 0 8px;
}
.shopping,
.search {
  position: relative;
}
.shopping div,
.search img {
  position: absolute;
}
.search1 {
  width: 220px;
  height: 50px;
  transition: width 0.2s;
  overflow: hidden;
}
.search input {
  width: 190px;
  padding: 7px 14px;
  border-radius: 30px;
  outline: 0;
  border: 1px solid #bdb7b7;
  background: rgba(255, 255, 255, 0);
}
.search img {
  top: 19px;
  right: 10px;
  z-index: 5;
}
.shopping div {
  width: 16px;
  height: 16px;
  box-sizing: border-box;
  padding-left: 4px;
  background: #000;
  border-radius: 50%;
  top: 12px;
  left: 10px;
  line-height: 16px;
  font-weight: 700;
}
.shopping_tip {
  color: #fff;
  font-size: bold;
}
/* 右侧样式結束 */
/* 滚动事件涉及样式開始 */
.head_index {
  background: rgba(255, 255, 255, 0);
  position: fixed;
  z-index: 888;
  width: 100%;
}
/* 滚动事件涉及样式結束 */
</style>