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
          <div class="address_title">收货地址</div>
          <!-- 标题 结束 -->
          <!-- 地址内容 开始 -->
          <div class="address_cont">
            <!-- 地址显示内容 开始 -->
            <div
              v-for="(item, index) of adr"
              :key="index"
              class="new_address"
              v-show="true"
            >
              <!-- 循环生成部分: 如果数组为空则不显示,数组有内容则显示 -->
              <!-- 地址标题 开始 -->
              <div class="add_top">
                <div>{{ item.name }}</div>
                <div>{{ item.phone }}</div>
              </div>
              <!-- 地址标题 结束 -->
              <!-- 详细地址 开始 -->
              <div>
                <div>{{ item.province }}</div>
                <div>{{ item.city }}</div>
                <div>{{ item.area }}</div>
                <div>{{ item.detail }}</div>
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
        <!-- 左侧部分 开始 -->
        <div class="middle_left body_cont">
          <!-- 购物车内商品信息 开始 -->
          <div class="left_cont">
            <!-- 商品信息 开始 -->
            <div class="cont_top">
              <div class="img">
                图片
                <!-- <img src="" alt=""> -->
              </div>
              <div>商品名称</div>
              <div>数量</div>
              <div>价格</div>
            </div>
            <!-- 商品信息 开始 -->
            <!-- 分割线 开始 -->
            <el-divider></el-divider>
            <!-- 分割线 结束 -->
            <!-- 发票信息 开始 -->
            <div class="cont_bottom">
              <div>发票信息</div>
              <div>信息提示</div>
            </div>
            <!-- 发票信息 结束 -->
          </div>
          <!-- 购物车内商品信息 结束 -->
        </div>
        <!-- 左侧部分 结束 -->
        <!-- 右侧部分 开始 -->
        <div class="middle_right body_cont">
          <div class="right_top">商品由华为商城选择合作快递</div>
          <div class="right_bottom">
            <div class="r_bottom_left">
              <div>商品总金额:</div>
              <div>运费:</div>
              <div>优惠金额:</div>
              <div>结算金额:</div>
            </div>
            <div class="r_bottom_right">
              <div>¥ 1</div>
              <div>¥ 2</div>
              <div>¥ 3</div>
              <div>¥ 4</div>
            </div>
          </div>
        </div>
        <!-- 右侧部分 结束 -->
      </div>
      <!-- 主体中部 -- 商品信息  结束 -->
      <!-- 主体下部 -- 提交订单  开始 -->
      <div class="body_bottom">
        <!-- 提交主体 开始 -->
        <div>
          <div>应付金额: <span></span></div>
          <div>地址为空的提示</div>
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
  padding: 18px 25px 22px;
  margin-bottom: 15px;
  border-radius: 5px;

  background: #f00;
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
.address_title {
  padding-bottom: 15px;
  text-align: center;
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
  background: #f00;
  border: 2px dotted;
  border-radius: 5px;
}
/* 主体上部 结束 */
/* 主体中部 开始 */
.middle_left {
  width: 65%;
}
.middle_right {
  width: 35%;
}
.body_middle {
  display: flex;
  justify-content: space-between;
}
.cont_top {
  display: flex;
}
.img {
  width: 50px;
  height: 50px;
}
.el-divider--horizontal {
  margin: 12px 0;
}
/* 主体中部 结束 */
/* 主体部分 结束 */
</style>
<script>
export default {
  data() {
    return {
      step: 0,
      adr: [
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
