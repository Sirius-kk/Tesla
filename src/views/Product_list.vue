<template>
  <div>
    <!-- 页面开始 -->
    <!-- 一级标题+容器开始 -->
    <div class="container">
      <div class="t1">{{ title1 }}</div>
      <!-- 二级标题+容器开始 -->
      <div v-for="(t2, i1) of title2" :key="i1">
        <div class="t2">{{ t2 }}</div>
        <!-- 商品块开始 -->
        <div v-for="(pro, i2) of product" :key="i2">
          <div class="pro_all">
            <!-- 单个商品开始 -->
            <div class="product">
              {{ pro.cont }}
            </div>
            <!-- 单个商品结束 -->
          </div>
        </div>
        <!-- 商品块结束 -->
      </div>
      <!-- 二级标题+容器结束 -->
    </div>
    <!-- 一级标题+容器结束 -->
    <!-- 页面结束 -->
  </div>
</template>
<style scoped>
.container {
  padding: 10px 30px;
}
.t1 {
  font-size: 26px;
  color: #f00;
}
.t2 {
  font-size: 22px;
  color: #f0f;
}
.pro_all {
  width: 100vw;
  padding: 5px 10px;
}
.product {
  width: 33%;
  height: 100px;
}
</style>
<script>
export default {
  data() {
    return {
      title1: "一",
      title2: ["二.1", "二.2"],
      product: [
        { a: 1, cont: "二.1" },
        { a: 1, cont: "二.2" },
        { a: 1, cont: "二.3" },
        { a: 2, cont: "二.2" },
        { a: 2, cont: "二.2" },
      ],
    };
  },
};
</script>