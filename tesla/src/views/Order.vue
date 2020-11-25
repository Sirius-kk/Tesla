<template>
  <div>
    <!-- 头部开始 -->
    <div class="header">
      <!-- 头部内容区 开始 -->
      <div class="head_cont cont">
        <!-- 左侧信息开始 -->
        <div class="head_left">
          <img src="../assets/img/header/logo.jpg" />
          <span>确认订单</span>
        </div>
        <!-- 左侧信息结束 -->
        <!-- 右侧信息开始 -->
        <div class="head_right">
          <el-steps :active="step" finish-status="success" align-center>
            <el-step title="填写核对订单"></el-step>
            <el-step title="成功提交订单"></el-step>
          </el-steps>
        </div>
        <!-- 右侧信息结束 -->
      </div>
      <!-- 头部内容区 结束 -->
    </div>
    <!-- 头部结束 -->
    <!-- 主体部分 开始 -->
    <div class="cont">
      <!-- 主体上部 -- 新增地址  开始 -->
      <div>
        <!-- 新增地址内容区 开始 -->
        <div>
          <!-- 标题 开始 -->
          <div></div>
          <!-- 标题 结束 -->
          <!-- 地址内容 开始 -->
          <div></div>
          <!-- 地址内容 结束 -->
          <!-- 地址添加按钮 开始 -->
          <div></div>
          <!-- 地址添加按钮 结束 -->
        </div>
        <!-- 新增地址内容区 结束 -->
      </div>
      <!-- 主体上部 -- 新增地址  结束 -->
      <!-- 主体中部 -- 商品信息  开始 -->
      <div>
        <!-- 左侧部分 开始 -->
        <div></div>
        <!-- 左侧部分 结束 -->
        <!-- 右侧部分 开始 -->
        <div></div>
        <!-- 右侧部分 结束 -->
      </div>
      <!-- 主体中部 -- 商品信息  结束 -->
      <!-- 主体下部 -- 提交订单  开始 -->
      <div>
        <!-- 提交主体 开始 -->
        <div></div>
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
/* 整体样式 结束 */
/* 头部样式 开始 */
.header {
  background: #fff;
}
.head_cont {
  padding: 6px 0;
  display: flex;
  justify-content: space-between;
}
.head_left {
  margin-right: 15px;
}
.head_left span {
  padding-left: 15px;
}
/* 头部样式 结束 */
</style>
<script>
export default {
  data() {
    return {
      active: 1,
    };
  },
  methods: {},
  mounted() {},
};
</script>