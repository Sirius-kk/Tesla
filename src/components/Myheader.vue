<template>
  <div class="header">
    <el-row>
      <el-col :span="9">
        <!-- 左侧部分开始 -->
        <div class="left">
          <div class="img_logo">
            <img src="../../public/img/logo.jpg" />
          </div>
          <div></div>
          <div>在线商城</div>
        </div>
        <!-- 左侧部分结束 -->
      </el-col>
      <el-col :span="6">
        <!-- 中间部分开始 -->
        <div class="middle">
          <ul>
            <li>店铺活动
              <ul>
                <li>特斯拉宠粉季</li>
              </ul>
            </li>
            <li>充电产品
              <ul>
                <li>家庭充电</li>
                <li>旅行充电</li>
              </ul>
            </li>
            <li>优选配件
              <ul>
                <li>Module S
                  <ul>
                    <li>畅销商品</li>
                    <li></li>
                    <li>内饰</li>
                    <li>外观</li>
                    <li>轮毂和轮胎</li>
                    <li>脚垫</li>
                  </ul>
                </li>
                <li>Module 3
                  <ul>
                    <li>畅销商品</li>
                    <li></li>
                    <li>内饰</li>
                    <li>外观</li>
                    <li>轮毂和轮胎</li>
                    <li>脚垫</li>
                  </ul>
                </li>
                <li>Module X
                  <ul>
                    <li>畅销商品</li>
                    <li></li>
                    <li>内饰</li>
                    <li>外观</li>
                    <li>轮毂和轮胎</li>
                    <li>脚垫</li>
                  </ul>
                </li>
              </ul>
            </li>
            <li>精选服饰
              <ul>
                <li>男装
                  <ul>
                    <li>T恤</li>
                    <li>帽子</li>
                  </ul>
                </li>
                <li>女装
                  <ul>
                    <li>T恤</li>
                    <li>帽子</li>
                  </ul>
                </li>
                <li>童装
                  <ul>
                    <li>上衣</li>
                  </ul>
                </li>
              </ul>
            </li>
            <li>周边精品
              <ul>
                <li>畅销商品</li>
                <li>户外商品</li>
                <li>水杯</li>
                <li>收藏品</li>
                <li>玩具</li>
                <li>科技</li>
              </ul>
            </li>
          </ul>
        </div>
        <!-- 中间部分结束 -->
      </el-col>
      <el-col :span="9">
        <!-- 右侧部分开始 -->
        <div class="right">
          <div class="shopping">
            <img src="../../public/img/shopping.png">
          </div>
          <div class="search">
            <img src="../../public/img/search.png">
          </div>
          <div>登录</div>
        </div>
        <!-- 右侧部分结束 -->
      </el-col>
    </el-row>
  </div>
</template>


<style scoped>
/* 清除高度坍塌 */
.header::after {
  content: "";
  display: block;
  clear: both;
}
/* 设置公共头部整体高度 */
.el-col-9,.el-col-6 {
  height: 50px;
  line-height: 58px;
}
.el-col-9 .left .img_logo {
  line-height: 50px;
}
/* 左侧结构 */
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
/* 中间部分列表样式 */
.middle>ul {
  display: flex;
  justify-content: space-around;
}

/* 右侧图标样式 */
.right>div {
  float: right;
  cursor: pointer;
  margin-right: 20px;
}
.right>div img {
  width: 21px;
  margin-bottom: 4px;
}
</style>