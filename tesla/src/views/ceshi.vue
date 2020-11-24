<template>
  <!-- 这是最大的DIV APP -->
  <div>
    <div id="all">
      <!-- 购物车的按钮 -->
      <el-button @click="drawer = true">
        <img
          src="../assets/imgs/shoppingcar.png"
          style="width: 50px; height: 50px"
          alt=""
        />
      </el-button>
      <!-- 购物车的按钮结束 -->
      <el-drawer
        title="我是标题"
        :visible.sync="drawer"
        :direction="direction"
        :with-header="false"
        :before-close="handleClose"
      >
        <div id="cartheader">
          <!--  100%*53  -->
          <h2 class="cartheader-h2left">您的购物车</h2>
          <!--  最靠左边  -->
        </div>
        <!-- 下一层 空购物车外面一层 -->
        <div id="shopcart-model">
          <!--  100%*360  -->
          <!-- 里层空div -->
          <div id="shopcart-ept">
            <!--  100%*320  -->
            <span>您的购物车是空的.</span
            ><!--添加商品后这段话隐藏  -->
          </div>
        </div>
        <!-- 最下面的DIV padding25px-->
        <div id="shopcart-footer">
          <!-- 里面有三个小DIV no.1 -->
          <div class="shopcart-subtotal">
            <span>购物车总额：</span>
            <p>¥{{ 金额 }}</p>
          </div>
          <!-- 结算按钮 100%*60 margin 0 0 12 -->
          <div id="shopcart-checkout">
            <!-- btn 200*40 m:0020 p: 5 40 -->
            <a type="button" class="checkout-btn" href="#">结账</a>
          </div>
          <!-- 免费配送的文字div 100%*30 m:0 0 12 -->
          <div id="shopcart-shipping">
            <span class="shippingspan">所有订单均可享受免费配送。</span>
          </div>
        </div>
      </el-drawer>
    </div>
  </div>
</template>
<style scoped>
#cartheader {
  width: 100%;
  height: 53px;
  border-bottom: 1px solid #d0d1d2;
  padding: 0 16px 0 40px;
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.cartheader-h2left {
  font-size: 16px;
  line-height: 24px;
  padding: 0px;
  font-family: var(--tds-font-combined--light);
}
#shopcart-model {
  width: 100%;
  height: 360px;
  z-index: 100%;
  overflow: auto;
  padding-top: 40px;
  border-bottom: 1px solid #d0d1d2;
}
#shopcart-ept {
  width: 100%;
  height: 320px;
}
#shopcart-ept > span {
  display: flex;
  flex-flow: row wrap;
  flex-direction: column;
  -webkit-box-pack: center;

  text-align: center;
  line-height: 320px;
}
#shopcart-footer {
  padding: 25px;
}
.shopcart-subtotal {
  margin: 0px 0px 20px;
  width: 100%;
  text-align: center;
}
.shopcart-subtotal span {
  display: inline;
  padding: 0px;
  font-size: 16px;
}
.shopcart-subtotal p {
  display: inline;
  padding: 0px;
  font-size: 16px;
}
#shopcart-checkout {
  margin-bottom: 12px;
  height: 60px;
  align-items: center;
  display: flex;
  flex-flow: column wrap;
}
.checkout-btn {
  width: 200px;
  height: 40px;
  margin: 0px 0px 20px;
  padding: 5px 20px;
  background-color: #00a1ed;
  opacity: 0.5;
  border-radius: 20px;
  text-align: center;
  font-size: 20px !important;
  color: black;
  line-height: 40px;
  font-weight: 400;
}
#shopcart-shipping {
  width: 100%;
  height: 30px;
  margin: 0px 0px 12px;
}
.shippingspan {
  width: 156px;
  height: 16px;
  position: relative;
  left: 45px;
}
</style>
<script>
export default {
  data() {
    return {
      drawer: false,
      direction: "rtl",
    };
  },
  methods: {
    handleClose(done) {
      this.$confirm("确认关闭？")
        .then((_) => {
          done();
        })
        .catch((_) => {});
    },
  },
};
</script>